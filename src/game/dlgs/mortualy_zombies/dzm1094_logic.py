class Dzm1094Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def dzm1094_init(self):
        self.gsm.glm.set_location('mortuary_f2r1')
        self.gsm.set_meet_dzm1094(True)


    def kill_dzm1094(self):
        self.gsm.set_dead_dzm1094(True)
        self.gsm.inc_exp_custom('party', 65)


    def set_know_asonje_name(self):
        self.gsm.set_know_asonje_name(True)


    def r6565_action(self):
        self.gsm.gcm.modify_property('protagonist', 'law', -1)
        self.gsm.set_zombie_chaotic(True)


    def r6568_action(self):
        self.gsm.set_meet_asonje(True)


    def r9247_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_asonje_1')
        self.gsm.set_asonje_quest_state(3)


    def r9289_action(self):
        self.gsm.set_asonje_quest_state(2)


    def r9290_action(self):
        self.gsm.set_asonje_quest_state(2)


    def r9291_action(self):
        self.gsm.set_asonje_quest_state(2)


    def r9304_action(self):
        self.gsm.inc_once_adahn('Adahn_Death_of_Names_1')


    def get_know_asonje_name(self):
        return self.gsm.get_know_asonje_name()


    def r6565_condition(self):
        return not self.gsm.get_zombie_chaotic()


    def r6566_condition(self):
        return self.gsm.get_zombie_chaotic()


    def r6567_condition(self):
        return self.gsm.get_vaxis_exposed()


    def r6568_condition(self):
        return self.gsm.get_can_speak_with_dead()


    def r9256_condition(self):
        return not self.gsm.get_meet_pharod()


    def r9276_condition(self):
        return not self.gsm.get_meet_pharod()


    def r9282_condition(self):
        return self.gsm.get_asonje_quest_state() != 2


    def r9286_condition(self):
        return self.gsm.get_asonje_quest_state() == 2


    def r9319_condition(self):
        return not self.gsm.get_meet_pharod()


    def r9306_condition(self):
        return self.gsm.get_asonje_quest_state() != 2


    def r9307_condition(self):
        return self.gsm.get_asonje_quest_state() == 2


    def r9312_condition(self):
        return not self.gsm.get_meet_pharod()
