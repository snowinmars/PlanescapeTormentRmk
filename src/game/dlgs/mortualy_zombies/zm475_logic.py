class Zm475Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def zm475_init(self):
        self.gsm.glm.set_location('mortuary_f3r6')
        self.gsm.set_meet_zm475(True)


    def kill_zm475(self):
        self.gsm.set_dead_zm475(True)
        self.gsm.inc_exp_custom('party', 65)


    def r6587_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r6587_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r6588_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r6589_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r6590_condition(self):
        return self.gsm.get_can_speak_with_dead()
