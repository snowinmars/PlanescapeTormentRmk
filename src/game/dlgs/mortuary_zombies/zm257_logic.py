class Zm257Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def know_zm257_spirit_action(self):
        self.settings_manager.set_know_zm257_spirit(True)


    def r6510_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_zombie_chaotic(True)


    def r9562_action(self):
        self.settings_manager.character_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_zom257_1')


    def r6510_condition(self):
        return not self.settings_manager.get_zombie_chaotic()


    def r6511_condition(self):
        return self.settings_manager.get_zombie_chaotic()


    def r6512_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r6513_condition(self):
        return self.settings_manager.get_can_speak_with_dead()
