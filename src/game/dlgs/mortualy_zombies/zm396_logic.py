class Zm396Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def zm396_init(self):
        self.gsm.glm.set_location('mortuary_f2r3')
        self.gsm.set_meet_zm396(True)


    def kill_zm396(self):
        self.gsm.set_dead_zm396(True)
        self.gsm.inc_exp_custom('party', 65)


    def r34932_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r34936_action(self):
        self.gsm.set_has_bandages_zm396(True)
        self.gsm.set_has_bandages(True)


    def r34934_action(self):
        self.gsm.set_has_bandages_zm396(True)
        self.gsm.set_has_bandages(True)


    def r45112_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def get_took_zm396_bandages(self):
        return self.gsm.get_has_bandages_zm396()


    def r34936_condition(self):
        return not self.gsm.get_has_bandages_zm396()


    def r34932_condition(self):
        return not self.gsm.get_has_bandages_zm396() \
               and not self.gsm.get_zombie_chaotic()


    def r34935_condition(self):
        return not self.gsm.get_has_bandages_zm396() \
               and self.gsm.get_zombie_chaotic()


    def r34937_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r34940_condition(self):
        return self.gsm.get_can_speak_with_dead()


    def r34934_condition(self):
        return not self.gsm.get_has_bandages_zm396()


    def r45112_condition(self):
        return self.gsm.get_has_bandages_zm396() \
               and not self.gsm.get_zombie_chaotic()


    def r45113_condition(self):
        return self.gsm.get_has_bandages_zm396() \
               and self.gsm.get_zombie_chaotic()


    def r45114_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r45115_condition(self):
        return self.gsm.get_can_speak_with_dead()
