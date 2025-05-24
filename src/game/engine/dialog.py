dialog_db = {}
current_dialog_state = None
last_response = None

def emptyFunction():
    return

allowed_line_endings = tuple([
    '.',
    '.',
    '?',
    '!',
])

"""
'original_ref' references to NearInfinity id of the line:
- 's1' is 'STATE 1'
- 'r1' is 'RESPONSE 1'
"""
class DialogStateBuilder:
    def __init__(self, state_id):
        self.state_id = state_id
        self.npc_lines = []
        self.responses = {}
        self.next_available_response_id = 0
        self._current_line = None
        self._current_response = None

    def _check_line(self, line):
        if not line.endswith(allowed_line_endings):
            raise Exception(f'Line "{line}" ends with unallowed char. Fix it')
        if len(line) > 150:
            raise Exception(f'Line "{line}" is too long: {len(line)} > 150')

    def with_npc_lines(self):
        """Returns an NpcLinesBuilder subbuilder"""
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
                    l['action'] if 'action' in l else emptyFunction
                ])
            return DialogStateBuilder.ResponsesBuilder(self)


    class ResponsesBuilder:
        def __init__(self, parent_builder):
            self.parent = parent_builder
            self.last_response = {}
            self.responses = []

        def response(self, text, next_state, response_id, reply_id):
            """Start building a response"""
            if 'text' in self.last_response:
                self.responses.append(self.last_response)

            self.last_response = {}
            self.last_response['text'] = text
            self.last_response['next_state'] = next_state
            return self

        def with_condition(self, condition):
            """Add condition to the current response"""
            self.last_response['condition'] = condition
            return self

        def with_action(self, action):
            """Add action to the current response"""
            self.last_response['action'] = action
            return self

        def done(self):
            """Add response with no precheck"""
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

            add_dialog_state(self.parent.parent.state_id, self.parent.parent.npc_lines, self.parent.parent.responses)
            return self

def add_dialog_state(state_id, npc_lines, responses):
    """
    Add a new dialog state to the database.

    Parameters:
    - state_id: Integer state identifier
    - npc_lines: List of strings the NPC says
    - responses: Dictionary of response options:
        {response_id: {"text": response_text,
                        "npc_lines": response_npc_lines,
                        "next_state": next_state_id}}
    """
    global dialog_db

    # if dialog_db[state_id] is not None:
    #     raise Exception(f'Dialog state {state_id} already exists')

    dialog_db[state_id] = {
        "npc_lines": npc_lines,
        "responses": responses
    }

def start_dialog(initial_state):
    """Start a dialog with the given initial state"""
    global current_dialog_state
    current_dialog_state = initial_state
    return get_current_npc_lines()

def get_current_npc_lines():
    """Get NPC lines for the current state"""
    global current_dialog_state, dialog_db
    return dialog_db[current_dialog_state]["npc_lines"]

def get_available_responses():
    """Get all available responses for the current state"""
    global current_dialog_state, dialog_db
    return dialog_db[current_dialog_state]["responses"]

def choose_response(response_id):
    """
    Choose a response and advance the dialog.
    Returns NPC lines for the response and new state.
    """
    global current_dialog_state, last_response, dialog_db

    response = dialog_db[current_dialog_state]["responses"][response_id]
    last_response = response_id

    current_dialog_state = response["next_state"]
    return current_dialog_state

def advance_to_state(state_id):
    """Directly advance to a specific state (for branching)"""
    global current_dialog_state
    current_dialog_state = state_id
    return get_current_npc_lines()

def is_state_defined(state_id):
    return state_id in dialog_db