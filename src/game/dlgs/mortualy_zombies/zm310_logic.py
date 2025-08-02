class Zm310Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def zm310_init(self):
        self.gsm.glm.set_location('mortuary_f2r1')
        self.gsm.set_meet_zm310(True)


    def kill_zm310(self):
        self.gsm.set_dead_zm310(True)
        self.gsm.inc_exp_custom('party', 65)


    def set_know_oinosian_name(self):
        self.gsm.set_know_oinosian_name(True)


    def r6499_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r6502_action(self):
        self.gsm.set_meet_oinosian(True)


    def get_know_oinosian_name(self):
        return self.gsm.get_know_oinosian_name()


    def r6499_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r6500_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r6501_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r6502_condition(self):
        return self.gsm.get_can_speak_with_dead()


    def r9664_condition(self):
        return not self.gsm.get_meet_pharod()
