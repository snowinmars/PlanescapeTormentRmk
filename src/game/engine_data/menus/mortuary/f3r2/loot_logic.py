class MortuaryF3R2LootLogic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def needle(self):
        self.settings_manager.set_has_needle(True)


    def garbage(self):
        self.settings_manager.set_has_garbage(True)


    def mortuary_task_list(self):
        self.settings_manager.set_has_mortuary_task_list(True)
