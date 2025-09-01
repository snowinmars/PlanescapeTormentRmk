class Zm1664LogicGenerated:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def r47014_action(self):
        self.settings_manager.set_has_logpage(True)
        self.settings_manager.set_has_zm1664_page(True)


    def r47003_condition(self):
        return not self.settings_manager.get_has_zm1664_page()


    def r47004_condition(self):
        return self.settings_manager.get_has_zm1664_page()


    def r47005_condition(self):
        return self.settings_manager.get_vaxis_exposed()


    def r47006_condition(self):
        return self.settings_manager.get_can_speak_with_dead()


class Zm1664Logic(Zm1664LogicGenerated):
    def __init__(self, settings_manager):
        super().__init__(settings_manager)
