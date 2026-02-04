class NarratLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def exit_dialogue(self):
        self.state_manager.narrat_manager.add_br()


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


    def get_last_history_id(self):
        return self.state_manager.narrat_manager.get_last_history_id()


    def get_last_menu_items_id(self):
        return self.state_manager.narrat_manager.get_last_menu_items_id()
