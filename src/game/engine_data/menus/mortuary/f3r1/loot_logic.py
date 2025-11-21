class MortuaryF3R1LootLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def mortuary_key(self):
        self.state_manager.world_manager.set_has_mortuary_key(True)
