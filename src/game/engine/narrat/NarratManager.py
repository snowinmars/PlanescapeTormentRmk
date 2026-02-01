import pickle


class NarratManager:
    def __init__(self, log_events_manager):
        self._log_events_manager = log_events_manager
        self._narrat_store = None


    def set_store(self, narrat_store):
        self._narrat_store = narrat_store


    def add_history_entry(
        self,
        who,
        who_color,
        what,
        is_br=False,
        is_change=False,
        is_scars=False,
        is_nameless=False,
        is_npc=False,
        is_nr=False
    ):
        self._narrat_store.last_history_id = self._narrat_store.last_history_id + 1
        entry = {
            'who': who,
            'who_color': who_color,
            'what': what,
            'is_br': is_br,
            'is_change': is_change,
            'is_scars': is_scars,
            'is_nameless': is_nameless,
            'is_npc': is_npc,
            'is_nr': is_nr,
            'id': self._narrat_store.last_history_id,
        }
        self._narrat_store.history.append(entry)

        if len(self._narrat_store.history) > self._narrat_store.history_entry_limit:
            self._narrat_store.history.pop(0)
            for i, e in enumerate(self._narrat_store.history):
                e['id'] = i


    def report_change(self, change_id, change_kwargs):
        self.add_history_entry(
            change_id,
            '#98afb5',
            change_kwargs,
            is_change = True
        )


    def get_history(self):
        return self._narrat_store.history


    def get_config(self):
        return self._narrat_store.config


    def get_current_line(self):
        return self._narrat_store.current_line


    def get_current_speaker(self):
        if self._narrat_store.current_line is None:
            return None
        return self._narrat_store.current_line['who']


    def get_current_text(self):
        if self._narrat_store.current_line is None:
            return None
        return self._narrat_store.current_line['what']


    def get_current_menu_items(self):
        return self._narrat_store.current_menu_items


    def clear_history(self):
        self._narrat_store.history = []


    def update_current_dialogue(
        self,
        who,
        who_color,
        what,
        is_br=False,
        is_change=False,
        is_scars=False,
        is_nameless=False,
        is_npc=False,
        is_nr=False
    ):
        entry = {
            'who': who,
            'who_color': who_color,
            'what': what,
            'is_br': is_br,
            'is_change': is_change,
            'is_scars': is_scars,
            'is_nameless': is_nameless,
            'is_npc': is_npc,
            'is_nr': is_nr,
            'id': self._narrat_store.last_history_id,
        }
        self._narrat_store.current_line = entry


    def update_menu_items(self, items):
        self._narrat_store.current_menu_items = items if items else []


    def add_menu_choice(self, choice_text):
        self.add_history_entry('protagonist_character_name', '#ff2e21', choice_text, is_nameless=True)
        self._narrat_store.current_menu_items = []


    def add_br(self):
        already_has_br = len(self._narrat_store.history) > 0 and self._narrat_store.history[-1]['is_br']
        if already_has_br:
            return
        self.add_history_entry('nr', '#98afb5', '', is_br=True)
