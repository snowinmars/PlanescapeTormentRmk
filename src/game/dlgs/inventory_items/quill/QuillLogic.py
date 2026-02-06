class QuillLogicGenerated:
    def __init__(self, state_manager):
        self.state_manager = state_manager


class QuillLogic(QuillLogicGenerated):
    def __init__(self, state_manager):
        super().__init__(state_manager)


    def break_quill(self):
        self.state_manager.characters_manager.modify_property('protagonist_character_name', 'lore', 1)
        self.state_manager.inventory_items_manager.drop_all_items('has_quill')


    def talk(self):
        self.state_manager.world_manager.inc_talked_to_quill_times()
