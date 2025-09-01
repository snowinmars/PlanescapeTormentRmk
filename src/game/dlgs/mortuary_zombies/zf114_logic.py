class Zf114LogicGenerated:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def r34987_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_zombie_chaotic(True)


    def r34987_condition(self):
        return not self.settings_manager.get_zombie_chaotic()


    def r35004_condition(self):
        return self.settings_manager.get_zombie_chaotic()


    def r35005_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r35006_condition(self):
        return self.settings_manager.get_can_speak_with_dead()


    def r35011_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35012_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35013_condition(self):
        return self.settings_manager.get_morte_quip()


    def r35014_condition(self):
        return self.settings_manager.get_morte_quip()


    def r35015_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35016_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r34989_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35002_condition(self):
        return self.settings_manager.get_morte_quip()


    def r35003_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35008_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35009_condition(self):
        return self.settings_manager.get_morte_quip()


    def r35010_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


class Zf114Logic(Zf114LogicGenerated):
    def __init__(self, settings_manager):
        super().__init__(settings_manager)
