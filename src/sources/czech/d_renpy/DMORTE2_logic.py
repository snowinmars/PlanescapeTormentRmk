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
        #$% .register('39516', 'Postrádám svůj původní deník, takže jsem musel začít psát nový. Probral jsem se na místě zvaném "Márnice." Nevím, kdo jsem, nevím, co tu dělám a nevím, jak jsem se sem dostal. Jediná bytost, kterou se mi poštěstilo potkat, byla mluvící lebka Morte... když mi o chvíli později prohlížel rány na zádech, narazil na několik vytetovaných 'pokynů':  "Vím, že se cítíš, jako bys vypil několik džberů bahna z Řeky Styx, ale teď by ses měl trošičku soustředit. Někde kolem tebe by se měl válet deník, který ti osvětlí, co se vlastně děje. Zbytek ti dopoví Pharod, pokud tedy ještě není zapsán v Knize mrtvých."  "Hlavně ten deník neztrať, protože pak bychom zase byli v bahně Styxu. A ať už děláš cokoliv, neříkej NIKOMU, kdo jsi nebo co se ti stalo, jinak by ses taky mohl pěkně rychle podívat do krematoria. Udělej, co ti říkám: PŘEČTI si deník, pak NAJDI Pharoda."  Copak jsem tuto zprávu nechal sám sobě? Asi bych vážně měl najít toho 'Pharoda' a svůj deník.') %$#


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
