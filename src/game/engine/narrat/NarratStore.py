import json


class NarratStore():
    def __init__(self):
        self.last_history_id        = 0
        self.history                = []
        self.current_line           = None
        self.current_menu_items     = []
        self.history_entry_limit    = 50


    def __getstate__(self):
        return {
            'last_history_id': self.last_history_id,
            'history': self.history,
            'current_line': self.current_line,
            'current_menu_items': self.current_menu_items,
            'history_entry_limit': self.history_entry_limit
        }


    def __setstate__(self, state):
        self.last_history_id = state['last_history_id']
        self.history = state['history']
        self.current_line = state['current_line']
        self.current_menu_items = state['current_menu_items']
        self.history_entry_limit = state['history_entry_limit']

    # cannot be friend with json
    # because must have links to ADVCharacter etc

    # def toJson(self, indent=None):
    #     return json.dumps(
    #         self.__getstate__(),
    #         ensure_ascii=False,
    #         indent=indent
    #     )


    # @classmethod
    # def fromJson(cls, json_str):
    #     data = json.loads(json_str)
    #     obj = cls()
    #     obj.__setstate__(data)
    #     return obj
