import re
from pathlib import Path
from _build.c.dataclasses import (GameFile)
from collections import defaultdict


def file_name_to_npc(file_name):
    return file_name_to_npc_map[file_name.lower()]


def restore_dialogue_tree(root_dir):
    rpy_files = find_rpy_files(root_dir)

    label_bindings = []
    graph = {}
    for rpy_file in rpy_files:
        graph = merge_renpy_graphs(graph, find_label_bindings(rpy_file))

    for label, data in sorted(graph.items(), key=lambda x: x[0]):
        label_npc = data['npc']
        label_file = data['file']
        label_comments = data['comments']

        for jump in data["jumps"]:
            jump_target = jump['target']
            jump_npc = jump['npc']
            jump_files = list(filter(lambda x: file_name_to_npc(x.name) == jump_npc, rpy_files))
            if len(jump_files) == 0:
                raise Exception(f"Cannot find file for '{jump_npc}'")
            if len(jump_files) > 1:
                raise Exception(f"Expect 1 file for '{jump_npc}', but {len(jump_files)} was found")
            jump_file = jump_files[0]
            jump_comments = jump['comments']

            if label_npc == jump_npc:
                continue

            # jump_file.content = add_word_to_labels(jump_file.content, label)
            jump_file.content = jump_file.content.replace(f'label {jump_target}:', f'label {jump_target}: # from {label}')


    for rpy_file in rpy_files:
        processed_lines = []
        for line in rpy_file.content.splitlines():
            if line.strip().startswith('label'):
                processed_lines.append(consolidate_from_blocks(line))
            else:
                processed_lines.append(line)
        rpy_file.content = '\n'.join(processed_lines) + '\n'

    return rpy_files


def consolidate_from_blocks(line):
    parts = list(filter(lambda x: len(x) > 0, map(lambda x: x.strip(), line.split('#'))))
    if len(parts) == 0:
        return ''
    label = parts[0]
    externs = []
    logics = []
    natives = []

    found_empty = False
    for part in parts[1:]:
        is_empty = part == '-'
        is_extern = '_s' in part
        is_logic = '~' in part
        is_weight = 'WEIGHT' in part or 'Triggers after states' in part
        is_native = not is_empty and not is_extern and not is_logic and not is_weight

        if is_empty:
            found_empty = True
        if is_extern:
            extern = part.replace('from ', '')
            if extern not in externs:
                externs.append(extern)
        if is_logic:
            logic = part
            if logic not in logics:
                logics.append(logic)
        if is_weight:
            logic = f'{part} #'
            if logic not in logics:
                logics.append(logic)
        if is_native:
            native = part.replace('from ', '')
            if native not in natives:
                natives.append(native)

    if 'deions_s60' in line:
        print(is_empty,is_extern,is_logic,is_weight,is_native)

    has_from = len(externs) != 0 or len(natives) != 0
    has_logic = len(logics) != 0

    if not found_empty and not has_from:
        raise Exception(f"Cannot parse '{line}'")

    externs_string = ' '.join(externs)
    logics_string = ' '.join(logics).replace('# ', '#')
    natives_string = ' '.join(natives)

    results = [label]
    if found_empty and not has_from:
        if has_logic:
            return f'{label} # - # {logics_string}'
        else:
            return f'{label} # -'

    if has_from:
        from_string = ''
        if len(externs) != 0 and len(natives) != 0:
            from_string = f'externs {externs_string}, from {natives_string}'
        if len(externs) != 0:
            from_string = f'externs {externs_string}'
        if len(natives) != 0:
            from_string = f'from {natives_string}'
        if has_logic:
            return f'{label} # {from_string} # {logics_string}'
        else:
            return f'{label} # {from_string}'

    raise Exception(f"Cannot parse '{line}'")


def add_word_to_labels(lines, word):
    processed_lines = []
    for line in lines.splitlines():
        if line.strip().startswith('label'):
            if re.search(r'# from ', line):
                # Find the next '#' after 'from' section
                parts = re.split(r'(# from [^#]*?)(#|$)', line, 1)
                if len(parts) >= 3:
                    line = f"{parts[0]} {word} {parts[1]}{''.join(parts[2:])}".strip()
                else:
                    line = f'{line} # {word}'
            else:
                # Replace '# -' with '# from {word}' or add new section
                if '# -' in line:
                    line = line.replace('# -', f'# from {word}', 1)
                else:
                    # Insert new '# from {word}' section after label
                    line = re.sub(r'(label \w+: )(.*)',
                                 r'\1# from ' + word + r' \2',
                                 line, 1)
        processed_lines.append(line)
    return '\n'.join(processed_lines)


label_pattern = re.compile(r'^\s*label\s+(\w+)\s*:(.*?)(#.*)?$')
jump_pattern = re.compile(r'^\s*jump\s+(\w+)\s*(#.*)?$')
comment_pattern = re.compile(r'#.*')


def find_label_bindings(file):
    graph = defaultdict(lambda: {"comments": [], "jumps": []})
    current_label = None

    for line in file.content.split('\n'):
        line = line.strip()
        if not line:
            continue

        label_match = re.match(label_pattern, line)
        if label_match:
            label_name = label_match.group(1)
            rest = (label_match.group(2) or "")
            comment = (label_match.group(3) or "")

            if label_name in IGNORE_LABELS:
                continue

            current_label = label_name
            graph[label_name]  # Ensure entry exists
            graph[label_name]['npc'] = label_name.split('_')[0]
            graph[label_name]['file'] = file

            if comment:
                graph[label_name]["comments"].append(comment.strip())
            elif rest and '#' in rest:
                # Handle comments not captured by main pattern
                comment_part = rest[rest.index('#'):]
                graph[label_name]["comments"].append(comment_part.strip())

            continue

        if current_label:
            jump_match = re.match(jump_pattern, line)
            if jump_match:
                target = jump_match.group(1)
                comment = (jump_match.group(2) or "")

                if target in IGNORE_LABELS:
                    continue

                npc = target.split('_')[0]
                jump_entry = {"target": target, "npc": npc}
                if comment:
                    jump_entry["comments"] = [comment.strip()]
                else:
                    # Check for inline comments
                    if '#' in line:
                        comment_part = line[line.index('#'):]
                        jump_entry["comments"] = [comment_part.strip()]
                    else:
                        jump_entry["comments"] = []

                graph[current_label]["jumps"].append(jump_entry)

    return dict(graph)


def merge_renpy_graphs(graph1, graph2):
    merged = {}

    def merge_label(label_data1, label_data2):
        merged_data = {
            "comments": label_data1.get("comments", []) + label_data2.get("comments", []),
            "jumps": []
        }

        jump_map = {}

        for jump in label_data1.get("jumps", []):
            key = (jump["target"], tuple(jump["comments"]))
            jump_map[key] = jump

        for jump in label_data2.get("jumps", []):
            key = (jump["target"], tuple(jump["comments"]))
            # Only add if not duplicate
            if key in jump_map:
                raise Exception(f"key '{key}' was already found as '{jump_map[key]}'")
            else:
                jump_map[key] = jump

        merged_data["jumps"] = list(jump_map.values())
        return merged_data

    all_labels = set(graph1.keys()) | set(graph2.keys())

    for label in all_labels:
        if label in graph1 and label in graph2:
            merged[label] = merge_label(graph1[label], graph2[label])
        elif label in graph1:
            merged[label] = graph1[label]
        else:
            merged[label] = graph2[label]

    return merged


def find_rpy_files(root_dir):
    root_path = Path(root_dir)

    rpys = root_path.rglob('*.rpy')
    rpy_files = []
    for rpy_file in rpys:
        rpy_files.append(GameFile(
            path=rpy_file,
            name=rpy_file.name,
            content=rpy_file.read_text(encoding='utf-8')
        ))

    return rpy_files


file_name_to_npc_map = {
    'dsoego.rpy'      : 'soego',
    'dn1201.rpy'      : 'n1201',
    'dgiantsk.rpy'    : 'giantsk',
    'copearc.rpy'     : 'copearc',
    'dannah.rpy'      : 'annah',
    'ddakkon.rpy'     : 'dakkon',
    'ddeath_names.rpy': 'death_names',
    'ddeions.rpy'     : 'deions',
    'ddhall.rpy'      : 'dhall',
    'ddust.rpy'       : 'dust',
    'ddustfem.rpy'    : 'dustfem',
    'deivene.rpy'     : 'eivene',
    'dgrace.rpy'      : 'grace',
    'dignus.rpy'      : 'ignus',
    'dmorte.rpy'      : 'morte',
    'dmorte1.rpy'     : 'morte1',
    'dmorte2.rpy'     : 'morte2',
    'dnordom.rpy'     : 'nordom',
    'ds1221.rpy'      : 's1221',
    'ds42.rpy'        : 's42',
    'ds748.rpy'       : 's748',
    'ds863.rpy'       : 's863',
    'ds996.rpy'       : 's996',
    'dvaxis.rpy'      : 'vaxis',
    'dvhail.rpy'      : 'vhail',
    'dxach.rpy'       : 'xach',
    'dzf1072.rpy'     : 'zf1072',
    'dzf1096.rpy'     : 'zf1096',
    'dzf114.rpy'      : 'zf114',
    'dzf1148.rpy'     : 'zf1148',
    'dzf444.rpy'      : 'zf444',
    'dzf594.rpy'      : 'zf594',
    'dzf626.rpy'      : 'zf626',
    'dzf679.rpy'      : 'zf679',
    'dzf832.rpy'      : 'zf832',
    'dzf891.rpy'      : 'zf891',
    'dzf916.rpy'      : 'zf916',
    'dzm1041.rpy'     : 'zm1041',
    'dzm1094.rpy'     : 'zm1094',
    'dzm1146.rpy'     : 'zm1146',
    'dzm1201.rpy'     : 'zm1201',
    'dzm1445.rpy'     : 'zm1445',
    'dzm1508.rpy'     : 'zm1508',
    'dzm1664.rpy'     : 'zm1664',
    'dzm199.rpy'      : 'zm199',
    'dzm257.rpy'      : 'zm257',
    'dzm310.rpy'      : 'zm310',
    'dzm396.rpy'      : 'zm396',
    'dzm463.rpy'      : 'zm463',
    'dzm475.rpy'      : 'zm475',
    'dzm506.rpy'      : 'zm506',
    'dzm569.rpy'      : 'zm569',
    'dzm613.rpy'      : 'zm613',
    'dzm732.rpy'      : 'zm732',
    'dzm782.rpy'      : 'zm782',
    'dzm79.rpy'       : 'zm79',
    'dzm825.rpy'      : 'zm825',
    'dzm965.rpy'      : 'zm965',
    'dzm985.rpy'      : 'zm985',
}

IGNORE_LABELS = {
    'graphics_menu',
    'todo',
    '3planea_s1',
    'd3planea_s1',
    'able_s10',
    'able_s11',
    'able_s12',
    'able_s13',
    'able_s16',
    'able_s2',
    'able_s65',
    'adabus_s2',
    'adabus_s6',
    'adyzoel_s13',
    'adyzoel_s19',
    'adyzoel_s20',
    'adyzoel_s32',
    'adyzoel_s33',
    'adyzoel_s35',
    'adyzoel_s36',
    'aethel_s11',
    'annah_s1',
    'annah_s10',
    'annah_s107',
    'annah_s12',
    'annah_s13',
    'annah_s14',
    'annah_s15',
    'annah_s166',
    'annah_s17',
    'annah_s18',
    'annah_s196',
    'annah_s209',
    'annah_s21',
    'annah_s210',
    'annah_s214',
    'annah_s215',
    'annah_s240',
    'annah_s242',
    'annah_s269',
    'annah_s3',
    'annah_s315',
    'annah_s40',
    'annah_s418',
    'annah_s43',
    'annah_s446',
    'annah_s5',
    'annah_s6',
    'annah_s8',
    'annah_s99',
    'await_s15',
    'await_s6',
    'baria_s20',
    'baria_s4',
    'bishab_s11',
    'brocus4_s2',
    'brocus4_s4',
    'brocus6_s3',
    'codexi_s2',
    'colylfn_s10',
    'colylfn_s11',
    'colylfn_s12',
    'colylfn_s13',
    'colylfn_s14',
    'colylfn_s15',
    'colylfn_s16',
    'colylfn_s18',
    'colylfn_s19',
    'colylfn_s20',
    'colylfn_s23',
    'colylfn_s41',
    'colylfn_s5',
    'colylfn_s52',
    'colylfn_s53',
    'colylfn_s6',
    'colylfn_s61',
    'colylfn_s9',
    'craddo_s15',
    'creed_s15',
    'creed_s18',
    'creed_s30',
    'creed_s32',
    'creed_s40',
    'creed_s49',
    'creed_s59',
    'cwcafef_s15',
    'cwcafef_s4',
    'cwcafef_s50',
    'cwcafef_s51',
    'cwcafef_s52',
    'cwrushf_s2',
    'cwrushf_s27',
    'cwrushf_s28',
    'cwrushf_s29',
    '300mer5_s2',
    '300mer5_s5',
    'd300mer5_s2',
    'd300mer5_s5',
    'dabus_s3',
    'dabus_s6',
    'dakkon_s163',
    'dakkon_s174',
    'dakkon_s175',
    'dakkon_s177',
    'dakkon_s178',
    'dakkon_s179',
    'dakkon_s182',
    'dakkon_s74',
    'dakkon_s75',
    'deathad_s1',
    'deathad_s11',
    'deathad_s15',
    'deathad_s16',
    'deathad_s17',
    'deathad_s18',
    'deathad_s2',
    'deathad_s26',
    'deathad_s3',
    'deathad_s5',
    'deathad_s6',
    'deathad_s8',
    'deathad_s9',
    'dustgu_s12',
    'ecco_s34',
    'ecco_s7',
    'fell_s8',
    'fhjull_s27',
    'fhjull_s46',
    'fhjull_s88',
    'ghivef_s47',
    'ghivef_s49',
    'ghivem_s49',
    'ghivem_s51',
    'ghocitf_s1',
    'ghocitm_s1',
    'ghysis_s1',
    'giltsp_s4',
    'gith_s7',
    'goncal_s20',
    'grace_s119',
    'grace_s14',
    'grace_s169',
    'grace_s170',
    'grace_s176',
    'grace_s177',
    'grace_s187',
    'grace_s191',
    'grace_s213',
    'grace_s3',
    'grace_s373',
    'grace_s60',
    'grace_s7',
    'grace_s72',
    'grace_s79',
    'harlotn_s11',
    'harlotn_s2',
    'harlotn_s3',
    'harlotn_s7',
    'harlotn_s8',
    'harlotn_s9',
    'hivef1_s8',
    'iannis_s10',
    'ignus_s11',
    'ignus_s13',
    'jumble_s2',
    'jumble_s7',
    'jumble_s8',
    'jumble_s9',
    'justfer_s8',
    'kesai_s11',
    'kesai_s2',
    'kiina_s35',
    'kimasxi_s14',
    'kimasxi_s18',
    'kimasxi_s2',
    'kimasxi_s20',
    'kimasxi_s21',
    'kimasxi_s3',
    'kimasxi_s4',
    'malmanr_s13',
    'malmanr_s14',
    'malmanr_s15',
    'manyas1_s5',
    'manyas1_s58',
    'manyas1_s78',
    'marissa_s2',
    'marissa_s3',
    'marta_s15',
    'marta_s16',
    'marta_s24',
    'marta_s9',
    'mftree_s28',
    'montagu_s29',
    'montagu_s30',
    'montagu_s31',
    'neml_s11',
    'neml_s14',
    'neml_s4',
    'neml_s6',
    'nenny_s2',
    'nenny_s27',
    'nenny_s3',
    'nenny_s9',
    'nordom_s1',
    'nordom_s11',
    'nordom_s12',
    'nordom_s13',
    'nordom_s15',
    'nordom_s17',
    'nordom_s19',
    'nordom_s2',
    'nordom_s20',
    'nordom_s21',
    'nordom_s3',
    'nordom_s6',
    'nordom_s65',
    'nordom_s67',
    'nordom_s74',
    'nordom_s9',
    'ojo_s11',
    'ojo_s12',
    'pillar_s10',
    'pillar_s12',
    'pillar_s14',
    'pillar_s17',
    'pillar_s18',
    'pillar_s19',
    'pillar_s2',
    'pillar_s20',
    'pillar_s21',
    'pillar_s22',
    'pillar_s23',
    'pillar_s5',
    'pillar_s50',
    'pillar_s9',
    'post_s2',
    'post_s3',
    'post_s4',
    'post_s5',
    'pregal_s10',
    'quell_s21',
    'quisai_s11',
    'quisai_s23',
    'quisai_s29',
    'quisai_s3',
    'quisai_s30',
    'quisai_s5',
    'ravel_s126',
    'ravel_s189',
    'ravel_s66',
    'ravel_s67',
    'ravel_s68',
    'sadjuli_s12',
    'sadjuli_s13',
    'sadjuli_s24',
    'sarhava_s13',
    'sarhava_s14',
    'sarhava_s3',
    'sarhava_s39',
    'sarhava_s4',
    'sarhava_s40',
    'sarhava_s41',
    'sarhava_s42',
    'sarhava_s7',
    'skelw_s4',
    'skelw_s5',
    'skelw_s6',
    'tegarin_s12',
    'test_s0',
    'test_s7',
    'trans_s142',
    'trias_s8',
    'ucho_s10',
    'ucho_s9',
    'udesire_s2',
    'vault9_s0',
    'vhail_s1',
    'vhailor_s1',
    'vrisch_s45',
    'vrisch_s46',
    'vrisch_s7',
    'yiminn_s47',
    'yves_s2',
    'yves_s4',
    'yves_s55',
    'zomcitf_s1',
    'zomcitf_s3',
}
