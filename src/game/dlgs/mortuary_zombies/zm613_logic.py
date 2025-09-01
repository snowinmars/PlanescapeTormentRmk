class Zm613LogicGenerated:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def r6543_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_zombie_chaotic(True)


    def r6543_condition(self):
        return not self.settings_manager.get_zombie_chaotic()


    def r6544_condition(self):
        return self.settings_manager.get_zombie_chaotic()


    def r6545_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r6546_condition(self):
        return self.settings_manager.get_can_speak_with_dead()


class Zm613Logic(Zm613LogicGenerated):
    def __init__(self, settings_manager):
        super().__init__(settings_manager)
