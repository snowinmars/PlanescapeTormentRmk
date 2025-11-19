class InventoryStore():
    def __init__(self, max_entries = 100):
        self.inventory_items = {}


    def __getstate__(self):
        return {
            'inventory_items': self.inventory_items,
        }


    def __setstate__(self, state):
        self.inventory_items = state['inventory_items']
