class Morte2LogicGenerated:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def r41145_action(self):
        self.settings_manager.set_morte_mortuary_walkthrough_1(True)


    def r41146_action(self):
        self.settings_manager.set_morte_mortuary_walkthrough_1(True)


    def r41147_action(self):
        self.settings_manager.set_morte_mortuary_walkthrough_1(True)


    def r41148_action(self):
        self.settings_manager.set_morte_mortuary_walkthrough_1(True)


    def j39516_s11_r41177_action(self):
        self.settings_manager.journal_manager.update_journal('39516')
        #$% .register('39516', 'Мой предыдущий дневник пропал, так что я завел новый. Я очнулся в месте под названием «Морг». Я не знаю, кто я, что я здесь делаю и даже как я сюда попал. Единственного, кого я здесь пока встретил, — говорящий без умолку череп по имени Морт... Когда он осматривал мои раны, он нашел «указания», вытатуированные на моей спине:  «Я знаю, что ты чувствуешь себя так, как будто ты выпил несколько бочонков помоев из Стикса, но тебе надо СОСРЕДОТОЧИТЬСЯ. Среди твоих вещей есть ДНЕВНИК, который прольет свет на это темное дело. ФАРОД сможет дополнить оставшуюся часть истории, если его еще не записали в книгу мертвых».  «Не потеряй дневник, иначе мы вновь окажемся в Стиксе. И что бы ты ни делал, НЕ ГОВОРИ никому КТО ты и ЧТО с тобой произошло, иначе тебя живо отправят в крематорий. Делай так, как я сказал: ПРОЧТИ дневник, а затем НАЙДИ Фарода».  Мог ли сам себе оставить это сообщение? Судя по всему, мне придется найти этого «Фарода» и свой дневник.') %$#


    def r41251_action(self):
        self.settings_manager.set_in_party_morte(True)


    def r41255_action(self):
        self.settings_manager.set_in_party_morte(True)


    def r41258_action(self):
        self.settings_manager.set_in_party_morte(True)


    def r41263_action(self):
        self.settings_manager.set_morte_mortuary_walkthrough_2(True)


    def r41163_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'intelligence') > 12


    def r41181_condition(self):
        return not self.settings_manager.get_morte_mortuary_walkthrough_1()


    def r41182_condition(self):
        return self.settings_manager.get_morte_mortuary_walkthrough_1()


    def r41184_condition(self):
        return self.settings_manager.get_morte_mortuary_walkthrough_1()


    def r41185_condition(self):
        return self.settings_manager.get_has_bandages()


    def r41186_condition(self):
        return not self.settings_manager.get_morte_mortuary_walkthrough_1()


    def r41187_condition(self):
        return self.settings_manager.get_morte_mortuary_walkthrough_1()


    def r41191_condition(self):
        return not self.settings_manager.get_morte_mortuary_walkthrough_1()


    def r41192_condition(self):
        return self.settings_manager.get_morte_mortuary_walkthrough_1()


    def r41196_condition(self):
        return not self.settings_manager.get_morte_mortuary_walkthrough_1()


    def r41197_condition(self):
        return self.settings_manager.get_morte_mortuary_walkthrough_1()


    def r41201_condition(self):
        return not self.settings_manager.get_morte_mortuary_walkthrough_1()


    def r41203_condition(self):
        return self.settings_manager.get_morte_mortuary_walkthrough_1()


    def r41206_condition(self):
        return not self.settings_manager.get_morte_mortuary_walkthrough_1()


    def r41207_condition(self):
        return self.settings_manager.get_morte_mortuary_walkthrough_1()


    def r41210_condition(self):
        return not self.settings_manager.get_morte_mortuary_walkthrough_1()


    def r41211_condition(self):
        return self.settings_manager.get_morte_mortuary_walkthrough_1()


    def r41214_condition(self):
        return not self.settings_manager.get_morte_mortuary_walkthrough_1()


    def r41215_condition(self):
        return self.settings_manager.get_morte_mortuary_walkthrough_1()


    def r41219_condition(self):
        return not self.settings_manager.get_morte_mortuary_walkthrough_1()


    def r41220_condition(self):
        return self.settings_manager.get_morte_mortuary_walkthrough_1()


    def r41223_condition(self):
        return not self.settings_manager.get_morte_mortuary_walkthrough_1()


    def r41224_condition(self):
        return self.settings_manager.get_morte_mortuary_walkthrough_1()


    def r41227_condition(self):
        return not self.settings_manager.get_morte_mortuary_walkthrough_1()


    def r41228_condition(self):
        return self.settings_manager.get_morte_mortuary_walkthrough_1()


    def r41231_condition(self):
        return not self.settings_manager.get_morte_mortuary_walkthrough_1()


    def r41232_condition(self):
        return self.settings_manager.get_morte_mortuary_walkthrough_1()


    def r41239_condition(self):
        return self.settings_manager.character_manager.get_property('protagonist', 'intelligence') > 12


class Morte2Logic(Morte2LogicGenerated):
    def __init__(self, settings_manager):
        super().__init__(settings_manager)


    def s0_action(self):
        self.settings_manager.set_mortuary_walkthrough(2) # TODO [snow]: I guess


    def s11_action(self):
        self.settings_manager.set_mortuary_walkthrough(3) # TODO [snow]: I guess
