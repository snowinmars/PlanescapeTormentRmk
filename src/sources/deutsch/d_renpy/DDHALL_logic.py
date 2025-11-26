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
        #$%.register('39468', 'Ich hab dem Schreiber Dhall von Vaxis und seiner Verkleidung erzählt. Dhall sollte demnächst den Rest der Staubmenschentruppe losschicken, um Vaxis ranzukriegen. %$#')


    def r831_action(self):
        self.state_manager.gain_experience('party', 250)
        self.state_manager.world_manager.set_vaxis_betrayed(2)
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -3, 'globalevil_dhall_2')
        self.state_manager.journal_manager.update_journal('39469')
        #$%.register('39469', 'Ich hatte zwar Vaxis versprochen, daß ich ihn nicht an die Staubmenschen verraten würde, aber was soll's? Ich hab dem Schreiber Dhall von ihm und seiner Verkleidung erzählt. Dhall sollte demnächst den Rest der Staubmenschentruppe losschicken, um Vaxis ranzukriegen. %$#')


    def r843_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', -1, 'globalevil_dhall_1')


    def j39460_s9_r5069_action(self):
        self.state_manager.journal_manager.update_journal('39460')
        #$% .register('39460', 'Ich hab Dhall gefragt, ob er mich kennt, und er meinte, daß er wenig über mich wissen würde - und noch weniger über meine Gefährten, die mich in der Vergangenheit begleitet haben. Sie sollen in der Leichenhalle liegen... Vielleicht würde ihr Anblick ja ein paar Erinnerungen wachrufen.') %$#


    def j39463_s15_r886_action(self):
        self.state_manager.journal_manager.update_journal('39463')
        #$% .register('39463', 'Anscheinend hat Pharod meine Leiche in einem Karren hierher gebracht, zusammen mit einem Berg anderer Leichen. War ich wirklich *tot*, als ich hier ankam?') %$#


    def j39464_s19_r906_action(self):
        self.state_manager.journal_manager.update_journal('39464')
        #$% .register('39464', 'Dhall hat mir erzählt, daß ich Pharod in einem Ort jenseits der Leichenhalle finden kann, der 'Stock' genannt wird. Er schien nicht so recht zu wollen, daß ich Pharod aufspüre, aber auf der anderen Seite hat er auch nicht sein Gedächtnis verloren und ist auch nicht in der Leichenhalle aufgewacht - er kann seine Meinung also für sich behalten. Dhall hat gemeint, ich solle ein paar Leute im Stock nach Pharods Aufenthaltsort fragen.') %$#


    def j39461_s21_r921_action(self):
        self.state_manager.journal_manager.update_journal('39461')
        #$% .register('39461', 'Dhall hat mir erzählt, daß eine der Frauen, die mit mir gereist sind, in der Gedenkhalle im Erdgeschoß der Leichenhalle bestattet ist.') %$#


    def j39462_s25_r931_action(self):
        self.state_manager.journal_manager.update_journal('39462')
        #$% .register('39462', 'Dhall hat mir gesagt, daß er es war, der meine wiederholten Besuche der Leichenhalle vor den Staubmenschen geheim gehalten hat. Da er der Schreiber im Empfangsraum ist, ist er einer der wenigen, die meine Leiche sehen, wenn sie hier reingebracht wird.') %$#


    def r936_action(self):
        self.state_manager.characters_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_dhall_1')


    def r953_action(self):
        self.state_manager.world_manager.inc_once_know_dustmen('globalknow_dustmen')


    def r958_action(self):
        self.state_manager.world_manager.inc_once_know_dustmen('globalknow_dustmen')


    def j39470_s34_r1301_action(self):
        self.state_manager.journal_manager.update_journal('39470')
        #$% .register('39470', 'Dhall hat gemeint, die Verwundungen, die ich davongetragen habe, seien nichts im Vergleich zu den Verwundungen meiner Seele... Er ging sogar soweit zu behaupten, die erlittenen Verwundungen wären schuld an meinem Gedächtnisverlust und der seelische Schaden wäre vielleicht schlimmer als Amnesie. Kein schöner Gedanke - warum kann ich nicht hie und da mal ein paar *gute* Neuigkeiten erhalten?') %$#


    def r974_action(self):
        self.state_manager.world_manager.inc_once_know_dustmen('globalknow_dustmen')


    def r985_action(self):
        self.state_manager.world_manager.inc_once_know_dustmen('globalknow_dustmen')


    def r1327_action(self):
        self.state_manager.world_manager.set_dhall_value(1)


    def j39459_s45_r5731_action(self):
        self.state_manager.journal_manager.update_journal('39459')
        #$% .register('39459', 'Ich habe einen kränklichen Schreiber namens Dhall in der Leichenhalle getroffen. Er wußte, daß ich alles über mich vergessen hatte, noch bevor wir auch nur ein Wort gewechselt hatten. Kannte ich ihn, bevor ich meine Erinnerungen verloren habe? Ich hatte gehofft, ein paar Antworten zu erhalten, aber dieser Ort scheint mehr und mehr Fragen zu gebären.') %$#


    def j39459_s45_r5732_action(self):
        self.state_manager.journal_manager.update_journal('39459')
        #$% .register('39459', 'Ich habe einen kränklichen Schreiber namens Dhall in der Leichenhalle getroffen. Er wußte, daß ich alles über mich vergessen hatte, noch bevor wir auch nur ein Wort gewechselt hatten. Kannte ich ihn, bevor ich meine Erinnerungen verloren habe? Ich hatte gehofft, ein paar Antworten zu erhalten, aber dieser Ort scheint mehr und mehr Fragen zu gebären.') %$#


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
