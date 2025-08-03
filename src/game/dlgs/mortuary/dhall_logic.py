class DhallLogic:
    def __init__(self, gsm):
        self.gsm = gsm


    def dhall_init(self):
        self.gsm.glm.set_location('mortuary_f2r3')
        self.gsm.inc_talked_to_dhall_times()


    def kill_dhall(self):
        self.gsm.set_dead_dhall(True)
        self.gsm.set_has_dhall_feather(True)


    def r827_action(self):
        # SetGlobal("0202_Dhall_Face_Player","AR0202",1)
        return


    def r830_action(self):
        self.gsm.inc_exp_custom('party', 250)
        self.gsm.set_vaxis_betrayed(2)
        self.gsm.update_journal('39468')


    def r831_action(self):
        self.gsm.inc_exp_custom('party', 250)
        self.gsm.set_vaxis_betrayed(2)
        self.gsm.gcm.modify_property_once('protagonist', 'good', -3, 'globalevil_dhall_2')
        self.gsm.update_journal('39469')


    def r843_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_dhall_1')


    def r5069_action(self):
        self.gsm.update_journal('39460')


    def r886_action(self):
        self.gsm.update_journal('39463')


    def r906_action(self):
        self.gsm.update_journal('39464')


    def r921_action(self):
        self.gsm.update_journal('39461')


    def r931_action(self):
        self.gsm.update_journal('39462')


    def r936_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', 1, 'globalgood_dhall_1')


    def r953_action(self):
        self.gsm.inc_once_know_dustmen('globalknow_dustmen')


    def r958_action(self):
        self.gsm.inc_once_know_dustmen('globalknow_dustmen')


    def r1301_action(self):
        self.gsm.update_journal('39470')


    def r974_action(self):
        self.gsm.inc_once_know_dustmen('globalknow_dustmen')


    def r985_action(self):
        self.gsm.inc_once_know_dustmen('globalknow_dustmen')


    def r1327_action(self):
        self.gsm.set_dhall_value(1)


    def r5731_action(self):
        self.gsm.update_journal('39459')


    def r5732_action(self):
        self.gsm.update_journal('39459')


    def r6033_action(self):
        self.gsm.inc_once_know_dustmen('globalknow_dustmen')


    def r6051_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', 1, 'globalgood_dhall_2')


    def r6053_action(self):
        self.gsm.gcm.modify_property_once('protagonist', 'good', -1, 'globalevil_dhall_3')


    def r5070_condition(self):
        return self.gsm.get_deionarra_value() == 0


    def r5071_condition(self):
        return self.gsm.get_deionarra_value() == 0


    def r5072_condition(self):
        return self.gsm.get_deionarra_value() > 0


    def r5073_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 12 and \
               self.gsm.gcm.get_character_property('protagonist', 'wisdom') < 13


    def r5074_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'wisdom') > 12


    def r6064_condition(self):
        return self.gsm.get_deionarra_value() == 0


    def r13288_condition(self):
        return self.gsm.get_deionarra_value() > 0


    def r830_condition(self):
        return not self.gsm.get_vaxis_lawful()


    def r831_condition(self):
        return self.gsm.get_vaxis_lawful()


    def r839_condition(self):
        return self.gsm.get_in_party_morte()


    def r835_condition(self):
        return not self.gsm.get_in_party_morte() and \
               not self.gsm.get_mortualy_alarmed()


    def r5058_condition(self):
        return not self.gsm.get_in_party_morte() and \
               self.gsm.get_mortualy_alarmed()


    def r842_condition(self):
        return self.gsm.get_dhall_value() > 0


    def r843_condition(self):
        return self.gsm.get_dhall_value() > 0


    def r5062_condition(self):
        return self.gsm.get_dhall_value() == 0


    def r854_condition(self):
        return self.gsm.get_vaxis_value() == 1 and \
               not self.gsm.get_dead_vaxis() and \
               not self.gsm.get_vaxis_leave() and \
               self.gsm.get_vaxis_betrayed() == 0


    def r858_condition(self):
        return not self.gsm.get_escape_mortuary() and \
               not self.gsm.glm.is_visited_internal_location('AR0200')


    def r870_condition(self):
        return self.gsm.get_deionarra_value() == 0


    def r891_condition(self):
        return self.gsm.get_pharod_value() == 0


    def r892_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'wisdom') > 11


    def r898_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'wisdom') > 11


    def r910_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'wisdom') > 11


    def r931_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 11


    def r942_condition(self):
        return not self.gsm.get_journal()


    def r943_condition(self):
        return self.gsm.get_pharod_value() == 0


    def r6026_condition(self):
        return self.gsm.get_pharod_value() == 0


    def r874_condition(self):
        return self.gsm.get_pharod_value() > 0


    def r948_condition(self):
        return self.gsm.get_pharod_value() == 0


    def r6027_condition(self):
        return self.gsm.get_pharod_value() == 0


    def r6066_condition(self):
        return self.gsm.get_pharod_value() > 0


    def r964_condition(self):
        return self.gsm.get_pharod_value() == 0


    def r968_condition(self):
        return self.gsm.get_pharod_value() == 0


    def r5076_condition(self):
        return self.gsm.get_deionarra_value() == 0


    def r5077_condition(self):
        return self.gsm.get_deionarra_value() > 0


    def r5078_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 12 and \
               self.gsm.gcm.get_character_property('protagonist', 'wisdom') < 13


    def r5079_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'wisdom') > 12


    def r5081_condition(self):
        return self.gsm.get_deionarra_value() == 0


    def r5082_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 12 and \
               self.gsm.gcm.get_character_property('protagonist', 'wisdom') < 13


    def r5083_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'wisdom') > 12


    def r6032_condition(self):
        return self.gsm.get_morte_mortuary_walkthrough_1()
