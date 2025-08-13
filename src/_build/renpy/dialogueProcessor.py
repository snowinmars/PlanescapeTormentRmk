import re
import os
from pathlib import Path
from dataclasses import dataclass
from _build.renpy.templates import (
    rpy_header_template,
    rpy_footer_template,
    logic_header_template,
    test_header_template,
    test_footer_template
)
from _build.renpy.patterns import (all_patterns)
from _build.renpy.generate_tests import (generate_tests)


def foo(answer, target_npc, state_prefix):
    if answer.target_state['id'] == 'EXIT':
        return f'{target_npc}_dispose'
    if 'other_npc' in answer.target_state:
        return f'{answer.target_state['other_npc']}{state_prefix}{answer.target_state['id']}  # EXTERN'
    else:
        return f'{target_npc}{state_prefix}{answer.target_state['id']}'


class DialogueProcessor:
    def __init__(self, dialogue_transformer):
        self.dialogue_transformer = dialogue_transformer


    def serialize_states_plain(self, states, area, state_prefix):
        target_npc = area[1:] if area.startswith('d') else area
        dialog_tree = []
        logic_actions = []
        logic_conditions = []
        global_response_counter = 0

        dialog_tree.extend([rpy_header_template.format(area=area.upper(), npc=target_npc, Npc=target_npc.capitalize(), NPC=target_npc.upper())])

        for state in states:
            from_path = 'from ' + ' '.join(
                f'{p.from_state_id}.{p.response_index}'
                for p in state.paths
            ) if state.paths else '-'

            free_comment = f' # {state.free}' if state.free else ''
            dialog_tree.append(
                f'\n# s{state.state_id} # say{state.say_id}'
                f'\nlabel {target_npc}{state_prefix}{state.state_id}:  # {from_path}{free_comment}'
            )

            dialog_tree.append(f"    SPEAKER '{trim_trash(state.state_body)}'\n")

            if len(state.answers) == 1 and state.answers[0].answer_id == 'synthetic':
                if 'other_npc' in state.answers[0].target_state:
                    dialog_tree.append(f'    jump {state.answers[0].target_state['other_npc']}_s{state.answers[0].target_state['id']}  # EXTERN')
                else:
                    dialog_tree.append(f'    jump {target_npc}_dispose')
                continue

            dialog_tree.append('    menu:')

            for answer in state.answers:
                target_id = foo(answer, target_npc, state_prefix)

                menu_option = f"        '{trim_trash(answer.answer_body)}'"

                if answer.condition and answer.condition.strip():
                    logic_conditions.append(
                        f'    def r{answer.answer_id}_condition(self):\n        {answer.condition.strip()}\n'
                    )
                    menu_option += f' if {target_npc}Logic.r{answer.answer_id}_condition()'

                dialog_tree.append(menu_option + ':')
                dialog_tree.append(f'            # r{global_response_counter} # reply{answer.answer_id}')

                if answer.action and answer.action.strip():
                    logic_actions.append(
                        f'    def r{answer.answer_id}_action(self):        {answer.action.strip()}\n'
                    )
                    dialog_tree.append(f'            $ {target_npc}Logic.r{answer.answer_id}_action()')

                # Exit handling
                # if answer.target_state_id == 'EXIT':
                #     dialog_tree.append('            $ _dispose()')

                dialog_tree.append(f'            jump {target_id}\n')

                global_response_counter += 1

        logic_actions_str = '\n\n'.join(logic_actions)
        logic_conditions_str = '\n\n'.join(logic_conditions)

        transformed_actions = to_single_body(
            self.dialogue_transformer.transform_script(logic_actions_str, target_npc)
        )
        transformed_conditions = to_single_return(
            self.dialogue_transformer.transform_script(logic_conditions_str, target_npc)
        )

        logic_code = logic_header_template.format(npc=target_npc, Npc=target_npc.capitalize())

        if transformed_actions.strip():
            logic_code += f'{right_trim_lines(transformed_actions)}\n\n\n'
        if transformed_conditions.strip():
            logic_code += f'{right_trim_lines(transformed_conditions)}'

        test_code = test_header_template.format(npc=target_npc, Npc=target_npc.capitalize())

        test_code += generate_tests(logic_code, target_npc)

        test_code += '\n' + test_footer_template

        dialog_tree_str = right_trim_lines('\n'.join(dialog_tree))

        dialog_tree_str += '\n' + rpy_footer_template.format(npc=target_npc)

        return dialog_tree_str.strip() + '\n', logic_code.strip() + '\n', test_code.strip() + '\n'


def trim_trash(text):
    text = text.replace('~', '') \
               .replace('...', '…').strip()
    return replace_nested_quotes(text)


def replace_nested_quotes(text):
    if text.count("'") < 2:
        return text
    first_idx = text.find("'")
    last_idx = text.rfind("'")
    if first_idx == last_idx:
        return text
    middle = text[first_idx+1:last_idx].replace("'", "«")
    return text[:first_idx+1] + middle.replace("'", "»") + text[last_idx:]


def to_single_return(script):
    lines = []
    for line in script.split('\n'):
        if line.strip().startswith('def'):
            lines.append(line)
            continue

        returns = [s.strip() for s in line.split('return') if s.strip()]
        if not returns:
            lines.append(line)
            continue

        if len(returns) == 1:
            lines.append(f'        return {returns[0]}')
        else:
            all_but_last = ' and \\\n               '.join(returns[:-1])
            lines.append(f'        return {all_but_last} and \\\n               {returns[-1]}')
    return '\n'.join(lines)


def to_single_body(script):
    return re.sub(
        r'(self\.settings_manager\.[a-zA-Z0-9_\.]+\([^)]*\))',
        r'\n        \1',
        script.replace('# ', '\n        # ')
    ).replace('        def', '\n\n    def').rstrip()


def right_trim_lines(text):
    return '\n'.join(line.rstrip() for line in text.split('\n'))
