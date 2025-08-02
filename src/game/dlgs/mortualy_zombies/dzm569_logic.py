class Dzm569Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def dzm569_init(self):
        self.gsm.glm.set_location('mortuary_f2r1')
        self.gsm.set_meet_dzm569(True)


    def kill_dzm569(self):
        self.gsm.set_dead_dzm569(True)
        self.gsm.inc_exp_custom('party', 65)


    def r24576_condition(self):
        return not self.gsm.get_mortuary_walkthrough() and \
               not self.gsm.get_has_intro_key() and \
               self.gsm.get_in_party_morte()


    def r24579_condition(self):
        return not self.gsm.get_mortuary_walkthrough() and \
               not self.gsm.get_has_intro_key() and \
               not self.gsm.get_in_party_morte()


    def r24580_condition(self):
        return self.gsm.get_mortuary_walkthrough()


    def r24581_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r24584_condition(self):
        return self.gsm.get_can_speak_with_dead()


    def r24585_condition(self):
        return not self.gsm.get_mortuary_walkthrough() and \
               not self.gsm.get_has_intro_key()


    def r42294_condition(self):
        return self.gsm.get_in_party_morte()


    def r42295_condition(self):
        return not self.gsm.get_in_party_morte()
