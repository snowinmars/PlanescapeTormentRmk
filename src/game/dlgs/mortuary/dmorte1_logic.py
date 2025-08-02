class Dmorte1Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def dmorte1_init(self):
        self.gsm.glm.set_location('mortuary_f2r1')
        self.gsm.set_in_party_morte(True)


    def r39793_action(self):
        self.gsm.set_meet_morte(True)


    def r39824_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', 1, 'globalgood_morte_1')


    def r39829_action(self):
        self.gsm.set_has_scalpel(True)


    def r39852_action(self):
        self.gsm.set_in_party_morte(True)


    def r39856_action(self):
        self.gsm.set_in_party_morte(True)


    def r39859_action(self):
        self.gsm.set_in_party_morte(True)


    def kill_morte(self):
        self.gsm.set_dead_morte(True)


    def s24_action(self):
        self.gsm.set_has_intro_key(True)
