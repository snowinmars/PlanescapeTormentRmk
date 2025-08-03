class Zm1094Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def r6565_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r6568_action(self):
        self.gsm.set_asonje_value(1)


    def r9247_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_asonje_1')
        self.gsm.set_asonje_value(3)


    def r9289_action(self):
        self.gsm.set_asonje_value(2)


    def r9290_action(self):
        self.gsm.set_asonje_value(2)


    def r9291_action(self):
        self.gsm.set_asonje_value(2)


    def r9304_action(self):
        self.gsm.inc_adahn()


    def r6565_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r6566_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r6567_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r6568_condition(self):
        return self.gsm.get_can_speak_with_dead()


    def r9256_condition(self):
        return self.gsm.get_pharod_value() == 0


    def r9276_condition(self):
        return self.gsm.get_pharod_value() == 0


    def r9282_condition(self):
        return self.gsm.get_asonje_value() != 2


    def r9286_condition(self):
        return self.gsm.get_asonje_value() == 2


    def r9319_condition(self):
        return self.gsm.get_pharod_value() == 0


    def r9306_condition(self):
        return self.gsm.get_asonje_value() != 2


    def r9307_condition(self):
        return self.gsm.get_asonje_value() == 2


    def r9312_condition(self):
        return self.gsm.get_pharod_value() == 0