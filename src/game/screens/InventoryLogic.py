class InventoryLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def get_owned_items(self):
        return self.state_manager.inventory_items_manager.get_owned_items()


    def get_selected_item_id(self):
        return self.state_manager.inventory_items_manager.get_selected_item_id()


    def set_selected_item_id(self):
        return self.state_manager.inventory_items_manager.set_selected_item_id()


    def get_character(self):
        return self.state_manager.characters_manager.get_character('protagonist_character_name')


    def get_gold(self):
        return self.state_manager.world_manager.get_gold()