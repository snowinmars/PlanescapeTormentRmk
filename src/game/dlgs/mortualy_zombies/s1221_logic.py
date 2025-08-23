class S1221Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def r35307_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_skeleton_chaotic(True)


    def r35331_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_skeleton_chaotic(True)


    def r35338_action(self):
        self.settings_manager.set_skeleton_examine(True)


    def r35371_action(self):
        self.settings_manager.set_morte_skel_mort_quip2(True)


    def r35379_action(self):
        self.settings_manager.set_morte_skel_mort_quip(True)


    def r35309_action(self):
        self.settings_manager.set_morte_skel_mort_quip(True)


    def r35335_action(self):
        self.settings_manager.set_morte_skel_mort_quip(True)


    def r35340_action(self):
        self.settings_manager.set_morte_skel_mort_quip2(True)


    def r35368_action(self):
        self.settings_manager.set_morte_skel_mort_quip(True)


    def r35346_action(self):
        self.settings_manager.set_morte_skel_mort_quip(True)


    def r35349_action(self):
        self.settings_manager.set_morte_skel_mort_quip(True)


    def r35354_action(self):
        self.settings_manager.set_dead_s1221(True)
        self.settings_manager.set_has_spike(True)
        self.settings_manager.set_has_strap(True)


    def r35357_action(self):
        self.settings_manager.set_dead_s1221(True)
        self.settings_manager.set_has_spike(True)
        self.settings_manager.set_has_strap(True)


    def r35307_condition(self):
        return not self.settings_manager.get_skeleton_chaotic()


    def r35330_condition(self):
        return self.settings_manager.get_skeleton_chaotic()


    def r35331_condition(self):
        return not self.settings_manager.get_skeleton_chaotic()


    def r35332_condition(self):
        return self.settings_manager.get_skeleton_chaotic()


    def r35333_condition(self):
        return self.settings_manager.get_can_speak_with_dead()


    def r35371_condition(self):
        return self.settings_manager.get_skeleton_examine() and \
               self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_skel_mort_quip2()


    def r35372_condition(self):
        return self.settings_manager.get_skeleton_examine() and \
               self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_morte_skel_mort_quip2() and \
               not self.settings_manager.get_has_prybar() and \
               self.settings_manager.character_manager.get_property('protagonist', 'strength') < 13


    def r35373_condition(self):
        return self.settings_manager.get_skeleton_examine() and \
               self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_morte_skel_mort_quip2() and \
               not self.settings_manager.get_has_prybar() and \
               self.settings_manager.character_manager.get_property('protagonist', 'strength') > 12


    def r35374_condition(self):
        return self.settings_manager.get_skeleton_examine() and \
               self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_morte_skel_mort_quip2() and \
               self.settings_manager.get_has_prybar()


    def r35375_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_skeleton_examine() and \
               not self.settings_manager.get_has_prybar() and \
               self.settings_manager.character_manager.get_property('protagonist', 'strength') < 13


    def r35376_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_skeleton_examine() and \
               not self.settings_manager.get_has_prybar() and \
               self.settings_manager.character_manager.get_property('protagonist', 'strength') > 12


    def r35377_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_skeleton_examine() and \
               self.settings_manager.get_has_prybar()


    def r35378_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_morte_skel_mort_quip()


    def r35379_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_skel_mort_quip()


    def r35380_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_skel_mort_quip()


    def r35381_condition(self):
        return self.settings_manager.get_morte_skel_mort_quip()


    def r35309_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_skel_mort_quip()


    def r35328_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_skel_mort_quip()


    def r35329_condition(self):
        return self.settings_manager.get_morte_skel_mort_quip()


    def r35335_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_skel_mort_quip()


    def r35336_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_skel_mort_quip()


    def r35337_condition(self):
        return self.settings_manager.get_morte_skel_mort_quip()


    def r35340_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_skel_mort_quip2()


    def r35362_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_morte_skel_mort_quip2() and \
               not self.settings_manager.get_has_prybar() and \
               self.settings_manager.character_manager.get_property('protagonist', 'strength') < 13


    def r35363_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_morte_skel_mort_quip2() and \
               not self.settings_manager.get_has_prybar() and \
               self.settings_manager.character_manager.get_property('protagonist', 'strength') > 12


    def r35364_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_morte_skel_mort_quip2() and \
               self.settings_manager.get_has_prybar()


    def r35365_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_has_prybar() and \
               self.settings_manager.character_manager.get_property('protagonist', 'strength') < 13


    def r35366_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_has_prybar() and \
               self.settings_manager.character_manager.get_property('protagonist', 'strength') > 12


    def r35367_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_has_prybar()


    def r35368_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_skel_mort_quip()


    def r35369_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_skel_mort_quip()


    def r35370_condition(self):
        return self.settings_manager.get_morte_skel_mort_quip()


    def r35346_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'intelligence') > 12 and \
               self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_skel_mort_quip()


    def r35347_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'intelligence') > 12 and \
               not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_skel_mort_quip()


    def r35348_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'intelligence') > 12 and \
               self.settings_manager.get_morte_skel_mort_quip()


    def r35349_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_skel_mort_quip()


    def r35350_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_skel_mort_quip()


    def r35351_condition(self):
        return self.settings_manager.get_morte_skel_mort_quip()
