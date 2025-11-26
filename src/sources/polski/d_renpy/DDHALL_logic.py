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
        #$%.register('39468', 'Powiedziałem skrybie Dhallowi o Vaxisie i jego przebraniu. Dhall wkrótce powinien wysłać pozostałych Grabarzy by go osaczyli. %$#')


    def r831_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_vaxis_betrayed(2)
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -3, 'globalevil_dhall_2')
        self.state_manager.journal_manager.update_journal('39469')
        #$%.register('39469', 'Obiecałem Vaxisowi, że nie wydam go Grabarzom, ale co z tego? Powiedziałem skrybie Dhallowi o nim i o jego przebraniu. Dhall wkrótce powinien wysłać pozostałych Grabarzy by go osaczyli. %$#')


    def r843_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_dhall_1')


    def j39460_s9_r5069_action(self):
        self.state_manager.journal_manager.update_journal('39460')
        #$% .register('39460', 'Zapytałem Dhalla czy mnie zna. Odpowiedział, że niewiele wie na mój temat, a jeszcze mniej o kompanach, którzy podróżowali ze mną w przeszłości. Najwyraźniej ich ciała spoczywają w Kostnicy... może wspomnienia powrócą gdy je zobaczę.') %$#


    def j39463_s15_r886_action(self):
        self.state_manager.journal_manager.update_journal('39463')
        #$% .register('39463', 'Najwidoczniej Farod przywiózł moje ciało na wozie, razem ze stertą innych zwłok. Czy naprawdę byłem *martwy* gdy to zrobił?') %$#


    def j39464_s19_r906_action(self):
        self.state_manager.journal_manager.update_journal('39464')
        #$% .register('39464', 'Dhall powiedział mi, że Faroda można znaleźć poza Kostnicą, w miejscu zwanym "Ulem". Chyba nie chce, abym wyruszył na poszukiwanie Faroda, ale to nie on stracił wspomnienia i obudził się z martwych, więc może zatrzymać swoją opinię dla siebie. Dhall zasugerował, abym popytał mieszkańców Ula gdzie mogę znaleźć Faroda.') %$#


    def j39461_s21_r921_action(self):
        self.state_manager.journal_manager.update_journal('39461')
        #$% .register('39461', 'Dhall powiedział mi, że jedna z kobiet z którymi podróżowałem, została złożona w sali pamięci, na parterze Kostnicy.') %$#


    def j39462_s25_r931_action(self):
        self.state_manager.journal_manager.update_journal('39462')
        #$% .register('39462', 'Dhall powiedział mi, że to on jest odpowiedzialny za utrzymywanie w tajemnicy przed resztą Grabarzy moich kolejnych wizyt w Kostnicy. Jako, że jest skrybą w sali przyjęć, jest jedną z niewielu osób, które widzą me ciało kiedy się tam pojawi.') %$#


    def r936_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_dhall_1')


    def r953_action(self):
        self.state_manager.world_manager.inc_once_know_dustmen('globalknow_dustmen')


    def r958_action(self):
        self.state_manager.world_manager.inc_once_know_dustmen('globalknow_dustmen')


    def j39470_s34_r1301_action(self):
        self.state_manager.journal_manager.update_journal('39470')
        #$% .register('39470', 'Dhall dał mi do zrozumienia, że rany na moim ciele są niewielkie w porównaniu do ran mego umysłu... posunął się nawet do tego, by zasugerować, że odniesione obrażenia mogą być odpowiedzialne za utratę pamięci, a uszkodzenie umysłu to coś znacznie poważniejszego niż zwykła amnezja. Ta myśl mnie niepokoi - wolałbym od czasu do czasu słyszeć nieco *dobrych* wieści.') %$#


    def r974_action(self):
        self.state_manager.world_manager.inc_once_know_dustmen('globalknow_dustmen')


    def r985_action(self):
        self.state_manager.world_manager.inc_once_know_dustmen('globalknow_dustmen')


    def r1327_action(self):
        self.state_manager.world_manager.set_dhall_value(1)


    def j39459_s45_r5731_action(self):
        self.state_manager.journal_manager.update_journal('39459')
        #$% .register('39459', 'W Kostnicy spotkałem chorowitego skrybę o imieniu Dhall... wiedział, że zapomniałem sam siebie, zanim się jeszcze do niego odezwałem. Czy znałem go zanim straciłem wspomnienia? Miałem nadzieję na uzyskanie paru odpowiedzi, ale to miejsce zdaje się rodzić coraz więcej i więcej pytań.') %$#


    def j39459_s45_r5732_action(self):
        self.state_manager.journal_manager.update_journal('39459')
        #$% .register('39459', 'W Kostnicy spotkałem chorowitego skrybę o imieniu Dhall... wiedział, że zapomniałem sam siebie, zanim się jeszcze do niego odezwałem. Czy znałem go zanim straciłem wspomnienia? Miałem nadzieję na uzyskanie paru odpowiedzi, ale to miejsce zdaje się rodzić coraz więcej i więcej pytań.') %$#


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
