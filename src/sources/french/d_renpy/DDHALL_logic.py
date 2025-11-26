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
        #$%.register('39468', 'J'ai parlé à Dhall de Vaxis et de son déguisement. Dhall devrait bientôt envoyer les Hommes-Poussière appréhender Vaxis. %$#')


    def j39469_s3_r831_action(self):
        self.state_manager.journal_manager.update_journal('39469')
        #$% .register('39469', 'Je sais bien que j'ai promis à Vaxis que je ne le dénoncerais pas aux Hommes-Poussière. Et alors ? J'ai dit à Dhall, le scribe, qu'il était déguisé. Ce dernier devrait bientôt envoyer les Hommes-Poussière l'appréhender.') %$#


    def r831_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_vaxis_betrayed(2)
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -3, 'globalevil_dhall_2')


    def r843_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_dhall_1')


    def j39460_s9_r5069_action(self):
        self.state_manager.journal_manager.update_journal('39460')
        #$% .register('39460', 'J'ai demandé à Dhall s'il me connaissait, et il m'a répondu qu'il ne savait que peu de choses à mon sujet, et moins encore au sujet de ceux qui m'ont accompagné de par le passé. Apparemment, ils reposent à la Morgue. La mémoire me reviendra peut-être en voyant leur dépouille.') %$#


    def j39463_s15_r886_action(self):
        self.state_manager.journal_manager.update_journal('39463')
        #$% .register('39463', 'Apparemment, Pharod m'a amené ici dans une charrette, en compagnie d'autres cadavres. Mais étais-je vraiment *mort* à ce moment-là ?') %$#


    def j39464_s19_r906_action(self):
        self.state_manager.journal_manager.update_journal('39464')
        #$% .register('39464', 'Dhall m'a dit qu'il était possible de trouver Pharod au-delà de la Morgue, dans un lieu qu'ils appellent la 'Ruche'. Dhall n'avait pas envie que je me mette en chasse de Pharod, mais ce n'est pas lui qui a perdu la mémoire et qui vient juste de revenir d'entre les morts, alors son opinion, il peut se la garder. Il m'a suggéré de demander aux habitants de la Ruche où je pourrais trouver Pharod.') %$#


    def j39461_s21_r921_action(self):
        self.state_manager.journal_manager.update_journal('39461')
        #$% .register('39461', 'Dhall m'a appris que l'une des femmes qui m'accompagnaient est enterrée dans la Salle de Commémoration, au rez-de-chaussée de la Morgue.') %$#


    def j39462_s25_r931_action(self):
        self.state_manager.journal_manager.update_journal('39462')
        #$% .register('39462', 'Dhall m'a dit que c'est grâce à lui que les Hommes-Poussière ignorent que je suis revenu plusieurs fois à la Morgue. En sa qualité de scribe de la réception, il est en effet l'un des seuls à voir mon corps revenir à chaque fois.') %$#


    def r936_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_dhall_1')


    def r953_action(self):
        self.state_manager.world_manager.inc_once_know_dustmen('globalknow_dustmen')


    def r958_action(self):
        self.state_manager.world_manager.inc_once_know_dustmen('globalknow_dustmen')


    def j39470_s34_r1301_action(self):
        self.state_manager.journal_manager.update_journal('39470')
        #$% .register('39470', 'Dhall a dit que mes blessures physiques sont mineures en comparaison de celles que j'ai subies au niveau mental. Il a ajouté que mes blessures étaient peut-être directement responsables de ma perte de mémoire, auquel cas je ne souffrirais pas d'une simple amnésie. Cela me met mal à l'aise. J'aimerais bien qu'on me donne quelques bonnes nouvelles, de temps en temps…') %$#


    def r974_action(self):
        self.state_manager.world_manager.inc_once_know_dustmen('globalknow_dustmen')


    def r985_action(self):
        self.state_manager.world_manager.inc_once_know_dustmen('globalknow_dustmen')


    def r1327_action(self):
        self.state_manager.world_manager.set_dhall_value(1)


    def j39459_s45_r5731_action(self):
        self.state_manager.journal_manager.update_journal('39459')
        #$% .register('39459', 'J'ai rencontré un scribe blafard à la Morgue. Il savait que j'avais tout oublié avant même que je lui adresse la parole. Mais l'avais-je connu avant de perdre la mémoire ? J'espérais obtenir des réponses, mais ce lieu semble juste propice à la multiplication des questions.') %$#


    def j39459_s45_r5732_action(self):
        self.state_manager.journal_manager.update_journal('39459')
        #$% .register('39459', 'J'ai rencontré un scribe blafard à la Morgue. Il savait que j'avais tout oublié avant même que je lui adresse la parole. Mais l'avais-je connu avant de perdre la mémoire ? J'espérais obtenir des réponses, mais ce lieu semble juste propice à la multiplication des questions.') %$#


    def r6033_action(self):
        self.state_manager.world_manager.inc_once_know_dustmen('globalknow_dustmen')


    def r6051_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_dhall_2')


    def r6053_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_dhall_3')


    def r5070_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() == 0


    def r5071_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() == 0


    def r5072_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() > 0


    def r5073_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 12 and \
               self.state_manager.characters_manager.get_property('protagonist', 'wisdom') < 13


    def r5074_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'wisdom') > 12


    def r6064_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() == 0


    def r13288_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() > 0


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
        return self.state_manager.world_manager.get_dhall_value() > 0


    def r843_condition(self):
        return self.state_manager.world_manager.get_dhall_value() > 0


    def r5062_condition(self):
        return self.state_manager.world_manager.get_dhall_value() == 0


    def r854_condition(self):
        return self.state_manager.world_manager.get_vaxis_value() == 1 and \
               not self.state_manager.world_manager.get_dead_vaxis() and \
               not self.state_manager.world_manager.get_vaxis_leave() and \
               self.state_manager.world_manager.get_vaxis_betrayed() == 0


    def r858_condition(self):
        return not self.state_manager.world_manager.get_escape_mortuary() and \
               not self.state_manager.locations_manager.is_visited_internal('AR0200')


    def r870_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() == 0


    def r891_condition(self):
        return self.state_manager.world_manager.get_pharod_value() == 0


    def r892_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'wisdom') > 11


    def r898_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'wisdom') > 11


    def r910_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'wisdom') > 11


    def r931_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 11


    def r942_condition(self):
        return not self.state_manager.world_manager.get_journal()


    def r943_condition(self):
        return self.state_manager.world_manager.get_pharod_value() == 0


    def r6026_condition(self):
        return self.state_manager.world_manager.get_pharod_value() == 0


    def r874_condition(self):
        return self.state_manager.world_manager.get_pharod_value() > 0


    def r948_condition(self):
        return self.state_manager.world_manager.get_pharod_value() == 0


    def r6027_condition(self):
        return self.state_manager.world_manager.get_pharod_value() == 0


    def r6066_condition(self):
        return self.state_manager.world_manager.get_pharod_value() > 0


    def r964_condition(self):
        return self.state_manager.world_manager.get_pharod_value() == 0


    def r968_condition(self):
        return self.state_manager.world_manager.get_pharod_value() == 0


    def r5076_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() == 0


    def r5077_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() > 0


    def r5078_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 12 and \
               self.state_manager.characters_manager.get_property('protagonist', 'wisdom') < 13


    def r5079_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'wisdom') > 12


    def r5081_condition(self):
        return self.state_manager.world_manager.get_deionarra_value() == 0


    def r5082_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 12 and \
               self.state_manager.characters_manager.get_property('protagonist', 'wisdom') < 13


    def r5083_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'wisdom') > 12


    def r6032_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()
