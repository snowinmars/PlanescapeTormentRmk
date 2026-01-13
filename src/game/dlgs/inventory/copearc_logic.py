class CopearcLogicGenerated:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r46725_action(self):
        self.state_manager.gain_experience('party', 250)


    def r46728_action(self):
        self.state_manager.gain_experience('party', 250)


    def r46733_action(self):
        self.state_manager.world_manager.set_has_copper_earring_closed(False)
        self.state_manager.world_manager.set_has_copper_earring_opened(True)


    def r46725_condition(self):
        return self.state_manager.world_manager.get_know_copper_earring_secret()


    def r46728_condition(self):
        return self.state_manager.world_manager.get_know_copper_earring_secret()


class CopearcLogic(CopearcLogicGenerated):
    def __init__(self, state_manager):
        super().__init__(state_manager)


    def talk_closed(self):
        self.state_manager.world_manager.inc_talked_to_copper_earring_closed_times()


    def talk_opened(self):
        self.state_manager.world_manager.inc_talked_to_copper_earring_opened_times()
