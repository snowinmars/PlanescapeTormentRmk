class Zm463LogicGenerated:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def r6485_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_zombie_chaotic(True)


    def r6485_condition(self):
        return not self.settings_manager.get_zombie_chaotic()


    def r6488_condition(self):
        return self.settings_manager.get_zombie_chaotic()


    def r6489_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r6490_condition(self):
        return self.settings_manager.get_can_speak_with_dead()


class Zm463Logic(Zm463LogicGenerated):
    def __init__(self, settings_manager):
        super().__init__(settings_manager)
