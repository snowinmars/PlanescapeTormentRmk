import os
import re
from pathlib import Path
from collections import defaultdict

from _build.entities import entities_ids
from _build.file.read_file import read_file
from _build.file.write_file import write_file
from _build.clean_raw import clean_raw
from _build.parse_clean import parse_clean
from _build.renpy.dialogueProcessor import (DialogueProcessor)
from _build.renpy.dialogueReplacer import (DialogueReplacer)
from _build.renpy.dialogueTransformer import (DialogueTransformer)
from _build.renpy.generate_settings import generate_settings
from _build.c.dataclasses import (GameFile)


cwd = os.getcwd()

folder_with_infinity_engine_dialogues = os.path.normpath(os.path.join(cwd, 'd_raw'))
folder_with_cleaned_infinity_engine_dialogues = os.path.normpath(os.path.join(cwd, 'd_clean'))
folder_with_renpy_dialogues = os.path.normpath(os.path.join(cwd, 'd_renpy'))
folder_with_game = os.path.normpath(os.path.join(cwd, 'game'))
folder_with_python_settings = os.path.join(folder_with_game, 'engine_data', 'settings')


def build():
    print('Warming up')
    # replacer = DialogueReplacer()
    # transformer = DialogueTransformer()
    # processor = DialogueProcessor(transformer)

    # transformer.set_replacements(replacer.build_replacements())

    # print(f'Processing {len(entities_ids)} files ', end='')

    # for entityId in entities_ids:
    #     print('.', end='', flush=True)
    #     area = entityId.lower()

    #     raw = read_file(os.path.join(folder_with_infinity_engine_dialogues, f'{entityId}.D'))
    #     clean = clean_raw(raw)
    #     write_file(os.path.join(folder_with_cleaned_infinity_engine_dialogues, f'{entityId}.Dclean'), clean)
    #     states = parse_clean(clean)

    #     rpy, logic, tests = processor.serialize_states_plain(
    #         states=states,
    #         area=area,
    #         state_prefix="_s"
    #     )
    #     write_file(os.path.join(folder_with_renpy_dialogues, f'{entityId}.rpy'), rpy)
    #     write_file(os.path.join(folder_with_renpy_dialogues, f'{entityId}_logic.py'), logic)
    #     write_file(os.path.join(folder_with_renpy_dialogues, f'{entityId}_tests.py'), tests)

    # python_settings = generate_settings(replacer.known_settings)
    # write_file(os.path.join(folder_with_python_settings, 'generated.py'), python_settings)

    rpy_files = find_rpy_files(folder_with_renpy_dialogues)

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
            jump_file = jump['file']
            jump_comments = jump['comments']

            if label_npc == jump_npc:
                continue

            jump_file.content.replace(f'{jump_target}:', f'{jump_target}: # from {label}')

            print(f'{label} -> {jump_target}')

    print(' done')


def add_word_to_labels(lines, word='hi'):
    processed_lines = []
    for line in lines:
        if line.strip().startswith('label'):
            # Check if line has a 'from' section
            if re.search(r'#\s*from\s', line):
                # Find the next '#' after 'from' section
                parts = re.split(r'(#\s*from\s[^#]*)(#|$)', line, 1)
                if len(parts) >= 3:
                    # Reconstruct with word added after from section
                    line = f"{parts[1]} {word} {parts[2]}{''.join(parts[3:])}".strip()
            else:
                # Replace '# -' with '# from {word}' or add new section
                if '# -' in line:
                    line = line.replace('# -', f'# from {word}', 1)
                else:
                    # Insert new '# from {word}' section after label
                    line = re.sub(r'(label\s+\w+:\s*)(#|$)',
                                 r'\1# from ' + word + r' \2',
                                 line, 1)
        processed_lines.append(line)
    return processed_lines


label_pattern = re.compile(r'^\s*label\s+(\w+)\s*:(.*?)(#.*)?$')
jump_pattern = re.compile(r'^\s*jump\s+(\w+)\s*(#.*)?$')
comment_pattern = re.compile(r'#.*')

def find_label_bindings(file, script):
    graph = defaultdict(lambda: {"comments": [], "jumps": []})
    current_label = None

    for line in script.split('\n'):
        line = line.strip()
        if not line:
            continue

        label_match = re.match(label_pattern, line)
        if label_match:
            label_name = label_match.group(1)
            rest = (label_match.group(2) or "")
            comment = (label_match.group(3) or "")

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

                jump_entry = {"target": target, "npc": target.split('_')[0], 'file': file}
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
            if key not in jump_map:
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

    return [rpy_files[0], rpy_files[1]]
