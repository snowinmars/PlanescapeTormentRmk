class Zm1445Logic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r46757_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'law', -1)
        self.state_manager.set_zombie_chaotic(True)


    def r46757_condition(self):
        return not self.state_manager.get_zombie_chaotic()


    def r46760_condition(self):
        return self.state_manager.get_zombie_chaotic()


    def r46761_condition(self):
        return self.state_manager.get_vaxis_exposed()


    def r46762_condition(self):
        return self.state_manager.get_can_speak_with_dead()
