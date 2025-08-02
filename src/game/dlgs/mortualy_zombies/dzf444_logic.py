class Dzf444Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def dzf444_init(self):
        self.gsm.glm.set_location('mortuary_f2r2')
        self.gsm.set_meet_dzf444(True)


    def kill_dzf444(self):
        self.gsm.set_dead_dzf444(True)
        self.gsm.inc_exp_custom('party', 65)


    def r35211_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r35211_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r35228_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r35229_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r35230_condition(self):
        return self.gsm.get_can_speak_with_dead()


    def r35235_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35236_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35237_condition(self):
        return self.gsm.get_morte_quip()


    def r35238_condition(self):
        return self.gsm.get_morte_quip()


    def r35239_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35240_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35213_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35226_condition(self):
        return self.gsm.get_morte_quip()


    def r35227_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35232_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35233_condition(self):
        return self.gsm.get_morte_quip()


    def r35234_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()
