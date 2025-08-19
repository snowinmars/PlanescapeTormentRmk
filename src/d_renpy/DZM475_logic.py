class Zm475Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def r6587_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_zombie_chaotic(True)


    def r6587_condition(self):
        return not self.settings_manager.get_zombie_chaotic()


    def r6588_condition(self):
        return self.settings_manager.get_zombie_chaotic()


    def r6589_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r6590_condition(self):
        return self.settings_manager.get_can_speak_with_dead()
