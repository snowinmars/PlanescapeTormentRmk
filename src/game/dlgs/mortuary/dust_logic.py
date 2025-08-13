class DustLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def dust_init(self):
        self.settings_manager.location_manager.set_location('mortuary_f3r2')
        self.settings_manager.inc_talked_to_dust_times()


    def kill_dust(self):
        self.settings_manager.set_dead_dust(True)


    def r313_action(self):
        self.settings_manager.set_mortualy_alarmed(True)
        # ?.play_sound('AMB_M01') Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)


    def r3888_action(self):
        self.settings_manager.set_mortualy_alarmed(True)
        # ?.play_sound('AMB_M01') Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)


    def r3886_action(self):
        self.settings_manager.set_mortualy_alarmed(True)
        # ?.play_sound('AMB_M01') Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)


    def r33189_action(self):
        self.settings_manager.inc_adahn()
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)


    def r371_action(self):
        self.settings_manager.inc_adahn()
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)


    def r450_action(self):
        self.settings_manager.inc_adahn()
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)


    def r399_action(self):
        self.settings_manager.inc_adahn()
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)


    def r448_action(self):
        self.settings_manager.set_mortualy_alarmed(True)
        # ?.play_sound('AMB_M01') Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)


    def r449_action(self):
        self.settings_manager.set_mortualy_alarmed(True)
        # ?.play_sound('AMB_M01') Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)


    def r1339_action(self):
        self.settings_manager.set_mortualy_alarmed(True)
        # ?.play_sound('AMB_M01') Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)
        self.settings_manager.set_mortualy_alarmed(True)


    def r1426_action(self):
        # ?.play_sound('SPE_11') SetAnimState(Myself,ANIM_MIMEDIE)
        return


    def r1428_action(self):
        self.settings_manager.set_choke_memory(True)
        # ?.play_sound('SPTR_01')
        self.settings_manager.inc_choke_dustman()
        self.settings_manager.inc_choke()
        self.settings_manager.set_dead_dust(True) # TODO [snow]: how to kill npc without id? Add id?
        # Deactivate(Myself)
        self.settings_manager.gain_experience('party', 15)


    def r1429_action(self):
        self.settings_manager.inc_choke_dustman()
        self.settings_manager.inc_choke()
        self.settings_manager.set_dead_dust(True) # TODO [snow]: how to kill npc without id? Add id?
        # Deactivate(Myself)
        self.settings_manager.gain_experience('party', 15)


    def r3882_action(self):
        self.settings_manager.set_dead_dust(True) # TODO [snow]: how to kill npc without id? Add id?
        self.settings_manager.gain_experience('protagonist', 250)


    def r3884_action(self):
        self.settings_manager.set_mortualy_alarmed(True)
        # ?.play_sound('AMB_M01') Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)


    def r3890_action(self):
        # ?.play_sound('SPE_11') SetAnimState(Myself,ANIM_MIMEDIE)
        return


    def r327_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'dexterity') < 13


    def r328_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'dexterity') > 12


    def r334_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'intelligence') > 11


    def r344_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'dexterity') < 13


    def r3887_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'dexterity') > 12


    def r358_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'dexterity') < 13


    def r3885_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'dexterity') > 12


    def r342_condition(self):
        return self.settings_manager.get_dhall_value() > 0 and \
               self.settings_manager.location_manager.is_visited_internal('AR0202')


    def r343_condition(self):
        return self.settings_manager.get_dhall_value() > 0 and \
               not self.settings_manager.location_manager.is_visited_internal('AR0202')


    def r33183_condition(self):
        return self.settings_manager.get_deionarra_value() > 0 and \
               self.settings_manager.location_manager.is_visited_internal('AR0201')


    def r33185_condition(self):
        return self.settings_manager.get_deionarra_value() > 0 and \
               not self.settings_manager.location_manager.is_visited_internal('AR0201')


    def r33186_condition(self):
        return self.settings_manager.get_soego_value() > 0 and \
               self.settings_manager.location_manager.is_visited_internal('AR0201')


    def r33187_condition(self):
        return self.settings_manager.get_soego_value() > 0 and \
               not self.settings_manager.location_manager.is_visited_internal('AR0201')


    def r33189_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'intelligence') > 12 and \
               self.settings_manager.get_talked_to_dust_times() == 1


    def r33190_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'intelligence') > 12 and \
               self.settings_manager.get_talked_to_dust_times() > 1


    def r370_condition(self):
        return self.settings_manager.get_deionarra_value() > 0


    def r371_condition(self):
        return self.settings_manager.get_talked_to_dust_times() == 1


    def r372_condition(self):
        return self.settings_manager.get_talked_to_dust_times() > 1


    def r373_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'dexterity') < 13


    def r1335_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'dexterity') > 12


    def r378_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'intelligence') > 11


    def r450_condition(self):
        return self.settings_manager.get_talked_to_dust_times() == 1


    def r1337_condition(self):
        return self.settings_manager.get_talked_to_dust_times() > 1


    def r3904_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'charisma') < 13


    def r3905_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'charisma') > 12


    def r399_condition(self):
        return self.settings_manager.get_talked_to_dust_times() == 1


    def r3906_condition(self):
        return self.settings_manager.get_talked_to_dust_times() > 1


    def r3907_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'charisma') < 13


    def r3908_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'charisma') > 12


    def r413_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'charisma') > 12


    def r3918_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'charisma') < 13


    def r3919_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'charisma') < 13


    def r3920_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'charisma') > 12


    def r416_condition(self):
        return self.settings_manager.location_manager.is_visited_internal('AR0202')


    def r417_condition(self):
        return not self.settings_manager.location_manager.is_visited_internal('AR0202')


    def r436_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'charisma') > 12


    def r3909_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'charisma') < 13


    def r3910_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'charisma') < 13


    def r3911_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'charisma') > 12


    def r445_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'charisma') > 12


    def r446_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'charisma') < 13


    def r3912_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'charisma') < 13


    def r3913_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'charisma') > 12


    def r449_condition(self):
        return self.settings_manager.get_talked_to_dust_times() == 1


    def r1339_condition(self):
        return self.settings_manager.get_talked_to_dust_times() > 1


    def r1420_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_warning() == 0


    def r1421_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_warning() == 1


    def r1422_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               self.settings_manager.get_warning() > 1


    def r1423_condition(self):
        return not self.settings_manager.get_in_party_morte()


    def r1428_condition(self):
        return not self.settings_manager.get_choke_memory()


    def r1429_condition(self):
        return self.settings_manager.get_choke_memory()


    def r3914_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'dexterity') < 13


    def r3915_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'dexterity') > 12


    def r3898_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'charisma') > 12


    def r3899_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'charisma') < 13


    def r3900_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'charisma') < 13


    def r3901_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'charisma') > 12


    def r66675_condition(self):
        return self.settings_manager.get_join_dustmen() == 1


    def r66676_condition(self):
        return self.settings_manager.get_join_dustmen() != 1


    def r66677_condition(self):
        return self.settings_manager.get_join_dustmen() != 1


    def r66678_condition(self):
        return self.settings_manager.get_join_dustmen() != 1


    def r66679_condition(self):
        return self.settings_manager.get_join_dustmen() != 1
