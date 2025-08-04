class IntroductionLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager
        self.can_spoiler = False


    def setup_new_life_as_mage(self):
        self.settings_manager.character_manager.set_property('protagonist', 'intelligence', 16)
        self.settings_manager.character_manager.set_property('protagonist', 'wisdom', 17)
        self.settings_manager.character_manager.set_property('protagonist', 'charisma', 15)


    def setup_as_highlvl(self):
        self.settings_manager.set_can_speak_with_dead(True)


    def set_can_spoiler_true(self):
        self.can_spoiler = True

