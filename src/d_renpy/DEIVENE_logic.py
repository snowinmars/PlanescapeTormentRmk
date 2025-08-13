class EiveneLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def eivene_init(self):
        self.settings_manager.location_manager.set_location('LOCATION')
        self.settings_manager.inc_talked_to_eivene_times()


    def kill_eivene(self):
        self.settings_manager.set_dead_eivene(True)


    def r3418_action(self):
        # FaceObject(Protagonist)


    def r3422_action(self):
        self.settings_manager.set_eivene_value(1)


    def r3424_action(self):
        self.settings_manager.set_has_embalm(False)
        self.settings_manager.set_has_needle(False)
        self.settings_manager.set_eivene_delivery(True)
        self.settings_manager.gain_experience('party', 250)
        self.settings_manager.journal_manager.update_journal('37701')
        # .register('37701', 'В Морге я повстречался с тленной-бальзамировщицей по имени Эи-Вейн. Мало того, что она бледная как смерть и с когтями на руках, так она еще и близорукая и глухая, и спутала меня с зомби. Она приказала мне найти ей банку с бальзамирующей жидкостью и иголку с ниткой, предположительно для того, чтобы зашить тело, лежащее на столе перед ней. Оба предмета у меня уже были, так что я сразу же дал их ей.')


    def r3425_action(self):
        self.settings_manager.journal_manager.update_journal('37702')
        # .register('37702', 'В Морге я повстречался с тленной-бальзамировщицей по имени Эи-Вейн. Мало того, что она бледная как смерть и с когтями на руках, так она еще и близорукая и глухая, и спутала меня с зомби. Она приказала мне найти ей банку с бальзамирующей жидкостью и иголку с ниткой, предположительно для того, чтобы зашить тело, лежащее на столе перед ней. Они должны быть где-то в Морге, возможно в одной из соседних комнат.')


    def r3426_action(self):
        self.settings_manager.journal_manager.update_journal('37702')
        # .register('37702', 'В Морге я повстречался с тленной-бальзамировщицей по имени Эи-Вейн. Мало того, что она бледная как смерть и с когтями на руках, так она еще и близорукая и глухая, и спутала меня с зомби. Она приказала мне найти ей банку с бальзамирующей жидкостью и иголку с ниткой, предположительно для того, чтобы зашить тело, лежащее на столе перед ней. Они должны быть где-то в Морге, возможно в одной из соседних комнат.')


    def r3427_action(self):
        self.settings_manager.journal_manager.update_journal('37702')
        # .register('37702', 'В Морге я повстречался с тленной-бальзамировщицей по имени Эи-Вейн. Мало того, что она бледная как смерть и с когтями на руках, так она еще и близорукая и глухая, и спутала меня с зомби. Она приказала мне найти ей банку с бальзамирующей жидкостью и иголку с ниткой, предположительно для того, чтобы зашить тело, лежащее на столе перед ней. Они должны быть где-то в Морге, возможно в одной из соседних комнат.')


    def r3428_action(self):
        self.settings_manager.journal_manager.update_journal('37702')
        # .register('37702', 'В Морге я повстречался с тленной-бальзамировщицей по имени Эи-Вейн. Мало того, что она бледная как смерть и с когтями на руках, так она еще и близорукая и глухая, и спутала меня с зомби. Она приказала мне найти ей банку с бальзамирующей жидкостью и иголку с ниткой, предположительно для того, чтобы зашить тело, лежащее на столе перед ней. Они должны быть где-то в Морге, возможно в одной из соседних комнат.')


    def r3429_action(self):
        self.settings_manager.journal_manager.update_journal('37702')
        # .register('37702', 'В Морге я повстречался с тленной-бальзамировщицей по имени Эи-Вейн. Мало того, что она бледная как смерть и с когтями на руках, так она еще и близорукая и глухая, и спутала меня с зомби. Она приказала мне найти ей банку с бальзамирующей жидкостью и иголку с ниткой, предположительно для того, чтобы зашить тело, лежащее на столе перед ней. Они должны быть где-то в Морге, возможно в одной из соседних комнат.')


    def r3491_action(self):
        # ?.play_sound('AMB_M01')
        # Enemy()
        # Attack(Protagonist)
        # ForceAttack(Protagonist,Myself)
        self.settings_manager.set_mortualy_alarmed(True)


    def r3449_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'max_health', 1)
        self.settings_manager.character_manager.full_heal('protagonist')
        self.settings_manager.set_ravel_eivene(1)
        self.settings_manager.journal_manager.update_journal('38199')
        # .register('38199', 'После того, как я принес Эи-Вейн бальзамирующую жидкость и нитку, она зашила мои шрамы и нанесла бальзамирующую жидкость на мое тело. Довольно странно, но я чувствую себя... здоровее.')


    def r3456_action(self):
        self.settings_manager.gain_experience('party', 250)
        self.settings_manager.set_embalm_key_quest(2)
        self.settings_manager.set_has_keyem(True)


    def r3459_action(self):
        # ?.play_sound('SPTR_01')
        self.settings_manager.journal_manager.update_journal('61612')
        # .register('61612', 'Наблюдая за тем, как Эи-Вейн зашивает своими когтями тело умершего, я что-то вспомнил... Очень давно я делал точно такое же действие над телом, однако при этом я ничего не вынимал, а наоборот, что-то положил *внутрь* тела. Такое чувство, что я положил что-то, что смогу позже забрать. В воспоминании я скрестил свои руки на груди, и труп повторил мои движения... на его черепе был написан номер «42».')


    def r3469_action(self):
        self.settings_manager.set_has_embalm(False)
        self.settings_manager.set_has_needle(False)
        self.settings_manager.set_eivene_delivery(True)
        self.settings_manager.gain_experience('party', 250)
        self.settings_manager.journal_manager.update_journal('38202')
        # .register('38202', 'Я принес Эи-Вейн бальзамирующую жидкость и нитку. Не могу сказать, что она ужасно обрадовалась этому.')


    def r3470_action(self):
        self.settings_manager.gain_experience('party', 250)
        self.settings_manager.set_embalm_key_quest(2)
        self.settings_manager.set_has_keyem(True)


    def r3494_action(self):
        self.settings_manager.journal_manager.update_journal('38203')
        # .register('38203', 'Я убедил Эи-Вейн дать мне ключ от бальзамационной.')


    def r3495_action(self):
        self.settings_manager.journal_manager.update_journal('38203')
        # .register('38203', 'Я убедил Эи-Вейн дать мне ключ от бальзамационной.')


    def r3496_action(self):
        self.settings_manager.journal_manager.update_journal('38203')
        # .register('38203', 'Я убедил Эи-Вейн дать мне ключ от бальзамационной.')


    def r3501_action(self):
        self.settings_manager.gain_experience('party', 250)
        self.settings_manager.set_embalm_key_quest(2)
        self.settings_manager.set_has_keyem(True)


    def r63478_action(self):
        self.settings_manager.gain_experience('protagonist', 250)
        self.settings_manager.set_42_secret(True)


    def r3412_condition(self):
        return not self.settings_manager.get_in_party_morte()


    def r3413_condition(self):
        return self.settings_manager.get_in_party_morte()


    def r3414_condition(self):
        return not self.settings_manager.get_in_party_morte()


    def r3415_condition(self):
        return self.settings_manager.get_in_party_morte()


    def r3424_condition(self):
        return self.settings_manager.get_has_embalm() and \
               self.settings_manager.get_has_needle()


    def r3425_condition(self):
        return not self.settings_manager.get_in_party_morte()


    def r3426_condition(self):
        return self.settings_manager.get_in_party_morte()


    def r3427_condition(self):
        return not self.settings_manager.get_in_party_morte()


    def r3428_condition(self):
        return self.settings_manager.get_in_party_morte()


    def r3440_condition(self):
        return not self.settings_manager.get_in_party_morte()


    def r3441_condition(self):
        return self.settings_manager.get_in_party_morte()


    def r3442_condition(self):
        return not self.settings_manager.get_in_party_morte()


    def r3443_condition(self):
        return self.settings_manager.get_in_party_morte()


    def r3452_condition(self):
        return not self.settings_manager.get_in_party_morte()


    def r3453_condition(self):
        return self.settings_manager.get_in_party_morte()


    def r3456_condition(self):
        return self.settings_manager.get_embalm_key_quest() == 1 and \
               not self.settings_manager.get_has_keyem()


    def r3457_condition(self):
        return self.settings_manager.get_embalm_key_quest() == 1 and \
               self.settings_manager.get_has_keyem()


    def r3459_condition(self):
        return not self.settings_manager.get_42_secret()


    def r3463_condition(self):
        return not self.settings_manager.get_eivene_delivery()


    def r4351_condition(self):
        return self.settings_manager.get_eivene_delivery()


    def r3469_condition(self):
        return self.settings_manager.get_has_embalm() and \
               self.settings_manager.get_has_needle()


    def r3470_condition(self):
        return self.settings_manager.get_embalm_key_quest() == 1 and \
               not self.settings_manager.get_has_keyem()


    def r3497_condition(self):
        return self.settings_manager.get_embalm_key_quest() == 1 and \
               self.settings_manager.get_has_keyem()


    def r3494_condition(self):
        return not self.settings_manager.get_in_party_morte()


    def r3495_condition(self):
        return self.settings_manager.get_in_party_morte()


    def r3501_condition(self):
        return self.settings_manager.get_embalm_key_quest() == 1 and \
               not self.settings_manager.get_has_keyem()


    def r3502_condition(self):
        return self.settings_manager.get_embalm_key_quest() == 1 and \
               self.settings_manager.get_has_keyem()


    def r4354_condition(self):
        return not self.settings_manager.get_eivene_delivery()


    def r4355_condition(self):
        return self.settings_manager.get_eivene_delivery()


    def r63478_condition(self):
        return not self.settings_manager.get_42_secret()


    def r63479_condition(self):
        return self.settings_manager.get_42_secret()


    def r63482_condition(self):
        return not self.settings_manager.get_eivene_delivery()


    def r63481_condition(self):
        return self.settings_manager.get_eivene_delivery()
