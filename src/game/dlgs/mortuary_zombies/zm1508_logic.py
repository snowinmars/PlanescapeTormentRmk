class Zm1508LogicGenerated:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r46746_action(self):
        self.state_manager.characters_manager.modify_property('protagonist_character_name', 'law', -1)
        self.state_manager.world_manager.set_zombie_chaotic(True)


    def r46746_condition(self):
        return not self.state_manager.world_manager.get_zombie_chaotic()


    def r46749_condition(self):
        return self.state_manager.world_manager.get_zombie_chaotic()


    def r46750_condition(self):
        return self.state_manager.world_manager.get_vaxis_exposed()


    def r46751_condition(self):
        return self.state_manager.world_manager.get_can_speak_with_dead()


class Zm1508Logic(Zm1508LogicGenerated):
    def __init__(self, state_manager):
        super().__init__(state_manager)
