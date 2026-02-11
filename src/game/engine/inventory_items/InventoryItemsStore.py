import json

from game.engine.inventory_items.InventoryItem import (InventoryItem)


class InventoryItemsStore():
    def __init__(self):
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
        state = json.loads(json_str)
        obj = cls()
        state['inventory_items'] = dict(map(lambda x: (
            x[0],
            InventoryItem(
                the_id               = x[1]['the_id']              ,
                category             = x[1]['category']            ,
                minimal_strength     = x[1]['minimal_strength']    ,
                minimal_dexterity    = x[1]['minimal_dexterity']   ,
                minimal_constitution = x[1]['minimal_constitution'],
                minimal_intelligence = x[1]['minimal_intelligence'],
                minimal_wisdom       = x[1]['minimal_wisdom']      ,
                minimal_charisma     = x[1]['minimal_charisma']    ,
                price                = x[1]['price']               ,
                lore_to_identify     = x[1]['lore_to_identify']    ,
                enchantment          = x[1]['enchantment']         ,
                weigth               = x[1]['weigth']              ,
                jump_on_use_to       = x[1]['jump_on_use_to']      ,
                owned_count          = x[1]['owned_count']         ,
            )), state['inventory_items'].items()))
        obj.__setstate__(state)
        return obj
