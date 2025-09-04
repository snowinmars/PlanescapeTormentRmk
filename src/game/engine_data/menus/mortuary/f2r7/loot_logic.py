class MortuaryF2R7LootLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def embalm(self):
        self.settings_manager.set_has_embalm(True)


    def copper_earring_closed(self):
        self.settings_manager.set_has_copper_earring_closed(True)
