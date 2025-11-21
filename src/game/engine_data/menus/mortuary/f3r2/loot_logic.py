class MortuaryF3R2LootLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def needle(self):
        self.state_manager.world_manager.set_has_needle(True)


    def garbage(self):
        self.state_manager.world_manager.set_has_garbage(True)


    def mortuary_task_list(self):
        self.state_manager.world_manager.set_has_mortuary_task_list(True)
