class Dzm1508Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def r46746_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r46746_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r46749_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r46750_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r46751_condition(self):
        return self.gsm.get_can_speak_with_dead()