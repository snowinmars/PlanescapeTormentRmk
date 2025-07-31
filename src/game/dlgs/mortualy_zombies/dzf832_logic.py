class Dzf832Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def dzf832_init(self):
        self.gsm.glm.set_location('mortuary_f2r2')
        self.gsm.set_meet_dzf832(True)


    def kill_dzf832(self):
        self.gsm.set_dead_dzf832(True)
        self.gsm.inc_exp_custom('party', 65)


    def r35147_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r35147_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r35164_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r35165_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r35166_condition(self):
        return self.gsm.get_can_speak_with_dead()


    def r35171_condition(self):
        return self.gsm.get_in_party_morte() \
               and not self.gsm.get_morte_quip()


    def r35172_condition(self):
        return self.gsm.get_in_party_morte() \
               and not self.gsm.get_morte_quip()


    def r35173_condition(self):
        return self.gsm.get_morte_quip()


    def r35174_condition(self):
        return self.gsm.get_morte_quip()


    def r35175_condition(self):
        return not self.gsm.get_in_party_morte() \
               and not self.gsm.get_morte_quip()


    def r35176_condition(self):
        return not self.gsm.get_in_party_morte() \
               and not self.gsm.get_morte_quip()


    def r35149_condition(self):
        return self.gsm.get_in_party_morte() \
               and not self.gsm.get_morte_quip()


    def r35162_condition(self):
        return self.gsm.get_morte_quip()


    def r35163_condition(self):
        return not self.gsm.get_in_party_morte() \
               and not self.gsm.get_morte_quip()


    def r35168_condition(self):
        return self.gsm.get_in_party_morte() \
               and not self.gsm.get_morte_quip()


    def r35169_condition(self):
        return self.gsm.get_morte_quip()


    def r35170_condition(self):
        return not self.gsm.get_in_party_morte() \
               and not self.gsm.get_morte_quip()
