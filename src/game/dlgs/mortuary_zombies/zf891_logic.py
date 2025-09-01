class Zf891LogicGenerated:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def r35275_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_zombie_chaotic(True)


    def r35275_condition(self):
        return not self.settings_manager.get_zombie_chaotic()


    def r35292_condition(self):
        return self.settings_manager.get_zombie_chaotic()


    def r35293_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r35294_condition(self):
        return self.settings_manager.get_can_speak_with_dead()


    def r35299_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35300_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35301_condition(self):
        return self.settings_manager.get_morte_quip()


    def r35302_condition(self):
        return self.settings_manager.get_morte_quip()


    def r35303_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35304_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35277_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35290_condition(self):
        return self.settings_manager.get_morte_quip()


    def r35291_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35296_condition(self):
        return self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


    def r35297_condition(self):
        return self.settings_manager.get_morte_quip()


    def r35298_condition(self):
        return not self.settings_manager.get_in_party_morte() and \
               not self.settings_manager.get_morte_quip()


class Zf891Logic(Zf891LogicGenerated):
    def __init__(self, settings_manager):
        super().__init__(settings_manager)
