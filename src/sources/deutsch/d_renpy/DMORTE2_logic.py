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
        #$% .register('39516', 'Mein eigentliches Journal ist verschwunden, also hab ich ein neues angefangen. Ich bin an einem Ort aufgewacht, der "Leichenhalle" genannt wird. Ich weiß nicht, wer ich bin, was ich hier mache, oder gar, wie ich hierher gekommen bin. Die einzige Person, die ich getroffen habe, ich ein plappernder Schädel namens Morte... Während er sich meine Wunden angesehen hat, hat er eine Reihe von 'Anweisungen' gefunden, die auf meinen Rücken tätowiert sind.  "Ich weiß, du fühlst dich, als hättest du ein paar Fässer Styx-Wasser getrunken, aber du mußt dich KONZENTRIEREN. In deinem Besitz befindet sich ein JOURNAL, das etwas Licht auf das Dunkel der Sache werfen sollte. PHAROD kann dir den Rest des Plausches liefern, sofern er nicht schon im Totenbuch gelandet ist."  "Verlier das Journal nicht oder wir landen wieder im Styx. Und was auch geschieht, erzähl KEINEM, WER du bist oder WAS dir widerfahren ist. Sonst schicken sie dich im Handumdrehen auf eine Pilgerfahrt ins Krematorium. Tu, was ich dir sage: LIES das Journal, und dann FINDE Pharod."  Hab ich diese Nachricht für mich selbst hinterlassen? Sieht so aus, als müßte ich diesen 'Pharod' UND mein Journal finden.') %$#


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
