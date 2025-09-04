class MortuaryF2R1LootLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def pick_scalpel(self):
        self.settings_manager.set_has_scalpel(True)
