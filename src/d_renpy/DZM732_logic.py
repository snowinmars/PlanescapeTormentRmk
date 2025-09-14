class Zm732Logic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r6533_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'law', -1)
        self.state_manager.set_zombie_chaotic(True)


    def r64271_action(self):
        self.state_manager.set_has_tome_ba(True)


    def r6533_condition(self):
        return not self.state_manager.get_zombie_chaotic()


    def r6532_condition(self):
        return self.state_manager.get_zombie_chaotic()


    def r6534_condition(self):
        return self.state_manager.get_vaxis_exposed()


    def r6535_condition(self):
        return self.state_manager.get_can_speak_with_dead()
