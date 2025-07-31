class Dzm825Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def dzm825_init(self):
        self.gsm.glm.set_location('mortuary_f2r1')
        self.gsm.set_meet_dzm825(True)


    def kill_dzm825(self):
        self.gsm.set_dead_dzm825(True)
        self.gsm.inc_exp_custom('party', 65)


    def r24565_condition(self):
        return not self.gsm.get_mortuary_walkthrough() \
               and not self.gsm.get_has_intro_key() \
               and self.gsm.get_in_party_morte()


    def r24568_condition(self):
        return not self.gsm.get_mortuary_walkthrough() \
               and not self.gsm.get_has_intro_key() \
               and not self.gsm.get_in_party_morte()


    def r24569_condition(self):
        return self.gsm.get_mortuary_walkthrough()


    def r24570_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r24573_condition(self):
        return self.gsm.get_can_speak_with_dead()


    def r24574_condition(self):
        return not self.gsm.get_mortuary_walkthrough() \
               and not self.gsm.get_has_intro_key()


    def r42312_condition(self):
        return self.gsm.get_in_party_morte()


    def r42313_condition(self):
        return not self.gsm.get_in_party_morte()
