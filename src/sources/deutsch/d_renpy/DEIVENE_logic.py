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
        #$% .register('37701', 'Ich habe eine Staubmenschen-Balsamiererin namens Ei-Vene in der Leichenhalle getroffen. Sie hat nicht nur Krallen und einen talgfarbigen Teint, sondern ist noch dazu kurzsichtig und stocktaub, so daß sie mich für einen Zombie gehalten hat. Sie hat mir befohlen, ein Glas Balsamierungsöl sowie Nadel und Faden für sie zu finden, wahrscheinlich zum Nähen der Leiche, die auf dem Tisch vor ihr lag. Zufälligerweise hatte ich beides schon gefunden, also habe ich es ihr gegeben.') %$#


    def r3424_action(self):
        self.state_manager.world_manager.set_has_embalm(False)
        self.state_manager.world_manager.set_has_needle(False)
        self.state_manager.world_manager.set_eivene_delivery(True)
        self.state_manager.gain_experience('party', 250)


    def j37702_s5_r3425_action(self):
        self.state_manager.journal_manager.update_journal('37702')
        #$% .register('37702', 'Ich habe eine Staubmenschen-Balsamiererin namens Ei-Vene in der Leichenhalle getroffen. Sie hat nicht nur Krallen und einen talgfarbigen Teint, sondern ist noch dazu kurzsichtig und stocktaub, so daß sie mich für einen Zombie gehalten hat. Sie hat mir befohlen, ein Glas Balsamierungsöl sowie Nadel und Faden für sie zu finden, wahrscheinlich zum Nähen der Leiche, die auf dem Tisch vor ihr lag. Es muß doch so etwas in der Leichenhalle geben, vielleicht in einem der umliegenden Zimmer.') %$#


    def j37702_s5_r3426_action(self):
        self.state_manager.journal_manager.update_journal('37702')
        #$% .register('37702', 'Ich habe eine Staubmenschen-Balsamiererin namens Ei-Vene in der Leichenhalle getroffen. Sie hat nicht nur Krallen und einen talgfarbigen Teint, sondern ist noch dazu kurzsichtig und stocktaub, so daß sie mich für einen Zombie gehalten hat. Sie hat mir befohlen, ein Glas Balsamierungsöl sowie Nadel und Faden für sie zu finden, wahrscheinlich zum Nähen der Leiche, die auf dem Tisch vor ihr lag. Es muß doch so etwas in der Leichenhalle geben, vielleicht in einem der umliegenden Zimmer.') %$#


    def j37702_s5_r3427_action(self):
        self.state_manager.journal_manager.update_journal('37702')
        #$% .register('37702', 'Ich habe eine Staubmenschen-Balsamiererin namens Ei-Vene in der Leichenhalle getroffen. Sie hat nicht nur Krallen und einen talgfarbigen Teint, sondern ist noch dazu kurzsichtig und stocktaub, so daß sie mich für einen Zombie gehalten hat. Sie hat mir befohlen, ein Glas Balsamierungsöl sowie Nadel und Faden für sie zu finden, wahrscheinlich zum Nähen der Leiche, die auf dem Tisch vor ihr lag. Es muß doch so etwas in der Leichenhalle geben, vielleicht in einem der umliegenden Zimmer.') %$#


    def j37702_s5_r3428_action(self):
        self.state_manager.journal_manager.update_journal('37702')
        #$% .register('37702', 'Ich habe eine Staubmenschen-Balsamiererin namens Ei-Vene in der Leichenhalle getroffen. Sie hat nicht nur Krallen und einen talgfarbigen Teint, sondern ist noch dazu kurzsichtig und stocktaub, so daß sie mich für einen Zombie gehalten hat. Sie hat mir befohlen, ein Glas Balsamierungsöl sowie Nadel und Faden für sie zu finden, wahrscheinlich zum Nähen der Leiche, die auf dem Tisch vor ihr lag. Es muß doch so etwas in der Leichenhalle geben, vielleicht in einem der umliegenden Zimmer.') %$#


    def j37702_s5_r3429_action(self):
        self.state_manager.journal_manager.update_journal('37702')
        #$% .register('37702', 'Ich habe eine Staubmenschen-Balsamiererin namens Ei-Vene in der Leichenhalle getroffen. Sie hat nicht nur Krallen und einen talgfarbigen Teint, sondern ist noch dazu kurzsichtig und stocktaub, so daß sie mich für einen Zombie gehalten hat. Sie hat mir befohlen, ein Glas Balsamierungsöl sowie Nadel und Faden für sie zu finden, wahrscheinlich zum Nähen der Leiche, die auf dem Tisch vor ihr lag. Es muß doch so etwas in der Leichenhalle geben, vielleicht in einem der umliegenden Zimmer.') %$#


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
        #$%.register('38199', 'Nachdem ich Ei-Vene das Balsamierungsöl und den Faden gebracht hatte, hat sie meine Narben genäht und das Balsamierungsöl auf meinen Körper aufgetragen. Seltsamerweise fühle ich mich dadurch ... gesünder. %$#')


    def r3456_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_embalm_key_quest(2)
        self.state_manager.world_manager.set_has_keyem(True)


    def r3459_action(self):
        #$% ?.play_sound('SPTR_01') %$#
        self.state_manager.journal_manager.update_journal('61612')
        #$%.register('61612', 'Als ich Ei-Vene zusah, wie sie mit ihren langen Fingernägeln die Leiche zunähte, kam mir eine seltsame Erinnerung hoch... Ich erinnere mich daran, wie ich eine ähnliche Operation an einer Leiche vorgenommen habe. Nur glaube ich, daß ich etwas in ihre Brust *hineingelegt* habe, und nicht etwas herausgenommen. Es fühlte sich so an, als hätte ich das, was auch immer es war, hineingelegt, um es später wieder herausholen zu können. Als ich in der Erinnerung meine Arme verschränkte, tat die Leiche genau dasselbe... Auf ihre Kopfhaut war die Zahl "42" geschrieben. %$#')


    def s16_action(self):
        #$% FadeToColor([20.0],0) %$#
        #$% Wait(3) %$#
        #$% FadeFromColor([20.0],0) %$#
        #$% Wait(3) %$#
        return


    def j38202_s17_r3469_action(self):
        self.state_manager.journal_manager.update_journal('38202')
        #$% .register('38202', 'Ich habe Ei-Vene das Balsamierungsöl und den Faden gebracht. Sie schien mir nicht sehr dankbar zu sein.') %$#


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
        #$% .register('38203', 'Ich habe Ei-Vene überredet, mir den Schlüssel zum Balsamierungsraum zu geben.') %$#


    def j38203_s18_r3495_action(self):
        self.state_manager.journal_manager.update_journal('38203')
        #$% .register('38203', 'Ich habe Ei-Vene überredet, mir den Schlüssel zum Balsamierungsraum zu geben.') %$#


    def j38203_s18_r3496_action(self):
        self.state_manager.journal_manager.update_journal('38203')
        #$% .register('38203', 'Ich habe Ei-Vene überredet, mir den Schlüssel zum Balsamierungsraum zu geben.') %$#


    def j38205_s19_action(self):
        self.state_manager.journal_manager.update_journal('38205')
        #$% .register('38205', 'Offensichtlich ist die Staubmenschen-Balsamiererin, die ich getroffen habe, ein "Tiefling," jemand mit dem Blut eines Scheusals in ihren Adern. Anscheinend läßt das Scheusalsblut ihren Körper und manchmal auch ihr Denken mutieren. Nach dem, was Morte mir so erzählt, scheinen so einige Tieflinge unterwegs zu sein... Was dann wohl auch bedeuten würde, daß es eine ganz schöne Reihe von Scheusalen geben muß.') %$#


    def j38205_s21_action(self):
        self.state_manager.journal_manager.update_journal('38205')
        #$% .register('38205', 'Offensichtlich ist die Staubmenschen-Balsamiererin, die ich getroffen habe, ein "Tiefling," jemand mit dem Blut eines Scheusals in ihren Adern. Anscheinend läßt das Scheusalsblut ihren Körper und manchmal auch ihr Denken mutieren. Nach dem, was Morte mir so erzählt, scheinen so einige Tieflinge unterwegs zu sein... Was dann wohl auch bedeuten würde, daß es eine ganz schöne Reihe von Scheusalen geben muß.') %$#


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
