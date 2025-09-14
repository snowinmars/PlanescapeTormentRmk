class Zm965LogicGenerated:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r34923_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'law', -1)
        self.state_manager.set_zombie_chaotic(True)


    def r34923_condition(self):
        return not self.state_manager.get_zombie_chaotic()


    def r45070_condition(self):
        return self.state_manager.get_zombie_chaotic()


    def r45071_condition(self):
        return self.state_manager.get_vaxis_exposed()


    def r45072_condition(self):
        return self.state_manager.get_can_speak_with_dead()


class Zm965Logic(Zm965LogicGenerated):
    def __init__(self, state_manager):
        super().__init__(state_manager)
