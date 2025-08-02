class S748Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def s748_init(self):
        self.gsm.glm.set_location('mortuary_f3r6')
        self.gsm.set_meet_s748(True)


    def r35384_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_skeleton_chaotic(True)


    def r35408_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_skeleton_chaotic(True)


    def r35415_action(self):
        self.gsm.set_skeleton_examine(True)


    def r35448_action(self):
        self.gsm.set_morte_skel_mort_quip2(True)


    def r35456_action(self):
        self.gsm.set_morte_skel_mort_quip(True)


    def r35386_action(self):
        self.gsm.set_morte_skel_mort_quip(True)


    def r35412_action(self):
        self.gsm.set_morte_skel_mort_quip(True)


    def r35417_action(self):
        self.gsm.set_morte_skel_mort_quip2(True)


    def r35445_action(self):
        self.gsm.set_morte_skel_mort_quip(True)


    def r35423_action(self):
        self.gsm.set_morte_skel_mort_quip(True)


    def r35426_action(self):
        self.gsm.set_morte_skel_mort_quip(True)


    def r35431_action(self):
        self.gsm.set_dead_s748(True)
        self.gsm.set_has_spike(True)
        self.gsm.set_has_strap(True)


    def r35434_action(self):
        self.gsm.set_dead_s748(True)
        self.gsm.set_has_spike(True)
        self.gsm.set_has_strap(True)


    def r35384_condition(self):
        return not self.gsm.get_skeleton_chaotic()


    def r35407_condition(self):
        return self.gsm.get_skeleton_chaotic()


    def r35408_condition(self):
        return not self.gsm.get_skeleton_chaotic()


    def r35409_condition(self):
        return self.gsm.get_skeleton_chaotic()


    def r35410_condition(self):
        return self.gsm.get_can_speak_with_dead()


    def r35448_condition(self):
        return self.gsm.get_skeleton_examine() and \
               self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip2()


    def r35449_condition(self):
        return self.gsm.get_skeleton_examine() and \
               self.gsm.get_in_party_morte() and \
               self.gsm.get_morte_skel_mort_quip2() and \
               not self.gsm.get_has_prybar() and \
               self.gsm.gcm.get_character_property('protagonist', 'strength') < 13


    def r35450_condition(self):
        return self.gsm.get_skeleton_examine() and \
               self.gsm.get_in_party_morte() and \
               self.gsm.get_morte_skel_mort_quip2() and \
               not self.gsm.get_has_prybar() and \
               self.gsm.gcm.get_character_property('protagonist', 'strength') > 12


    def r35451_condition(self):
        return self.gsm.get_skeleton_examine() and \
               self.gsm.get_in_party_morte() and \
               self.gsm.get_morte_skel_mort_quip2() and \
               self.gsm.get_has_prybar()


    def r35452_condition(self):
        return not self.gsm.get_in_party_morte() and \
               self.gsm.get_skeleton_examine() and \
               not self.gsm.get_has_prybar() and \
               self.gsm.gcm.get_character_property('protagonist', 'strength') < 13


    def r35453_condition(self):
        return not self.gsm.get_in_party_morte() and \
               self.gsm.get_skeleton_examine() and \
               not self.gsm.get_has_prybar() and \
               self.gsm.gcm.get_character_property('protagonist', 'strength') > 12


    def r35454_condition(self):
        return not self.gsm.get_in_party_morte() and \
               self.gsm.get_skeleton_examine() and \
               self.gsm.get_has_prybar()


    def r35455_condition(self):
        return self.gsm.get_in_party_morte() and \
               self.gsm.get_morte_skel_mort_quip()


    def r35456_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35457_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35458_condition(self):
        return self.gsm.get_morte_skel_mort_quip()


    def r35386_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35405_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35406_condition(self):
        return self.gsm.get_morte_skel_mort_quip()


    def r35412_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35413_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35414_condition(self):
        return self.gsm.get_morte_skel_mort_quip()


    def r35417_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip2()


    def r35439_condition(self):
        return self.gsm.get_in_party_morte() and \
               self.gsm.get_morte_skel_mort_quip2() and \
               not self.gsm.get_has_prybar() and \
               self.gsm.gcm.get_character_property('protagonist', 'strength') < 13


    def r35440_condition(self):
        return self.gsm.get_in_party_morte() and \
               self.gsm.get_morte_skel_mort_quip2() and \
               not self.gsm.get_has_prybar() and \
               self.gsm.gcm.get_character_property('protagonist', 'strength') > 12


    def r35441_condition(self):
        return self.gsm.get_in_party_morte() and \
               self.gsm.get_morte_skel_mort_quip2() and \
               self.gsm.get_has_prybar()


    def r35442_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_has_prybar() and \
               self.gsm.gcm.get_character_property('protagonist', 'strength') < 13


    def r35443_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_has_prybar() and \
               self.gsm.gcm.get_character_property('protagonist', 'strength') > 12


    def r35444_condition(self):
        return not self.gsm.get_in_party_morte() and \
               self.gsm.get_has_prybar()


    def r35445_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35446_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35447_condition(self):
        return self.gsm.get_morte_skel_mort_quip()


    def r35423_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 12 and \
               self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35424_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 12 and \
               not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35425_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 12 and \
               self.gsm.get_morte_skel_mort_quip()


    def r35426_condition(self):
        return self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35427_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_morte_skel_mort_quip()


    def r35428_condition(self):
        return self.gsm.get_morte_skel_mort_quip()
