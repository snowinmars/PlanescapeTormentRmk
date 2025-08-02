class Zf679Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def zf679_init(self):
        self.gsm.glm.set_location('mortuary_f3r8')
        self.gsm.set_meet_zf679(True)


    def kill_zf679(self):
        self.gsm.set_dead_zf679(True)
        self.gsm.inc_exp_custom('party', 65)


    def r35179_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r35179_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r35196_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r35197_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r35198_condition(self):
        return self.gsm.get_can_speak_with_dead()


    def r35203_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35204_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35205_condition(self):
        return self.gsm.get_morte_quip()


    def r35206_condition(self):
        return self.gsm.get_morte_quip()


    def r35207_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35208_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35181_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35194_condition(self):
        return self.gsm.get_morte_quip()


    def r35195_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35200_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35201_condition(self):
        return self.gsm.get_morte_quip()


    def r35202_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()
