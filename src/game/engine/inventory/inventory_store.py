import json

from game.engine.inventory.inventory_item import (InventoryItem)


class InventoryStore():
    def __init__(self, max_entries = 100):
        self.inventory_items = {}


    def __getstate__(self):
        return {
            'inventory_items': self.inventory_items,
        }


    def __setstate__(self, state):
        self.inventory_items = state['inventory_items']


    def toJson(self, indent=None):
        state = self.__getstate__()
        state['inventory_items'] = dict(map(lambda x: (
            x[0],
            x[1].__getstate__()
        ), state['inventory_items'].items()))
        return json.dumps(
            state,
            ensure_ascii=False,
            indent=indent
        )


    @classmethod
    def fromJson(cls, json_str):
        data = json.loads(json_str)
        obj = cls()
        data['inventory_items'] = dict(map(lambda x: (
            x[0],
            InventoryItem(
                x[1]['settings_id'],
                x[1]['orig_id'],
                x[1]['name'],
                x[1]['description'],
                x[1]['grid_image'],
                x[1]['detail_image'],
                x[1]['jump_on_use_to']
            )), data['inventory_items'].items()))
        obj.__setstate__(data)
        return obj
