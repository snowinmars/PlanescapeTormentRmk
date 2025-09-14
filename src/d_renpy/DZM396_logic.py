class Zm396Logic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r34932_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'law', -1)
        self.state_manager.set_zombie_chaotic(True)


    def r34936_action(self):
        self.state_manager.set_has_bandages(True)


    def r34934_action(self):
        self.state_manager.set_has_bandages(True)


    def r45112_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'law', -1)
        self.state_manager.set_zombie_chaotic(True)


    def r34932_condition(self):
        return not self.state_manager.get_zombie_chaotic()


    def r34935_condition(self):
        return self.state_manager.get_zombie_chaotic()


    def r34937_condition(self):
        return self.state_manager.get_vaxis_exposed()


    def r34940_condition(self):
        return self.state_manager.get_can_speak_with_dead()


    def r34934_condition(self):
        return not self.state_manager.get_has_bandages_zm396()


    def r45112_condition(self):
        return not self.state_manager.get_zombie_chaotic()


    def r45113_condition(self):
        return self.state_manager.get_zombie_chaotic()


    def r45114_condition(self):
        return self.state_manager.get_vaxis_exposed()


    def r45115_condition(self):
        return self.state_manager.get_can_speak_with_dead()
