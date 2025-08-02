class Dzf891Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def r35275_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r35275_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r35292_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r35293_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r35294_condition(self):
        return self.gsm.get_can_speak_with_dead()


    def r35299_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35300_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35301_condition(self):
        return self.gsm.get_morte_quip()


    def r35302_condition(self):
        return self.gsm.get_morte_quip()


    def r35303_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35304_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35277_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35290_condition(self):
        return self.gsm.get_morte_quip()


    def r35291_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35296_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35297_condition(self):
        return self.gsm.get_morte_quip()


    def r35298_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()