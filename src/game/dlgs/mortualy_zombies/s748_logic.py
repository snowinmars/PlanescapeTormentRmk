class S748Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def s748_init(self):
        self.settings_manager.location_manager.set_location('mortuary_f3r3')
        self.settings_manager.inc_talked_to_s748_times()


    def kill_s748(self):
        self.settings_manager.set_dead_s748(True)


    def r35384_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_skeleton_chaotic(True)


    def r35408_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_skeleton_chaotic(True)


    def r35415_action(self):
        self.settings_manager.set_skeleton_examine(True)


    def r35448_action(self):
        self.settings_manager.set_morte_skel_mort_quip2(True)


    def r35456_action(self):
        self.settings_manager.set_morte_skel_mort_quip(True)


    def r35386_action(self):
        self.settings_manager.set_morte_skel_mort_quip(True)


    def r35412_action(self):
        self.settings_manager.set_morte_skel_mort_quip(True)


    def r35417_action(self):
        self.settings_manager.set_morte_skel_mort_quip2(True)


    def r35445_action(self):
        self.settings_manager.set_morte_skel_mort_quip(True)


    def r35423_action(self):
        self.settings_manager.set_morte_skel_mort_quip(True)


    def r35426_action(self):
        self.settings_manager.set_morte_skel_mort_quip(True)


    def r35431_action(self):
        self.settings_manager.set_dead_s748(True)
        self.settings_manager.set_has_spike(True)
        self.settings_manager.set_has_strap(True)


    def r35434_action(self):
        self.settings_manager.set_dead_s748(True)
        self.settings_manager.set_has_spike(True)
        self.settings_manager.set_has_strap(True)


    def r35384_condition(self):
        return not self.settings_manager.get_skeleton_chaotic()


    def r35407_condition(self):
        return self.settings_manager.get_skeleton_chaotic()


    def r35408_condition(self):
        return not self.settings_manager.get_skeleton_chaotic()


    def r35409_condition(self):
        return self.settings_manager.get_skeleton_chaotic()


    def r35410_condition(self):
        return self.settings_manager.get_can_speak_with_dead()


    def r35448_condition(self):
        return self.settings_manager.get_skeleton_examine() and \
               self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_skel_mort_quip2()


    def r35449_condition(self):
        return self.settings_manager.get_skeleton_examine() and \
               self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_morte_skel_mort_quip2() and \
               not self.settings_manager.get_has_prybar() and \
               self.settings_manager.character_manager.get_property('protagonist', 'strength') < 13


    def r35450_condition(self):
        return self.settings_manager.get_skeleton_examine() and \
               self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_morte_skel_mort_quip2() and \
               not self.settings_manager.get_has_prybar() and \
               self.settings_manager.character_manager.get_property('protagonist', 'strength') > 12


    def r35451_condition(self):
        return self.settings_manager.get_skeleton_examine() and \
               self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_morte_skel_mort_quip2() and \
               self.settings_manager.get_has_prybar()


    def r35452_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_skeleton_examine() and \
               not self.settings_manager.get_has_prybar() and \
               self.settings_manager.character_manager.get_property('protagonist', 'strength') < 13


    def r35453_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_skeleton_examine() and \
               not self.settings_manager.get_has_prybar() and \
               self.settings_manager.character_manager.get_property('protagonist', 'strength') > 12


    def r35454_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_skeleton_examine() and \
               self.settings_manager.get_has_prybar()


    def r35455_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_morte_skel_mort_quip()


    def r35456_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_skel_mort_quip()


    def r35457_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_skel_mort_quip()


    def r35458_condition(self):
        return self.settings_manager.get_morte_skel_mort_quip()


    def r35386_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_skel_mort_quip()


    def r35405_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_skel_mort_quip()


    def r35406_condition(self):
        return self.settings_manager.get_morte_skel_mort_quip()


    def r35412_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_skel_mort_quip()


    def r35413_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_skel_mort_quip()


    def r35414_condition(self):
        return self.settings_manager.get_morte_skel_mort_quip()


    def r35417_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_skel_mort_quip2()


    def r35439_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_morte_skel_mort_quip2() and \
               not self.settings_manager.get_has_prybar() and \
               self.settings_manager.character_manager.get_property('protagonist', 'strength') < 13


    def r35440_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_morte_skel_mort_quip2() and \
               not self.settings_manager.get_has_prybar() and \
               self.settings_manager.character_manager.get_property('protagonist', 'strength') > 12


    def r35441_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_morte_skel_mort_quip2() and \
               self.settings_manager.get_has_prybar()


    def r35442_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_has_prybar() and \
               self.settings_manager.character_manager.get_property('protagonist', 'strength') < 13


    def r35443_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_has_prybar() and \
               self.settings_manager.character_manager.get_property('protagonist', 'strength') > 12


    def r35444_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_has_prybar()


    def r35445_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_skel_mort_quip()


    def r35446_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_skel_mort_quip()


    def r35447_condition(self):
        return self.settings_manager.get_morte_skel_mort_quip()


    def r35423_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'intelligence') > 12 and \
               self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_skel_mort_quip()


    def r35424_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'intelligence') > 12 and \
               not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_skel_mort_quip()


    def r35425_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'intelligence') > 12 and \
               self.settings_manager.get_morte_skel_mort_quip()


    def r35426_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_skel_mort_quip()


    def r35427_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_skel_mort_quip()


    def r35428_condition(self):
        return self.settings_manager.get_morte_skel_mort_quip()
