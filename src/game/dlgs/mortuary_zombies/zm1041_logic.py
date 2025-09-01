class Zm1041LogicGenerated:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def r6576_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_zombie_chaotic(True)


    def r6583_action(self):
        self.settings_manager.set_bei_value(1)


    def r9096_action(self):
        self.settings_manager.set_bei_value(1)


    def r9097_action(self):
        self.settings_manager.set_bei_value(1)


    def r9161_action(self):
        self.settings_manager.character_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_bei_1')


    def r9162_action(self):
        self.settings_manager.character_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_bei_1')


    def r9200_action(self):
        self.settings_manager.character_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_bei_2')


    def r9201_action(self):
        self.settings_manager.character_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_bei_1')


    def r9207_action(self):
        self.settings_manager.character_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_bei_3')
        self.settings_manager.set_know_xixi(True)


    def r9208_action(self):
        self.settings_manager.character_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_bei_2')
        self.settings_manager.character_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_bei_2')
        self.settings_manager.set_know_xixi(True)


    def r9209_action(self):
        self.settings_manager.set_know_xixi(True)


    def r9210_action(self):
        self.settings_manager.set_know_xixi(True)


    def r6576_condition(self):
        return not self.settings_manager.get_zombie_chaotic()


    def r6577_condition(self):
        return self.settings_manager.get_zombie_chaotic()


    def r6578_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r6579_condition(self):
        return self.settings_manager.get_can_speak_with_dead() and \
               self.settings_manager.get_bei_value() == 0


    def r6580_condition(self):
        return self.settings_manager.get_can_speak_with_dead() and \
               self.settings_manager.get_bei_value() == 1


    def r9109_condition(self):
        return self.settings_manager.get_pharod_value() == 0


    def r9145_condition(self):
        return self.settings_manager.get_pharod_value() == 0


    def r9187_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'intelligence') > 13


class Zm1041Logic(Zm1041LogicGenerated):
    def __init__(self, settings_manager):
        super().__init__(settings_manager)


    def set_know_bei_name(self):
        self.settings_manager.set_know_bei_name(True)


    def get_know_bei_name(self):
        return not self.settings_manager.get_know_bei_name()
