class MortuaryF3R4LootLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def prybar(self):
        self.state_manager.set_has_prybar(True)


    def dustman_request(self):
        self.state_manager.set_has_dustman_request(True)


    def needle(self):
        self.state_manager.set_has_needle(True)


    def garbage(self):
        self.state_manager.set_has_garbage(True)
