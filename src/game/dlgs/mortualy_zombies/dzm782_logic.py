class Dzm782Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def dzm782_init(self):
        self.gsm.glm.set_location('mortuary_f2r1')
        self.gsm.set_meet_dzm782(True)


    def kill_dzm782(self):
        self.gsm.set_dead_dzm782(True)
        self.gsm.inc_exp_custom('party', 65)


    def pick_key_up(self):
        self.gsm.set_has_intro_key(True)


    def has_key_has_morte(self):
        return self.gsm.get_in_party_morte() \
               and self.gsm.get_has_intro_key()


    def no_key_has_morte(self):
        return self.gsm.get_in_party_morte() \
               and not self.gsm.get_has_intro_key()


    def has_key_no_morte(self):
        return not self.gsm.get_in_party_morte() \
               and self.gsm.get_has_intro_key()


    def no_key_no_morte(self):
        return not self.gsm.get_in_party_morte() \
               and not self.gsm.get_has_intro_key()


    def r24709_condition(self):
        return self.no_key_has_morte()


    def r24712_condition(self):
        return self.no_key_no_morte()


    def r24713_condition(self):
        return not self.gsm.get_has_intro_key()


    def r24714_condition(self):
        return self.gsm.get_has_intro_key()
