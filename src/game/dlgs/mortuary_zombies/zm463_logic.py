class Zm463LogicGenerated:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r6485_action(self):
        self.state_manager.characters_manager.modify_property('protagonist_character_name', 'law', -1)
        self.state_manager.world_manager.set_zombie_chaotic(True)


    def r6485_condition(self):
        return not self.state_manager.world_manager.get_zombie_chaotic()


    def r6488_condition(self):
        return self.state_manager.world_manager.get_zombie_chaotic()


    def r6489_condition(self):
        return self.state_manager.world_manager.get_vaxis_exposed()


    def r6490_condition(self):
        return self.state_manager.world_manager.get_can_speak_with_dead()


class Zm463Logic(Zm463LogicGenerated):
    def __init__(self, state_manager):
        super().__init__(state_manager)
