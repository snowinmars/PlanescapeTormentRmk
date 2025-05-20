dialog_db = {}
current_dialog_state = None
last_response = None

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
        self.last_saved_response = 0

    def add_npc_line(self, npc, line, original_ref):
        """Add an NPC line to the dialog state"""
        self.npc_lines.append([npc, line])
        return self

    def add_response(self, text, next_state, original_ref):
        """Add a player response to the dialog state"""
        self.last_saved_response = self.last_saved_response + 1
        self.responses[self.last_saved_response] = {
            "text": text,
            "next_state": next_state
        }
        return self

    def done(self):
        """Finalize the dialog state and add it to the dialog database"""
        add_dialog_state(self.state_id, self.npc_lines, self.responses)
        return

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

    # No NPC lines for this response, advance to next state immediately
    current_dialog_state = response["next_state"]
    return current_dialog_state


def advance_to_state(state_id):
    """Directly advance to a specific state (for branching)"""
    global current_dialog_state
    current_dialog_state = state_id
    return get_current_npc_lines()

def is_state_defined(state_id):
    return state_id in dialog_db