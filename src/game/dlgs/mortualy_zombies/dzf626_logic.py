class Dzf626Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def dzf626_init(self):
        self.gsm.glm.set_location('mortuary_f2r2')
        self.gsm.set_meet_dzf626(True)


    def kill_dzf626(self):
        self.gsm.set_dead_dzf626(True)
        self.gsm.inc_exp_custom('party', 65)


    def r35051_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r35051_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r35068_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r35069_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r35070_condition(self):
        return self.gsm.get_can_speak_with_dead()


    def r35075_condition(self):
        return self.gsm.get_in_party_morte() \
               and not self.gsm.get_morte_quip()


    def r35076_condition(self):
        return self.gsm.get_in_party_morte() \
               and not self.gsm.get_morte_quip()


    def r35077_condition(self):
        return self.gsm.get_morte_quip()


    def r35078_condition(self):
        return self.gsm.get_morte_quip()


    def r35079_condition(self):
        return not self.gsm.get_in_party_morte() \
               and not self.gsm.get_morte_quip()


    def r35080_condition(self):
        return not self.gsm.get_in_party_morte() \
               and not self.gsm.get_morte_quip()


    def r35053_condition(self):
        return self.gsm.get_in_party_morte() \
               and not self.gsm.get_morte_quip()


    def r35066_condition(self):
        return self.gsm.get_morte_quip()


    def r35067_condition(self):
        return not self.gsm.get_in_party_morte() \
               and not self.gsm.get_morte_quip()


    def r35072_condition(self):
        return self.gsm.get_in_party_morte() \
               and not self.gsm.get_morte_quip()


    def r35073_condition(self):
        return self.gsm.get_morte_quip()


    def r35074_condition(self):
        return not self.gsm.get_in_party_morte() \
               and not self.gsm.get_morte_quip()
