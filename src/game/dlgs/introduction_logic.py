class IntroductionLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager
        self.can_spoiler = False


    def setup_new_life_as_mage(self):
        self.state_manager.characters_manager.set_property('protagonist', 'intelligence', 16)
        self.state_manager.characters_manager.set_property('protagonist', 'wisdom', 17)
        self.state_manager.characters_manager.set_property('protagonist', 'charisma', 15)


    def setup_as_highlvl(self):
        self.state_manager.world_manager.set_can_speak_with_dead(True)


    def set_can_spoiler_true(self):
        self.can_spoiler = True
