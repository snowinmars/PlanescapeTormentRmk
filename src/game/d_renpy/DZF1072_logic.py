class Dzf1072Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def r35115_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r35115_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r35132_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r35133_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r35134_condition(self):
        return self.gsm.get_can_speak_with_dead()


    def r35141_condition(self):
        return self.gsm.get_morte_quip()


    def r35142_condition(self):
        return self.gsm.get_morte_quip()


    def r35143_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35144_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35130_condition(self):
        return self.gsm.get_morte_quip()


    def r35131_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35137_condition(self):
        return self.gsm.get_morte_quip()


    def r35138_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()