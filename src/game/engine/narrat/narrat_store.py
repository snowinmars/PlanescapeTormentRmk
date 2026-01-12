import json


class NarratStore():
    def __init__(self):
        self.history = []
        self.current_speaker = None
        self.current_text = ""
        self.current_menu_items = []
        self.config = {
            'choice_text_color': '#ff2e21',
            'choice_text_hover_color': '#f0ede4',
            'npc_text_color': '#9ba290',
            'nameless_text_color': '#c4a28a',
            'nr_text_color': '#98afb5',
            'screen_width': 600,
            'screen_height': 1024,
            'history_area_height': 0.6,
            'dialogue_area_height': 0.1,
            'menu_area_height': 0.2,
            'history_entry_limit': 50,
            'allow_history_scroll': True
        }


    def __getstate__(self):
        return {
            'history': self.history,
            'current_speaker': self.current_speaker,
            'current_text': self.current_text,
            'current_menu_items': self.current_menu_items,
            'config': self.config
        }


    def __setstate__(self, state):
        self.history = state['history']
        self.current_speaker = state['current_speaker']
        self.current_text = state['current_text']
        self.current_menu_items = state['current_menu_items']
        self.config = state['config']

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
