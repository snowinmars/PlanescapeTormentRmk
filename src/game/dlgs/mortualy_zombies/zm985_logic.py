class Zm985Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def zm985_init(self):
        self.settings_manager.location_manager.set_location('mortuary_f2r5')
        self.settings_manager.inc_talked_to_zm985_times()



    def s3_action(self):
        # ~PlaySoundNotRanged("SPE_11") SetAnimState(Myself,ANIM_MIMEDIE) CreateItem("Limb985",1,0,0) SetGlobal("Topple_985","GLOBAL",1) Kill(Myself) Deactivate(Myself)
        self.settings_manager.set_topple_985(True)
        self.settings_manager.set_limb_985(True)
        self.settings_manager.set_dead_zm985(True)


    def s4_action(self):
        # ~PlaySoundNotRanged("SPE_11") SetAnimState(Myself,ANIM_MIMEDIE)
        return


    def r45516_action(self):
        self.settings_manager.character_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_zm985_1')
        self.settings_manager.character_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_zm985_1')
        # ?.play_sound('SPE_11') SetAnimState(Myself,ANIM_MIMEDIE)


    def r45517_action(self):
        self.settings_manager.character_manager.modify_property_once('protagonist', 'law', -1, 'globalchaotic_zm985_1')
        self.settings_manager.character_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_zm985_1')
        # ?.play_sound('SPE_11') SetAnimState(Myself,ANIM_MIMEDIE)


    def r45518_action(self):
        self.settings_manager.character_manager.modify_property_once('protagonist', 'law', 1, 'globallawful_zm985_1')
        self.settings_manager.character_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_zm985_1')


    def r45519_action(self):
        self.settings_manager.character_manager.modify_property_once('protagonist', 'law', 1, 'globallawful_zm985_1')
        self.settings_manager.character_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_zm985_1')


    def r45532_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_zombie_chaotic(True)


    def r45539_action(self):
        # ?.play_sound('SPE_11') SetAnimState(Myself,ANIM_MIMEDIE)
        return


    def r45516_condition(self):
        return self.settings_manager.get_in_party_morte()


    def r45517_condition(self):
        return not self.settings_manager.get_in_party_morte()


    def r45518_condition(self):
        return self.settings_manager.get_in_party_morte()


    def r45519_condition(self):
        return not self.settings_manager.get_in_party_morte()


    def r45520_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r45521_condition(self):
        return self.settings_manager.get_can_speak_with_dead()


    def r45532_condition(self):
        return not self.settings_manager.get_zombie_chaotic()


    def r45533_condition(self):
        return self.settings_manager.get_zombie_chaotic()


    def r45534_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r45535_condition(self):
        return self.settings_manager.get_can_speak_with_dead()
