class DdustfemLogic:
    def __init__(self, gsm):
        self.gsm = gsm


    def r1225_action(self):
        self.gsm.set_mortualy_alarmed(True)
        # ?.play_sound('AMB_M01') Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)


    def r1246_action(self):
        self.gsm.set_mortualy_alarmed(True)
        # ?.play_sound('AMB_M01') Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)


    def r1249_action(self):
        self.gsm.set_mortualy_alarmed(True)
        # ?.play_sound('AMB_M01') Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)


    def r33227_action(self):
        self.gsm.inc_adahn()
        self.gsm.gcm.modify_property('protagonist', 'law', -1)


    def r1273_action(self):
        self.gsm.inc_adahn()
        self.gsm.gcm.modify_property('protagonist', 'law', -1)


    def r1290_action(self):
        self.gsm.inc_adahn()
        self.gsm.gcm.modify_property('protagonist', 'law', -1)


    def r1294_action(self):
        self.gsm.inc_adahn()
        self.gsm.gcm.modify_property('protagonist', 'law', -1)


    def r4307_action(self):
        self.gsm.set_mortualy_alarmed(True)
        # ?.play_sound('AMB_M01') Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)


    def r4308_action(self):
        self.gsm.set_mortualy_alarmed(True)
        # ?.play_sound('AMB_M01') Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)
        self.gsm.gcm.modify_property('protagonist', 'law', -1)


    def r4309_action(self):
        self.gsm.set_mortualy_alarmed(True)
        # ?.play_sound('AMB_M01') Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)


    def r4317_action(self):
        # ?.play_sound('SPE_11') SetAnimState(Myself,ANIM_MIMEDIE)
        return


    def r4318_action(self):
        self.gsm.inc_choke()
        self.gsm.set_choke_memory(True)
        # ?.play_sound('SPTR_01')
        self.gsm.inc_choke_dustman()
        self.gsm.inc_exp_custom('party', 15)


    def r4319_action(self):
        self.gsm.inc_choke_dustman()
        self.gsm.inc_choke()
        # Kill(Myself) Deactivate(Myself) # TODO [snow]: how to kill npc without id? Add id?
        self.gsm.inc_exp_custom('party', 15)


    def r4320_action(self):
        # Kill(Myself) Deactivate(Myself) # TODO [snow]: how to kill npc without id? Add id?
        self.gsm.inc_exp_custom('protagonist', 250)


    def r4321_action(self):
        self.gsm.set_mortualy_alarmed(True)
        # ?.play_sound('AMB_M01') Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)


    def r4322_action(self):
        # ?.play_sound('SPE_11') SetAnimState(Myself,ANIM_MIMEDIE)
        return


    def r1235_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'dexterity') < 13


    def r1236_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'dexterity') > 12


    def r1242_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 11


    def r1244_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'dexterity') < 13


    def r1245_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'dexterity') > 12


    def r1247_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'dexterity') < 13


    def r1248_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'dexterity') > 12


    def r1253_condition(self):
        return self.gsm.get_meet_dhall() \
               and self.gsm.glm.is_visited_internal_location('AR0202')


    def r1255_condition(self):
        return self.gsm.get_meet_dhall() \
               and not self.gsm.glm.is_visited_internal_location('AR0202')


    def r1258_condition(self):
        return self.gsm.get_meet_deionarra() \
               and self.gsm.glm.is_visited_internal_location('AR0201')


    def r4336_condition(self):
        return self.gsm.get_meet_deionarra() \
               and not self.gsm.glm.is_visited_internal_location('AR0201')


    def r33224_condition(self):
        return self.gsm.get_meet_soego() \
               and self.gsm.glm.is_visited_internal_location('AR0201')


    def r33226_condition(self):
        return self.gsm.get_meet_soego() \
               and not self.gsm.glm.is_visited_internal_location('AR0201')


    def r33227_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 12 \
               and self.gsm.get_talked_to_dustfem_times() == 1


    def r33229_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 12 \
               and self.gsm.get_talked_to_dustfem_times() > 1


    def r1272_condition(self):
        return self.gsm.get_meet_deionarra()


    def r1273_condition(self):
        return self.gsm.get_talked_to_dustfem_times() == 1


    def r1274_condition(self):
        return self.gsm.get_talked_to_dustfem_times() > 1


    def r1275_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'dexterity') < 13


    def r1276_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'dexterity') > 12


    def r1281_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'intelligence') > 11


    def r1290_condition(self):
        return self.gsm.get_talked_to_dustfem_times() == 1


    def r1291_condition(self):
        return self.gsm.get_talked_to_dustfem_times() > 1


    def r1292_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 13


    def r1293_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 12


    def r1294_condition(self):
        return self.gsm.get_talked_to_dustfem_times() == 1


    def r1295_condition(self):
        return self.gsm.get_talked_to_dustfem_times() > 1


    def r1296_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 13


    def r1297_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 12


    def r1396_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 12


    def r1397_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 13


    def r1398_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 13


    def r1399_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 12


    def r4281_condition(self):
        return self.gsm.glm.is_visited_internal_location('AR0202')


    def r4282_condition(self):
        return not self.gsm.glm.is_visited_internal_location('AR0202')


    def r4296_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 12


    def r4297_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 13


    def r4298_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 13


    def r4300_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 12


    def r4303_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 12


    def r4304_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 13


    def r4305_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 13


    def r4306_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 12


    def r4308_condition(self):
        return self.gsm.get_talked_to_dustfem_times() == 1


    def r4309_condition(self):
        return self.gsm.get_talked_to_dustfem_times() > 1


    def r4312_condition(self):
        return self.gsm.get_in_party_morte() \
               and self.gsm.get_warning() == 0


    def r4313_condition(self):
        return self.gsm.get_in_party_morte() \
               and self.gsm.get_warning() == 1


    def r4314_condition(self):
        return self.gsm.get_in_party_morte() \
               and self.gsm.get_warning() > 1


    def r4315_condition(self):
        return not self.gsm.get_in_party_morte()


    def r4318_condition(self):
        return not self.gsm.get_choke_memory()


    def r4319_condition(self):
        return self.gsm.get_choke_memory()


    def r4324_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'dexterity') < 13


    def r4325_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'dexterity') > 12


    def r4329_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 12


    def r4331_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 13


    def r4332_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') < 13


    def r4333_condition(self):
        return self.gsm.gcm.get_character_property('protagonist', 'charisma') > 12


    def r66684_condition(self):
        return self.gsm.get_join_dustmen()


    def r66685_condition(self):
        return not self.gsm.get_join_dustmen()


    def r66686_condition(self):
        return not self.gsm.get_join_dustmen()


    def r66687_condition(self):
        return not self.gsm.get_join_dustmen()


    def r66688_condition(self):
        return not self.gsm.get_join_dustmen()
