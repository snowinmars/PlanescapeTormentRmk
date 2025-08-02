class Zf1148Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def zf1148_init(self):
        self.gsm.glm.set_location('mortuary_f3r2')
        self.gsm.set_meet_zf1148(True)


    def kill_zf1148(self):
        self.gsm.set_dead_zf1148(True)
        self.gsm.inc_exp_custom('party', 65)


    def r35243_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r35243_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r35260_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r35261_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r35262_condition(self):
        return self.gsm.get_can_speak_with_dead()


    def r35267_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35268_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35269_condition(self):
        return self.gsm.get_morte_quip()


    def r35270_condition(self):
        return self.gsm.get_morte_quip()


    def r35271_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35272_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35245_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35258_condition(self):
        return self.gsm.get_morte_quip()


    def r35259_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35264_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()


    def r35265_condition(self):
        return self.gsm.get_morte_quip()


    def r35266_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_quip()
