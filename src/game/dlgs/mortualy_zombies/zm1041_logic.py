class Zm1041Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def zm1041_init(self):
        self.gsm.glm.set_location('mortuary_f2r1')
        self.gsm.set_meet_zm1041(True)


    def kill_zm1041(self):
        self.gsm.set_dead_zm1041(True)
        self.gsm.inc_exp_custom('party', 65)


    def set_know_bei_name(self):
        self.gsm.set_know_bei_name(True)


    def r6576_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r6583_action(self):
        self.gsm.set_meet_bei(True)


    def r9096_action(self):
        self.gsm.set_meet_bei(True)


    def r9097_action(self):
        self.gsm.set_meet_bei(True)


    def r9161_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', 1, 'globalgood_bei_1')


    def r9162_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_bei_1')


    def r9200_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', 1, 'globalgood_bei_2')


    def r9201_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', -1, 'globalchaotic_bei_1')


    def r9207_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', 1, 'globalgood_bei_3')
        self.gsm.set_know_xixi(True)


    def r9208_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_bei_2')
        self.gsm.gcm.modify_property_once('protagonist', 'law', -1, 'globalchaotic_bei_2')
        self.gsm.set_know_xixi(True)


    def r9209_action(self):
        self.gsm.set_know_xixi(True)


    def r9210_action(self):
        self.gsm.set_know_xixi(True)


    def get_know_bei_name(self):
        return not self.gsm.get_know_bei_name()


    def r6576_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r6577_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r6578_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r6579_condition(self):
        return self.gsm.get_can_speak_with_dead() and \
               not self.gsm.get_meet_bei()


    def r6580_condition(self):
        return self.gsm.get_can_speak_with_dead() and \
               self.gsm.get_meet_bei()


    def r9109_condition(self):
        return not self.gsm.get_meet_pharod()


    def r9145_condition(self):
        return not self.gsm.get_meet_pharod()


    def r9187_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 13
