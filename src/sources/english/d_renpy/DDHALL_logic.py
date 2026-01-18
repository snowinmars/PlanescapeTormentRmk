class DhallLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r827_action(self):
        #$% SetGlobal("0202_Dhall_Face_Player","AR0202",1) %$#
        return


    def r830_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_vaxis_betrayed(2)
        self.state_manager.journal_manager.update_journal('39468')
        #$%.register('39468', 'I told that scribe, Dhall, about Vaxis and his disguise. Dhall should be sending the rest of the Dustmen out to round up Vaxis shortly. %$#')


    def r831_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_vaxis_betrayed(2)
        self.state_manager.characters_manager.modify_property_once('protagonist_character_name', 'good', -3, 'globalevil_dhall_2')
        self.state_manager.journal_manager.update_journal('39469')
        #$%.register('39469', 'I promised Vaxis I wouldn't betray him to the Dustmen, but so what? I told that scribe, Dhall, about him and his disguise. Dhall should be sending the rest of the Dustmen out to round up Vaxis shortly. %$#')


    def r843_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist_character_name', 'good', -1, 'globalevil_dhall_1')


    def j39460_s9_r5069_action(self):
        self.state_manager.journal_manager.update_journal('39460')
        #$% .register('39460', 'I asked Dhall if he knew me, and he responded that he knew little about me - and even less about the companions that had traveled with me in the past. Apparently, their bodies lie in the Mortuary... perhaps seeing them will cause my memories to resurface.') %$#


    def j39463_s15_r886_action(self):
        self.state_manager.journal_manager.update_journal('39463')
        #$% .register('39463', 'Apparently, Pharod delivered my body here in a cart, along with a heap of other corpses. Was I actually *dead* when he did this?') %$#


    def j39464_s19_r906_action(self):
        self.state_manager.journal_manager.update_journal('39464')
        #$% .register('39464', 'Dhall told me that Pharod can be found beyond the Mortuary, in some place called the "Hive." He didn't seem to want me to go hunting for Pharod, but then again, he's not the one who's lost his memories and woken up from the dead, so he can keep his opinions to himself. Dhall suggested I ask some of the people in the Hive where I can find Pharod.') %$#


    def j39461_s21_r921_action(self):
        self.state_manager.journal_manager.update_journal('39461')
        #$% .register('39461', 'Dhall told me that one of the women who journeyed with me is interred in the memorial hall on the first floor of the Mortuary.') %$#


    def j39462_s25_r931_action(self):
        self.state_manager.journal_manager.update_journal('39462')
        #$% .register('39462', 'Dhall told me he is the one responsible for keeping my return visits to the Mortuary a secret from the rest of the Dustmen. Since he is the scribe in the receiving room, he is one of the only ones who sees my body when it arrives here.') %$#


    def r936_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist_character_name', 'good', 1, 'globalgood_dhall_1')


    def r953_action(self):
        self.state_manager.world_manager.inc_once_know_dustmen('globalknow_dustmen')


    def r958_action(self):
        self.state_manager.world_manager.inc_once_know_dustmen('globalknow_dustmen')


    def j39470_s34_r1301_action(self):
        self.state_manager.journal_manager.update_journal('39470')
        #$% .register('39470', 'Dhall suggested that the wounds I have suffered are minor in comparison to the wounds in my mind... he even went so far as to suggest that the wounds I've suffered may be responsible for my loss of memory, and the mental damage may be much greater than amnesia. The thought makes me uneasy - I wouldn't mind hearing some *good* news every once in a while.') %$#


    def r974_action(self):
        self.state_manager.world_manager.inc_once_know_dustmen('globalknow_dustmen')


    def r985_action(self):
        self.state_manager.world_manager.inc_once_know_dustmen('globalknow_dustmen')


    def r1327_action(self):
        self.state_manager.world_manager.set_dhall(1)


    def j39459_s45_r5731_action(self):
        self.state_manager.journal_manager.update_journal('39459')
        #$% .register('39459', 'I met a sickly scribe named Dhall in the Mortuary... he knew I had forgotten myself before I even spoke to him. Did I know him before I lost my memories? I was hoping to get some answers, but this place seems to breed more and more questions.') %$#


    def j39459_s45_r5732_action(self):
        self.state_manager.journal_manager.update_journal('39459')
        #$% .register('39459', 'I met a sickly scribe named Dhall in the Mortuary... he knew I had forgotten myself before I even spoke to him. Did I know him before I lost my memories? I was hoping to get some answers, but this place seems to breed more and more questions.') %$#


    def r6033_action(self):
        self.state_manager.world_manager.inc_once_know_dustmen('globalknow_dustmen')


    def r6051_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist_character_name', 'good', 1, 'globalgood_dhall_2')


    def r6053_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist_character_name', 'good', -1, 'globalevil_dhall_3')


    def r5070_condition(self):
        return self.state_manager.world_manager.get_deionarra() == 0


    def r5071_condition(self):
        return self.state_manager.world_manager.get_deionarra() == 0


    def r5072_condition(self):
        return self.state_manager.world_manager.get_deionarra() > 0


    def r5073_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'intelligence') > 12 and \
               self.state_manager.characters_manager.get_property('protagonist_character_name', 'wisdom') < 13


    def r5074_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'wisdom') > 12


    def r6064_condition(self):
        return self.state_manager.world_manager.get_deionarra() == 0


    def r13288_condition(self):
        return self.state_manager.world_manager.get_deionarra() > 0


    def r830_condition(self):
        return not self.state_manager.world_manager.get_vaxis_lawful()


    def r831_condition(self):
        return self.state_manager.world_manager.get_vaxis_lawful()


    def r839_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r835_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               not self.state_manager.world_manager.get_mortualy_alarmed()


    def r5058_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte() and \
               self.state_manager.world_manager.get_mortualy_alarmed()


    def r842_condition(self):
        return self.state_manager.world_manager.get_dhall() > 0


    def r843_condition(self):
        return self.state_manager.world_manager.get_dhall() > 0


    def r5062_condition(self):
        return self.state_manager.world_manager.get_dhall() == 0


    def r854_condition(self):
        return self.state_manager.world_manager.get_vaxis() == 1 and \
               not self.state_manager.world_manager.get_dead_vaxis() and \
               not self.state_manager.world_manager.get_vaxis_leave() and \
               self.state_manager.world_manager.get_vaxis_betrayed() == 0


    def r858_condition(self):
        return not self.state_manager.world_manager.get_escape_mortuary() and \
               not self.state_manager.locations_manager.is_visited_internal('AR0200')


    def r870_condition(self):
        return self.state_manager.world_manager.get_deionarra() == 0


    def r891_condition(self):
        return self.state_manager.world_manager.get_pharod() == 0


    def r892_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'wisdom') > 11


    def r898_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'wisdom') > 11


    def r910_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'wisdom') > 11


    def r931_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'intelligence') > 11


    def r942_condition(self):
        return not self.state_manager.world_manager.get_journal()


    def r943_condition(self):
        return self.state_manager.world_manager.get_pharod() == 0


    def r6026_condition(self):
        return self.state_manager.world_manager.get_pharod() == 0


    def r874_condition(self):
        return self.state_manager.world_manager.get_pharod() > 0


    def r948_condition(self):
        return self.state_manager.world_manager.get_pharod() == 0


    def r6027_condition(self):
        return self.state_manager.world_manager.get_pharod() == 0


    def r6066_condition(self):
        return self.state_manager.world_manager.get_pharod() > 0


    def r964_condition(self):
        return self.state_manager.world_manager.get_pharod() == 0


    def r968_condition(self):
        return self.state_manager.world_manager.get_pharod() == 0


    def r5076_condition(self):
        return self.state_manager.world_manager.get_deionarra() == 0


    def r5077_condition(self):
        return self.state_manager.world_manager.get_deionarra() > 0


    def r5078_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'intelligence') > 12 and \
               self.state_manager.characters_manager.get_property('protagonist_character_name', 'wisdom') < 13


    def r5079_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'wisdom') > 12


    def r5081_condition(self):
        return self.state_manager.world_manager.get_deionarra() == 0


    def r5082_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'intelligence') > 12 and \
               self.state_manager.characters_manager.get_property('protagonist_character_name', 'wisdom') < 13


    def r5083_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist_character_name', 'wisdom') > 12


    def r6032_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()
