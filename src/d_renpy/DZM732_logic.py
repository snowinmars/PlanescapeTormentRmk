class Zm732Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def r6533_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r64271_action(self):
        self.gsm.set_has_tome_ba(True)


    def r6533_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r6532_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r6534_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r6535_condition(self):
        return self.gsm.get_can_speak_with_dead()