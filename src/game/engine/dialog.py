import renpy

allowed_line_endings = tuple([
    '.',
    '.',
    '?',
    '!',
    '…',
    '»'
])

class DialogStateBuilder:
    def __init__(self):
        self.state_id = None
        self.npc_lines = []
        self.responses = {}
        self.init_action = None
        self.next_available_response_id = 0
        self._current_npc_line = None
        self._current_response = None
        self._current_context = None

    def _complete_current(self):
        if self._current_context == 'npc_line' and self._current_npc_line is not None:
            self.npc_lines.append(self._current_npc_line)
            self._current_npc_line = None
        elif self._current_context == 'response' and self._current_response is not None:
            rid = self.next_available_response_id
            self.responses[rid] = self._current_response
            self.next_available_response_id += 1
            self._current_response = None
        self._current_context = None

    def state(self, state_id, comment):
        self._complete_current()
        self.state_id = state_id
        self.npc_lines = []
        self.responses = {}
        self.init_action = None
        self.next_available_response_id = 0
        self._current_npc_line = None
        self._current_response = None
        self._current_context = None
        return self

    def with_action(self, action):
        if self._current_context == 'npc_line':
            self._current_npc_line['action'] = action
        elif self._current_context == 'response':
            self._current_response['action'] = action
        else:
            self.init_action = action
        return self

    def with_condition(self, condition):
        if self._current_context == 'npc_line':
            self._current_npc_line['condition'] = condition
        elif self._current_context == 'response':
            self._current_response['condition'] = condition
        return self

    def with_npc_lines(self):
        return self

    def line(self, npc, text, state_id, say_id):
        self._complete_current()
        self._current_npc_line = {
            'npc': npc,
            'text': text,
            'action': None,
            'condition': None
        }
        self._current_context = 'npc_line'
        return self

    def with_responses(self):
        return self

    def response(self, text, next_state, response_id, reply_id):
        if response_id == 'r':
            raise Exception(f'There cannot be default response id for line "{text}"')
        self._complete_current()
        self._current_response = {
            'text': text,
            'next_state': next_state,
            'action': None,
            'condition': None
        }
        self._current_context = 'response'
        return self

    def push(self, manager):
        self._complete_current()
        for line in self.npc_lines:
            text = line['text']
            if not text.endswith(allowed_line_endings):
                raise Exception(f'Line "{text}" ends with unallowed char. Fix it')
            if len(text) > 200:
                raise Exception(f'Line "{text}" is too long: {len(text)} > 200')
        manager.add_dialog_state(self.state_id, self.npc_lines, self.responses, self.init_action)
        return self


class DialogManager:
    def __init__(self):
        self.dialog_db = {}
        self.current_dialog_state = None
        self.last_response = None

    def add_dialog_state(self, state_id, npc_lines, responses, init_action):
        self.dialog_db[state_id] = {
            "npc_lines": npc_lines,
            "responses": responses,
            'init_action': init_action
        }

    def start_dialog(self, initial_state):
        self.current_dialog_state = initial_state
        return self.get_current_npc_lines()

    def get_current_npc_lines(self):
        return self.dialog_db[self.current_dialog_state]["npc_lines"]

    def get_current_init_action(self):
        return self.dialog_db[self.current_dialog_state]["init_action"]

    def get_available_responses(self):
        return self.dialog_db[self.current_dialog_state]["responses"]

    def choose_response(self, response_id):
        response = self.dialog_db[self.current_dialog_state]["responses"][response_id]
        self.last_response = response_id
        renpy.store.global_history_manager.write_line(renpy.store.characters['the_nameless_one'], response['text'])

        self.current_dialog_state = response["next_state"]
        return self.current_dialog_state

    def advance_to_state(self, state_id):
        self.current_dialog_state = state_id
        return self.get_current_npc_lines()

    def is_state_defined(self, state_id):
        return state_id in self.dialog_db

    def pronounce(self, npc_lines):
        for line in npc_lines:
            if line.get('action'):
                line['action']()
            always = 'condition' not in line or line['condition'] is None
            conditional_ok = line.get('condition') and line['condition']()
            if always or conditional_ok:
                renpy.exports.say(line['npc'], line['text'])
                renpy.store.global_history_manager.write_line(line['npc'], line['text'])
