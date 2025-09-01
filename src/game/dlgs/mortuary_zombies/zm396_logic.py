class Zm396LogicGenerated:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def r34932_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_zombie_chaotic(True)


    def r34936_action(self):
        self.settings_manager.set_has_bandages_zm396(True)
        self.settings_manager.set_has_bandages(True)


    def r34934_action(self):
        self.settings_manager.set_has_bandages_zm396(True)
        self.settings_manager.set_has_bandages(True)


    def r45112_action(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'law', -1)
        self.settings_manager.set_zombie_chaotic(True)


    def get_took_zm396_bandages(self):
        return self.settings_manager.get_has_bandages_zm396()


    def r34936_condition(self):
        return not self.settings_manager.get_has_bandages_zm396()


    def r34932_condition(self):
        return not self.settings_manager.get_has_bandages_zm396() \
               and not self.settings_manager.get_zombie_chaotic()


    def r34935_condition(self):
        return not self.settings_manager.get_has_bandages_zm396() \
               and self.settings_manager.get_zombie_chaotic()


    def r34937_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r34940_condition(self):
        return self.settings_manager.get_can_speak_with_dead()


    def r34934_condition(self):
        return not self.settings_manager.get_has_bandages_zm396()


    def r45112_condition(self):
        return self.settings_manager.get_has_bandages_zm396() \
               and not self.settings_manager.get_zombie_chaotic()


    def r45113_condition(self):
        return self.settings_manager.get_has_bandages_zm396() \
               and self.settings_manager.get_zombie_chaotic()


    def r45114_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r45115_condition(self):
        return self.settings_manager.get_can_speak_with_dead()


class Zm396Logic(Zm396LogicGenerated):
    def __init__(self, settings_manager):
        super().__init__(settings_manager)
