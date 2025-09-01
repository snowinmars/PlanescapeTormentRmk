class DhallFeatherLogicGenerated:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


class DhallFeatherLogic(DhallFeatherLogicGenerated):
    def __init__(self, settings_manager):
        super().__init__(settings_manager)


    def break_feather(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'lore', 1)
        self.settings_manager.set_has_dhall_feather(False)
