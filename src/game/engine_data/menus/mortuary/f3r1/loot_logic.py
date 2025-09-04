class MortuaryF3R1LootLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def mortuary_key(self):
        self.settings_manager.set_has_mortuary_key(True)
