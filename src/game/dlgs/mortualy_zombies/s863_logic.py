class S863Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def s863_init(self):
        self.gsm.glm.set_location('mortuary_f3r2')
        self.gsm.inc_talked_to_s863_times()


    def r35538_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_skeleton_chaotic(True)


    def r35562_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_skeleton_chaotic(True)


    def r35569_action(self):
        self.gsm.set_skeleton_examine(True)


    def r35602_action(self):
        self.gsm.set_morte_skel_mort_quip2(True)


    def r35610_action(self):
        self.gsm.set_morte_skel_mort_quip(True)


    def r35540_action(self):
        self.gsm.set_morte_skel_mort_quip(True)


    def r35566_action(self):
        self.gsm.set_morte_skel_mort_quip(True)


    def r35571_action(self):
        self.gsm.set_morte_skel_mort_quip2(True)


    def r35599_action(self):
        self.gsm.set_morte_skel_mort_quip(True)


    def r35577_action(self):
        self.gsm.set_morte_skel_mort_quip(True)


    def r35580_action(self):
        self.gsm.set_morte_skel_mort_quip(True)


    def r35585_action(self):
        self.gsm.set_dead_s863(True)
        self.gsm.set_has_spike(True)
        self.gsm.set_has_strap(True)


    def r35588_action(self):
        self.gsm.set_dead_s863(True)
        self.gsm.set_has_spike(True)
        self.gsm.set_has_strap(True)


    def r64266_action(self):
        self.gsm.set_has_dremind(True)


    def r35538_condition(self):
        return not self.gsm.get_skeleton_chaotic()


    def r35561_condition(self):
        return self.gsm.get_skeleton_chaotic()


    def r35562_condition(self):
        return not self.gsm.get_skeleton_chaotic()


    def r35563_condition(self):
        return self.gsm.get_skeleton_chaotic()


    def r35564_condition(self):
        return self.gsm.get_can_speak_with_dead()


    def r35602_condition(self):
        return self.gsm.get_skeleton_examine() and \
               self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip2()


    def r35603_condition(self):
        return self.gsm.get_skeleton_examine() and \
               self.gsm.get_in_party_morte() and \
               self.gsm.get_morte_skel_mort_quip2() and \
               not self.gsm.get_has_prybar() and \
               self.gsm.gcm.get_character_property('protagonist', 'strength') < 13


    def r35604_condition(self):
        return self.gsm.get_skeleton_examine() and \
               self.gsm.get_in_party_morte() and \
               self.gsm.get_morte_skel_mort_quip2() and \
               not self.gsm.get_has_prybar() and \
               self.gsm.gcm.get_character_property('protagonist', 'strength') > 12


    def r35605_condition(self):
        return self.gsm.get_skeleton_examine() and \
               self.gsm.get_in_party_morte() and \
               self.gsm.get_morte_skel_mort_quip2() and \
               self.gsm.get_has_prybar()


    def r35606_condition(self):
        return not self.gsm.get_in_party_morte() and \
               self.gsm.get_skeleton_examine() and \
               not self.gsm.get_has_prybar() and \
               self.gsm.gcm.get_character_property('protagonist', 'strength') < 13


    def r35607_condition(self):
        return not self.gsm.get_in_party_morte() and \
               self.gsm.get_skeleton_examine() and \
               not self.gsm.get_has_prybar() and \
               self.gsm.gcm.get_character_property('protagonist', 'strength') > 12


    def r35608_condition(self):
        return not self.gsm.get_in_party_morte() and \
               self.gsm.get_skeleton_examine() and \
               self.gsm.get_has_prybar()


    def r35609_condition(self):
        return self.gsm.get_in_party_morte() and \
               self.gsm.get_morte_skel_mort_quip()


    def r35610_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35611_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35612_condition(self):
        return self.gsm.get_morte_skel_mort_quip()


    def r35540_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35559_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35560_condition(self):
        return self.gsm.get_morte_skel_mort_quip()


    def r35566_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35567_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35568_condition(self):
        return self.gsm.get_morte_skel_mort_quip()


    def r35571_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip2()


    def r35593_condition(self):
        return self.gsm.get_in_party_morte() and \
               self.gsm.get_morte_skel_mort_quip2() and \
               not self.gsm.get_has_prybar() and \
               self.gsm.gcm.get_character_property('protagonist', 'strength') < 13


    def r35594_condition(self):
        return self.gsm.get_in_party_morte() and \
               self.gsm.get_morte_skel_mort_quip2() and \
               not self.gsm.get_has_prybar() and \
               self.gsm.gcm.get_character_property('protagonist', 'strength') > 12


    def r35595_condition(self):
        return self.gsm.get_in_party_morte() and \
               self.gsm.get_morte_skel_mort_quip2() and \
               self.gsm.get_has_prybar()


    def r35596_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_has_prybar() and \
               self.gsm.gcm.get_character_property('protagonist', 'strength') < 13


    def r35597_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_has_prybar() and \
               self.gsm.gcm.get_character_property('protagonist', 'strength') > 12


    def r35598_condition(self):
        return not self.gsm.get_in_party_morte() and \
               self.gsm.get_has_prybar()


    def r35599_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35600_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35601_condition(self):
        return self.gsm.get_morte_skel_mort_quip()


    def r35577_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 12 and \
               self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35578_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 12 and \
               not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35579_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 12 and \
               self.gsm.get_morte_skel_mort_quip()


    def r35580_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35581_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35582_condition(self):
        return self.gsm.get_morte_skel_mort_quip()
