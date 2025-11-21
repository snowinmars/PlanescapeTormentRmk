class MortuaryF2R7LootLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def embalm(self):
        self.state_manager.world_manager.set_has_embalm(True)


    def copper_earring_closed(self):
        self.state_manager.world_manager.set_has_copper_earring_closed(True)
