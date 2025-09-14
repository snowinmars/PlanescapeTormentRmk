import re
import os
from pathlib import Path
from dataclasses import dataclass
from _build.renpy.templates import (
    rpy_header_template,
    rpy_footer_template,
    logic_header_template,
    test_header_template,
    test_footer_template,
    label_template,
    logic_action_update_journal_template,
    execute_state_update_journal_template,
    execute_state_logic_action_template,
    execute_state_logic_condition_template,
    logic_state_action_template,
    logic_state_condition_template,
    logic_response_condition_template,
    menu_option_with_condition_template,
    logic_response_action_template,
    execute_response_logic_action_template,
    menu_option_template,
    jump_extern_template,
    jump_dispose_template,
    jump_template,
)
from _build.renpy.patterns import (all_patterns)
from _build.renpy.generate_tests import (generate_tests)


quote_pattern = re.compile(r'«.*»') # have to be greed
starts_with_letter_regex = re.compile(r'^[a-zA-Zа-яА-ЯёЁ]')

def _render_with_shift(buffer, value, shift):
    if not value:
        return buffer

    spaces = ' ' * shift
    indented_value = ''.join(spaces + line for line in value.splitlines(True))
    return buffer.append(indented_value)


def _generate_from_paths(state):
    from_pathes = 'from'
    if state['paths']:
        for p in state['paths']:
            p_from_state_id = p['from_state_id']
            p_response_index = p['response_index']
            r = f'{p_from_state_id}.{p_response_index}'
            from_pathes += f' {r}'
        return from_pathes
    else:
        return '-'


npc_names = {
    'test'    : 'area'     ,
    'ddhall'  : 'dhall'    ,
    'dmorte'  : 'morte'    ,
    'dmorte1' : 'morte1'   ,
    'dmorte2' : 'morte2'   ,
    'deivene' : 'eivene'   ,
    'dvaxis'  : 'vaxis'    ,
    'copearc' : 'copearc'  ,
    'dn1201'  : 'n1201'    ,
    'dxach'   : 'xach'     ,
    'dsoego'  : 'soego'    ,
    'dgiantsk': 'giantsk'  ,
    'ddeions' : 'deionarra',
    'ds42'    : 's42'      ,
    'ds748'   : 's748'     ,
    'ds863'   : 's863'     ,
    'ds996'   : 's996'     ,
    'ds1221'  : 's1221'    ,
    'ddust'   : 'dust'     ,
    'ddustfem': 'dustfem'  ,
    'dzm1041' : 'zm1041'   ,
    'dzm1094' : 'zm1094'   ,
    'dzm1146' : 'zm1146'   ,
    'dzm1201' : 'zm1201'   ,
    'dzm1445' : 'zm1445'   ,
    'dzm1508' : 'zm1508'   ,
    'dzm1664' : 'zm1664'   ,
    'dzm199'  : 'zm199'    ,
    'dzm257'  : 'zm257'    ,
    'dzm310'  : 'zm310'    ,
    'dzm396'  : 'zm396'    ,
    'dzm463'  : 'zm463'    ,
    'dzm475'  : 'zm475'    ,
    'dzm506'  : 'zm506'    ,
    'dzm569'  : 'zm569'    ,
    'dzm613'  : 'zm613'    ,
    'dzm732'  : 'zm732'    ,
    'dzm782'  : 'zm782'    ,
    'dzm782'  : 'zm782'    ,
    'dzm79'   : 'zm79'     ,
    'dzm825'  : 'zm825'    ,
    'dzm965'  : 'zm965'    ,
    'dzm985'  : 'zm985'    ,
    'dzf114'  : 'zf114'    ,
    'dzf444'  : 'zf444'    ,
    'dzf594'  : 'zf594'    ,
    'dzf626'  : 'zf626'    ,
    'dzf679'  : 'zf679'    ,
    'dzf832'  : 'zf832'    ,
    'dzf891'  : 'zf891'    ,
    'dzf916'  : 'zf916'    ,
    'dzf1072' : 'zf1072'   ,
    'dzf1096' : 'zf1096'   ,
    'dzf1148' : 'zf1148'   ,
}


def abstract2renpy(states, area, state_prefix, dialogue_transformer, warnings):
    npc_name = npc_names[area]
    dialog_tree = []
    logic_actions = []
    logic_conditions = []
    global_response_counter = 0

    _render_with_shift(
        dialog_tree,
        rpy_header_template.format(
            area=area.upper(),
            npc=npc_name,
            Npc=npc_name.capitalize(),
            NPC=npc_name.upper()
        ),
        0
    )

    dialog_tree.append('\n')
    dialog_tree.append('\n')

    for state in states:
        from_path = _generate_from_paths(state)

        state_free = state['free']
        state_id = state['state_id']
        state_say_id = state['say_id']
        state_body = state['state_body']
        state_answers = state['answers']

        free_comment = f' # {state_free}' if state_free else ''
        dialog_tree.append('\n')
        _render_with_shift(
            dialog_tree,
            label_template.format(
                sid=state_id,
                ssid=state_say_id,
                fp=from_path,
                fc=free_comment,
                tnpc=npc_name,
                pfx=state_prefix
            ),
            0
        )
        dialog_tree.append('\n')
        cues = _format_cues(state_body, 'nr', npc_name)
        _render_with_shift(
            dialog_tree,
            cues,
            4
        )
        dialog_tree.append('\n')
        dialog_tree.append('\n')

        # in this case I do not have to render 'menu' and there are no conditions in action - just action and jump
        is_single_autockick_answer = len(state_answers) == 1 and state_answers[0]['is_autoclick']
        if is_single_autockick_answer:
            answer = state_answers[0]
            answer_id = answer['answer_id']
            journal_id = answer['journal_id']
            journal_body = answer['journal_body']
            target_state = answer['target_state']
            target_state_id = target_state['id']

            has_update_journal_action = journal_id is not None and journal_body is not None
            if has_update_journal_action:
                update_journal_function_name = f'{journal_id}_s{state_id}'
                if answer_id is not None:
                    update_journal_function_name += f'_r{answer_id}'
                _render_with_shift(
                    logic_actions,
                    logic_action_update_journal_template.format(
                        sid=update_journal_function_name,
                        jid=journal_id,
                        jb=journal_body,
                    ),
                    4
                )
                logic_actions.append('\n\n\n')
                _render_with_shift(
                    dialog_tree,
                    execute_state_update_journal_template.format(
                        tnpc=npc_name,
                        sid=update_journal_function_name,
                    ),
                    4
                )
                dialog_tree.append('\n')


            if answer['action']:
                action = answer['action']
                _render_with_shift(
                    logic_actions,
                    logic_state_action_template.format(
                        sid=state_id,
                        a=action
                    ),
                    4
                )
                logic_actions.append('\n\n\n')
                _render_with_shift(
                    dialog_tree,
                    execute_state_logic_action_template.format(
                        tnpc=npc_name,
                        sid=state_id,
                    ),
                    4
                )
                dialog_tree.append('\n')

            if 'other_npc' in target_state:
                other_npc = target_state['other_npc']
                _render_with_shift(
                    dialog_tree,
                    jump_extern_template.format(
                        onpc=other_npc,
                        tsid=target_state_id,
                    ),
                    4
                )
            elif target_state_id == 'EXIT':
                _render_with_shift(
                    dialog_tree,
                    jump_dispose_template.format(
                        tnpc=npc_name,
                    ),
                    4
                )
            else:
                _render_with_shift(
                    dialog_tree,
                    jump_template.format(
                        tnpc=npc_name,
                        tsid=target_state_id,
                    ),
                    4
                )
            dialog_tree.append('\n\n')
            continue


        # If this case I have write a runtime check:
        #   for each autoclick answer:
        #     if the autoclick condition is True - jump it
        # If I did no jump - render menu as usual

        autockicked_answers = list(filter(lambda x: x['is_autoclick'], state_answers))
        for answer in autockicked_answers:
            action = answer['action']
            answer_id = answer['answer_id']
            condition = answer['condition']
            journal_id = answer['journal_id']
            journal_body = answer['journal_body']
            target_state = answer['target_state']
            target_state_id = answer['target_state']['id']

            has_update_journal_action = journal_id is not None and journal_body is not None
            if has_update_journal_action:
                update_journal_function_name = f'{journal_id}_s{state_id}'
                if answer_id is not None:
                    update_journal_function_name += f'_r{answer_id}'
                _render_with_shift(
                    logic_actions,
                    logic_action_update_journal_template.format(
                        sid=update_journal_function_name,
                        jid=journal_id,
                        jb=journal_body,
                    ),
                    4
                )
                logic_actions.append('\n\n\n')
                _render_with_shift(
                    dialog_tree,
                    execute_state_update_journal_template.format(
                        tnpc=npc_name,
                        sid=update_journal_function_name,
                    ),
                    12
                )
                dialog_tree.append('\n')

            _render_with_shift(
                logic_conditions,
                logic_state_condition_template.format(
                    sid=state_id,
                    c=condition
                ),
                4
            )
            logic_conditions.append('\n\n')
            _render_with_shift(
                dialog_tree,
                execute_state_logic_condition_template.format(
                    tnpc=npc_name,
                    sid=state_id,
                ),
                4
            )
            dialog_tree.append('\n')
            if action:
                _render_with_shift(
                    logic_actions,
                    logic_state_action_template.format(
                        sid=state_id,
                        a=action
                    ),
                    4
                )
                logic_actions.append('\n\n\n')
                _render_with_shift(
                    dialog_tree,
                    execute_state_logic_action_template.format(
                        tnpc=npc_name,
                        sid=state_id,
                    ),
                    8
                )
                dialog_tree.append('\n')

            if 'other_npc' in target_state:
                other_npc = target_state['other_npc']
                _render_with_shift(
                    dialog_tree,
                    jump_extern_template.format(
                        onpc=other_npc,
                        tsid=target_state_id,
                    ),
                    8
                )
            elif target_state_id == 'EXIT':
                _render_with_shift(
                    dialog_tree,
                    jump_dispose_template.format(
                        tnpc=npc_name,
                    ),
                    8
                )
            else:
                _render_with_shift(
                    dialog_tree,
                    jump_template.format(
                        tnpc=npc_name,
                        tsid=target_state_id,
                    ),
                    8
                )
            dialog_tree.append('\n')


        not_autockicked_anwsers = list(filter(lambda x: not x['is_autoclick'], state_answers))
        _render_with_shift(
            dialog_tree,
            'menu:',
            4
        )
        dialog_tree.append('\n')

        for answer in not_autockicked_anwsers:
            answer_id = answer['answer_id']
            journal_id = answer['journal_id']
            journal_body = answer['journal_body']
            action = answer['action']
            target_id = _form_jump(answer, npc_name, state_prefix)

            menu_option = _build_menu_option(npc_name, answer, logic_conditions, global_response_counter)
            _render_with_shift(
                dialog_tree,
                menu_option,
                8
            )
            dialog_tree.append('\n')

            has_update_journal_action = journal_id is not None and journal_body is not None
            if has_update_journal_action:
                update_journal_function_name = f'{journal_id}_s{state_id}'
                if answer_id is not None:
                    update_journal_function_name += f'_r{answer_id}'

                _render_with_shift(
                    logic_actions,
                    logic_action_update_journal_template.format(
                        sid=update_journal_function_name,
                        jid=journal_id,
                        jb=journal_body,
                    ),
                    4
                )
                logic_actions.append('\n\n\n')
                _render_with_shift(
                    dialog_tree,
                    execute_state_update_journal_template.format(
                        tnpc=npc_name,
                        sid=update_journal_function_name,
                    ),
                    12
                )
                dialog_tree.append('\n')

            if action:
                _render_with_shift(
                    logic_actions,
                    logic_response_action_template.format(
                        aid=answer_id,
                        a=action
                    ),
                    4
                )
                logic_actions.append('\n\n\n')
                _render_with_shift(
                    dialog_tree,
                    execute_response_logic_action_template.format(
                        tnpc=npc_name,
                        aid=answer_id,
                    ),
                    12
                )
                dialog_tree.append('\n')

            _render_with_shift(
                dialog_tree,
                f'jump {target_id}',
                12
            )

            global_response_counter += 1
            dialog_tree.append('\n\n')

    logic_actions_str = ''.join(logic_actions)
    logic_conditions_str = ''.join(logic_conditions)

    transformed_actions = _to_single_body(
        dialogue_transformer.transform_script(logic_actions_str, npc_name)
    )
    transformed_conditions = _to_single_return(
        dialogue_transformer.transform_script(logic_conditions_str, npc_name)
    )

    logic_code = logic_header_template.format(npc=npc_name, Npc=npc_name.capitalize())
    logic_code += '\n\n\n'

    if transformed_actions:
        logic_code += _right_trim_lines(transformed_actions).rstrip()
        logic_code += '\n\n\n'
    if transformed_conditions:
        logic_code += _right_trim_lines(transformed_conditions).rstrip()

    test_code = test_header_template.format(npc=npc_name, Npc=npc_name.capitalize())
    test_code += '\n\n\n'
    generated_tests = generate_tests(logic_code, npc_name, warnings)
    if len(generated_tests) > 0:
        test_code += f'    {generated_tests}'
        test_code += '\n\n\n'
    test_code += test_footer_template

    dialog_tree_str = _right_trim_lines(''.join(dialog_tree))

    dialog_tree_str += rpy_footer_template.format(npc=npc_name)

    return dialog_tree_str.strip().replace('...', '…') + '\n', logic_code.strip() + '\n', test_code.strip() + '\n'


# def _replace_nested_quotes(text):
#     if text.count("'") < 2:
#         return text
#     first_idx = text.find("'")
#     last_idx = text.rfind("'")
#     if first_idx == last_idx:
#         return text
#     middle = text[first_idx+1:last_idx].replace("'", "«")
#     return text[:first_idx+1] + middle.replace("'", "»") + text[last_idx:]


def _to_single_return(script):
    buffer = []
    for line in script.splitlines():
        stripped_line = line.strip()

        if len(stripped_line) == 0:
            buffer.append('\n')
            continue
        if not stripped_line.startswith('return'):
            buffer.append(line)
            continue
        operations = list(map(str.strip, filter(str.strip, stripped_line.split('return'))))
        if len(operations) == 1:
            buffer.append(line)
            continue

        shift = '    '
        subshift = shift * 3 + '   '
        buffer.append(f'{shift * 2}return {operations[0]} and \\')
        for operation in operations[1:-1]:
            buffer.append(f'{subshift}{operation} and \\')
        buffer.append(f'{subshift}{operations[-1]}')

    return '\n'.join(buffer)


def _to_single_body(script):
    output_lines = []

    for line in script.splitlines():
        stripped_line = line.strip()

        if 'self.state_manager' in stripped_line: # current block is usefull
            # Preserve indentation
            indent = re.match(r'^\s*', line).group(0)
            new_lines = []
            current_line = []
            in_comment = False

            tokens = re.split(r'(\#\$\%|self\.state_manager)', stripped_line)
            for token in tokens:
                stripped_token = token.strip()
                if stripped_token == '#$%':
                    in_comment = True
                    current_line.append(f'\n{indent}#$%')
                elif stripped_token.endswith('%$#'):
                    current_line.append(f' {stripped_token}')
                elif stripped_token == 'self.state_manager':
                    if in_comment:
                        current_line.append(f'\n{indent}self.state_manager')
                    else:
                        if current_line:
                            new_lines.append(''.join(current_line).rstrip())
                        current_line = [indent, f'\n{indent}self.state_manager']

                else:
                    if in_comment and stripped_token == '':
                        in_comment = False
                        if current_line:
                            new_lines.append(''.join(current_line).rstrip())
                        current_line = [indent, stripped_token]
                    else:
                        current_line.append(stripped_token)

            if current_line:
                new_lines.append(''.join(current_line).rstrip())

            all_new_lines = ''.join(new_lines).strip()
            output_lines.append(f'{indent}{all_new_lines}')
        elif stripped_line.startswith('#$%'): # current block is only comments
            indent = re.match(r'^\s*', line).group(0)
            for x in stripped_line.split('#$%')[1:]:
                output_lines.append(f'{indent}#$%{x}')
            output_lines.append(f'{indent}return')
        else: # current block is other stuff
            output_lines.append(line)

    return '\n'.join(output_lines)


def _right_trim_lines(text):
    return '\n'.join(line.rstrip() for line in text.split('\n'))


def _form_jump(answer, npc_name, state_prefix):
    if answer['target_state']['id'] == 'EXIT':
        return f'{npc_name}_dispose'
    if 'other_npc' in answer['target_state']:
        other_npc = answer['target_state']['other_npc']
        target_state_id = answer['target_state']['id']
        return f'{other_npc}{state_prefix}{target_state_id}  # EXTERN'
    else:
        target_state_id = answer['target_state']['id']
        return f'{npc_name}{state_prefix}{target_state_id}'


def _build_menu_option(npc_name, answer, logic_conditions, global_response_counter):
    answer_condition = answer['condition']
    answer_id = answer['answer_id']
    answer_body = answer['answer_body']
    if answer_condition:
        _render_with_shift(
            logic_conditions,
            logic_response_condition_template.format(aid=answer_id, ac=answer_condition),
            4
        )
        logic_conditions.append('\n\n')
        return menu_option_with_condition_template.format(ab=replace_single_quotes(answer_body),tnpc=npc_name,aid=answer_id,grc=global_response_counter)
    else:
        return menu_option_template.format(ab=replace_single_quotes(answer_body),aid=answer_id,grc=global_response_counter)


def capitalize_first(s):
    if not s or len(s) == 0:
        return s
    if starts_with_letter_regex.match(s):
        return s[0].upper() + s[1:]
    elif len(s) > 1: # starts with ''
        return s[0] + s[1].upper() + s[2:]
    return s


def replace_single_quotes(s):
    parts = []
    start = 0
    count = 0
    for i, char in enumerate(s):
        if char == "'":
            count += 1
            if count % 2 == 1:
                parts.append(s[start:i])
                parts.append('„')
                start = i + 1
            else:
                parts.append(s[start:i])
                parts.append('“')
                start = i + 1
    parts.append(s[start:])
    return ''.join(parts)


def process_inside_quote(text, nr, npc):
    segments = []
    start = 0
    i = 0
    n = len(text)
    while i < n:
        if text[i] == '—':
            j = i + 1
            while j < n and text[j] != '—':
                j += 1
            if j < n:
                if i > start:
                    d_text = text[start:i].strip()
                    if d_text:
                        d_text = d_text.replace('«', '„').replace('»', '“')
                        d_text = replace_single_quotes(d_text)
                        segments.append((npc, d_text))
                nr_text = text[i+1:j].strip()
                if nr_text:
                    segments.append((nr, nr_text))
                start = j + 1
                i = j + 1
            else:
                i += 1
        else:
            i += 1
    if start < n:
        d_text = text[start:].strip()
        if d_text:
            d_text = d_text.replace('«', '„').replace('»', '“')
            d_text = replace_single_quotes(d_text)
            segments.append((npc, d_text))
    return segments


def _format_cue(line, nr, npc):
    line = line.strip()
    if not line:
        return ''

    if '«' not in line and '»' not in line:
        return f'{nr} \'{replace_single_quotes(capitalize_first(line))}\''

    parts = []
    depth = 0
    start = 0
    n = len(line)
    for i, char in enumerate(line):
        if char == '«':
            if depth == 0:
                if start < i:
                    outside_text = line[start:i].strip()
                    if outside_text:
                        parts.append(('outside', outside_text))
                start = i
            depth += 1
        elif char == '»':
            if depth > 0:
                depth -= 1
                if depth == 0:
                    if i < len(line) - 1 and line[i + 1] == '.': # case '».'
                        inside_text = line[start + 1:i] + '.'
                        parts.append(('inside', inside_text))
                        start = i + 2
                    else:
                        inside_text = line[start:i + 1]
                        parts.append(('inside', inside_text))
                        start = i + 1
    if depth > 0:
        inside_text = line[start:]
        parts.append(('inside', inside_text))
    else:
        if start < n:
            outside_text = line[start:].strip()
            if outside_text:
                parts.append(('outside', outside_text))

    tokens = []
    for part_type, text in parts:
        if part_type == 'outside':
            text = capitalize_first(text)
            tokens.append((nr, text))
        else:
            if text.startswith('«') and text.endswith('»'):
                inner_text = text[1:-1]
            elif text.startswith('«'):
                inner_text = text[1:]
            elif text.endswith('»'):
                inner_text = text[:-1]
            else:
                inner_text = text
            # has_multiple_quotes = (inner_text.count('«') + inner_text.count('»')) > 2
            segments = process_inside_quote(inner_text, nr, npc)
            for seg_type, seg_text in segments:
                seg_text = capitalize_first(seg_text)
                if seg_type == npc:
                    cue = f'«{seg_text}»' \
                          .replace('.»', '».') \
                          .replace(',»', '».') \
                          .replace('?.».', '?..»') \
                          .replace('!.».', '!..»') \
                          .replace('..».', '…»')
                    # if has_multiple_quotes:
                    tokens.append((npc, cue))
                    # else:
                        # tokens.append((npc, f'«{seg_text}»'))
                else:
                    tokens.append((nr, seg_text))

    output_str = ''
    for tag, text in tokens:
        output_str += f'{tag} \'{text}\'\n'
    return output_str.strip()


def _format_cues(text, nr, npc):
    lines = text.strip().split('\n')
    output_lines = []
    for line in lines:
        if line.strip() == '':
            output_lines.append('')
        else:
            parsed_line = _format_cue(line, nr, npc)
            output_lines.append(parsed_line)
    return '\n'.join(output_lines)
