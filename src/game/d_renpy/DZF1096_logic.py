class Dzf1096Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def r35083_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r35083_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r35100_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r35101_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r35102_condition(self):
        return self.gsm.get_can_speak_with_dead()


    def r35109_condition(self):
        return self.gsm.get_morte_quip()


    def r35110_condition(self):
        return self.gsm.get_morte_quip()


    def r35111_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35112_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35098_condition(self):
        return self.gsm.get_morte_quip()


    def r35099_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35105_condition(self):
        return self.gsm.get_morte_quip()


    def r35106_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()