class Zf114Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def zf114_init(self):
        self.gsm.glm.set_location('mortuary_f2r2')
        self.gsm.inc_talked_to_zf114_times()


    def kill_zf114(self):
        self.gsm.set_dead_zf114(True)
        self.gsm.inc_exp_custom('party', 65)


    def r34987_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r34987_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r35004_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r35005_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r35006_condition(self):
        return self.gsm.get_can_speak_with_dead()


    def r35011_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35012_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35013_condition(self):
        return self.gsm.get_morte_quip()


    def r35014_condition(self):
        return self.gsm.get_morte_quip()


    def r35015_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35016_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r34989_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35002_condition(self):
        return self.gsm.get_morte_quip()


    def r35003_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35008_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35009_condition(self):
        return self.gsm.get_morte_quip()


    def r35010_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()
