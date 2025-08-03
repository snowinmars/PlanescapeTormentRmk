class Zm965Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def zm965_init(self):
        self.gsm.glm.set_location('mortuary_f2r2')
        self.gsm.inc_talked_to_zm965_times()


    def kill_zm965(self):
        self.gsm.set_dead_zm965(True)
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
