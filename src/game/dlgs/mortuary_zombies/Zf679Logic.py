class Zf679LogicGenerated:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r35179_action(self):
        self.state_manager.characters_manager.modify_property('protagonist_character_name', 'law', -1)
        self.state_manager.world_manager.set_zombie_chaotic(True)


    def r35179_condition(self):
        return not self.state_manager.world_manager.get_zombie_chaotic()


    def r35196_condition(self):
        return self.state_manager.world_manager.get_zombie_chaotic()


    def r35197_condition(self):
        return self.state_manager.world_manager.get_vaxis_exposed()


    def r35198_condition(self):
        return self.state_manager.world_manager.get_can_speak_with_dead()


    def r35203_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_quip()


    def r35204_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_quip()


    def r35205_condition(self):
        return self.state_manager.world_manager.get_morte_quip()


    def r35206_condition(self):
        return self.state_manager.world_manager.get_morte_quip()


    def r35207_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_quip()


    def r35208_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_quip()


    def r35181_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_quip()


    def r35194_condition(self):
        return self.state_manager.world_manager.get_morte_quip()


    def r35195_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_quip()


    def r35200_condition(self):
        return self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_quip()


    def r35201_condition(self):
        return self.state_manager.world_manager.get_morte_quip()


    def r35202_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_morte_quip()


class Zf679Logic(Zf679LogicGenerated):
    def __init__(self, state_manager):
        super().__init__(state_manager)


    def talk(self):
        self.state_manager.world_manager.inc_talked_to_zf679_times()
