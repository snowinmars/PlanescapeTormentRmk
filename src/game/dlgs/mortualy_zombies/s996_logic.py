class S996Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def s996_init(self):
        self.gsm.glm.set_location('mortuary_f3r6')
        self.gsm.inc_talked_to_s996_times()


    def r35461_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_skeleton_chaotic(True)


    def r35485_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_skeleton_chaotic(True)


    def r35492_action(self):
        self.gsm.set_skeleton_examine(True)


    def r35525_action(self):
        self.gsm.set_morte_skel_mort_quip2(True)


    def r35533_action(self):
        self.gsm.set_morte_skel_mort_quip(True)


    def r35463_action(self):
        self.gsm.set_morte_skel_mort_quip(True)


    def r35489_action(self):
        self.gsm.set_morte_skel_mort_quip(True)


    def r35494_action(self):
        self.gsm.set_morte_skel_mort_quip2(True)


    def r35522_action(self):
        self.gsm.set_morte_skel_mort_quip(True)


    def r35500_action(self):
        self.gsm.set_morte_skel_mort_quip(True)


    def r35503_action(self):
        self.gsm.set_morte_skel_mort_quip(True)


    def r35508_action(self):
        self.gsm.set_dead_s996(True)
        self.gsm.set_has_spike(True)
        self.gsm.set_has_strap(True)


    def r35511_action(self):
        self.gsm.set_dead_s996(True)
        self.gsm.set_has_spike(True)
        self.gsm.set_has_strap(True)


    def r35461_condition(self):
        return not self.gsm.get_skeleton_chaotic()


    def r35484_condition(self):
        return self.gsm.get_skeleton_chaotic()


    def r35485_condition(self):
        return not self.gsm.get_skeleton_chaotic()


    def r35486_condition(self):
        return self.gsm.get_skeleton_chaotic()


    def r35487_condition(self):
        return self.gsm.get_can_speak_with_dead()


    def r35525_condition(self):
        return self.gsm.get_skeleton_examine() and \
               self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip2()


    def r35526_condition(self):
        return self.gsm.get_skeleton_examine() and \
               self.gsm.get_in_party_morte() and \
               self.gsm.get_morte_skel_mort_quip2() and \
               not self.gsm.get_has_prybar() and \
               self.gsm.gcm.get_character_property('protagonist', 'strength') < 13


    def r35527_condition(self):
        return self.gsm.get_skeleton_examine() and \
               self.gsm.get_in_party_morte() and \
               self.gsm.get_morte_skel_mort_quip2() and \
               not self.gsm.get_has_prybar() and \
               self.gsm.gcm.get_character_property('protagonist', 'strength') > 12


    def r35528_condition(self):
        return self.gsm.get_skeleton_examine() and \
               self.gsm.get_in_party_morte() and \
               self.gsm.get_morte_skel_mort_quip2() and \
               self.gsm.get_has_prybar()


    def r35529_condition(self):
        return not self.gsm.get_in_party_morte() and \
               self.gsm.get_skeleton_examine() and \
               not self.gsm.get_has_prybar() and \
               self.gsm.gcm.get_character_property('protagonist', 'strength') < 13


    def r35530_condition(self):
        return not self.gsm.get_in_party_morte() and \
               self.gsm.get_skeleton_examine() and \
               not self.gsm.get_has_prybar() and \
               self.gsm.gcm.get_character_property('protagonist', 'strength') > 12


    def r35531_condition(self):
        return not self.gsm.get_in_party_morte() and \
               self.gsm.get_skeleton_examine() and \
               self.gsm.get_has_prybar()


    def r35532_condition(self):
        return self.gsm.get_in_party_morte() and \
               self.gsm.get_morte_skel_mort_quip()


    def r35533_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35534_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35535_condition(self):
        return self.gsm.get_morte_skel_mort_quip()


    def r35463_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35482_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35483_condition(self):
        return self.gsm.get_morte_skel_mort_quip()


    def r35489_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35490_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35491_condition(self):
        return self.gsm.get_morte_skel_mort_quip()


    def r35494_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip2()


    def r35516_condition(self):
        return self.gsm.get_in_party_morte() and \
               self.gsm.get_morte_skel_mort_quip2() and \
               not self.gsm.get_has_prybar() and \
               self.gsm.gcm.get_character_property('protagonist', 'strength') < 13


    def r35517_condition(self):
        return self.gsm.get_in_party_morte() and \
               self.gsm.get_morte_skel_mort_quip2() and \
               not self.gsm.get_has_prybar() and \
               self.gsm.gcm.get_character_property('protagonist', 'strength') > 12


    def r35518_condition(self):
        return self.gsm.get_in_party_morte() and \
               self.gsm.get_morte_skel_mort_quip2() and \
               self.gsm.get_has_prybar()


    def r35519_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_has_prybar() and \
               self.gsm.gcm.get_character_property('protagonist', 'strength') < 13


    def r35520_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_has_prybar() and \
               self.gsm.gcm.get_character_property('protagonist', 'strength') > 12


    def r35521_condition(self):
        return not self.gsm.get_in_party_morte() and \
               self.gsm.get_has_prybar()


    def r35522_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35523_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35524_condition(self):
        return self.gsm.get_morte_skel_mort_quip()


    def r35500_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 12 and \
               self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35501_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 12 and \
               not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35502_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 12 and \
               self.gsm.get_morte_skel_mort_quip()


    def r35503_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35504_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35505_condition(self):
        return self.gsm.get_morte_skel_mort_quip()
