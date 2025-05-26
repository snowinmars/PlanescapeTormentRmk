import renpy

allowed_line_endings = tuple([
    '.',
    '.',
    '?',
    '!',
    '…'
])

"""
References and ids are from the NearInfinity
"""
class DialogStateBuilder:
    def __init__(self):
        self.state_id = None
        self.npc_lines = []
        self.responses = {}
        self.next_available_response_id = 0
        self._current_line = None
        self._current_response = None

    def _check_line(self, line):
        if not line.endswith(allowed_line_endings):
            raise Exception(f'Line "{line}" ends with unallowed char. Fix it')
        if len(line) > 200:
            raise Exception(f'Line "{line}" is too long: {len(line)} > 200')

    def state(self, state_id, comment):
        self.state_id = state_id
        self.npc_lines = []
        self.responses = {}
        self.next_available_response_id = 0
        self._current_line = None
        self._current_response = None
        return self

    def with_npc_lines(self):
        return DialogStateBuilder.NpcLinesBuilder(self)

    class NpcLinesBuilder:
        def __init__(self, parent_builder):
            self.parent = parent_builder
            self.last_line = {}
            self.lines = []

        def line(self, npc, text, state_id, say_id):
            """Start building an NPC line"""
            self.parent._check_line(text)

            if 'text' in self.last_line:
                self.lines.append(self.last_line)

            self.last_line = {}
            self.last_line['npc'] = npc
            self.last_line['text'] = text
            return self

        def with_action(self, action):
            """Add action to the current NPC line"""
            self.last_line['action'] = action
            return self

        def with_responses(self):
            """Add NPC line with no action"""
            if 'text' in self.last_line:
                self.lines.append(self.last_line)

            for l in self.lines:
                self.parent.npc_lines.append([
                    l['npc'],
                    l['text'],
                    l['action'] if 'action' in l else None
                ])
            return DialogStateBuilder.ResponsesBuilder(self)


    class ResponsesBuilder:
        def __init__(self, parent_builder):
            self.parent = parent_builder
            self.last_response = {}
            self.responses = []

        def response(self, text, next_state, response_id, reply_id):
            if 'text' in self.last_response:
                self.responses.append(self.last_response)

            self.last_response = {}
            self.last_response['text'] = text
            self.last_response['next_state'] = next_state
            return self

        def with_condition(self, condition):
            self.last_response['condition'] = condition
            return self

        def with_action(self, action):
            self.last_response['action'] = action
            return self

        def push(self, manager):
            if self.last_response['text'] is not None:
                self.responses.append(self.last_response)

            for r in self.responses:
                self.parent.parent.responses[self.parent.parent.next_available_response_id] = {
                    "text": r['text'],
                    "next_state": r['next_state'],
                    "action": r['action'] if 'action' in r else None,
                    "condition": r['condition'] if 'condition' in r else None
                }

                self.parent.parent.next_available_response_id += 1

            manager.add_dialog_state(self.parent.parent.state_id, self.parent.parent.npc_lines, self.parent.parent.responses)
            return self.parent.parent

class DialogManager:
    def __init__(self):
        self.dialog_db = {}
        self.current_dialog_state = None
        self.last_response = None

    def add_dialog_state(self, state_id, npc_lines, responses):
        self.dialog_db[state_id] = {
            "npc_lines": npc_lines,
            "responses": responses
        }

    def start_dialog(self, initial_state):
        self.current_dialog_state = initial_state
        return self.get_current_npc_lines()

    def get_current_npc_lines(self):
        return self.dialog_db[self.current_dialog_state]["npc_lines"]

    def get_available_responses(self):
        return self.dialog_db[self.current_dialog_state]["responses"]

    def choose_response(self, response_id):
        response = self.dialog_db[self.current_dialog_state]["responses"][response_id]
        self.last_response = response_id

        self.current_dialog_state = response["next_state"]
        return self.current_dialog_state

    def advance_to_state(self, state_id):
        self.current_dialog_state = state_id
        return self.get_current_npc_lines()

    def is_state_defined(self, state_id):
        return state_id in self.dialog_db

    def pronounce(self, npc_lines):
        for line in npc_lines:
            if line[2]:
                line[2]()
            renpy.exports.say(line[0], line[1])