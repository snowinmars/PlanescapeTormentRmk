class Zm199LogicGenerated:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def r34976_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_zombie_chaotic(True)


    def r34976_condition(self):
        return not self.settings_manager.get_zombie_chaotic()


    def r34979_condition(self):
        return self.settings_manager.get_zombie_chaotic()


    def r34980_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r34981_condition(self):
        return self.settings_manager.get_can_speak_with_dead()


class Zm199Logic(Zm199LogicGenerated):
    def __init__(self, settings_manager):
        super().__init__(settings_manager)
