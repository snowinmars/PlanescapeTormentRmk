import pickle
import unittest
import time

from game.engine.inventory_items.InventoryItem import (
    InventoryItem          ,
    InventoryItemFlags     ,
    InventoryItemUnusableBy
)
from game.engine.inventory_items.InventoryItemsStore import (InventoryItemsStore)


class InventoryItemsStoreTests(unittest.TestCase):
    def setUp(self):
        self.store = InventoryItemsStore()
        self.inventory_item_a = self._create_inventory_item(
            the_id               = 'the_id_a'        ,
            category             = 'category_a'      ,
            flags                = InventoryItemFlags.displayable,
            unusable_by          = InventoryItemUnusableBy.morte ,
            minimal_strength     = 2                 ,
            minimal_dexterity    = 3                 ,
            minimal_constitution = 5                 ,
            minimal_intelligence = 7                 ,
            minimal_wisdom       = 11                ,
            minimal_charisma     = 13                ,
            price                = 17                ,
            lore_to_identify     = 19                ,
            enchantment          = 23                ,
            weigth               = 29                ,
            jump_on_use_to       = 'jump_on_use_to_a',
            owned_count          = 31                ,
            identified           = False
        )
        self.inventory_item_b = self._create_inventory_item(
            the_id               = 'the_id_b'        ,
            category             = 'category_b'      ,
            flags                = InventoryItemFlags.two_handed,
            unusable_by          = InventoryItemUnusableBy.good ,
            minimal_strength     = 37                ,
            minimal_dexterity    = 41                ,
            minimal_constitution = 43                ,
            minimal_intelligence = 47                ,
            minimal_wisdom       = 53                ,
            minimal_charisma     = 59                ,
            price                = 61                ,
            lore_to_identify     = 67                ,
            enchantment          = 71                ,
            weigth               = 73                ,
            jump_on_use_to       = 'jump_on_use_to_b',
            owned_count          = 79                ,
            identified           = False
        )


    def test_reserialize_empty_pickle(self):
        dump = pickle.dumps(self.store)
        expected = b'\x80\x05\x95f\x00\x00\x00\x00\x00\x00\x00\x8c/game.engine.inventory_items.InventoryItemsStore\x94\x8c\x13InventoryItemsStore\x94\x93\x94)\x81\x94}\x94\x8c\x0finventory_items\x94}\x94sb.'
        self.assertEqual(dump, expected)

        store = pickle.loads(dump)
        self._assert_empty_store(store)


    def test_reserialize_empty_json(self):
        dump = self.store.toJson()
        expected = '{"inventory_items": {}}'
        self.assertEqual(dump, expected)

        store = InventoryItemsStore.fromJson(dump)
        self._assert_empty_store(store)


    def test_reserialize_filled_pickle(self):
        self._fill_store(self.store)

        dump = pickle.dumps(self.store)
        expected = b'\x80\x05\x95\xb9\x02\x00\x00\x00\x00\x00\x00\x8c/game.engine.inventory_items.InventoryItemsStore\x94\x8c\x13InventoryItemsStore\x94\x93\x94)\x81\x94}\x94\x8c\x0finventory_items\x94}\x94(\x8c\x08the_id_a\x94\x8c)game.engine.inventory_items.InventoryItem\x94\x8c\rInventoryItem\x94\x93\x94)\x81\x94}\x94(\x8c\x06the_id\x94h\x07\x8c\x08category\x94\x8c\ncategory_a\x94\x8c\x05flags\x94h\x08\x8c\x12InventoryItemFlags\x94\x93\x94K\x08\x85\x94R\x94\x8c\x0bunusable_by\x94h\x08\x8c\x17InventoryItemUnusableBy\x94\x93\x94J\x00\x00\x00\x02\x85\x94R\x94\x8c\x10minimal_strength\x94K\x02\x8c\x11minimal_dexterity\x94K\x03\x8c\x14minimal_constitution\x94K\x05\x8c\x14minimal_intelligence\x94K\x07\x8c\x0eminimal_wisdom\x94K\x0b\x8c\x10minimal_charisma\x94K\r\x8c\x05price\x94K\x11\x8c\x10lore_to_identify\x94K\x13\x8c\x0benchantment\x94K\x17\x8c\x06weigth\x94K\x1d\x8c\x0ejump_on_use_to\x94\x8c\x10jump_on_use_to_a\x94\x8c\x0bowned_count\x94K\x1f\x8c\nidentified\x94\x89ub\x8c\x08the_id_b\x94h\n)\x81\x94}\x94(h\rh(h\x0e\x8c\ncategory_b\x94h\x10h\x12K\x02\x85\x94R\x94h\x15h\x17K\x04\x85\x94R\x94h\x1aK%h\x1bK)h\x1cK+h\x1dK/h\x1eK5h\x1fK;h K=h!KCh"KGh#KIh$\x8c\x10jump_on_use_to_b\x94h&KOh\'\x89ubusb.'
        self.assertEqual(dump, expected)

        store = pickle.loads(dump)
        self._assert_filled_store(store)


    def test_reserialize_filled_json(self):
        self._fill_store(self.store)

        dump = self.store.toJson()
        expected = '{"inventory_items": {"the_id_a": {"the_id": "the_id_a", "category": "category_a", "flags": 8, "unusable_by": 33554432, "minimal_strength": 2, "minimal_dexterity": 3, "minimal_constitution": 5, "minimal_intelligence": 7, "minimal_wisdom": 11, "minimal_charisma": 13, "price": 17, "lore_to_identify": 19, "enchantment": 23, "weigth": 29, "jump_on_use_to": "jump_on_use_to_a", "owned_count": 31, "identified": false}, "the_id_b": {"the_id": "the_id_b", "category": "category_b", "flags": 2, "unusable_by": 4, "minimal_strength": 37, "minimal_dexterity": 41, "minimal_constitution": 43, "minimal_intelligence": 47, "minimal_wisdom": 53, "minimal_charisma": 59, "price": 61, "lore_to_identify": 67, "enchantment": 71, "weigth": 73, "jump_on_use_to": "jump_on_use_to_b", "owned_count": 79, "identified": false}}}'
        self.assertEqual(dump, expected)

        store = InventoryItemsStore.fromJson(dump)
        self._assert_filled_store(store)


    def _fill_store(self, store):
        store.inventory_items[self.inventory_item_a.the_id] = self.inventory_item_a
        store.inventory_items[self.inventory_item_b.the_id] = self.inventory_item_b


    def _assert_empty_store(self, store):
        self.assertIsNotNone(store.inventory_items)
        self.assertEqual    (len(store.inventory_items), 0)


    def _assert_filled_store(self, store):
        self.assertIsNotNone(store.inventory_items)
        self.assertEqual    (len(store.inventory_items), 2)
        self.assertTrue     (self.inventory_item_a.the_id in store.inventory_items)
        self.assertTrue     (self.inventory_item_b.the_id in store.inventory_items)
        self._assert_inventory_items(store.inventory_items[self.inventory_item_a.the_id], self.inventory_item_a)
        self._assert_inventory_items(store.inventory_items[self.inventory_item_b.the_id], self.inventory_item_b)


    def _create_inventory_item(
        self                                   ,
        the_id               = 'the_id'        ,
        category             = 'category'      ,
        flags                = InventoryItemFlags.displayable,
        unusable_by          = InventoryItemUnusableBy.morte ,
        minimal_strength     = 2               ,
        minimal_dexterity    = 3               ,
        minimal_constitution = 5               ,
        minimal_intelligence = 7               ,
        minimal_wisdom       = 11              ,
        minimal_charisma     = 13              ,
        price                = 17              ,
        lore_to_identify     = 19              ,
        enchantment          = 23              ,
        weigth               = 29              ,
        jump_on_use_to       = 'jump_on_use_to',
        owned_count          = 31              ,
        identified           = False
    ):
        return InventoryItem(
            the_id               = the_id              ,
            category             = category            ,
            flags                = flags               ,
            unusable_by          = unusable_by         ,
            minimal_strength     = minimal_strength    ,
            minimal_dexterity    = minimal_dexterity   ,
            minimal_constitution = minimal_constitution,
            minimal_intelligence = minimal_intelligence,
            minimal_wisdom       = minimal_wisdom      ,
            minimal_charisma     = minimal_charisma    ,
            price                = price               ,
            lore_to_identify     = lore_to_identify    ,
            enchantment          = enchantment         ,
            weigth               = weigth              ,
            jump_on_use_to       = jump_on_use_to      ,
            owned_count          = owned_count         ,
            identified           = identified
        )


    def _assert_inventory_items(self, lhs, rhs):
        self.assertEqual(lhs.the_id              , rhs.the_id)
        self.assertEqual(lhs.category            , rhs.category)
        self.assertEqual(lhs.flags               , rhs.flags)
        self.assertEqual(lhs.unusable_by         , rhs.unusable_by)
        self.assertEqual(lhs.minimal_strength    , rhs.minimal_strength)
        self.assertEqual(lhs.minimal_dexterity   , rhs.minimal_dexterity)
        self.assertEqual(lhs.minimal_constitution, rhs.minimal_constitution)
        self.assertEqual(lhs.minimal_intelligence, rhs.minimal_intelligence)
        self.assertEqual(lhs.minimal_wisdom      , rhs.minimal_wisdom)
        self.assertEqual(lhs.minimal_charisma    , rhs.minimal_charisma)
        self.assertEqual(lhs.price               , rhs.price)
        self.assertEqual(lhs.lore_to_identify    , rhs.lore_to_identify)
        self.assertEqual(lhs.enchantment         , rhs.enchantment)
        self.assertEqual(lhs.weigth              , rhs.weigth)
        self.assertEqual(lhs.jump_on_use_to      , rhs.jump_on_use_to)
        self.assertEqual(lhs.owned_count         , rhs.owned_count)
        self.assertEqual(lhs.identified          , rhs.identified)


if __name__ == "__main__":
    unittest.main() # pragma: no cover
