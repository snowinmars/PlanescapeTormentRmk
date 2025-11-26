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
        #$% .register('39516', 'My original journal's gone missing, so I've started a new one. I woke up in a place called the "Mortuary." I don't know who I am, what I'm doing here, or even how I got here. The only person I encountered was a chattering skull called Morte... while he was checking my wounds, he discovered a set of 'directions' tattooed on my back:  "I know you feel like you've been drinking a few kegs of Styx wash, but you need to CENTER yourself. Among your possessions is a JOURNAL that'll shed some light on the dark of the matter. PHAROD can fill you in on the rest of the chant, if he's not in the dead-book already."  "Don't lose the journal or we'll be up the Styx again. And whatever you do, DO NOT tell anyone WHO you are or WHAT happens to you, or they'll put you on a quick pilgrimage to the crematorium. Do what I tell you: READ the journal, then FIND Pharod."  Did I leave this message for myself? Looks like I'll need to find this 'Pharod' AND my journal.') %$#


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
