class Dzm199Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def r34976_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r34976_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r34979_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r34980_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r34981_condition(self):
        return self.gsm.get_can_speak_with_dead()