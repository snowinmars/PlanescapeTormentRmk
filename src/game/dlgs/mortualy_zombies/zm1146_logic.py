class Zm1146Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def zm1146_init(self):
        self.gsm.glm.set_location('mortuary_f3r2')
        self.gsm.set_meet_zm1146(True)


    def r6521_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r6524_action(self):
        self.gsm.set_meet_crispy(True)


    def r9415_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', 1, 'globalgood_crispy_1')


    def r9426_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_crispy_1')
        self.gsm.gcm.modify_property_once('protagonist', 'law', -1, 'globalchaotic_crispy_1')


    def r6521_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r6522_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r6523_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r6524_condition(self):
        return self.gsm.get_can_speak_with_dead()


    def r9434_condition(self):
        return not self.gsm.get_meet_pharod()
