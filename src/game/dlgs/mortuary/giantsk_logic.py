class GiantskLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def giantsk_init(self):
        self.settings_manager.location_manager.set_location('mortuary_f1rc')
        self.settings_manager.inc_talked_to_giantsk_times()


    def kill_giantsk(self):
        self.settings_manager.set_dead_giantsk(True)
        self.settings_manager.gain_experience('party', 500)


    def r293_action(self):
        self.settings_manager.character_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_giant_skel_mort_1')


    def r1165_action(self):
        self.settings_manager.character_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_giant_skel_mort_1')


    def r4042_action(self):
        # Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)
        self.settings_manager.set_mortualy_alarmed(True)


    def r4079_action(self):
        self.settings_manager.set_giant_skeleton_enchant(1)
        self.settings_manager.gain_experience('party', 500)


    def r4087_action(self):
        # PlaySound("Armsk08")
        self.settings_manager.inc_giant_skeleton_enchant()
        self.settings_manager.set_dead_giantsk(True)


    def r4088_action(self):
        # PlaySound("Armsk08")
        self.settings_manager.inc_giant_skeleton_enchant()
        self.settings_manager.set_dead_giantsk(True)


    def r4095_action(self):
        # Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)
        self.settings_manager.set_mortualy_alarmed(True)


    def r4096_action(self):
        self.settings_manager.gain_experience('party', 800)


    def r4097_action(self):
        self.settings_manager.set_has_breast1(True)


    def r4098_action(self):
        self.settings_manager.gain_experience('party', 800)


    def r4099_action(self):
        self.settings_manager.set_has_breast2(True)


    def r4100_action(self):
        self.settings_manager.set_has_breast3(True)


    def r4101_action(self):
        self.settings_manager.set_has_breast4(True)
        self.settings_manager.set_dead_giantsk(True)


    def r64301_action(self):
        # PlaySound("Armsk08")
        self.settings_manager.inc_giant_skeleton_enchant()
        self.settings_manager.set_dead_giantsk(True)


    def r64302_action(self):
        # PlaySound("Armsk08")
        self.settings_manager.inc_giant_skeleton_enchant()
        self.settings_manager.set_dead_giantsk(True)


    def r3997_condition(self):
        return self.settings_manager.get_giant_skeleton_enchant() > 0


    def r3998_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') < 13


    def r3999_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') > 12


    def r4000_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') < 13


    def r4001_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') > 12


    def r4002_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_morte_skel_mort_quip()


    def r4003_condition(self):
        return self.settings_manager.get_can_speak_with_dead()


    def r4035_condition(self):
        return self.settings_manager.get_giant_skeleton_enchant() > 0


    def r4036_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') < 13


    def r4037_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') > 12


    def r4038_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') < 13


    def r4039_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') > 12


    def r4040_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_morte_skel_mort_quip()


    def r4048_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') < 13


    def r4049_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') > 12


    def r4050_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') < 13


    def r4051_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') > 12


    def r4052_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_morte_skel_mort_quip()


    def r4054_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'intelligence') > 12 and \
               self.settings_manager.character_manager.get_property('protagonist', 'wisdom') < 13


    def r4055_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') > 12


    def r64293_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') < 13 and \
               self.settings_manager.character_manager.get_property('protagonist', 'intelligence') < 13


    def r4056_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') < 13


    def r4057_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') > 12


    def r4058_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') < 13


    def r4059_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') > 12


    def r4060_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_morte_skel_mort_quip()


    def r4062_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'intelligence') > 15


    def r4063_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'intelligence') < 16


    def r4064_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') < 13


    def r4065_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') > 12


    def r4066_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') < 13


    def r4067_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') > 12


    def r4068_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_morte_skel_mort_quip()


    def r64294_condition(self):
        return self.settings_manager.get_has_tome_ba()


    def r4072_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') < 13


    def r4073_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') > 12


    def r4074_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') < 13


    def r4075_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') > 12


    def r4076_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_morte_skel_mort_quip()


    def r4079_condition(self):
        return self.settings_manager.get_giant_skeleton_enchant() == 0


    def r4080_condition(self):
        return self.settings_manager.get_giant_skeleton_enchant() > 0


    def r4081_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') < 13


    def r4082_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') > 12


    def r4083_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') < 13


    def r4084_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') > 12


    def r4085_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_morte_skel_mort_quip()


    def r64296_condition(self):
        return self.settings_manager.get_has_tome_ba()


    def r4087_condition(self):
        return self.settings_manager.get_giant_skeleton_enchant() < 2


    def r4088_condition(self):
        return self.settings_manager.get_giant_skeleton_enchant() > 1


    def r4089_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') < 13


    def r4090_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') > 12


    def r4091_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') < 13


    def r4092_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'wisdom') > 12


    def r4093_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_morte_skel_mort_quip()


    def r4099_condition(self):
        return self.settings_manager.get_giant_skeleton_enchant() == 3


    def r4100_condition(self):
        return self.settings_manager.get_giant_skeleton_enchant() == 4


    def r4101_condition(self):
        return self.settings_manager.get_giant_skeleton_enchant() == 5


    def r64301_condition(self):
        return self.settings_manager.get_giant_skeleton_enchant() < 2


    def r64302_condition(self):
        return self.settings_manager.get_giant_skeleton_enchant() > 1
