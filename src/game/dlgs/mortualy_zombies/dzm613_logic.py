class Dzm613Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def dzm613_init(self):
        self.gsm.glm.set_location('mortuary_f2r1')
        self.gsm.set_meet_dzm613(True)


    def kill_dzm613(self):
        self.gsm.set_dead_dzm613(True)
        self.gsm.inc_exp_custom('party', 65)


    def r6543_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r6543_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r6544_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r6545_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r6546_condition(self):
        return self.gsm.get_can_speak_with_dead()
