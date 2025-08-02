class DeiveneLogic:
    def __init__(self, gsm):
        self.gsm = gsm


    def eivene_init(self):
        self.gsm.glm.set_location('mortuary_f2r5')


    def kill_eivene(self):
        self.gsm.set_dead_eivene(True)


    def r3418_action(self):
        # FaceObject(Protagonist)
        return


    def r3422_action(self):
        self.gsm.set_meet_eivene(True)


    def r3424_action(self):
        self.gsm.set_has_embalm(False)
        self.gsm.set_has_needle(False)
        self.gsm.set_eivene_delivery(True)
        self.gsm.inc_exp_custom('party', 250)
        self.gsm.update_journal('37701')


    def r3425_action(self):
        self.gsm.update_journal('37702')


    def r3426_action(self):
        self.gsm.update_journal('37702')


    def r3427_action(self):
        self.gsm.update_journal('37702')


    def r3428_action(self):
        self.gsm.update_journal('37702')


    def r3429_action(self):
        self.gsm.update_journal('37702')


    def r3491_action(self):
        # ?.play_sound("AMB_M01") Enemy() Attack(Protagonist) ForceAttack(Protagonist,Myself)
        self.gsm.set_mortualy_alarmed(True)


    def r3449_action(self):
        self.gsm.gcm.modify_property('protagonist', 'maxHealth', 1)
        self.gsm.full_heal('protagonist')
        self.gsm.set_ravel_eivene(True)
        self.gsm.update_journal('38199')


    def r3456_action(self):
        self.gsm.inc_exp_custom('party', 250)
        self.gsm.set_embalm_key_quest(2)
        self.gsm.set_has_keyem(True)


    def r3459_action(self):
        # ?.play_sound("SPTR_01")
        self.gsm.update_journal('61612')


    def r3469_action(self):
        self.gsm.set_has_embalm(False)
        self.gsm.set_has_needle(False)
        self.gsm.set_eivene_delivery(True)
        self.gsm.inc_exp_custom('party', 250)
        self.gsm.update_journal('38202')


    def r3470_action(self):
        self.gsm.inc_exp_custom('party', 250)
        self.gsm.set_embalm_key_quest(2)
        self.gsm.set_has_keyem(True)


    def r3494_action(self):
        self.gsm.update_journal('38203')


    def r3495_action(self):
        self.gsm.update_journal('38203')


    def r3496_action(self):
        self.gsm.update_journal('38203')


    def r3501_action(self):
        self.gsm.inc_exp_custom('party', 250)
        self.gsm.set_embalm_key_quest(2)
        self.gsm.set_has_keyem(True)


    def r63478_action(self):
        self.gsm.inc_exp_custom('protagonist', 250)
        self.gsm.set_42_secret(True)


    def r3412_condition(self):
        return not self.gsm.get_in_party_morte()


    def r3413_condition(self):
        return self.gsm.get_in_party_morte()


    def r3414_condition(self):
        return not self.gsm.get_in_party_morte()


    def r3415_condition(self):
        return self.gsm.get_in_party_morte()


    def r3424_condition(self):
        return self.gsm.get_has_embalm() and \
               self.gsm.get_has_needle()


    def r3425_condition(self):
        return not self.gsm.get_in_party_morte()


    def r3426_condition(self):
        return self.gsm.get_in_party_morte()


    def r3427_condition(self):
        return not self.gsm.get_in_party_morte()


    def r3428_condition(self):
        return self.gsm.get_in_party_morte()


    def r3440_condition(self):
        return not self.gsm.get_in_party_morte()


    def r3441_condition(self):
        return self.gsm.get_in_party_morte()


    def r3442_condition(self):
        return not self.gsm.get_in_party_morte()


    def r3443_condition(self):
        return self.gsm.get_in_party_morte()


    def r3452_condition(self):
        return not self.gsm.get_in_party_morte()


    def r3453_condition(self):
        return self.gsm.get_in_party_morte()


    def r3456_condition(self):
        return self.gsm.get_embalm_key_quest() == 1 and \
               self.gsm.get_has_keyem()


    def r3457_condition(self):
        return self.gsm.get_embalm_key_quest() == 1 and \
               not self.gsm.get_has_keyem()


    def r3459_condition(self):
        return not self.gsm.get_42_secret()


    def r3463_condition(self):
        return not self.gsm.get_eivene_delivery()


    def r4351_condition(self):
        return self.gsm.get_eivene_delivery()


    def r3469_condition(self):
        return self.gsm.get_has_embalm() and \
               self.gsm.get_has_needle()


    def r3470_condition(self):
        return self.gsm.get_embalm_key_quest() == 1 and \
               self.gsm.get_has_keyem()


    def r3497_condition(self):
        return self.gsm.get_embalm_key_quest() == 1 and \
               not self.gsm.get_has_keyem()


    def r3494_condition(self):
        return not self.gsm.get_in_party_morte()


    def r3495_condition(self):
        return self.gsm.get_in_party_morte()


    def r3501_condition(self):
        return self.gsm.get_embalm_key_quest() == 1 and \
               self.gsm.get_has_keyem()


    def r3502_condition(self):
        return self.gsm.get_embalm_key_quest() == 1 and \
               not self.gsm.get_has_keyem()


    def r4354_condition(self):
        return not self.gsm.get_eivene_delivery()


    def r4355_condition(self):
        return self.gsm.get_eivene_delivery()


    def r63478_condition(self):
        return not self.gsm.get_42_secret()


    def r63479_condition(self):
        return self.gsm.get_42_secret()


    def r63482_condition(self):
        return not self.gsm.get_eivene_delivery()


    def r63481_condition(self):
        return self.gsm.get_eivene_delivery()
