import re
from dataclasses import dataclass
from typing import List, Optional, Union, Tuple, Pattern

@dataclass(frozen=True)
class Path:
    from_state_id: int
    response_index: int

@dataclass(frozen=True)
class Answer:
    condition: Optional[str]
    action: Optional[str]
    answer_id: int
    answer_body: str
    journal_id: int
    journal_body: Optional[str]
    target_state: set

@dataclass
class State:
    state_id: int
    paths: List[Path]
    say_id: int
    state_body: str
    answers: List[Answer]
    free: Optional[str] = None

def better_empty_than_spaces(x: Optional[str]) -> Optional[str]:
    if not x:
        return x
    value = x.strip()
    if len(value) == 0:
        return ''
    if value.startswith('DO ~'):
        value = value[4:]
    if value.endswith('~'):
        value = value[:-1]
    return value.strip()

REGEX_STATE_BEGIN = re.compile(r'THEN BEGIN (\d+)\s*// from:(.*)')
REGEX_SAY = re.compile(r'SAY #(\d+)\s*/\*\s*(.*?)\s*\*/')
REGEX_STATE_EXTERN = re.compile(r'^(?:IF\s*~~\s*THEN\s+)?EXTERN\s+(~[^~]+~\s+\d+)')
REGEX_ACTION = re.compile(r'IF\s*~~\s*THEN DO\s+(.*)')
REGEX_ANSWER = re.compile(r'IF\s+~(.*?)~?\s*THEN REPLY #(\d+)\s*/\*\s*(.*?)\s*\*/(.*?)(?:JOURNAL #(\d+) \/\*(.*)\*/)?(?:GOTO (\d+)|EXIT|(EXTERN[^)]*))')

def parse_clean(input_text):
    states = []
    lines = [line.strip() for line in input_text.split('\n') if len(line) > 0]

    current_state = None
    before_start_buffer = ''
    i = 0

    while i < len(lines):
        line = lines[i]

        # State beginning detection
        state_begin_match = REGEX_STATE_BEGIN.search(line)
        if state_begin_match:
            state_id = int(state_begin_match.group(1))
            paths_str = state_begin_match.group(2).strip()

            paths = []
            for s in paths_str.split():
                if '.' in s:
                    parts = s.split('.')
                    paths.append(Path(
                        from_state_id=int(parts[0]),
                        response_index=int(parts[1])
                    ))

            current_state = State(
                state_id=state_id,
                paths=paths,
                say_id=0,
                state_body='',
                answers=[],
                free=before_start_buffer or None
            )
            states.append(current_state)
            before_start_buffer = ''
            i += 1
            continue

        # Buffer lines before first state
        if not current_state:
            before_start_buffer += line + ' '
            i += 1
            continue

        # Process SAY command
        say_match = REGEX_SAY.search(line)
        if say_match:
            current_state.say_id = int(say_match.group(1))
            current_state.state_body = say_match.group(2).strip()
            i += 1
            continue

        # Process state-level EXTERN command - create synthetic answer
        state_extern_match = REGEX_STATE_EXTERN.search(line)
        if state_extern_match:
            extern_cmd = state_extern_match.group(1).strip()
            # Create synthetic answer for state-level EXTERN
            other_npc, state_id, = extern_cmd.replace('~', '').strip().lower().split(' ')

            target_state = {
                'id': state_id,
                'other_npc': other_npc[1:]
            }
            answer = Answer(
                condition=None,
                action=None,
                answer_id='synthetic',  # Special ID for synthetic answers
                answer_body='',  # Empty since there's no player response
                journal_id=0,
                journal_body=None,
                target_state=target_state
            )
            current_state.answers.append(answer)
            i += 1
            continue

        # Process action commands
        action_match = REGEX_ACTION.search(line)
        if action_match:
            value = action_match.group(1).strip()
            if current_state.free:
                current_state.free += f" # {value}"
            else:
                current_state.free = value
            i += 1
            continue

        # Process standard answers
        answer_match = REGEX_ANSWER.search(line)
        if answer_match:
            groups = answer_match.groups()
            condition = better_empty_than_spaces(groups[0])
            answer_id = int(groups[1])
            answer_body = groups[2].strip()
            action = better_empty_than_spaces(groups[3].strip() if groups[3] else None)
            journal_id = int(groups[4]) if groups[4] else 0
            journal_body = better_empty_than_spaces(groups[5]) if groups[5] else None

            # Target state handling
            goto_state = groups[6]
            extern_str = groups[7]

            if goto_state is not None:
                target_state = {
                    'id': int(goto_state)
                }
            elif extern_str is not None:
                other_npc, state_id, = extern_str.replace('EXTERN', '').replace('~', '').strip().lower().split(' ')
                target_state = {
                    'id': state_id,
                    'other_npc': other_npc[1:]
                }
            else:
                target_state = {
                    'id': 'EXIT'
                }

            answer = Answer(
                condition=condition,
                action=action,
                answer_id=answer_id,
                answer_body=answer_body,
                journal_id=journal_id,
                journal_body=journal_body,
                target_state=target_state
            )
            current_state.answers.append(answer)
            i += 1
            continue

        # End of state detection
        if line == 'END':
            current_state = None

        i += 1

    return states
