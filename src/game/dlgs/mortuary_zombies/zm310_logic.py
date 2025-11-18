class Zm310LogicGenerated:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r6499_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'law', -1)
        self.state_manager.world_manager.set_zombie_chaotic(True)


    def r6502_action(self):
        self.state_manager.world_manager.set_oinosian_value(1)


    def r6499_condition(self):
        return not self.state_manager.world_manager.get_zombie_chaotic()


    def r6500_condition(self):
        return self.state_manager.world_manager.get_zombie_chaotic()


    def r6501_condition(self):
        return self.state_manager.world_manager.get_vaxis_exposed()


    def r6502_condition(self):
        return self.state_manager.world_manager.get_can_speak_with_dead()


    def r9664_condition(self):
        return self.state_manager.world_manager.get_pharod_value() == 0


class Zm310Logic(Zm310LogicGenerated):
    def __init__(self, state_manager):
        super().__init__(state_manager)


    def set_know_oinosian_name(self):
        self.state_manager.world_manager.set_know_oinosian_name(True)


    def get_know_oinosian_name(self):
        return self.state_manager.world_manager.get_know_oinosian_name()
