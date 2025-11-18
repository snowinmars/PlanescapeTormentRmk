class DhallFeatherLogicGenerated:
    def __init__(self, state_manager):
        self.state_manager = state_manager


class DhallFeatherLogic(DhallFeatherLogicGenerated):
    def __init__(self, state_manager):
        super().__init__(state_manager)


    def break_feather(self):
        self.state_manager.characters_manager.modify_property('protagonist', 'lore', 1)
        self.state_manager.world_manager.set_has_dhall_feather(False)
