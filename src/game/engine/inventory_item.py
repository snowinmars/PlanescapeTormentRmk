class InventoryItem:
    def __init__(self, settings_id, orig_id, name, description, grid_image, detail_image=None, jump_on_use_to=None):
        self.settings_id = settings_id
        self.orig_id = orig_id
        self.name = name
        self.description = description
        self.grid_image = grid_image
        self.detail_image = detail_image or grid_image
        self.jump_on_use_to = jump_on_use_to
