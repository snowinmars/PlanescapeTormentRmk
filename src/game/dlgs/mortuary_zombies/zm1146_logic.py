class Zm1146LogicGenerated:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


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


class Zm1146Logic(Zm1146LogicGenerated):
    def __init__(self, settings_manager):
        super().__init__(settings_manager)
