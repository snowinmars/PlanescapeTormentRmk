class EiveneLogicGenerated:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r3418_action(self):
        #$% FaceObject(Protagonist) %$#
        return


    def r3422_action(self):
        self.state_manager.world_manager.set_eivene(1)


    def j37701_s5_r3424_action(self):
        self.state_manager.journal_notes_manager.update_journal('37701')
        #$% .register('37701', 'В Морге я повстречался с тленной-бальзамировщицей по имени Эи-Вейн. Мало того, что она бледная как смерть и с когтями на руках, так она еще и близорукая и глухая, и спутала меня с зомби. Она приказала мне найти ей банку с бальзамирующей жидкостью и иголку с ниткой, предположительно для того, чтобы зашить тело, лежащее на столе перед ней. Оба предмета у меня уже были, так что я сразу же дал их ей.') %$#


    def r3424_action(self):
        self.state_manager.inventory_items_manager.drop_item('has_embalm')
        self.state_manager.inventory_items_manager.drop_item('has_needle')
        self.state_manager.world_manager.set_eivene_delivery(True)
        self.state_manager.gain_experience('party', 250)


    def j37702_s5_r3425_action(self):
        self.state_manager.journal_notes_manager.update_journal('37702')
        #$% .register('37702', 'В Морге я повстречался с тленной-бальзамировщицей по имени Эи-Вейн. Мало того, что она бледная как смерть и с когтями на руках, так она еще и близорукая и глухая, и спутала меня с зомби. Она приказала мне найти ей банку с бальзамирующей жидкостью и иголку с ниткой, предположительно для того, чтобы зашить тело, лежащее на столе перед ней. Они должны быть где-то в Морге, возможно в одной из соседних комнат.') %$#


    def j37702_s5_r3426_action(self):
        self.state_manager.journal_notes_manager.update_journal('37702')
        #$% .register('37702', 'В Морге я повстречался с тленной-бальзамировщицей по имени Эи-Вейн. Мало того, что она бледная как смерть и с когтями на руках, так она еще и близорукая и глухая, и спутала меня с зомби. Она приказала мне найти ей банку с бальзамирующей жидкостью и иголку с ниткой, предположительно для того, чтобы зашить тело, лежащее на столе перед ней. Они должны быть где-то в Морге, возможно в одной из соседних комнат.') %$#


    def j37702_s5_r3427_action(self):
        self.state_manager.journal_notes_manager.update_journal('37702')
        #$% .register('37702', 'В Морге я повстречался с тленной-бальзамировщицей по имени Эи-Вейн. Мало того, что она бледная как смерть и с когтями на руках, так она еще и близорукая и глухая, и спутала меня с зомби. Она приказала мне найти ей банку с бальзамирующей жидкостью и иголку с ниткой, предположительно для того, чтобы зашить тело, лежащее на столе перед ней. Они должны быть где-то в Морге, возможно в одной из соседних комнат.') %$#


    def j37702_s5_r3428_action(self):
        self.state_manager.journal_notes_manager.update_journal('37702')
        #$% .register('37702', 'В Морге я повстречался с тленной-бальзамировщицей по имени Эи-Вейн. Мало того, что она бледная как смерть и с когтями на руках, так она еще и близорукая и глухая, и спутала меня с зомби. Она приказала мне найти ей банку с бальзамирующей жидкостью и иголку с ниткой, предположительно для того, чтобы зашить тело, лежащее на столе перед ней. Они должны быть где-то в Морге, возможно в одной из соседних комнат.') %$#


    def j37702_s5_r3429_action(self):
        self.state_manager.journal_notes_manager.update_journal('37702')
        #$% .register('37702', 'В Морге я повстречался с тленной-бальзамировщицей по имени Эи-Вейн. Мало того, что она бледная как смерть и с когтями на руках, так она еще и близорукая и глухая, и спутала меня с зомби. Она приказала мне найти ей банку с бальзамирующей жидкостью и иголку с ниткой, предположительно для того, чтобы зашить тело, лежащее на столе перед ней. Они должны быть где-то в Морге, возможно в одной из соседних комнат.') %$#


    def r3491_action(self):
        #$% ?.play_sound('AMB_M01') %$#
        #$% Enemy() %$#
        #$% Attack(Protagonist) %$#
        #$% ForceAttack(Protagonist,Myself) %$#
        self.state_manager.world_manager.set_mortualy_alarmed(True)


    def r3449_action(self):
        self.state_manager.characters_manager.modify_property('protagonist_character_name', 'max_health', 1)
        self.state_manager.characters_manager.full_heal('protagonist_character_name')
        self.state_manager.world_manager.set_ravel_eivene(1)
        self.state_manager.journal_notes_manager.update_journal('38199')
        #$%.register('38199', 'После того, как я принес Эи-Вейн бальзамирующую жидкость и нитку, она зашила мои шрамы и нанесла бальзамирующую жидкость на мое тело. Довольно странно, но я чувствую себя… здоровее. %$#')


    def r3456_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_embalm_key_quest(2)
        self.state_manager.inventory_items_manager.pick_item('has_keyem')


    def j61612_s15_r3459_action(self):
        self.state_manager.journal_notes_manager.update_journal('61612')
        #$% .register('61612', 'Наблюдая за тем, как Эи-Вейн зашивает своими когтями тело умершего, я что-то вспомнил… Очень давно я делал точно такое же действие над телом, однако при этом я ничего не вынимал, а наоборот, что-то положил *внутрь* тела. Такое чувство, что я положил что-то, что смогу позже забрать. В воспоминании я скрестил свои руки на груди, и труп повторил мои движения… на его черепе был написан номер «42».') %$#


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
        self.state_manager.journal_notes_manager.update_journal('38202')
        #$% .register('38202', 'Я принес Эи-Вейн бальзамирующую жидкость и нитку. Не могу сказать, что она ужасно обрадовалась этому.') %$#


    def r3469_action(self):
        self.state_manager.inventory_items_manager.drop_item('has_embalm')
        self.state_manager.inventory_items_manager.drop_item('has_needle')
        self.state_manager.world_manager.set_eivene_delivery(True)
        self.state_manager.gain_experience('party', 250)


    def r3470_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_embalm_key_quest(2)
        self.state_manager.inventory_items_manager.pick_item('has_keyem')


    def j38203_s18_r3494_action(self):
        self.state_manager.journal_notes_manager.update_journal('38203')
        #$% .register('38203', 'Я убедил Эи-Вейн дать мне ключ от бальзамационной.') %$#


    def j38203_s18_r3495_action(self):
        self.state_manager.journal_notes_manager.update_journal('38203')
        #$% .register('38203', 'Я убедил Эи-Вейн дать мне ключ от бальзамационной.') %$#


    def j38203_s18_r3496_action(self):
        self.state_manager.journal_notes_manager.update_journal('38203')
        #$% .register('38203', 'Я убедил Эи-Вейн дать мне ключ от бальзамационной.') %$#


    def j38205_s19_action(self):
        self.state_manager.journal_notes_manager.update_journal('38205')
        #$% .register('38205', 'Недавно я встретил тленную-бальзамировщицу, которая оказалась «тифлингом», тем, у кого в жилах течет кровь нечисти. По всей видимости, кровь нечистых искажает их тела и, в некоторых случаях, также затрагивает и рассудок. Как сказал Морт, тифлингов в округе достаточно много… что может означать, что нечисти здесь тоже не меньше.') %$#


    def j38205_s21_action(self):
        self.state_manager.journal_notes_manager.update_journal('38205')
        #$% .register('38205', 'Недавно я встретил тленную-бальзамировщицу, которая оказалась «тифлингом», тем, у кого в жилах течет кровь нечисти. По всей видимости, кровь нечистых искажает их тела и, в некоторых случаях, также затрагивает и рассудок. Как сказал Морт, тифлингов в округе достаточно много… что может означать, что нечисти здесь тоже не меньше.') %$#


    def r3501_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_embalm_key_quest(2)
        self.state_manager.inventory_items_manager.pick_item('has_keyem')


    def r63478_action(self):
        self.state_manager.gain_experience('protagonist_character_name', 250)
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
        return self.state_manager.inventory_items_manager.is_own_item('has_embalm') and \
               self.state_manager.inventory_items_manager.is_own_item('has_needle')


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
               not self.state_manager.inventory_items_manager.is_own_item('has_keyem')


    def r3457_condition(self):
        return self.state_manager.world_manager.get_embalm_key_quest() == 1 and \
               self.state_manager.inventory_items_manager.is_own_item('has_keyem')


    def r3459_condition(self):
        return not self.state_manager.world_manager.get_42_secret()


    def r3463_condition(self):
        return not self.state_manager.world_manager.get_eivene_delivery()


    def r4351_condition(self):
        return self.state_manager.world_manager.get_eivene_delivery()


    def r3469_condition(self):
        return self.state_manager.inventory_items_manager.is_own_item('has_embalm') and \
               self.state_manager.inventory_items_manager.is_own_item('has_needle')


    def r3470_condition(self):
        return self.state_manager.world_manager.get_embalm_key_quest() == 1 and \
               not self.state_manager.inventory_items_manager.is_own_item('has_keyem')


    def r3497_condition(self):
        return self.state_manager.world_manager.get_embalm_key_quest() == 1 and \
               self.state_manager.inventory_items_manager.is_own_item('has_keyem')


    def r3494_condition(self):
        return not self.state_manager.world_manager.get_in_party_morte()


    def r3495_condition(self):
        return self.state_manager.world_manager.get_in_party_morte()


    def r3501_condition(self):
        return self.state_manager.world_manager.get_embalm_key_quest() == 1 and \
               not self.state_manager.inventory_items_manager.is_own_item('has_keyem')


    def r3502_condition(self):
        return self.state_manager.world_manager.get_embalm_key_quest() == 1 and \
               self.state_manager.inventory_items_manager.is_own_item('has_keyem')


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


class EiveneLogic(EiveneLogicGenerated):
    def __init__(self, state_manager):
        super().__init__(state_manager)


    def get_know_eivene_name(self):
        return self.state_manager.world_manager.get_know_eivene_name()


    def set_know_eivene_name(self):
        self.state_manager.world_manager.set_know_eivene_name(True)


    def talk(self):
        self.state_manager.world_manager.inc_talked_to_eivene_times()
