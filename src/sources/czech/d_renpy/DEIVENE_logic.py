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
        #$% .register('37701', 'V Márnici jsem potkal Spalovačku jménem Ei-Vene. Měla mrtvolně bledou kůži, na rukou drápy, navíc byla krátkozraká a hluchá a spletla si mě se zombií. Přikázala mi, abych jí našel balzamovací tekutinu a taky jehlu a nit, asi na zašití té mrtvoly, co ležela před ní na stole. Ukázalo se, že už jsem obojí našel, tak jsem jí to dal.') %$#


    def r3424_action(self):
        self.state_manager.world_manager.set_has_embalm(False)
        self.state_manager.world_manager.set_has_needle(False)
        self.state_manager.world_manager.set_eivene_delivery(True)
        self.state_manager.gain_experience('party', 250)


    def j37702_s5_r3425_action(self):
        self.state_manager.journal_manager.update_journal('37702')
        #$% .register('37702', 'V Márnici jsem potkal Spalovačku jménem Ei-Vene. Měla mrtvolně bledou kůži, na rukou drápy a navíc byla krátkozraká a hluchá a spletla si mě se zombií. Přikázala mi, abych jí našel balzamovací tekutinu a taky jehlu a nit, asi na zašití té mrtvoly, co ležela před ní na stole. Určitě je to někde tady v márnici, snad v některé ze sousedních místností') %$#


    def j37702_s5_r3426_action(self):
        self.state_manager.journal_manager.update_journal('37702')
        #$% .register('37702', 'V Márnici jsem potkal Spalovačku jménem Ei-Vene. Měla mrtvolně bledou kůži, na rukou drápy a navíc byla krátkozraká a hluchá a spletla si mě se zombií. Přikázala mi, abych jí našel balzamovací tekutinu a taky jehlu a nit, asi na zašití té mrtvoly, co ležela před ní na stole. Určitě je to někde tady v márnici, snad v některé ze sousedních místností') %$#


    def j37702_s5_r3427_action(self):
        self.state_manager.journal_manager.update_journal('37702')
        #$% .register('37702', 'V Márnici jsem potkal Spalovačku jménem Ei-Vene. Měla mrtvolně bledou kůži, na rukou drápy a navíc byla krátkozraká a hluchá a spletla si mě se zombií. Přikázala mi, abych jí našel balzamovací tekutinu a taky jehlu a nit, asi na zašití té mrtvoly, co ležela před ní na stole. Určitě je to někde tady v márnici, snad v některé ze sousedních místností') %$#


    def j37702_s5_r3428_action(self):
        self.state_manager.journal_manager.update_journal('37702')
        #$% .register('37702', 'V Márnici jsem potkal Spalovačku jménem Ei-Vene. Měla mrtvolně bledou kůži, na rukou drápy a navíc byla krátkozraká a hluchá a spletla si mě se zombií. Přikázala mi, abych jí našel balzamovací tekutinu a taky jehlu a nit, asi na zašití té mrtvoly, co ležela před ní na stole. Určitě je to někde tady v márnici, snad v některé ze sousedních místností') %$#


    def j37702_s5_r3429_action(self):
        self.state_manager.journal_manager.update_journal('37702')
        #$% .register('37702', 'V Márnici jsem potkal Spalovačku jménem Ei-Vene. Měla mrtvolně bledou kůži, na rukou drápy a navíc byla krátkozraká a hluchá a spletla si mě se zombií. Přikázala mi, abych jí našel balzamovací tekutinu a taky jehlu a nit, asi na zašití té mrtvoly, co ležela před ní na stole. Určitě je to někde tady v márnici, snad v některé ze sousedních místností') %$#


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
        #$%.register('38199', 'Poté, co jsem doručil balzamovací tekutinu a nit Ei-Vene, zašila mi moje jizvy a potřela mé tělo balzamovací tekutinou. Kupodivu se cítím... zdravější. %$#')


    def r3456_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_embalm_key_quest(2)
        self.state_manager.world_manager.set_has_keyem(True)


    def j61612_s15_r3459_action(self):
        self.state_manager.journal_manager.update_journal('61612')
        #$% .register('61612', 'Sledování, jak Ei-Vene sešívá tělo svými drápy, ve mně vyvolalo zvláštní vzpomínky... vzpomněl jsem si na podobnou operaci kdysi dávno, ale co si pamatuji, spíš jsem cosi vložil tělu *dovnitř* hrudi, místo toho, abych něco vyjmul. Myslím, že ať jsem tam vložil cokoli, bylo to proto, abych si to mohl někdy vyzvednout. Když jsem zkřížil ruce, tělo v mé paměti je zkřížilo také... a na čele mělo napsané číslo "42".') %$#


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
        #$% .register('38202', 'Doručil jsem balzamovací tekutinu a nit Ei-Vene. Netvářila se příliš vděčně.') %$#


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
        #$% .register('38203', 'Přesvědčil jsem Ei-Vene, aby mi dala balzamovací klíč.') %$#


    def j38203_s18_r3495_action(self):
        self.state_manager.journal_manager.update_journal('38203')
        #$% .register('38203', 'Přesvědčil jsem Ei-Vene, aby mi dala balzamovací klíč.') %$#


    def j38203_s18_r3496_action(self):
        self.state_manager.journal_manager.update_journal('38203')
        #$% .register('38203', 'Přesvědčil jsem Ei-Vene, aby mi dala balzamovací klíč.') %$#


    def j38205_s19_action(self):
        self.state_manager.journal_manager.update_journal('38205')
        #$% .register('38205', 'Balzamující Spalovačka, na kterou jsem narazil, je evidentně "tiefling", což je někdo, komu v žilách koluje krev fienda. To očividně deformuje jejich těla a v některých případech i jejich mysl. Z toho, co řekl Morte, to vypadá, že je tu okolo řada tieflingů... takže vlastně... fiendů.') %$#


    def j38205_s21_action(self):
        self.state_manager.journal_manager.update_journal('38205')
        #$% .register('38205', 'Balzamující Spalovačka, na kterou jsem narazil, je evidentně "tiefling", což je někdo, komu v žilách koluje krev fienda. To očividně deformuje jejich těla a v některých případech i jejich mysl. Z toho, co řekl Morte, to vypadá, že je tu okolo řada tieflingů... takže vlastně... fiendů.') %$#


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
