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


def abstract2renpy(states, area, state_prefix, dialogue_transformer):
    target_npc = area[1:] if area.startswith('d') else area
    dialog_tree = []
    logic_actions = []
    logic_conditions = []
    global_response_counter = 0

    _render_with_shift(
        dialog_tree,
        rpy_header_template.format(
            area=area.upper(),
            npc=target_npc,
            Npc=target_npc.capitalize(),
            NPC=target_npc.upper()
        ),
        0
    )

    dialog_tree.append('\n')
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
        _render_with_shift(
            dialog_tree,
            label_template.format(
                sid=state_id,
                ssid=state_say_id,
                fp=from_path,
                fc=free_comment,
                tnpc=target_npc,
                pfx=state_prefix,
                sb=state_body
            ),
            0
        )

        dialog_tree.append('\n')
        dialog_tree.append('\n')

        # in this case I do not have to render 'menu' and there are no conditions in action - just action and jump
        is_single_autockick_answer = len(state_answers) == 1 and state_answers[0]['is_autoclick']
        if is_single_autockick_answer:
            answer = state_answers[0]
            journal_id = answer['journal_id']
            journal_body = answer['journal_body']
            target_state = answer['target_state']
            target_state_id = target_state['id']

            has_update_journal_action = journal_id is not None and journal_body is not None
            if has_update_journal_action:
                _render_with_shift(
                    logic_actions,
                    logic_action_update_journal_template.format(
                        sid=state_id,
                        jid=journal_id,
                        jb=journal_body,
                    ),
                    4
                )
                logic_actions.append('\n')
                _render_with_shift(
                    dialog_tree,
                    execute_state_logic_action_template.format(
                        tnpc=target_npc,
                        sid=state_id,
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
                logic_actions.append('\n')
                _render_with_shift(
                    dialog_tree,
                    execute_state_logic_action_template.format(
                        tnpc=target_npc,
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
                        tnpc=target_npc,
                    ),
                    4
                )
            else:
                _render_with_shift(
                    dialog_tree,
                    jump_template.format(
                        tnpc=target_npc,
                        tsid=target_state_id,
                    ),
                    4
                )
            dialog_tree.append('\n')
            continue


        # If this case I have write a runtime check:
        #   for each autoclick answer:
        #     if the autoclick condition is True - jump it
        # If I did no jump - render menu as usual

        autockicked_answers = list(filter(lambda x: x['is_autoclick'], state_answers))
        for answer in autockicked_answers:
            action = answer['action']
            condition = answer['condition']
            target_state = answer['target_state']
            target_state_id = answer['target_state']['id']

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
                    tnpc=target_npc,
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
                logic_actions.append('\n')
                _render_with_shift(
                    dialog_tree,
                    execute_state_logic_action_template.format(
                        tnpc=target_npc,
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
                        tnpc=target_npc,
                    ),
                    8
                )
            else:
                _render_with_shift(
                    dialog_tree,
                    jump_template.format(
                        tnpc=target_npc,
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
            target_id = _form_jump(answer, target_npc, state_prefix)

            menu_option = _build_menu_option(target_npc, answer, logic_conditions, global_response_counter)
            _render_with_shift(
                dialog_tree,
                menu_option,
                8
            )
            dialog_tree.append('\n')

            if answer['action']:
                action = answer['action']
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
                        tnpc=target_npc,
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
        dialogue_transformer.transform_script(logic_actions_str, target_npc)
    )
    transformed_conditions = _to_single_return(
        dialogue_transformer.transform_script(logic_conditions_str, target_npc)
    )

    logic_code = logic_header_template.format(npc=target_npc, Npc=target_npc.capitalize())
    logic_code += '\n\n\n'

    if transformed_actions:
        logic_code += _right_trim_lines(transformed_actions).rstrip()
        logic_code += '\n\n\n'
    if transformed_conditions:
        logic_code += _right_trim_lines(transformed_conditions).rstrip()

    test_code = test_header_template.format(npc=target_npc, Npc=target_npc.capitalize())
    test_code += '\n\n\n'
    generated_tests = generate_tests(logic_code, target_npc)
    if len(generated_tests) > 0:
        test_code += f'    {generated_tests}'
        test_code += '\n\n\n'
    test_code += test_footer_template

    dialog_tree_str = _right_trim_lines(''.join(dialog_tree))

    dialog_tree_str += rpy_footer_template.format(npc=target_npc)

    return _replace_stuff(dialog_tree_str.strip()), logic_code.strip(), test_code.strip()


def _replace_stuff(text):
    return text.replace('...', '…')


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
        # Check if line contains self.settings_manager calls
        if 'self.settings_manager' in line:
            # Preserve indentation
            indent = re.match(r'^\s*', line).group(0)
            new_lines = []
            current_line = []
            in_comment = False

            tokens = re.split(r'(#|self\.settings_manager)', line)

            for token in tokens:
                if token == '#':
                    in_comment = True
                    current_line.append('#')
                elif token == 'self.settings_manager':
                    if in_comment:
                        current_line.append('self.settings_manager')
                    else:
                        if current_line:
                            new_lines.append(''.join(current_line).rstrip())
                        current_line = [indent, 'self.settings_manager']
                else:
                    if in_comment and token.strip() == '':
                        in_comment = False
                        if current_line:
                            new_lines.append(''.join(current_line).rstrip())
                        current_line = [indent, token]
                    else:
                        current_line.append(token)

            if current_line:
                new_lines.append(''.join(current_line).rstrip())

            new_lines = new_lines[1:]
            output_lines.extend(new_lines)
        elif line.strip().startswith('#'):
            indent = re.match(r'^\s*', line).group(0)
            for x in line.split('#')[1:]:
                output_lines.append(f'{indent}#{x}')
        else:
            output_lines.append(line)

    return '\n'.join(output_lines)


def _right_trim_lines(text):
    return '\n'.join(line.rstrip() for line in text.split('\n'))


def _form_jump(answer, target_npc, state_prefix):
    if answer['target_state']['id'] == 'EXIT':
        return f'{target_npc}_dispose'
    if 'other_npc' in answer['target_state']:
        other_npc = answer['target_state']['other_npc']
        target_state_id = answer['target_state']['id']
        return f'{other_npc}{state_prefix}{target_state_id}  # EXTERN'
    else:
        target_state_id = answer['target_state']['id']
        return f'{target_npc}{state_prefix}{target_state_id}'



def _build_menu_option(target_npc, answer, logic_conditions, global_response_counter):
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
        return menu_option_with_condition_template.format(ab=answer_body,tnpc=target_npc,aid=answer_id,grc=global_response_counter)
    else:
        return menu_option_template.format(ab=answer_body,aid=answer_id,grc=global_response_counter)
