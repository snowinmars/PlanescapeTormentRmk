import pickle

class NarratManager:
    def __init__(self, log_events_manager):
        self._log_events_manager = log_events_manager
        self._narrat_store = None


    def set_store(self, narrat_store):
        self._narrat_store = narrat_store


    def add_history_entry(self, who, what, is_br = False):
        entry = {
            'who': who,
            'what': what,
            'is_br': is_br,
            'id': len(self._narrat_store.history),
        }
        self._narrat_store.history.append(entry)

        if len(self._narrat_store.history) > self._narrat_store.config['history_entry_limit']:
            self._narrat_store.history.pop(0)
            for i, e in enumerate(self._narrat_store.history):
                e['id'] = i

    def get_history(self):
        return self._narrat_store.history

    def get_config(self):
        return self._narrat_store.config

    def get_current_speaker(self):
        return self._narrat_store.current_speaker

    def get_current_text(self):
        return self._narrat_store.current_text

    def get_current_menu_items(self):
        return self._narrat_store.current_menu_items

    def clear_history(self):
        self._narrat_store.history = []

    def update_current_dialogue(self, who, what):
        self._narrat_store.current_speaker = who
        self._narrat_store.current_text = what

    def update_menu_items(self, items):
        self._narrat_store.current_menu_items = items if items else []

    def add_menu_choice(self, choice_text):
        self.add_history_entry("Выбор", choice_text)
        self._narrat_store.current_menu_items = []

    def add_br(self):
        already_has_br = len(self._narrat_store.history) > 0 and self._narrat_store.history[-1]['is_br']
        if already_has_br:
            return
        self.add_history_entry(None, None, True)
