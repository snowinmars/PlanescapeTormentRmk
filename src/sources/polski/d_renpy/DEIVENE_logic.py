class EiveneLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r3418_action(self):
        #$% FaceObject(Protagonist) %$#
        return


    def r3422_action(self):
        self.state_manager.world_manager.set_eivene_value(1)


    def r3424_action(self):
        self.state_manager.world_manager.set_has_embalm(False)
        self.state_manager.world_manager.set_has_needle(False)
        self.state_manager.world_manager.set_eivene_delivery(True)
        self.state_manager.gain_experience('party', 250)
        self.state_manager.journal_manager.update_journal('37701')
        #$%.register('37701', 'W Kostnicy spotkałem Grabarza - balsamitkę o imieniu Ei-Vene. Miała długie szpony, ciało wysmarowane kolorowymi tłuszczami, a w dodatku była głucha, niedowidziała i pomyliła mnie z zombie. Chciała, żebym zdobył dla niej słój z płynem do balsamowania oraz igłę z nicią, bez których nie mogła pozszywać ciała leżącego na jej stole. Jak się okazało, znalazłem już te rzeczy, więc oddałem je Ei-Vene. %$#')


    def j37702_s5_r3425_action(self):
        self.state_manager.journal_manager.update_journal('37702')
        #$% .register('37702', 'W Kostnicy spotkałem Grabarza - balsamitkę o imieniu Ei-Vene. Miała długie szpony, ciało wysmarowane kolorowymi tłuszczami, a w dodatku była głucha, niedowidziała i pomyliła mnie z zombie. Chciała, żebym zdobył dla niej słój z płynem do balsamowani oraz igłę z nicią, bez których nie mogła pozszywać ciała leżącego na jej stole. Tego rodzaju przedmioty muszą znajdować się na terenie Kostnicy, zapewne w którymś z sąsiednich pomieszczeń.') %$#


    def j37702_s5_r3426_action(self):
        self.state_manager.journal_manager.update_journal('37702')
        #$% .register('37702', 'W Kostnicy spotkałem Grabarza - balsamitkę o imieniu Ei-Vene. Miała długie szpony, ciało wysmarowane kolorowymi tłuszczami, a w dodatku była głucha, niedowidziała i pomyliła mnie z zombie. Chciała, żebym zdobył dla niej słój z płynem do balsamowani oraz igłę z nicią, bez których nie mogła pozszywać ciała leżącego na jej stole. Tego rodzaju przedmioty muszą znajdować się na terenie Kostnicy, zapewne w którymś z sąsiednich pomieszczeń.') %$#


    def j37702_s5_r3427_action(self):
        self.state_manager.journal_manager.update_journal('37702')
        #$% .register('37702', 'W Kostnicy spotkałem Grabarza - balsamitkę o imieniu Ei-Vene. Miała długie szpony, ciało wysmarowane kolorowymi tłuszczami, a w dodatku była głucha, niedowidziała i pomyliła mnie z zombie. Chciała, żebym zdobył dla niej słój z płynem do balsamowani oraz igłę z nicią, bez których nie mogła pozszywać ciała leżącego na jej stole. Tego rodzaju przedmioty muszą znajdować się na terenie Kostnicy, zapewne w którymś z sąsiednich pomieszczeń.') %$#


    def j37702_s5_r3428_action(self):
        self.state_manager.journal_manager.update_journal('37702')
        #$% .register('37702', 'W Kostnicy spotkałem Grabarza - balsamitkę o imieniu Ei-Vene. Miała długie szpony, ciało wysmarowane kolorowymi tłuszczami, a w dodatku była głucha, niedowidziała i pomyliła mnie z zombie. Chciała, żebym zdobył dla niej słój z płynem do balsamowani oraz igłę z nicią, bez których nie mogła pozszywać ciała leżącego na jej stole. Tego rodzaju przedmioty muszą znajdować się na terenie Kostnicy, zapewne w którymś z sąsiednich pomieszczeń.') %$#


    def j37702_s5_r3429_action(self):
        self.state_manager.journal_manager.update_journal('37702')
        #$% .register('37702', 'W Kostnicy spotkałem Grabarza - balsamitkę o imieniu Ei-Vene. Miała długie szpony, ciało wysmarowane kolorowymi tłuszczami, a w dodatku była głucha, niedowidziała i pomyliła mnie z zombie. Chciała, żebym zdobył dla niej słój z płynem do balsamowani oraz igłę z nicią, bez których nie mogła pozszywać ciała leżącego na jej stole. Tego rodzaju przedmioty muszą znajdować się na terenie Kostnicy, zapewne w którymś z sąsiednich pomieszczeń.') %$#


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
        #$%.register('38199', 'Po dostarczeniu Ei-vene płynu do balsamowania oraz nici, zaszyła mi rany i wtarła płyn w moje ciało. Co dziwne, poczułem się po tym... zdrowszy. %$#')


    def r3456_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_embalm_key_quest(2)
        self.state_manager.world_manager.set_has_keyem(True)


    def r3459_action(self):
        #$% ?.play_sound('SPTR_01') %$#
        self.state_manager.journal_manager.update_journal('61612')
        #$%.register('61612', 'Obraz Ei-Vene preparującej zwłoki z pomocą nożycowych rąk ożywił na chwilę moją pamięć... Przypomniałem sobie samego siebie, wykonującego podobną operację na zwłokach, bardzo, bardzo dawno temu. Pamiętam tylko, że, w odróżnieniu od Ei-Vene, ja "wkładałem" coś do klatki piersiowej zmarłego, a nie opróżniałem jej. Zdaje się, że rzecz tę przeznaczałem na przyszłość, dla samego siebie. Pamiętam, że wtedy, kiedy skrzyżowałem ramionami, trup uczynił to samo. Miał na czerepie wyryty numer "42". %$#')


    def s16_action(self):
        #$% FadeToColor([20.0],0) %$#
        #$% Wait(3) %$#
        #$% FadeFromColor([20.0],0) %$#
        #$% Wait(3) %$#
        return


    def r3469_action(self):
        self.state_manager.world_manager.set_has_embalm(False)
        self.state_manager.world_manager.set_has_needle(False)
        self.state_manager.world_manager.set_eivene_delivery(True)
        self.state_manager.gain_experience('party', 250)
        self.state_manager.journal_manager.update_journal('38202')
        #$%.register('38202', 'Przyniosłem Ei-Vene płyn do balsamowania, igłę oraz nitkę. Nie wydawała się być szczególnie wdzięczna. %$#')


    def r3470_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_embalm_key_quest(2)
        self.state_manager.world_manager.set_has_keyem(True)


    def j38203_s18_r3494_action(self):
        self.state_manager.journal_manager.update_journal('38203')
        #$% .register('38203', 'Przekonałem Ei-Vene, aby dała mi klucz do sali balsamowania.') %$#


    def j38203_s18_r3495_action(self):
        self.state_manager.journal_manager.update_journal('38203')
        #$% .register('38203', 'Przekonałem Ei-Vene, aby dała mi klucz do sali balsamowania.') %$#


    def j38203_s18_r3496_action(self):
        self.state_manager.journal_manager.update_journal('38203')
        #$% .register('38203', 'Przekonałem Ei-Vene, aby dała mi klucz do sali balsamowania.') %$#


    def j38205_s19_action(self):
        self.state_manager.journal_manager.update_journal('38205')
        #$% .register('38205', 'Najwyraźniej, spotkana balsamitka jest "diabelstwem," osobą, w której żyłach płynie biesia krew. Wpływ tej krwi wypacza ciała, a czasami także i umysły. Z tego co mówił Morte wynika, że jest wiele diabelstw dookoła... co sugeruje, że istnieje także znaczna liczba biesów.') %$#


    def j38205_s21_action(self):
        self.state_manager.journal_manager.update_journal('38205')
        #$% .register('38205', 'Najwyraźniej, spotkana balsamitka jest "diabelstwem," osobą, w której żyłach płynie biesia krew. Wpływ tej krwi wypacza ciała, a czasami także i umysły. Z tego co mówił Morte wynika, że jest wiele diabelstw dookoła... co sugeruje, że istnieje także znaczna liczba biesów.') %$#


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
