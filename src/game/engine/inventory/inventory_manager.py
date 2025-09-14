import logging


class InventoryManager:
    def __init__(self, events_manager, player_has_item_callback):
        self._events_manager = events_manager
        self._inventory_items = {}
        self._player_has_item_callback = player_has_item_callback
        self._selected_item = None


    def register(self, inventory_item):
        if inventory_item.settings_id in self._inventory_items:
            raise KeyError(f"InventoryItem '{inventory_item.settings_id}' already registrated")

        self._log(f"register {inventory_item.settings_id}")
        self._inventory_items[inventory_item.settings_id] = inventory_item


    def get_owned_items(self):
        return [inventory_item for inventory_item in self._inventory_items.values() if self._player_has_item_callback(inventory_item.settings_id)]


    def get_item(self, settings_id):
        inventory_item = self._inventory_items.get(settings_id)

        if inventory_item is None:
            raise KeyError(f"InventoryItem '{settings_id}' not found")

        return inventory_item


    def get_selected_item(self):
        return self._selected_item


    def set_selected_item(self, settings_id):
        self._selected_item = self.get_item(settings_id)


    def has_selected_item(self):
        return self._selected_item is not None


    def clear_selected_item(self):
        self._selected_item = None


    def _log(self, line):
        self._events_manager.write_event(line)
