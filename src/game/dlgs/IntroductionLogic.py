class IntroductionLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager
        self.can_spoiler = False


    def setup_as_highlvl(self):
        self.state_manager.world_manager.set_can_speak_with_dead(True)
        self.state_manager.world_manager.set_know_xachariah_name(True)


    def set_can_spoiler_true(self):
        self.can_spoiler = True
