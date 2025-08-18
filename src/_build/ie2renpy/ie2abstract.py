import re
from dataclasses import dataclass
from typing import List, Optional, Union, Tuple, Pattern


values_without_d_start = [
    'copearc',
]

SAY_REGEX = re.compile(r'^SAY #(\d+) \/\* (.*?) \*\/$')
BEGIN_STATE_REGEX = re.compile(r'^(?:IF ~~ |~ )THEN BEGIN (\d+) \/\/ from:(.*)$')
GOD_REGEX = re.compile(r'^IF ~(.*?)~ THEN (GOTO \d+)?(?:BEGIN (\d+?) \/\/ from:(.*))?(?:JOURNAL #(\d+) \/\* (.*?) \*\/)?(?:(EXTERN ~[^~]+~ \d+))?(EXIT)?(?:REPLY #(\d+) \/\* (.*?) \*\/(?: JOURNAL #(\d+) \/\* (.*?) \*\/)?( EXIT)?(?: (EXTERN ~[^~]+~ \d+))?(?: (GOTO \d+))?)?(?: ?DO)?(?: ~(.*?)(?: JOURNAL #(\d+) \/\* (.*?) ~ \*\/)? (?:(GOTO \d+))?)?(EXIT)?(?:\s?(EXTERN ~[^~]+~ \d+))?$')


def ie2abstract(input_text):
    states = []
    lines = [line.strip() for line in input_text.split('\n') if len(line) > 0]

    current_state = None
    before_start_buffer = ''
    i = 0

    while i < len(lines):
        line = lines[i]

        iteration_state = _begin_state_regex(line, before_start_buffer)
        if iteration_state is not None:
            current_state = iteration_state
            i += 1
            before_start_buffer = ''
            continue


        if current_state is None:
            before_start_buffer += line + ' '
            i += 1
            continue


        iteration_state = _say_regex(line, current_state)
        if iteration_state is not None:
            current_state = iteration_state
            i += 1
            continue


        god_state = _god_regex(line)
        if god_state is not None:
            if god_state['state_free'] is not None and len(god_state['state_free'].strip()) > 0:
                if current_state['free']:
                    current_state['free'] += " # " + _empty_string_to_none(god_state['state_free'])
                else:
                    current_state['free'] = _empty_string_to_none(god_state['state_free'])

            answer_id_string = _empty_string_to_none(god_state['answer_id'])
            journal_id_string = _empty_string_to_none(god_state['answer_journal_id'])
            journal_body = _empty_string_to_none(god_state['answer_journal_body'])
            if journal_body is not None:
                journal_body = journal_body.replace('/* ~', '').replace('~ */', '')
            current_state['answers'].append({
                'is_autoclick': god_state['is_autoclick'],
                'condition'   : _empty_string_to_none(god_state['answer_condition']),
                'action'      : _empty_string_to_none(god_state['answer_action']),
                'answer_id'   : None if answer_id_string is None else int(answer_id_string),
                'answer_body' : _empty_string_to_none(god_state['answer_body']),
                'journal_id'  : None if journal_id_string is None else int(journal_id_string),
                'journal_body': journal_body,
                'target_state': god_state['answer_target_state'],
            })
            i += 1
            continue


        if line == 'END':
            states.append({
                'state_id': current_state['state_id'],
                'paths': current_state['paths'],
                'say_id': current_state['say_id'],
                'state_body': current_state['state_body'],
                'free': current_state['free'],
                'answers': current_state['answers'],
            })
            current_state = None
            i += 1
            continue


        raise Exception(f"Line is wierd: '{line}'")

    return states


def _empty_string_to_none(x):
    return None if x is None or x.strip() == '' else _better_empty_than_spaces(x)


def _parse_npc_name(x: Optional[str]) -> Optional[str]:
    if not x:
        return x
    value = _better_empty_than_spaces(x)
    if value in values_without_d_start:
        return value
    return value[1:]


def _better_empty_than_spaces(x: Optional[str]) -> Optional[str]:
    if not x:
        return x
    value = x.strip()
    if len(value) == 0:
        return ''
    if value.startswith('DO ~'):
        value = value[4:]
    if value.startswith('~'):
        value = value[1:]
    if value.endswith('~'):
        value = value[:-1]
    return value.strip()


def _god_regex(line):
    match = GOD_REGEX.search(line)
    if match is None:
        return None

    g1 = match.group(1)   # answer_condition
    g2 = match.group(2)   # answer_target_state
    g3 = match.group(3)   # state_id
    g4 = match.group(4)   # state_paths
    g5 = match.group(5)   # answer_journal_id
    g6 = match.group(6)   # answer_journal_body
    g7 = match.group(7)   # answer_target_state
    g8 = match.group(8)   # answer_target_state
    g9 = match.group(9)   # answer_id
    g10 = match.group(10) # answer_body
    g11 = match.group(11) # answer_journal_id
    g12 = match.group(12) # answer_journal_body
    g13 = match.group(13) # answer_target_state
    g14 = match.group(14) # answer_target_state
    g15 = match.group(15) # answer_target_state
    g16 = match.group(16) # answer_action / state_free
    g17 = match.group(17) # answer_journal_id
    g18 = match.group(18) # answer_journal_body
    g19 = match.group(19) # answer_target_state
    g20 = match.group(20) # answer_target_state
    g21 = match.group(21) # answer_target_state

    # 'state_id': _choose_single([g3])     # may be found
    # 'state_paths': _choose_single([g4])  # may be found
    # state_say_id      # from other regex
    # state_state_body  # from other regex
    # state_free        # from other regex

    answer_target_state = _choose_single(map(_form_target_state, [g2, g7, g8, g13, g14, g15, g19, g20, g21]))
    no_answer_body = g10 is None
    # has_answer_target_state = answer_target_state is not None
    # has_other_npc = has_answer_target_state and 'other_npc' in answer_target_state and answer_target_state['other_npc'] is not None
    is_autoclick = no_answer_body

    # print('===')
    # print(f'g1 {str(g1)}')
    # print(f'g2 {str(g2)}')
    # print(f'g3 {str(g3)}')
    # print(f'g4 {str(g4)}')
    # print(f'g5 {str(g5)}')
    # print(f'g6 {str(g6)}')
    # print(f'g7 {str(g7)}')
    # print(f'g8 {str(g8)}')
    # print(f'g9 {str(g9)}')
    # print(f'g10 {str(g10)}')
    # print(f'g11 {str(g11)}')
    # print(f'g12 {str(g12)}')
    # print(f'g13 {str(g13)}')
    # print(f'g14 {str(g14)}')
    # print(f'g15 {str(g15)}')
    # print(f'g16 {str(g16)}')
    # print(f'g17 {str(g17)}')
    # print(f'g18 {str(g18)}')
    # print(f'g19 {str(g19)}')
    # print(f'g20 {str(g20)}')
    # print(f'g21 {str(g21)}')
    # print('===')

    return {
        'is_autoclick': is_autoclick,
        # 'state_free': g16 if not is_autoclick else None,
        'state_free': '',
        'answer_condition': g1,
        'answer_action': g16,
        'answer_id': g9,
        'answer_body': g10,
        'answer_journal_id': _choose_single_or_none([g5, g11, g17]),
        'answer_journal_body': _choose_single_or_none([g6, g12, g18]),
        'answer_target_state': answer_target_state,
    }


def _form_target_state(target_state):
    if target_state is None:
        return None
    if target_state == '':
        return None
    if 'GOTO' in target_state:
        return {
            'id': int(target_state.replace('GOTO', '').strip())
        }
    elif 'EXTERN' in target_state:
        asd = _better_empty_than_spaces(target_state).lower().split(' ')
        other_npc = asd[1]
        state_id = asd[2]
        return {
            'id': int(state_id),
            'other_npc': _parse_npc_name(other_npc)
        }
    elif 'EXIT' in target_state:
        return {
            'id': 'EXIT'
        }
    raise Exception(f"Line is strange in REGEX_EXIT: '{target_state}'")


def _choose_single(args):
    return next(item for item in args if item is not None)
def _choose_single_or_none(args):
    if all(arg is None for arg in args):
        return None
    return _choose_single(args)

def _begin_state_regex(line, before_start_buffer):
    state_begin_match = BEGIN_STATE_REGEX.search(line)
    if not state_begin_match:
        return None

    state_id = int(state_begin_match.group(1))
    paths_str = state_begin_match.group(2).strip()

    paths = []
    for s in paths_str.split():
        parts = s.split('.')
        paths.append({
            'from_state_id': int(parts[0]),
            'response_index': int(parts[1])
        })

    return {
        'state_id': state_id,
        'paths': paths,
        'say_id': 0,
        'state_body': '',
        'answers': [],
        'free': _better_empty_than_spaces(before_start_buffer) or None
    }


def _say_regex(line, current_state):
    say_match = SAY_REGEX.search(line)
    if not say_match:
        return None

    say_id = int(say_match.group(1))
    state_body = _better_empty_than_spaces(say_match.group(2))

    return {
        'state_id': current_state['state_id'],
        'paths': current_state['paths'],
        'answers': current_state['answers'],
        'free': current_state['free'],

        'say_id': say_id,
        'state_body': state_body,
    }
