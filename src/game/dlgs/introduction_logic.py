class IntroductionLogic:
    def __init__(self, gsm):
        self.gsm = gsm
        self.can_spoiler = False


    def setup_new_life_as_mage(self):
        self.gsm.gcm.set_property('protagonist', 'intelligence', 16)
        self.gsm.gcm.set_property('protagonist', 'wisdom', 17)
        self.gsm.gcm.set_property('protagonist', 'charisma', 15)


    def setup_as_highlvl(self):
        self.gsm.set_can_speak_with_dead(True)


    def set_can_spoiler_true(self):
        self.can_spoiler = True

