class MortuaryF3R4LootLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def prybar(self):
        self.settings_manager.set_has_prybar(True)


    def dustman_request(self):
        self.settings_manager.set_has_dustman_request(True)


    def needle(self):
        self.settings_manager.set_has_needle(True)


    def garbage(self):
        self.settings_manager.set_has_garbage(True)
