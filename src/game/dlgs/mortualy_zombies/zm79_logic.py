class Zm79Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def zm79_init(self):
        self.gsm.glm.set_location('mortuary_f3r8')
        self.gsm.inc_talked_to_zm79_times()


    def kill_zm79(self):
        self.gsm.set_dead_zm79(True)
        self.gsm.inc_exp_custom('party', 65)


    def r34943_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', -1, 'globalzombie_chaotic')


    def r34946_action(self):
        self.gsm.set_know_copper_earring_secret(True)


    def r64279_action(self):
        self.gsm.update_journal('64536')


    def r64280_action(self):
        self.gsm.update_journal('64537')


    def r34946_condition(self):
        return not self.gsm.get_know_copper_earring_secret()


    def r34947_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r34948_condition(self):
        return self.gsm.get_can_speak_with_dead()


    def r64279_condition(self):
        return not self.gsm.get_has_copper_earring_closed()


    def r64280_condition(self):
        return self.gsm.get_has_copper_earring_closed()
