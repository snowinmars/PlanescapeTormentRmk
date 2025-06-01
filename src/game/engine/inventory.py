class InventoryItem:
    def __init__(self, settings_id, orig_id, name, description, grid_image, detail_image=None, use_action=None):
        self.settings_id = settings_id
        self.orig_id = orig_id
        self.name = name
        self.description = description
        self.grid_image = grid_image
        self.detail_image = detail_image or grid_image
        self.use_action = use_action

class InventoryManager:
    def __init__(self, has_item_callback):
        self.items = {}
        self.has_item_callback = has_item_callback
        self.selected_item = None

    def register(self, item):
        self.items[item.settings_id] = item

    def get_owned_items(self):
        return [item for item in self.items.values() if self.has_item_callback(item.settings_id)]

    def get_item(self, settings_id):
        return self.items.get(settings_id)
