class Dzm965Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def dzm965_init(self):
        self.gsm.glm.set_location('mortuary_f2r2')
        self.gsm.set_meet_dzm965(True)


    def kill_dzm965(self):
        self.gsm.set_dead_dzm965(True)
        self.gsm.inc_exp_custom('party', 65)


    def r34923_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r34923_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r45070_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r45071_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r45072_condition(self):
        return self.gsm.get_can_speak_with_dead()
