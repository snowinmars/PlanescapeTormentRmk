class Zm506LogicGenerated:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r45480_action(self):
        self.state_manager.world_manager.set_has_506_thread(True)
        self.state_manager.inventory_manager.pick_item('has_needle')
        self.state_manager.gain_experience('party', 100)


    def r45484_action(self):
        self.state_manager.characters_manager.modify_property('protagonist_character_name', 'law', -1)
        self.state_manager.world_manager.set_zombie_chaotic(True)


    def r45502_action(self):
        self.state_manager.characters_manager.modify_property('protagonist_character_name', 'law', -1)
        self.state_manager.world_manager.set_zombie_chaotic(True)


    def r45420_condition(self):
        return not self.state_manager.world_manager.get_has_506_thread()


    def r45421_condition(self):
        return self.state_manager.world_manager.get_vaxis_exposed()


    def r45422_condition(self):
        return self.state_manager.world_manager.get_can_speak_with_dead()


    def r45480_condition(self):
        return self.state_manager.inventory_manager.is_own_item('has_scalpel')


    def r45481_condition(self):
        return not self.state_manager.inventory_manager.is_own_item('has_scalpel')


    def r45484_condition(self):
        return not self.state_manager.world_manager.get_zombie_chaotic()


    def r45496_condition(self):
        return self.state_manager.world_manager.get_zombie_chaotic()


    def r45502_condition(self):
        return not self.state_manager.world_manager.get_zombie_chaotic()


    def r45508_condition(self):
        return self.state_manager.world_manager.get_zombie_chaotic()


    def r45510_condition(self):
        return self.state_manager.world_manager.get_vaxis_exposed()


    def r45512_condition(self):
        return self.state_manager.world_manager.get_can_speak_with_dead()


class Zm506Logic(Zm506LogicGenerated):
    def __init__(self, state_manager):
        super().__init__(state_manager)


    def talk(self):
        self.state_manager.world_manager.inc_talked_to_zm506_times()
