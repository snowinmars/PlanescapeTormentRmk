class Zm985Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def r45516_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', -1, 'globalchaotic_zm985_1')
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_zm985_1')
        # ?.play_sound("SPE_11") SetAnimState(Myself,ANIM_MIMEDIE)


    def r45517_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', -1, 'globalchaotic_zm985_1')
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_zm985_1')
        # ?.play_sound("SPE_11") SetAnimState(Myself,ANIM_MIMEDIE)


    def r45518_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', 1, 'globallawful_zm985_1')
        self.gsm.gcm.modify_property_once('protagonist', 'good', 1, 'globalgood_zm985_1')


    def r45519_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', 1, 'globallawful_zm985_1')
        self.gsm.gcm.modify_property_once('protagonist', 'good', 1, 'globalgood_zm985_1')


    def r45532_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r45539_action(self):
        # ?.play_sound("SPE_11") SetAnimState(Myself,ANIM_MIMEDIE)


    def r45516_condition(self):
        return self.gsm.get_in_party_morte()


    def r45517_condition(self):
        return not self.gsm.get_in_party_morte()


    def r45518_condition(self):
        return self.gsm.get_in_party_morte()


    def r45519_condition(self):
        return not self.gsm.get_in_party_morte()


    def r45520_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r45521_condition(self):
        return self.gsm.get_can_speak_with_dead()


    def r45532_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r45533_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r45534_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r45535_condition(self):
        return self.gsm.get_can_speak_with_dead()