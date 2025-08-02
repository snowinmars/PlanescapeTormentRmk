class Zm506Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def zm506_init(self):
        self.gsm.glm.set_location('mortuary_f2r5')
        self.gsm.set_meet_zm506(True)


    def kill_zm506(self):
        self.gsm.set_dead_zm506(True)
        self.gsm.inc_exp_custom('party', 65)


    def r45480_action(self):
        self.gsm.set_has_506_thread(True)
        self.gsm.set_has_needle(True)
        self.gsm.inc_exp_custom('party', 100)


    def r45484_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r45502_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def know_506_secret(self):
        return self.gsm.get_has_506_thread()


    def r45420_condition(self):
        return not self.gsm.get_has_506_thread()


    def r45421_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r45422_condition(self):
        return self.gsm.get_can_speak_with_dead()


    def r45480_condition(self):
        return self.gsm.get_has_scalpel()


    def r45481_condition(self):
        return not self.gsm.get_has_scalpel()


    def r45484_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r45496_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r45502_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r45508_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r45510_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r45512_condition(self):
        return self.gsm.get_can_speak_with_dead()
