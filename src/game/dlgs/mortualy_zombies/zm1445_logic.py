class Zm1445Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def zm1445_init(self):
        self.gsm.glm.set_location('mortuary_f2r1')
        self.gsm.set_meet_zm1445(True)


    def kill_zm1445(self):
        self.gsm.set_dead_zm1445(True)
        self.gsm.inc_exp_custom('party', 65)


    def r46757_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r46757_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r46760_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r46761_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r46762_condition(self):
        return self.gsm.get_can_speak_with_dead()
