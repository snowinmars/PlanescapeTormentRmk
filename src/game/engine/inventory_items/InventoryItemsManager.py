import logging


class InventoryItemsManager:
    def __init__(self, log_events_manager):
        self._log_events_manager = log_events_manager
        self._inventory_items_store = None
        self._selected_item_id = None


    def set_store(self, IiventoryI_iemsS_sore):
        self._inventory_items_store = IiventoryI_iemsS_sore


    def register(self, inventory_item):
        if inventory_item.settings_id in self._inventory_items_store.inventory_items:
            raise KeyError(f"InventoryItem '{inventory_item.settings_id}' already registrated")

        self._log(f"register {inventory_item.settings_id}")
        self._inventory_items_store.inventory_items[inventory_item.settings_id] = inventory_item

        return self


    def pick_item(self, settings_id, count=1):
        item = self.get_item(settings_id)
        if item.owned_count < 0:
            raise IndexError(f'Why {settings_id} count is below zero?')
        item.owned_count += count


    def drop_item(self, settings_id, count=1):
        item = self.get_item(settings_id)
        if item.owned_count <= 0:
            raise IndexError(f'Cannot drop {settings_id} count below zero')
        item.owned_count -= count


    def drop_all_items(self, settings_id):
        item = self.get_item(settings_id)
        item.owned_count = 0


    def is_own_item(self, settings_id, at_least=1):
        item = self.get_item(settings_id)
        return item.owned_count >= at_least


    def owned_item_count(self, settings_id):
        return self.get_item(settings_id).owned_count


    def get_owned_items(self):
        return [inventory_item for inventory_item in self._inventory_items_store.inventory_items.values() if inventory_item.owned_count > 0]


    def get_item(self, settings_id):
        inventory_item = self._inventory_items_store.inventory_items.get(settings_id)

        if inventory_item is None:
            raise KeyError(f"InventoryItem '{settings_id}' not found")

        return inventory_item


    def get_selected_item_id(self):
        return self._selected_item_id


    def set_selected_item_id(self, settings_id):
        item = self.get_item(settings_id)
        self._selected_item_id = item.settings_id


    def has_selected_item_id(self):
        return self._selected_item_id is not None


    def clear_selected_item_id(self):
        self._selected_item_id = None


    def _log(self, line):
        self._log_events_manager.write_log_event(line)
