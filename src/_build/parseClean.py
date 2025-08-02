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
    target_state_id: Union[int, str]  # 'EXIT' or int

@dataclass
class State:
    state_id: int
    paths: List[Path]
    say_id: int
    state_body: str
    answers: List[Answer]
    free: Optional[str] = None

def bets(x: Optional[str]) -> Optional[str]:
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

def parseClean(input_text):
    states = []
    lines = [line.strip() for line in input_text.split('\n') if len(line) > 0]

    current_state = None
    before_start_buffer = ''
    i = 0

    # Pre-compile regex patterns for efficiency
    STATE_BEGIN = re.compile(r'THEN BEGIN (\d+)\s*// from:(.*)')
    SAY = re.compile(r'SAY #(\d+)\s*/\*\s*(.*?)\s*\*/')
    EXTERN = re.compile(r'EXTERN (.*) (\d+)')
    JUST_ACTION1 = re.compile(r'IF ~~ THEN DO(.*)')
    JUST_ACTION2 = re.compile(r'IF ~ ([^~]*?)$')
    ANSWER = re.compile(r'IF\s+~(.*?)~?\s*THEN REPLY #(\d+)\s*/\*\s*(.*?)\s*\*/(.*?)(?:JOURNAL #(\d+) \/\*(.*)\*/)?(?:GOTO (\d+)|EXIT|EXTERN.*)')

    while i < len(lines):
        line = lines[i]

        # Check for state beginning
        state_begin_match = STATE_BEGIN.search(line)
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
        say_match = SAY.search(line)
        if say_match:
            current_state.say_id = int(say_match.group(1))
            current_state.state_body = say_match.group(2).strip()
            i += 1
            continue

        # Process EXTERN command
        extern_match = EXTERN.search(line)
        if extern_match:
            free_value = f"Check EXTERN {extern_match.group(1)} : {extern_match.group(2)}"
            if not current_state.free:
                current_state.free = free_value
            else:
                if free_value not in current_state.free:
                    current_state.free = f"{current_state.free} {free_value}".strip()

        # Process action-only commands
        for pattern in [JUST_ACTION1, JUST_ACTION2]:
            action_match = pattern.search(line)
            if action_match:
                value = action_match.group(1).strip()
                if current_state.free:
                    current_state.free += f" # {value}"
                else:
                    current_state.free = value
                break

        # Process answer
        answer_match = ANSWER.search(line)
        if answer_match:
            groups = answer_match.groups()
            condition = bets(groups[0])
            answer_id = int(groups[1])
            answer_body = groups[2].strip()
            action = bets(groups[3].strip() if groups[3] else None)
            journal_id = int(groups[4]) if groups[4] else 0
            journal_body = bets(groups[5]) if groups[5] else None

            # Determine target state (EXIT or number)
            target = groups[6]
            if target == 'EXIT' or not target:
                target_state_id = 'EXIT'
            else:
                target_state_id = int(target)

            answer = Answer(
                condition=condition,
                action=action,
                answer_id=answer_id,
                answer_body=answer_body,
                journal_id=journal_id,
                journal_body=journal_body,
                target_state_id=target_state_id
            )
            current_state.answers.append(answer)
            i += 1
            continue

        # End of state
        if line == 'END':
            current_state = None

        i += 1

    return states