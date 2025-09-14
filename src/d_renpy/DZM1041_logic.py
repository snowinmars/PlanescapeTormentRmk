class Zm1041Logic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r6576_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'law', -1)
        self.state_manager.set_zombie_chaotic(True)


    def r6583_action(self):
        self.state_manager.set_bei_value(1)


    def r9096_action(self):
        self.state_manager.set_bei_value(1)


    def r9097_action(self):
        self.state_manager.set_bei_value(1)


    def r9161_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_bei_1')


    def r9162_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_bei_1')


    def r9200_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_bei_2')


    def r9201_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_bei_1')


    def r9207_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_bei_3')
        self.state_manager.set_know_xixi(True)


    def r9208_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_bei_2')
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_bei_2')
        self.state_manager.set_know_xixi(True)


    def r9209_action(self):
        self.state_manager.set_know_xixi(True)


    def r9210_action(self):
        self.state_manager.set_know_xixi(True)


    def r6576_condition(self):
        return not self.state_manager.get_zombie_chaotic()


    def r6577_condition(self):
        return self.state_manager.get_zombie_chaotic()


    def r6578_condition(self):
        return self.state_manager.get_vaxis_exposed()


    def r6579_condition(self):
        return self.state_manager.get_can_speak_with_dead() and \
               self.state_manager.get_bei_value() == 0


    def r6580_condition(self):
        return self.state_manager.get_can_speak_with_dead() and \
               self.state_manager.get_bei_value() == 1


    def r9109_condition(self):
        return self.state_manager.get_pharod_value() == 0


    def r9145_condition(self):
        return self.state_manager.get_pharod_value() == 0


    def r9187_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 13
