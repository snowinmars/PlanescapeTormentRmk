class Zm1664Logic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def r47014_action(self):
        self.state_manager.set_has_logpage(True)
        self.state_manager.set_has_zm1664_page(True)


    def r47003_condition(self):
        return not self.state_manager.get_has_zm1664_page()


    def r47004_condition(self):
        return self.state_manager.get_has_zm1664_page()


    def r47005_condition(self):
        return self.state_manager.get_vaxis_exposed()


    def r47006_condition(self):
        return self.state_manager.get_can_speak_with_dead()
