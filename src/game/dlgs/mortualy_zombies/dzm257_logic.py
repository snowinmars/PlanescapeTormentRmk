class Dzm257Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def dzm257_init(self):
        self.gsm.glm.set_location('mortuary_f2r5')
        self.gsm.set_meet_dzm257(True)


    def kill_dzm257(self):
        self.gsm.set_dead_dzm257(True)
        self.gsm.inc_exp_custom('party', 65)


    def know_dzm257_spirit_action(self):
        self.gsm.set_know_dzm257_spirit(True)


    def r6510_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r9562_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', -1, 'globalchaotic_zom257_1')


    def know_dzm257_spirit_condition(self):
        return self.gsm.get_know_dzm257_spirit()


    def r6510_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r6511_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r6512_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r6513_condition(self):
        return self.gsm.get_can_speak_with_dead()
