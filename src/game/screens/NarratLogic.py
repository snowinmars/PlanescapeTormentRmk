class NarratLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def exit_dialogue(self):
        self.state_manager.narrat_manager.add_br()


    def get_screen_width(self):
        screen_width = 600
        return screen_width


    def get_history_height(self):
        screen_height = 1000
        history_area_height = 0.6
        return int(screen_height * history_area_height)


    def get_say_height(self):
        screen_height = 1000
        history_area_height = 0.18
        return int(screen_height * history_area_height)


    def get_menu_height(self):
        screen_height = 1000
        history_area_height = 0.2
        return int(screen_height * history_area_height)


    def actual_history(self):
        actual_history = self.state_manager.narrat_manager.get_history()
        is_inside_dialogue = self.state_manager.narrat_manager.get_current_line() is not None
        if is_inside_dialogue:
            return actual_history[:-1] # the last history line displays in 'say' screen
        return actual_history


    def get_current_line(self):
        return self.state_manager.narrat_manager.get_current_line()


    def get_current_text(self):
        return self.state_manager.narrat_manager.get_current_text()


    def get_current_menu_items(self):
        return self.state_manager.narrat_manager.get_current_menu_items()


    def add_menu_choice(self, caption):
        return self.state_manager.narrat_manager.add_menu_choice(caption)


    def is_br_entry(self, entry):
        return entry['is_br']


    def is_entry_change(self, entry):
        return entry['is_change']


    def is_scars_entry(self, entry):
        return entry['is_scars']


    def is_nameless_entry(self, entry):
        return entry['is_nameless']


    def is_npc_entry(self, entry):
        return entry['is_npc']


    def is_nr_entry(self, entry):
        return entry['is_nr']