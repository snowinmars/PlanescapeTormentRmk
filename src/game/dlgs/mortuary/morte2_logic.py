class Morte2Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def morte_init_first(self):
        self.settings_manager.inc_talked_to_morte_times()


    def morte_init(self):
        self.settings_manager.location_manager.set_location('mortuary_f2r2')
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.inc_talked_to_morte_times()


    def morte_talk_dhall(self):
        self.settings_manager.location_manager.set_location('mortuary_f2r3')
        self.settings_manager.inc_talked_to_morte_times()


    def kill_morte(self):
        self.settings_manager.set_dead_morte(True)


    def r41145_action(self):
        self.settings_manager.set_morte_mortuary_walkthrough_1(True)


    def r41146_action(self):
        self.settings_manager.set_morte_mortuary_walkthrough_1(True)


    def r41147_action(self):
        self.settings_manager.set_morte_mortuary_walkthrough_1(True)


    def r41148_action(self):
        self.settings_manager.set_morte_mortuary_walkthrough_1(True)


    def r41177_action(self):
        self.settings_manager.journal_manager.update_journal('39516')


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
