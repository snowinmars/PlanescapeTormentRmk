class Dzf594Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def dzf594_init(self):
        self.gsm.glm.set_location('mortuary_f2r2')
        self.gsm.set_meet_dzf594(True)


    def kill_dzf594(self):
        self.gsm.set_dead_dzf594(True)
        self.gsm.inc_exp_custom('party', 65)


    def r35019_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r35019_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r35036_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r35037_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r35038_condition(self):
        return self.gsm.get_can_speak_with_dead()


    def r35043_condition(self):
        return self.gsm.get_in_party_morte() \
               and not self.gsm.get_morte_quip()


    def r35044_condition(self):
        return self.gsm.get_in_party_morte() \
               and not self.gsm.get_morte_quip()


    def r35045_condition(self):
        return self.gsm.get_morte_quip()


    def r35046_condition(self):
        return self.gsm.get_morte_quip()


    def r35047_condition(self):
        return not self.gsm.get_in_party_morte() \
               and not self.gsm.get_morte_quip()


    def r35048_condition(self):
        return not self.gsm.get_in_party_morte() \
               and not self.gsm.get_morte_quip()


    def r35021_condition(self):
        return self.gsm.get_in_party_morte() \
               and not self.gsm.get_morte_quip()


    def r35034_condition(self):
        return self.gsm.get_morte_quip()


    def r35035_condition(self):
        return not self.gsm.get_in_party_morte() \
               and not self.gsm.get_morte_quip()


    def r35040_condition(self):
        return self.gsm.get_in_party_morte() \
               and not self.gsm.get_morte_quip()


    def r35041_condition(self):
        return self.gsm.get_morte_quip()


    def r35042_condition(self):
        return not self.gsm.get_in_party_morte() \
               and not self.gsm.get_morte_quip()
