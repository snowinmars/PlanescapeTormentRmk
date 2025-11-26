class EiveneLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r3418_action(self):
        #$% FaceObject(Protagonist) %$#
        return


    def r3422_action(self):
        self.state_manager.world_manager.set_eivene_value(1)


    def j37701_s5_r3424_action(self):
        self.state_manager.journal_manager.update_journal('37701')
        #$% .register('37701', 'I met a Dustwoman embalmer named Ei-Vene in the Mortuary. In addition to her taloned hands and tallow-colored flesh, she was near-sighted and deaf, and mistook me for a zombie. She ordered me to go find her a jar of embalming fluid and some needle and thread, presumably for stitching up the corpse on the table in front of her. It turns out I'd already found both, so I gave them to her.') %$#


    def r3424_action(self):
        self.state_manager.world_manager.set_has_embalm(False)
        self.state_manager.world_manager.set_has_needle(False)
        self.state_manager.world_manager.set_eivene_delivery(True)
        self.state_manager.gain_experience('party', 250)


    def j37702_s5_r3425_action(self):
        self.state_manager.journal_manager.update_journal('37702')
        #$% .register('37702', 'I met a Dustwoman embalmer named Ei-Vene in the Mortuary. In addition to her taloned hands and tallow-colored flesh, she was near-sighted and deaf, and mistook me for a zombie. She ordered me to go find her a jar of embalming fluid and some needle and thread, presumably for stitching up the corpse on the table in front of her. There must be some around the Mortuary somewhere, perhaps in one of the adjoining rooms.') %$#


    def j37702_s5_r3426_action(self):
        self.state_manager.journal_manager.update_journal('37702')
        #$% .register('37702', 'I met a Dustwoman embalmer named Ei-Vene in the Mortuary. In addition to her taloned hands and tallow-colored flesh, she was near-sighted and deaf, and mistook me for a zombie. She ordered me to go find her a jar of embalming fluid and some needle and thread, presumably for stitching up the corpse on the table in front of her. There must be some around the Mortuary somewhere, perhaps in one of the adjoining rooms.') %$#


    def j37702_s5_r3427_action(self):
        self.state_manager.journal_manager.update_journal('37702')
        #$% .register('37702', 'I met a Dustwoman embalmer named Ei-Vene in the Mortuary. In addition to her taloned hands and tallow-colored flesh, she was near-sighted and deaf, and mistook me for a zombie. She ordered me to go find her a jar of embalming fluid and some needle and thread, presumably for stitching up the corpse on the table in front of her. There must be some around the Mortuary somewhere, perhaps in one of the adjoining rooms.') %$#


    def j37702_s5_r3428_action(self):
        self.state_manager.journal_manager.update_journal('37702')
        #$% .register('37702', 'I met a Dustwoman embalmer named Ei-Vene in the Mortuary. In addition to her taloned hands and tallow-colored flesh, she was near-sighted and deaf, and mistook me for a zombie. She ordered me to go find her a jar of embalming fluid and some needle and thread, presumably for stitching up the corpse on the table in front of her. There must be some around the Mortuary somewhere, perhaps in one of the adjoining rooms.') %$#


    def j37702_s5_r3429_action(self):
        self.state_manager.journal_manager.update_journal('37702')
        #$% .register('37702', 'I met a Dustwoman embalmer named Ei-Vene in the Mortuary. In addition to her taloned hands and tallow-colored flesh, she was near-sighted and deaf, and mistook me for a zombie. She ordered me to go find her a jar of embalming fluid and some needle and thread, presumably for stitching up the corpse on the table in front of her. There must be some around the Mortuary somewhere, perhaps in one of the adjoining rooms.') %$#


    def r3491_action(self):
        #$% ?.play_sound('AMB_M01') %$#
        #$% Enemy() %$#
        #$% Attack(Protagonist) %$#
        #$% ForceAttack(Protagonist,Myself) %$#
        self.state_manager.world_manager.set_mortualy_alarmed(True)


    def r3449_action(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'max_health', 1)
        self.state_manager.characters_manager.full_heal('protagonist')
        self.state_manager.world_manager.set_ravel_eivene(1)
        self.state_manager.journal_manager.update_journal('38199')
        #$%.register('38199', 'After I delivered the embalming fluid and thread to Ei-Vene, she stitched up my scars and applied the embalming fluid on my body. Strangely enough, it made me feel... healthier. %$#')


    def r3456_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_embalm_key_quest(2)
        self.state_manager.world_manager.set_has_keyem(True)


    def j61612_s15_r3459_action(self):
        self.state_manager.journal_manager.update_journal('61612')
        #$% .register('61612', 'Watching Ei-Vene stitch up the corpse with her talons triggered a strange memory... I recall performing a similar operation on a corpse, long ago, except that I think I was placing something *inside* its chest rather than taking something out. It felt like I was putting whatever it was in there so I could retrieve it later. In the memory, when I crossed my arms, the corpse itself crossed its arms as well... it had the number "42" written on its scalp.') %$#


    def r3459_action(self):
        #$% ?.play_sound('SPTR_01') %$#
        return


    def s16_action(self):
        #$% FadeToColor([20.0],0) %$#
        #$% Wait(3) %$#
        #$% FadeFromColor([20.0],0) %$#
        #$% Wait(3) %$#
        return


    def j38202_s17_r3469_action(self):
        self.state_manager.journal_manager.update_journal('38202')
        #$% .register('38202', 'I delivered the embalming fluid and thread to Ei-Vene. She didn't seem terribly grateful.') %$#


    def r3469_action(self):
        self.state_manager.world_manager.set_has_embalm(False)
        self.state_manager.world_manager.set_has_needle(False)
        self.state_manager.world_manager.set_eivene_delivery(True)
        self.state_manager.gain_experience('party', 250)


    def r3470_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_embalm_key_quest(2)
        self.state_manager.world_manager.set_has_keyem(True)


    def j38203_s18_r3494_action(self):
        self.state_manager.journal_manager.update_journal('38203')
        #$% .register('38203', 'I convinced Ei-Vene to give me the embalming key.') %$#


    def j38203_s18_r3495_action(self):
        self.state_manager.journal_manager.update_journal('38203')
        #$% .register('38203', 'I convinced Ei-Vene to give me the embalming key.') %$#


    def j38203_s18_r3496_action(self):
        self.state_manager.journal_manager.update_journal('38203')
        #$% .register('38203', 'I convinced Ei-Vene to give me the embalming key.') %$#


    def j38205_s19_action(self):
        self.state_manager.journal_manager.update_journal('38205')
        #$% .register('38205', 'Apparently, the Dustwoman embalmer I encountered is a "tiefling," someone with fiendish blood in their veins. Apparently, the fiendish blood warps their bodies and in some cases, their minds as well. From what Morte said, it sounds like there are a number of tieflings about... which would imply a fair number of fiends as well.') %$#


    def j38205_s21_action(self):
        self.state_manager.journal_manager.update_journal('38205')
        #$% .register('38205', 'Apparently, the Dustwoman embalmer I encountered is a "tiefling," someone with fiendish blood in their veins. Apparently, the fiendish blood warps their bodies and in some cases, their minds as well. From what Morte said, it sounds like there are a number of tieflings about... which would imply a fair number of fiends as well.') %$#


    def r3501_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_embalm_key_quest(2)
        self.state_manager.world_manager.set_has_keyem(True)


    def r63478_action(self):
        self.state_manager.gain_experience('protagonist', 250)
        self.state_manager.world_manager.set_42_secret(True)


    def r3412_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r3413_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r3414_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r3415_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r3424_condition(self):
        return self.state_manager.world_manager.get_has_embalm() and \
               self.state_manager.world_manager.get_has_needle()


    def r3425_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r3426_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r3427_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r3428_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r3440_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r3441_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r3442_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r3443_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r3452_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r3453_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r3456_condition(self):
        return self.state_manager.world_manager.get_embalm_key_quest() == 1 and \
               not self.state_manager.world_manager.get_has_keyem()


    def r3457_condition(self):
        return self.state_manager.world_manager.get_embalm_key_quest() == 1 and \
               self.state_manager.world_manager.get_has_keyem()


    def r3459_condition(self):
        return not self.state_manager.world_manager.get_42_secret()


    def r3463_condition(self):
        return not self.state_manager.world_manager.get_eivene_delivery()


    def r4351_condition(self):
        return self.state_manager.world_manager.get_eivene_delivery()


    def r3469_condition(self):
        return self.state_manager.world_manager.get_has_embalm() and \
               self.state_manager.world_manager.get_has_needle()


    def r3470_condition(self):
        return self.state_manager.world_manager.get_embalm_key_quest() == 1 and \
               not self.state_manager.world_manager.get_has_keyem()


    def r3497_condition(self):
        return self.state_manager.world_manager.get_embalm_key_quest() == 1 and \
               self.state_manager.world_manager.get_has_keyem()


    def r3494_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r3495_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r3501_condition(self):
        return self.state_manager.world_manager.get_embalm_key_quest() == 1 and \
               not self.state_manager.world_manager.get_has_keyem()


    def r3502_condition(self):
        return self.state_manager.world_manager.get_embalm_key_quest() == 1 and \
               self.state_manager.world_manager.get_has_keyem()


    def r4354_condition(self):
        return not self.state_manager.world_manager.get_eivene_delivery()


    def r4355_condition(self):
        return self.state_manager.world_manager.get_eivene_delivery()


    def r63478_condition(self):
        return not self.state_manager.world_manager.get_42_secret()


    def r63479_condition(self):
        return self.state_manager.world_manager.get_42_secret()


    def r63482_condition(self):
        return not self.state_manager.world_manager.get_eivene_delivery()


    def r63481_condition(self):
        return self.state_manager.world_manager.get_eivene_delivery()
