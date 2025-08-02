class Dzm569Logic:
    def __init__(self, gsm):
        self.gsm = gsm


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


    def r42295_condition(self):
        return not self.gsm.get_in_party_morte()