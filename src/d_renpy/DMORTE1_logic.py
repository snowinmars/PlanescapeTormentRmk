class Morte1Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def r39793_action(self):
        self.gsm.set_meet_morte(True)


    def r39824_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', 1, 'globalgood_morte_1')


    def r39831_action(self):
         self.gsm.set_in_party_morte(True)


    def r39852_action(self):
        self.gsm.set_in_party_morte(True)


    def r39856_action(self):
        self.gsm.set_in_party_morte(True)


    def r39859_action(self):
        self.gsm.set_in_party_morte(True)