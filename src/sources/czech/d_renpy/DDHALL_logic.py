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
        #$%.register('39468', 'Řekl jsem písaři Dhallovi o Vaxisovi a jeho přestrojení. Dhall řekl, že na Vaxise pošle ostatní Spalovače, jakmile to bude možné. %$#')


    def r831_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_vaxis_betrayed(2)
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -3, 'globalevil_dhall_2')
        self.state_manager.journal_manager.update_journal('39469')
        #$%.register('39469', 'Slíbil jsem Vaxisovi, že ho Spalovačům nezradím, ale co? Řekl jsem písaři Dhallovi o Vaxisovi a jeho přestrojení. Dhall řekl, že na Vaxise pošle ostatní Spalovače, jakmile to bude možné. %$#')


    def r843_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_dhall_1')


    def j39460_s9_r5069_action(self):
        self.state_manager.journal_manager.update_journal('39460')
        #$% .register('39460', 'Zeptal jsem se Dhalla, jestli mě znal a on odpověděl, že o mně ví jen málo - a ještě méně o společnících, kteří se mnou dříve cestovali. Jejich těla jsou někde v Márnici... možná že když je uvidím, přivolá to nějaké vzpomínky.') %$#


    def j39463_s15_r886_action(self):
        self.state_manager.journal_manager.update_journal('39463')
        #$% .register('39463', 'Zřejmě sem mé tělo dovezl Pharod na vozíku, společně s hromadou dalších mrtvol. Byl jsem *mrtvý*, když to udělal?') %$#


    def j39464_s19_r906_action(self):
        self.state_manager.journal_manager.update_journal('39464')
        #$% .register('39464', 'Dhall mi řekl, že Pharoda najdu mimo Márnici, na místě zvaném "Úl". Vypadá to, že nechce, abych hledal Pharoda, ale on neztratil paměť a nevstal z mrtvých, takže si může své názory nechat jen pro sebe. Dhall mi navrhl, ať se zeptám lidí v Úlu, kde by se dal Pharod najít.') %$#


    def j39461_s21_r921_action(self):
        self.state_manager.journal_manager.update_journal('39461')
        #$% .register('39461', 'Dhall mi řekl, že jedna z žen, která se mnou cestovala, je pohřbena v pamětní hale v prvním patře Márnice.') %$#


    def j39462_s25_r931_action(self):
        self.state_manager.journal_manager.update_journal('39462')
        #$% .register('39462', 'Dhall mi řekl, že před ostatními Spalovači tají mé návraty do Márnice. Jelikož je písař v Přijímací místnosti, je jedním z mála, kteří vidí mé tělo, když sem dorazí.') %$#


    def r936_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_dhall_1')


    def r953_action(self):
        self.state_manager.world_manager.inc_once_know_dustmen('globalknow_dustmen')


    def r958_action(self):
        self.state_manager.world_manager.inc_once_know_dustmen('globalknow_dustmen')


    def j39470_s34_r1301_action(self):
        self.state_manager.journal_manager.update_journal('39470')
        #$% .register('39470', 'Dhall řekl, že rány, které jsem utrpěl, jsou nedůležité v porovnání s ranami uštědřenými mé mysli... zašel dokonce tak daleko, že tato zranění považuje za příčinu mé ztráty paměti a varoval mě, že mentální poškození může být horší než jenom amnézie. Ta myšlenka mě zneklidňuje - vůbec by mi nevadilo, kdyby mi sdělil taky nějaké dobré zprávy...') %$#


    def r974_action(self):
        self.state_manager.world_manager.inc_once_know_dustmen('globalknow_dustmen')


    def r985_action(self):
        self.state_manager.world_manager.inc_once_know_dustmen('globalknow_dustmen')


    def r1327_action(self):
        self.state_manager.world_manager.set_dhall_value(1)


    def j39459_s45_r5731_action(self):
        self.state_manager.journal_manager.update_journal('39459')
        #$% .register('39459', 'V Márnici jsem potkal nemocného písaře jménem Dhall... věděl, že jsem na vše zapomněl ještě předtím, než jsem s ním promluvil. Znal jsem ho dříve, než jsem ztratil paměť? Doufal jsem, že dostanu nějaké odpovědi, ale vše, co mám, je více a více otázek.') %$#


    def j39459_s45_r5732_action(self):
        self.state_manager.journal_manager.update_journal('39459')
        #$% .register('39459', 'V Márnici jsem potkal nemocného písaře jménem Dhall... věděl, že jsem na vše zapomněl ještě předtím, než jsem s ním promluvil. Znal jsem ho dříve, než jsem ztratil paměť? Doufal jsem, že dostanu nějaké odpovědi, ale vše, co mám, je více a více otázek.') %$#


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
