class Zm257Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def r6510_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r9562_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'law', -1, 'globalchaotic_zom257_1')


    def r6510_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r6511_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r6512_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r6513_condition(self):
        return self.gsm.get_can_speak_with_dead()