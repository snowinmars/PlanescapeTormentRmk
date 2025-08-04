from dataclasses import dataclass

@dataclass
class Path:
    from_state_id
    response_index

@dataclass
class Answer:
    condition
    action
    answer_id
    answer_body
    journal_id
    journal_body
    target_state_id  # Can be int or 'EXIT'

@dataclass
class State:
    state_id
    paths
    say_id
    state_body
    answers
    free
