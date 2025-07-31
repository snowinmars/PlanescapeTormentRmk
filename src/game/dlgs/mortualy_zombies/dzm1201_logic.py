class Dzm1201Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def dzm1201_init(self):
        self.gsm.glm.set_location('mortuary_f2r3')
        self.gsm.set_meet_dzm1201(True)


    def kill_dzm1201(self):
        self.gsm.set_dead_dzm1201(True)
        self.gsm.inc_exp_custom('party', 65)


    def r34956_action(self):
        self.gsm.set_1201_note_retrieved(True)
        self.gsm.set_has_1201_note(True)
        self.gsm.inc_exp_custom('party', 250)


    def r45129_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r34954_condition(self):
        return not self.gsm.get_1201_note_retrieved()


    def r34957_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r34958_condition(self):
        return self.gsm.get_can_speak_with_dead()


    def r34956_condition(self):
        return self.gsm.get_has_scalpel()


    def r45122_condition(self):
        return not self.gsm.get_has_scalpel()


    def r45129_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r45130_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r45131_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r45132_condition(self):
        return self.gsm.get_can_speak_with_dead()
