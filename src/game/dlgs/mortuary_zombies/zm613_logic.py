class Zm613LogicGenerated:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r6543_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'law', -1)
        self.state_manager.set_zombie_chaotic(True)


    def r6543_condition(self):
        return not self.state_manager.get_zombie_chaotic()


    def r6544_condition(self):
        return self.state_manager.get_zombie_chaotic()


    def r6545_condition(self):
        return self.state_manager.get_vaxis_exposed()


    def r6546_condition(self):
        return self.state_manager.get_can_speak_with_dead()


class Zm613Logic(Zm613LogicGenerated):
    def __init__(self, state_manager):
        super().__init__(state_manager)
