class Zm1146Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def zm1146_init(self):
        self.settings_manager.location_manager.set_location('mortuary_f3r2')
        self.settings_manager.inc_talked_to_zm1146_times()


    def kill_zm1146(self):
        self.settings_manager.set_dead_zm1146(True)
        self.settings_manager.gain_experience('party', 65)


    def r6521_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_zombie_chaotic(True)


    def r6524_action(self):
        self.settings_manager.set_crispy_value(1)


    def r9415_action(self):
        self.settings_manager.character_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_crispy_1')


    def r9426_action(self):
        self.settings_manager.character_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_crispy_1')
        self.settings_manager.character_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_crispy_1')


    def r6521_condition(self):
        return not self.settings_manager.get_zombie_chaotic()


    def r6522_condition(self):
        return self.settings_manager.get_zombie_chaotic()


    def r6523_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r6524_condition(self):
        return self.settings_manager.get_can_speak_with_dead()


    def r9434_condition(self):
        return self.settings_manager.get_pharod_value() == 0
