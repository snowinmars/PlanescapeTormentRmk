class Zm1094Logic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r6565_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'law', -1)
        self.state_manager.set_zombie_chaotic(True)


    def r6568_action(self):
        self.state_manager.set_asonje_value(1)


    def r9247_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_asonje_1')
        self.state_manager.set_asonje_value(3)


    def r9289_action(self):
        self.state_manager.set_asonje_value(2)


    def r9290_action(self):
        self.state_manager.set_asonje_value(2)


    def r9291_action(self):
        self.state_manager.set_asonje_value(2)


    def r9304_action(self):
        self.state_manager.inc_adahn()


    def r6565_condition(self):
        return not self.state_manager.get_zombie_chaotic()


    def r6566_condition(self):
        return self.state_manager.get_zombie_chaotic()


    def r6567_condition(self):
        return self.state_manager.get_vaxis_exposed()


    def r6568_condition(self):
        return self.state_manager.get_can_speak_with_dead()


    def r9256_condition(self):
        return self.state_manager.get_pharod_value() == 0


    def r9276_condition(self):
        return self.state_manager.get_pharod_value() == 0


    def r9282_condition(self):
        return self.state_manager.get_asonje_value() != 2


    def r9286_condition(self):
        return self.state_manager.get_asonje_value() == 2


    def r9319_condition(self):
        return self.state_manager.get_pharod_value() == 0


    def r9306_condition(self):
        return self.state_manager.get_asonje_value() != 2


    def r9307_condition(self):
        return self.state_manager.get_asonje_value() == 2


    def r9312_condition(self):
        return self.state_manager.get_pharod_value() == 0
