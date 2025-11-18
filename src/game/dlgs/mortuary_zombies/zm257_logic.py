class Zm257LogicGenerated:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r6510_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'law', -1)
        self.state_manager.world_manager.set_zombie_chaotic(True)


    def r9562_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_zom257_1')


    def r6510_condition(self):
        return not self.state_manager.world_manager.get_zombie_chaotic()


    def r6511_condition(self):
        return self.state_manager.world_manager.get_zombie_chaotic()


    def r6512_condition(self):
        return self.state_manager.world_manager.get_vaxis_exposed()


    def r6513_condition(self):
        return self.state_manager.world_manager.get_can_speak_with_dead()


class Zm257Logic(Zm257LogicGenerated):
    def __init__(self, state_manager):
        super().__init__(state_manager)


    def know_zm257_spirit_action(self):
        self.state_manager.world_manager.set_know_zm257_spirit(True)
