class N1201Logic:
    def __init__(self, gsm):
        self.gsm = gsm


    def r44994_action(self):
        self.gsm.set_ur_1201(True)
        self.gsm.set_1201_note_quest(1)


    def r44995_action(self):
        self.gsm.set_lr_1201(True)


    def r44996_action(self):
        self.gsm.set_ll_1201(True)


    def r44997_action(self):
        self.gsm.set_ul_1201(True)


    def r44998_action(self):
        self.gsm.set_ur_1201(False)
        self.gsm.set_lr_1201(False)
        self.gsm.set_ll_1201(False)
        self.gsm.set_ul_1201(False)
        self.gsm.set_1201_note_quest(0)


    def r45000_action(self):
        self.gsm.set_ur_1201(True)


    def r45001_action(self):
        self.gsm.set_1201_note_quest(2)
        self.gsm.set_lr_1201(True)


    def r45002_action(self):
        self.gsm.set_lr_1201(True)
        self.gsm.set_1201_note_quest(0)


    def r45003_action(self):
        self.gsm.set_ll_1201(True)
        self.gsm.set_1201_note_quest(0)


    def r45004_action(self):
        self.gsm.set_ul_1201(True)
        self.gsm.set_1201_note_quest(0)


    def r45006_action(self):
        self.gsm.set_ur_1201(False)
        self.gsm.set_lr_1201(False)
        self.gsm.set_ll_1201(False)
        self.gsm.set_ul_1201(False)
        self.gsm.set_1201_note_quest(0)


    def r45008_action(self):
        self.gsm.set_ur_1201(False)
        self.gsm.set_lr_1201(False)
        self.gsm.set_ll_1201(False)
        self.gsm.set_ul_1201(False)
        self.gsm.set_1201_note_quest(0)


    def r45017_action(self):
        self.gsm.set_ur_1201(False)
        self.gsm.set_lr_1201(False)
        self.gsm.set_ll_1201(False)
        self.gsm.set_ul_1201(False)
        self.gsm.set_1201_note_quest(0)


    def r45018_action(self):
        self.gsm.set_ur_1201(False)
        self.gsm.set_lr_1201(False)
        self.gsm.set_ll_1201(False)
        self.gsm.set_ul_1201(False)
        self.gsm.set_1201_note_quest(0)


    def r45023_action(self):
        self.gsm.inc_exp_custom('party', 250)


    def r45025_action(self):
        self.gsm.set_has_tearring(True)
        self.gsm.set_has_1201_note(False)


    def r45000_condition(self):
        return not self.gsm.get_ur_1201()


    def r45001_condition(self):
        return not self.gsm.get_lr_1201() and \
               self.gsm.get_1201_note_quest() == 1


    def r45002_condition(self):
        return not self.gsm.get_lr_1201() and \
               self.gsm.get_1201_note_quest() != 1


    def r45003_condition(self):
        return not self.gsm.get_ll_1201()


    def r45004_condition(self):
        return not self.gsm.get_ul_1201() and \
               self.gsm.get_1201_note_quest() != 2


    def r45005_condition(self):
        return not self.gsm.get_ul_1201() and \
               self.gsm.get_1201_note_quest() == 2