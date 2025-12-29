class Zf1096LogicGenerated:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r35083_action(self):
        self.state_manager.characters_manager.modify_property('protagonist_character_name', 'law', -1)
        self.state_manager.world_manager.set_zombie_chaotic(True)


    def r35083_condition(self):
        return not self.state_manager.world_manager.get_zombie_chaotic()


    def r35100_condition(self):
        return self.state_manager.world_manager.get_zombie_chaotic()


    def r35101_condition(self):
        return self.state_manager.world_manager.get_vaxis_exposed()


    def r35102_condition(self):
        return self.state_manager.world_manager.get_can_speak_with_dead()


    def r35107_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_quip()


    def r35108_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_quip()


    def r35109_condition(self):
        return self.state_manager.world_manager.get_morte_quip()


    def r35110_condition(self):
        return self.state_manager.world_manager.get_morte_quip()


    def r35111_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_quip()


    def r35112_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_quip()


    def r35085_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_quip()


    def r35098_condition(self):
        return self.state_manager.world_manager.get_morte_quip()


    def r35099_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_quip()


    def r35104_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_quip()


    def r35105_condition(self):
        return self.state_manager.world_manager.get_morte_quip()


    def r35106_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_quip()


class Zf1096Logic(Zf1096LogicGenerated):
    def __init__(self, state_manager):
        super().__init__(state_manager)


    def talk(self):
        self.state_manager.world_manager.inc_talked_to_zf1096_times()
