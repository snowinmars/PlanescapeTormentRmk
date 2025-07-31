class Dzf916Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def dzf916_init(self):
        self.gsm.glm.set_location('mortuary_f2r2')
        self.gsm.set_meet_dzf916(True)


    def kill_dzf916(self):
        self.gsm.set_dead_dzf916(True)
        self.gsm.inc_exp_custom('party', 65)


    def r24720_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r24720_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r24737_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r24738_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r24739_condition(self):
        return self.gsm.get_can_speak_with_dead()


    def r24744_condition(self):
        return self.gsm.get_in_party_morte() \
               and not self.gsm.get_morte_quip()


    def r24745_condition(self):
        return self.gsm.get_in_party_morte() \
               and not self.gsm.get_morte_quip()


    def r24746_condition(self):
        return self.gsm.get_morte_quip()


    def r24747_condition(self):
        return self.gsm.get_morte_quip()


    def r24748_condition(self):
        return not self.gsm.get_in_party_morte() \
               and not self.gsm.get_morte_quip()


    def r24749_condition(self):
        return not self.gsm.get_in_party_morte() \
               and not self.gsm.get_morte_quip()


    def r24722_condition(self):
        return self.gsm.get_in_party_morte() \
               and not self.gsm.get_morte_quip()


    def r24735_condition(self):
        return self.gsm.get_morte_quip()


    def r24736_condition(self):
        return not self.gsm.get_in_party_morte() \
               and not self.gsm.get_morte_quip()


    def r24741_condition(self):
        return self.gsm.get_in_party_morte() \
               and not self.gsm.get_morte_quip()


    def r24742_condition(self):
        return self.gsm.get_morte_quip()


    def r24743_condition(self):
        return not self.gsm.get_in_party_morte() \
               and not self.gsm.get_morte_quip()
