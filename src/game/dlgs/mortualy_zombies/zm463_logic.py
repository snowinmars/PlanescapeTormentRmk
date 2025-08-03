class Zm463Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def zm463_init(self):
        self.gsm.glm.set_location('mortuary_f2r1')
        self.gsm.inc_talked_to_zm463_times()


    def kill_zm463(self):
        self.gsm.set_dead_zm463(True)
        self.gsm.inc_exp_custom('party', 65)


    def r6485_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r6485_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r6488_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r6489_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r6490_condition(self):
        return self.gsm.get_can_speak_with_dead()
