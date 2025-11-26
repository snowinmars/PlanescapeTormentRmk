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
        #$% .register('37701', 'J'ai rencontré une femme Homme-Poussière embaumeuse du nom de Ei-Vene à la Morgue. En plus de sa peau couleur de suif et de ses lames en guise de doigts, elle était quasiment aveugle et sourde, et m'a confondu avec un zombi. Elle m'a ordonné d'aller lui chercher de la lotion d'embaumement, du fil et une aiguille, sûrement pour recoudre le cadavre placé sur la table devant elle. Comme j'avais déjà trouvé ce qu'elle me demandait, je le lui ai donné.') %$#


    def r3424_action(self):
        self.state_manager.world_manager.set_has_embalm(False)
        self.state_manager.world_manager.set_has_needle(False)
        self.state_manager.world_manager.set_eivene_delivery(True)
        self.state_manager.gain_experience('party', 250)


    def j37702_s5_r3425_action(self):
        self.state_manager.journal_manager.update_journal('37702')
        #$% .register('37702', 'J'ai rencontré une femme Homme-Poussière embaumeuse du nom de Ei-Vene à la Morgue. En plus de sa peau couleur de suif et de ses lames en guise de doigts, elle était quasiment aveugle et sourde, et m'a confondu avec un zombi. Elle m'a ordonné d'aller lui chercher de la lotion d'embaumement, du fil et une aiguille, sûrement pour recoudre le cadavre placé sur la table devant elle. Il doit y en avoir dans la Morgue, peut-être dans l'une des salles voisines.') %$#


    def j37702_s5_r3426_action(self):
        self.state_manager.journal_manager.update_journal('37702')
        #$% .register('37702', 'J'ai rencontré une femme Homme-Poussière embaumeuse du nom de Ei-Vene à la Morgue. En plus de sa peau couleur de suif et de ses lames en guise de doigts, elle était quasiment aveugle et sourde, et m'a confondu avec un zombi. Elle m'a ordonné d'aller lui chercher de la lotion d'embaumement, du fil et une aiguille, sûrement pour recoudre le cadavre placé sur la table devant elle. Il doit y en avoir dans la Morgue, peut-être dans l'une des salles voisines.') %$#


    def j37702_s5_r3427_action(self):
        self.state_manager.journal_manager.update_journal('37702')
        #$% .register('37702', 'J'ai rencontré une femme Homme-Poussière embaumeuse du nom de Ei-Vene à la Morgue. En plus de sa peau couleur de suif et de ses lames en guise de doigts, elle était quasiment aveugle et sourde, et m'a confondu avec un zombi. Elle m'a ordonné d'aller lui chercher de la lotion d'embaumement, du fil et une aiguille, sûrement pour recoudre le cadavre placé sur la table devant elle. Il doit y en avoir dans la Morgue, peut-être dans l'une des salles voisines.') %$#


    def j37702_s5_r3428_action(self):
        self.state_manager.journal_manager.update_journal('37702')
        #$% .register('37702', 'J'ai rencontré une femme Homme-Poussière embaumeuse du nom de Ei-Vene à la Morgue. En plus de sa peau couleur de suif et de ses lames en guise de doigts, elle était quasiment aveugle et sourde, et m'a confondu avec un zombi. Elle m'a ordonné d'aller lui chercher de la lotion d'embaumement, du fil et une aiguille, sûrement pour recoudre le cadavre placé sur la table devant elle. Il doit y en avoir dans la Morgue, peut-être dans l'une des salles voisines.') %$#


    def j37702_s5_r3429_action(self):
        self.state_manager.journal_manager.update_journal('37702')
        #$% .register('37702', 'J'ai rencontré une femme Homme-Poussière embaumeuse du nom de Ei-Vene à la Morgue. En plus de sa peau couleur de suif et de ses lames en guise de doigts, elle était quasiment aveugle et sourde, et m'a confondu avec un zombi. Elle m'a ordonné d'aller lui chercher de la lotion d'embaumement, du fil et une aiguille, sûrement pour recoudre le cadavre placé sur la table devant elle. Il doit y en avoir dans la Morgue, peut-être dans l'une des salles voisines.') %$#


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
        #$%.register('38199', 'Après lui avoir donné la lotion d'embaumement et le fil, Ei-Vene a suturé mes cicatrices et a appliqué la lotion d'embaumement sur mon corps. Bizarrement, je me suis senti… en meilleure santé. %$#')


    def r3456_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_embalm_key_quest(2)
        self.state_manager.world_manager.set_has_keyem(True)


    def r3459_action(self):
        #$% ?.play_sound('SPTR_01') %$#
        self.state_manager.journal_manager.update_journal('61612')
        #$%.register('61612', 'En regardant Ei-Vene recoudre le cadavre à l'aide de ses lames, un étrange souvenir m'est revenu en mémoire. Je me souviens avoir pratiqué le même genre d'opération sur un mort, il y a bien longtemps, sauf que je crois que j'ai fait cela pour lui *insérer* quelque chose dans la poitrine plutôt que de le lui ôter. J'ai l'impression que j'ai agi ainsi afin de pouvoir récupérer l'objet plus tard. Dans mon souvenir, quand j'ai croisé les bras, le cadavre a fait de même. Le numéro '42' était inscrit sur son cuir chevelu. %$#')


    def s16_action(self):
        #$% FadeToColor([20.0],0) %$#
        #$% Wait(3) %$#
        #$% FadeFromColor([20.0],0) %$#
        #$% Wait(3) %$#
        return


    def j38202_s17_r3469_action(self):
        self.state_manager.journal_manager.update_journal('38202')
        #$% .register('38202', 'J'ai donné la lotion d'embaumement et le fil à Ei-Vene. Elle n'a pas eu l'air particulièrement reconnaissante.') %$#


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
        #$% .register('38203', 'J'ai convaincu Ei-Vene de me donner la clé d'embaumement.') %$#


    def j38203_s18_r3495_action(self):
        self.state_manager.journal_manager.update_journal('38203')
        #$% .register('38203', 'J'ai convaincu Ei-Vene de me donner la clé d'embaumement.') %$#


    def j38203_s18_r3496_action(self):
        self.state_manager.journal_manager.update_journal('38203')
        #$% .register('38203', 'J'ai convaincu Ei-Vene de me donner la clé d'embaumement.') %$#


    def j38205_s19_action(self):
        self.state_manager.journal_manager.update_journal('38205')
        #$% .register('38205', 'Apparemment, la femme Homme-Poussière embaumeuse que j'ai rencontrée est une 'tieffeline', créature au sang démoniaque. On dit que le sang démoniaque pervertit leur corps et dans certains cas, leur esprit aussi. D'après ce que m'a dit Morte, il semble y avoir pas mal de tieffelins dans le coin… ce qui impliquerait aussi un certain nombre de fiélons.') %$#


    def j38205_s21_action(self):
        self.state_manager.journal_manager.update_journal('38205')
        #$% .register('38205', 'Apparemment, la femme Homme-Poussière embaumeuse que j'ai rencontrée est une 'tieffeline', créature au sang démoniaque. On dit que le sang démoniaque pervertit leur corps et dans certains cas, leur esprit aussi. D'après ce que m'a dit Morte, il semble y avoir pas mal de tieffelins dans le coin… ce qui impliquerait aussi un certain nombre de fiélons.') %$#


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
