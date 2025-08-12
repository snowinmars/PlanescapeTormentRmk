class DhallLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def dhall_init(self):
        self.settings_manager.location_manager.set_location('mortuary_f2r3')
        self.settings_manager.inc_talked_to_dhall_times()


    def dhall_dispose_no_talk(self):
        self.settings_manager.dec_talked_to_dhall_times()


    def kill_dhall(self):
        self.settings_manager.set_dead_dhall(True)
        self.settings_manager.set_has_dhall_feather(True)


    def set_know_dhall_name(self):
        self.settings_manager.set_know_dhall_name(True)


    def get_know_dhall_name(self):
        return self.settings_manager.get_know_dhall_name()


    def r827_action(self):
        # SetGlobal("0202_Dhall_Face_Player","AR0202",1)
        return


    def r830_action(self):
        self.settings_manager.gain_experience('party', 250)
        self.settings_manager.set_vaxis_betrayed(2)
        self.settings_manager.journal_manager.update_journal('39468')


    def r831_action(self):
        self.settings_manager.gain_experience('party', 250)
        self.settings_manager.set_vaxis_betrayed(2)
        self.settings_manager.character_manager.modify_property_once('protagonist', 'good', -3, 'globalevil_dhall_2')
        self.settings_manager.journal_manager.update_journal('39469')


    def r843_action(self):
        self.settings_manager.character_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_dhall_1')


    def r5069_action(self):
        self.settings_manager.journal_manager.update_journal('39460')


    def r886_action(self):
        self.settings_manager.journal_manager.update_journal('39463')


    def r906_action(self):
        self.settings_manager.journal_manager.update_journal('39464')


    def r921_action(self):
        self.settings_manager.journal_manager.update_journal('39461')


    def r931_action(self):
        self.settings_manager.journal_manager.update_journal('39462')


    def r936_action(self):
        self.settings_manager.character_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_dhall_1')


    def r953_action(self):
        self.settings_manager.inc_once_know_dustmen('globalknow_dustmen')


    def r958_action(self):
        self.settings_manager.inc_once_know_dustmen('globalknow_dustmen')


    def r1301_action(self):
        self.settings_manager.journal_manager.update_journal('39470')


    def r974_action(self):
        self.settings_manager.inc_once_know_dustmen('globalknow_dustmen')


    def r985_action(self):
        self.settings_manager.inc_once_know_dustmen('globalknow_dustmen')


    def r1327_action(self):
        self.settings_manager.set_dhall_value(1)


    def r5731_action(self):
        self.settings_manager.journal_manager.update_journal('39459')


    def r5732_action(self):
        self.settings_manager.journal_manager.update_journal('39459')


    def r6033_action(self):
        self.settings_manager.inc_once_know_dustmen('globalknow_dustmen')


    def r6051_action(self):
        self.settings_manager.character_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_dhall_2')


    def r6053_action(self):
        self.settings_manager.character_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_dhall_3')


    def r5070_condition(self):
        return self.settings_manager.get_deionarra_value() == 0


    def r5071_condition(self):
        return self.settings_manager.get_deionarra_value() == 0


    def r5072_condition(self):
        return self.settings_manager.get_deionarra_value() > 0


    def r5073_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'intelligence') > 12 and \
               self.settings_manager.character_manager.get_property('protagonist', 'wisdom') < 13


    def r5074_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') > 12


    def r6064_condition(self):
        return self.settings_manager.get_deionarra_value() == 0


    def r13288_condition(self):
        return self.settings_manager.get_deionarra_value() > 0


    def r830_condition(self):
        return not self.settings_manager.get_vaxis_lawful()


    def r831_condition(self):
        return self.settings_manager.get_vaxis_lawful()


    def r839_condition(self):
        return self.settings_manager.get_in_party_morte()


    def r835_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_mortualy_alarmed()


    def r5058_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_mortualy_alarmed()


    def r842_condition(self):
        return self.settings_manager.get_dhall_value() > 0


    def r843_condition(self):
        return self.settings_manager.get_dhall_value() > 0


    def r5062_condition(self):
        return self.settings_manager.get_dhall_value() == 0


    def r854_condition(self):
        return self.settings_manager.get_vaxis_value() == 1 and \
               not self.settings_manager.get_dead_vaxis() and \
               not self.settings_manager.get_vaxis_leave() and \
               self.settings_manager.get_vaxis_betrayed() == 0


    def r858_condition(self):
        return not self.settings_manager.get_escape_mortuary() and \
               not self.settings_manager.location_manager.is_visited_internal('AR0200')


    def r870_condition(self):
        return self.settings_manager.get_deionarra_value() == 0


    def r891_condition(self):
        return self.settings_manager.get_pharod_value() == 0


    def r892_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') > 11


    def r898_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') > 11


    def r910_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') > 11


    def r931_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'intelligence') > 11


    def r942_condition(self):
        return not self.settings_manager.get_journal()


    def r943_condition(self):
        return self.settings_manager.get_pharod_value() == 0


    def r6026_condition(self):
        return self.settings_manager.get_pharod_value() == 0


    def r874_condition(self):
        return self.settings_manager.get_pharod_value() > 0


    def r948_condition(self):
        return self.settings_manager.get_pharod_value() == 0


    def r6027_condition(self):
        return self.settings_manager.get_pharod_value() == 0


    def r6066_condition(self):
        return self.settings_manager.get_pharod_value() > 0


    def r964_condition(self):
        return self.settings_manager.get_pharod_value() == 0


    def r968_condition(self):
        return self.settings_manager.get_pharod_value() == 0


    def r5076_condition(self):
        return self.settings_manager.get_deionarra_value() == 0


    def r5077_condition(self):
        return self.settings_manager.get_deionarra_value() > 0


    def r5078_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'intelligence') > 12 and \
               self.settings_manager.character_manager.get_property('protagonist', 'wisdom') < 13


    def r5079_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') > 12


    def r5081_condition(self):
        return self.settings_manager.get_deionarra_value() == 0


    def r5082_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'intelligence') > 12 and \
               self.settings_manager.character_manager.get_property('protagonist', 'wisdom') < 13


    def r5083_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') > 12


    def r6032_condition(self):
        return self.settings_manager.get_morte_mortuary_walkthrough_1()
