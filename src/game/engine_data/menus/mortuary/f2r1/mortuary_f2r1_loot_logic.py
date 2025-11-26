class MortuaryF2R1LootLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def scalpel(self):
        self.state_manager.world_manager.set_has_scalpel(True)
