class Morte2Logic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r41145_action(self):
        self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(True)


    def r41146_action(self):
        self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(True)


    def r41147_action(self):
        self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(True)


    def r41148_action(self):
        self.state_manager.world_manager.set_morte_mortuary_walkthrough_1(True)


    def j39516_s11_r41177_action(self):
        self.state_manager.journal_manager.update_journal('39516')
        #$% .register('39516', 'Mój pierwszy dziennik zginął więc zacząłem nowy. Ocknąłem się w miejscu zwanym "Kostnicą". Nie wiem kim jestem, co tu robię, ani nawet jak tu trafiłem. Jedyną osobą, którą spotkałem jest gadająca czaszka o imieniu Morte... kiedy ja oglądałem swoje rany, on odkrył kilka 'wskazówek' wytatuowanych na moich plecach:  "Wiem że czujesz się, jakbyś władował w siebie kilka baryłek wody ze Styksu, ale musisz się wziąć w GARŚĆ. Masz przy sobie DZIENNIK, który powinien trochę rozjaśnić sprawę. Resztę śpiewki usłyszysz od FARODA, chyba że już go wpisali do księgi umarłych."  "Nie zgub dziennika, bo znowu popłyniemy w górę Styksu. I cokolwiek robisz, NIE MÓW nikomu KIM jesteś, ani CO się z tobą dzieje, bo inaczej wylądujesz w krematorium. Rób co ci każę: PRZECZYTAJ dziennik, a potem ODSZUKAJ Faroda."  Zostawiłem wiadomość dla samego siebie? Wygląda na to, że muszę znaleźć tego 'Faroda' I mój dziennik.') %$#


    def r41251_action(self):
        self.state_manager.world_manager.set_in_party_morte(True)


    def r41255_action(self):
        self.state_manager.world_manager.set_in_party_morte(True)


    def r41258_action(self):
        self.state_manager.world_manager.set_in_party_morte(True)


    def r41263_action(self):
        self.state_manager.world_manager.set_morte_mortuary_walkthrough_2(True)


    def r41163_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 12


    def r41181_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41182_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41184_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41185_condition(self):
        return self.state_manager.world_manager.get_has_bandages()


    def r41186_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41187_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41191_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41192_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41196_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41197_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41201_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41203_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41206_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41207_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41210_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41211_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41214_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41215_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41219_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41220_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41223_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41224_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41227_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41228_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41231_condition(self):
        return not self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41232_condition(self):
        return self.state_manager.world_manager.get_morte_mortuary_walkthrough_1()


    def r41239_condition(self):
        return self.state_manager.characters_manager.get_property('protagonist', 'intelligence') > 12
