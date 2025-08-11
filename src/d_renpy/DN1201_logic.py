class N1201Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def n1201_init(self):
        self.settings_manager.location_manager.set_location('LOCATION')
        self.settings_manager.inc_talked_to_n1201_times()


    def kill_n1201(self):
        self.settings_manager.set_dead_n1201(True)


    def r44994_action(self):
        self.settings_manager.set_ur_1201(True)
        self.settings_manager.set_1201_note_quest(1)


    def r44995_action(self):
        self.settings_manager.set_lr_1201(True)


    def r44996_action(self):
        self.settings_manager.set_ll_1201(True)


    def r44997_action(self):
        self.settings_manager.set_ul_1201(True)


    def r44998_action(self):
        self.settings_manager.set_ur_1201(False)
        self.settings_manager.set_lr_1201(False)
        self.settings_manager.set_ll_1201(False)
        self.settings_manager.set_ul_1201(False)
        self.settings_manager.set_1201_note_quest(0)


    def r45000_action(self):
        self.settings_manager.set_ur_1201(True)


    def r45001_action(self):
        self.settings_manager.set_1201_note_quest(2)
        self.settings_manager.set_lr_1201(True)


    def r45002_action(self):
        self.settings_manager.set_lr_1201(True)
        self.settings_manager.set_1201_note_quest(0)


    def r45003_action(self):
        self.settings_manager.set_ll_1201(True)
        self.settings_manager.set_1201_note_quest(0)


    def r45004_action(self):
        self.settings_manager.set_ul_1201(True)
        self.settings_manager.set_1201_note_quest(0)


    def r45006_action(self):
        self.settings_manager.set_ur_1201(False)
        self.settings_manager.set_lr_1201(False)
        self.settings_manager.set_ll_1201(False)
        self.settings_manager.set_ul_1201(False)
        self.settings_manager.set_1201_note_quest(0)


    def r45008_action(self):
        self.settings_manager.set_ur_1201(False)
        self.settings_manager.set_lr_1201(False)
        self.settings_manager.set_ll_1201(False)
        self.settings_manager.set_ul_1201(False)
        self.settings_manager.set_1201_note_quest(0)


    def r45017_action(self):
        self.settings_manager.set_ur_1201(False)
        self.settings_manager.set_lr_1201(False)
        self.settings_manager.set_ll_1201(False)
        self.settings_manager.set_ul_1201(False)
        self.settings_manager.set_1201_note_quest(0)


    def r45018_action(self):
        self.settings_manager.set_ur_1201(False)
        self.settings_manager.set_lr_1201(False)
        self.settings_manager.set_ll_1201(False)
        self.settings_manager.set_ul_1201(False)
        self.settings_manager.set_1201_note_quest(0)


    def r45023_action(self):
        self.settings_manager.gain_experience('party', 250)


    def r45025_action(self):
        self.settings_manager.set_has_tearring(True)
        self.settings_manager.set_has_1201_note(False)


    def r45000_condition(self):
        return not self.settings_manager.get_ur_1201()


    def r45001_condition(self):
        return not self.settings_manager.get_lr_1201() and \
               self.settings_manager.get_1201_note_quest() == 1


    def r45002_condition(self):
        return not self.settings_manager.get_lr_1201() and \
               self.settings_manager.get_1201_note_quest() != 1


    def r45003_condition(self):
        return not self.settings_manager.get_ll_1201()


    def r45004_condition(self):
        return not self.settings_manager.get_ul_1201() and \
               self.settings_manager.get_1201_note_quest() != 2


    def r45005_condition(self):
        return not self.settings_manager.get_ul_1201() and \
               self.settings_manager.get_1201_note_quest() == 2
