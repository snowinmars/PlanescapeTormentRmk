class S748LogicGenerated:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r35384_action(self):
        self.state_manager.characters_manager.modify_property('protagonist_character_name', 'law', -1)
        self.state_manager.world_manager.set_skeleton_chaotic(True)


    def r35408_action(self):
        self.state_manager.characters_manager.modify_property('protagonist_character_name', 'law', -1)
        self.state_manager.world_manager.set_skeleton_chaotic(True)


    def r35415_action(self):
        self.state_manager.world_manager.set_skeleton_examine(True)


    def r35448_action(self):
        self.state_manager.world_manager.set_morte_skel_mort_quip2(True)


    def r35456_action(self):
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)


    def r35386_action(self):
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)


    def r35412_action(self):
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)


    def r35417_action(self):
        self.state_manager.world_manager.set_morte_skel_mort_quip2(True)


    def r35445_action(self):
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)


    def r35423_action(self):
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)


    def r35426_action(self):
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)


    def r35431_action(self):
        self.state_manager.world_manager.set_dead_s748(True)
        self.state_manager.world_manager.set_has_spike(True)
        self.state_manager.world_manager.set_has_strap(True)


    def r35434_action(self):
        self.state_manager.world_manager.set_dead_s748(True)
        self.state_manager.world_manager.set_has_spike(True)
        self.state_manager.world_manager.set_has_strap(True)


    def r35384_condition(self):
        return not self.state_manager.world_manager.get_skeleton_chaotic()


    def r35407_condition(self):
        return self.state_manager.world_manager.get_skeleton_chaotic()


    def r35408_condition(self):
        return not self.state_manager.world_manager.get_skeleton_chaotic()


    def r35409_condition(self):
        return self.state_manager.world_manager.get_skeleton_chaotic()


    def r35410_condition(self):
        return self.state_manager.world_manager.get_can_speak_with_dead()


    def r35448_condition(self):
        return self.state_manager.world_manager.get_skeleton_examine() and \
               self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_skel_mort_quip2()


    def r35449_condition(self):
        return self.state_manager.world_manager.get_skeleton_examine() and \
               self.state_manager.world_manager.get_in_party_morte() and \
               self.state_manager.world_manager.get_morte_skel_mort_quip2() and \
               not self.state_manager.inventory_manager.is_own_item('has_prybar') and \
               self.state_manager.characters_manager.get_property('protagonist_character_name', 'strength') < 13


    def r35450_condition(self):
        return self.state_manager.world_manager.get_skeleton_examine() and \
               self.state_manager.world_manager.get_in_party_morte() and \
               self.state_manager.world_manager.get_morte_skel_mort_quip2() and \
               not self.state_manager.inventory_manager.is_own_item('has_prybar') and \
               self.state_manager.characters_manager.get_property('protagonist_character_name', 'strength') > 12


    def r35451_condition(self):
        return self.state_manager.world_manager.get_skeleton_examine() and \
               self.state_manager.world_manager.get_in_party_morte() and \
               self.state_manager.world_manager.get_morte_skel_mort_quip2() and \
               self.state_manager.inventory_manager.is_own_item('has_prybar')


    def r35452_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               self.state_manager.world_manager.get_skeleton_examine() and \
               not self.state_manager.inventory_manager.is_own_item('has_prybar') and \
               self.state_manager.characters_manager.get_property('protagonist_character_name', 'strength') < 13


    def r35453_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               self.state_manager.world_manager.get_skeleton_examine() and \
               not self.state_manager.inventory_manager.is_own_item('has_prybar') and \
               self.state_manager.characters_manager.get_property('protagonist_character_name', 'strength') > 12


    def r35454_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               self.state_manager.world_manager.get_skeleton_examine() and \
               self.state_manager.inventory_manager.is_own_item('has_prybar')


    def r35455_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35456_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35457_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35458_condition(self):
        return self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35386_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35405_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35406_condition(self):
        return self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35412_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35413_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35414_condition(self):
        return self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35417_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_skel_mort_quip2()


    def r35439_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               self.state_manager.world_manager.get_morte_skel_mort_quip2() and \
               not self.state_manager.inventory_manager.is_own_item('has_prybar') and \
               self.state_manager.characters_manager.get_property('protagonist_character_name', 'strength') < 13


    def r35440_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               self.state_manager.world_manager.get_morte_skel_mort_quip2() and \
               not self.state_manager.inventory_manager.is_own_item('has_prybar') and \
               self.state_manager.characters_manager.get_property('protagonist_character_name', 'strength') > 12


    def r35441_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               self.state_manager.world_manager.get_morte_skel_mort_quip2() and \
               self.state_manager.inventory_manager.is_own_item('has_prybar')


    def r35442_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.inventory_manager.is_own_item('has_prybar') and \
               self.state_manager.characters_manager.get_property('protagonist_character_name', 'strength') < 13


    def r35443_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.inventory_manager.is_own_item('has_prybar') and \
               self.state_manager.characters_manager.get_property('protagonist_character_name', 'strength') > 12


    def r35444_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               self.state_manager.inventory_manager.is_own_item('has_prybar')


    def r35445_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35446_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35447_condition(self):
        return self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35423_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'intelligence') > 12 and \
               self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35424_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'intelligence') > 12 and \
               not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35425_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'intelligence') > 12 and \
               self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35426_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35427_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35428_condition(self):
        return self.state_manager.world_manager.get_morte_skel_mort_quip()


class S748Logic(S748LogicGenerated):
    def __init__(self, state_manager):
        super().__init__(state_manager)


    def talk(self):
        self.state_manager.world_manager.inc_talked_to_s748_times()
