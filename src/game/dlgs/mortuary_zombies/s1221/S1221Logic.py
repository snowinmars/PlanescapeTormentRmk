class S1221LogicGenerated:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r35307_action(self):
        self.state_manager.characters_manager.modify_property('protagonist_character_name', 'law', -1)
        self.state_manager.world_manager.set_skeleton_chaotic(True)


    def r35331_action(self):
        self.state_manager.characters_manager.modify_property('protagonist_character_name', 'law', -1)
        self.state_manager.world_manager.set_skeleton_chaotic(True)


    def r35338_action(self):
        self.state_manager.world_manager.set_skeleton_examine(True)


    def r35371_action(self):
        self.state_manager.world_manager.set_morte_skel_mort_quip2(True)


    def r35379_action(self):
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)


    def r35309_action(self):
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)


    def r35335_action(self):
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)


    def r35340_action(self):
        self.state_manager.world_manager.set_morte_skel_mort_quip2(True)


    def r35368_action(self):
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)


    def r35346_action(self):
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)


    def r35349_action(self):
        self.state_manager.world_manager.set_morte_skel_mort_quip(True)


    def r35354_action(self):
        self.state_manager.world_manager.set_dead_s1221(True)
        self.state_manager.inventory_items_manager.pick_item('has_spike')
        self.state_manager.inventory_items_manager.pick_item('has_strap')


    def r35357_action(self):
        self.state_manager.world_manager.set_dead_s1221(True)
        self.state_manager.inventory_items_manager.pick_item('has_spike')
        self.state_manager.inventory_items_manager.pick_item('has_strap')


    def r35307_condition(self):
        return not self.state_manager.world_manager.get_skeleton_chaotic()


    def r35330_condition(self):
        return self.state_manager.world_manager.get_skeleton_chaotic()


    def r35331_condition(self):
        return not self.state_manager.world_manager.get_skeleton_chaotic()


    def r35332_condition(self):
        return self.state_manager.world_manager.get_skeleton_chaotic()


    def r35333_condition(self):
        return self.state_manager.world_manager.get_can_speak_with_dead()


    def r35371_condition(self):
        return self.state_manager.world_manager.get_skeleton_examine() and \
               self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_skel_mort_quip2()


    def r35372_condition(self):
        return self.state_manager.world_manager.get_skeleton_examine() and \
               self.state_manager.world_manager.get_in_party_morte() and \
               self.state_manager.world_manager.get_morte_skel_mort_quip2() and \
               not self.state_manager.inventory_items_manager.is_own_item('has_prybar') and \
               self.state_manager.characters_manager.get_property('protagonist_character_name', 'strength') < 13


    def r35373_condition(self):
        return self.state_manager.world_manager.get_skeleton_examine() and \
               self.state_manager.world_manager.get_in_party_morte() and \
               self.state_manager.world_manager.get_morte_skel_mort_quip2() and \
               not self.state_manager.inventory_items_manager.is_own_item('has_prybar') and \
               self.state_manager.characters_manager.get_property('protagonist_character_name', 'strength') > 12


    def r35374_condition(self):
        return self.state_manager.world_manager.get_skeleton_examine() and \
               self.state_manager.world_manager.get_in_party_morte() and \
               self.state_manager.world_manager.get_morte_skel_mort_quip2() and \
               self.state_manager.inventory_items_manager.is_own_item('has_prybar')


    def r35375_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               self.state_manager.world_manager.get_skeleton_examine() and \
               not self.state_manager.inventory_items_manager.is_own_item('has_prybar') and \
               self.state_manager.characters_manager.get_property('protagonist_character_name', 'strength') < 13


    def r35376_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               self.state_manager.world_manager.get_skeleton_examine() and \
               not self.state_manager.inventory_items_manager.is_own_item('has_prybar') and \
               self.state_manager.characters_manager.get_property('protagonist_character_name', 'strength') > 12


    def r35377_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               self.state_manager.world_manager.get_skeleton_examine() and \
               self.state_manager.inventory_items_manager.is_own_item('has_prybar')


    def r35378_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35379_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35380_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35381_condition(self):
        return self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35309_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35328_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35329_condition(self):
        return self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35335_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35336_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35337_condition(self):
        return self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35340_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_skel_mort_quip2()


    def r35362_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               self.state_manager.world_manager.get_morte_skel_mort_quip2() and \
               not self.state_manager.inventory_items_manager.is_own_item('has_prybar') and \
               self.state_manager.characters_manager.get_property('protagonist_character_name', 'strength') < 13


    def r35363_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               self.state_manager.world_manager.get_morte_skel_mort_quip2() and \
               not self.state_manager.inventory_items_manager.is_own_item('has_prybar') and \
               self.state_manager.characters_manager.get_property('protagonist_character_name', 'strength') > 12


    def r35364_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               self.state_manager.world_manager.get_morte_skel_mort_quip2() and \
               self.state_manager.inventory_items_manager.is_own_item('has_prybar')


    def r35365_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.inventory_items_manager.is_own_item('has_prybar') and \
               self.state_manager.characters_manager.get_property('protagonist_character_name', 'strength') < 13


    def r35366_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.inventory_items_manager.is_own_item('has_prybar') and \
               self.state_manager.characters_manager.get_property('protagonist_character_name', 'strength') > 12


    def r35367_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               self.state_manager.inventory_items_manager.is_own_item('has_prybar')


    def r35368_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35369_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35370_condition(self):
        return self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35346_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'intelligence') > 12 and \
               self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35347_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'intelligence') > 12 and \
               not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35348_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'intelligence') > 12 and \
               self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35349_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35350_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_skel_mort_quip()


    def r35351_condition(self):
        return self.state_manager.world_manager.get_morte_skel_mort_quip()


class S1221Logic(S1221LogicGenerated):
    def __init__(self, state_manager):
        super().__init__(state_manager)


    def talk(self):
        self.state_manager.world_manager.inc_talked_to_s1221_times()
