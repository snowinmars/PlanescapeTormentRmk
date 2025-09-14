class Zm1201Logic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r34956_action(self):
        self.state_manager.set_1201_note_retrieved(True)
        self.state_manager.set_has_1201_note(True)
        self.state_manager.gain_experience('party', 250)


    def r45129_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'law', -1)
        self.state_manager.set_zombie_chaotic(True)


    def r34954_condition(self):
        return not self.state_manager.get_1201_note_retrieved()


    def r34957_condition(self):
        return self.state_manager.get_vaxis_exposed()


    def r34958_condition(self):
        return self.state_manager.get_can_speak_with_dead()


    def r34956_condition(self):
        return self.state_manager.get_has_scalpel()


    def r45122_condition(self):
        return not self.state_manager.get_has_scalpel()


    def r45129_condition(self):
        return not self.state_manager.get_zombie_chaotic()


    def r45130_condition(self):
        return self.state_manager.get_zombie_chaotic()


    def r45131_condition(self):
        return self.state_manager.get_vaxis_exposed()


    def r45132_condition(self):
        return self.state_manager.get_can_speak_with_dead()
