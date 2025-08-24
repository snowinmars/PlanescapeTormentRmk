class DhallFeatherLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def break_feather(self):
        self.settings_manager.character_manager.modify_property('protagonist', 'lore', 1)
        self.settings_manager.has_dhall_feather(False)
