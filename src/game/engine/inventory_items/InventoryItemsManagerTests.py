import unittest

from game.engine.LogicTests import (LogicTests)
from game.engine.inventory_items.InventoryItem import (InventoryItem)


class InventoryItemsManagerTests(LogicTests):
    def test_ctor(self):
        self.assertIsNotNone(self.inventory_items_manager)
        self.assertIsNotNone(self.inventory_items_manager._log_events_manager)
        self.assertIsNotNone(self.inventory_items_manager._inventory_items_store)
        self.assertIsNotNone(self.inventory_items_manager._inventory_items_store.inventory_items)
        self.assertNotEqual (len(self.inventory_items_manager._inventory_items_store.inventory_items), 0)


    def test_register_when_all_ok(self):
        inventory_item = self._create_inventory_item()
        delta = 1

        before = len(self.inventory_items_manager._inventory_items_store.inventory_items)

        self.inventory_items_manager.register(inventory_item)

        after = len(self.inventory_items_manager._inventory_items_store.inventory_items)
        self.assertEqual(before + delta, after)


    def test_register_when_inventory_item_already_exists(self):
        inventory_item = self._create_inventory_item()
        delta = 1

        before = len(self.inventory_items_manager._inventory_items_store.inventory_items)

        self.inventory_items_manager.register(inventory_item)

        after = len(self.inventory_items_manager._inventory_items_store.inventory_items)
        self.assertEqual(before + delta, after)

        with self.assertRaises(KeyError):
            self.inventory_items_manager.register(inventory_item)


    def test_pick_item_when_all_ok(self):
        inventory_item = self._create_inventory_item(owned_count=0)
        self.inventory_items_manager.register(inventory_item)
        inventory_item = self.inventory_items_manager.get_item(inventory_item.the_id)

        self.assertEqual(inventory_item.owned_count, 0)

        self.inventory_items_manager.pick_item(inventory_item.the_id)
        self.assertEqual(inventory_item.owned_count, 1)

        self.inventory_items_manager.pick_item(inventory_item.the_id, 3)
        self.assertEqual(inventory_item.owned_count, 4)


    def test_pick_item_when_owned_count_is_weird(self):
        inventory_item = self._create_inventory_item()
        self.inventory_items_manager.register(inventory_item)
        inventory_item = self.inventory_items_manager.get_item(inventory_item.the_id)
        inventory_item.owned_count = -2

        self.assertEqual(inventory_item.owned_count, -2)

        with self.assertRaises(IndexError):
            self.inventory_items_manager.pick_item(inventory_item.the_id)


    def test_pick_item_when_wrong_the_id(self):
        wrong_the_id = 'wrong_the_id'
        inventory_item = self._create_inventory_item()
        self.inventory_items_manager.register(inventory_item)

        with self.assertRaises(KeyError):
            self.inventory_items_manager.pick_item(wrong_the_id)


    def test_drop_item_when_all_ok(self):
        inventory_item = self._create_inventory_item(owned_count=0)
        self.inventory_items_manager.register(inventory_item)
        inventory_item = self.inventory_items_manager.get_item(inventory_item.the_id)

        self.inventory_items_manager.pick_item(inventory_item.the_id, 10)
        self.assertEqual(inventory_item.owned_count, 10)

        self.inventory_items_manager.drop_item(inventory_item.the_id)
        self.assertEqual(inventory_item.owned_count, 9)

        self.inventory_items_manager.drop_item(inventory_item.the_id, 3)
        self.assertEqual(inventory_item.owned_count, 6)


    def test_drop_item_when_owned_count_is_weird(self):
        inventory_item = self._create_inventory_item(owned_count=0)
        self.inventory_items_manager.register(inventory_item)
        inventory_item = self.inventory_items_manager.get_item(inventory_item.the_id)

        self.assertEqual(inventory_item.owned_count, 0)

        with self.assertRaises(IndexError):
            self.inventory_items_manager.drop_item(inventory_item.the_id)


    def test_drop_item_when_wrong_the_id(self):
        wrong_the_id = 'wrong_the_id'
        inventory_item = self._create_inventory_item()
        self.inventory_items_manager.register(inventory_item)

        with self.assertRaises(KeyError):
            self.inventory_items_manager.drop_item(wrong_the_id)


    def test_drop_all_items(self):
        inventory_item = self._create_inventory_item(owned_count=0)
        self.inventory_items_manager.register(inventory_item)
        inventory_item = self.inventory_items_manager.get_item(inventory_item.the_id)

        self.inventory_items_manager.pick_item(inventory_item.the_id, 10)
        self.assertEqual(inventory_item.owned_count, 10)

        self.inventory_items_manager.drop_all_items(inventory_item.the_id)
        self.assertEqual(inventory_item.owned_count, 0)


    def test_drop_all_items_when_wrong_the_id(self):
        wrong_the_id = 'wrong_the_id'
        inventory_item = self._create_inventory_item()
        self.inventory_items_manager.register(inventory_item)

        with self.assertRaises(KeyError):
            self.inventory_items_manager.drop_all_items(wrong_the_id)


    def test_is_own_item_when_all_ok(self):
        inventory_item = self._create_inventory_item(owned_count=0)
        self.inventory_items_manager.register(inventory_item)

        self.assertFalse(self.inventory_items_manager.is_own_item(inventory_item.the_id))

        self.inventory_items_manager.pick_item(inventory_item.the_id)
        self.assertTrue(self.inventory_items_manager.is_own_item(inventory_item.the_id))

        self.inventory_items_manager.drop_item(inventory_item.the_id)
        self.assertFalse(self.inventory_items_manager.is_own_item(inventory_item.the_id))


    def test_count_owned_items_when_all_ok(self):
        inventory_item = self._create_inventory_item(owned_count=0)
        self.inventory_items_manager.register(inventory_item)

        self.assertEqual(self.inventory_items_manager.count_owned_items(inventory_item.the_id), 0)

        self.inventory_items_manager.pick_item(inventory_item.the_id, 2)
        self.assertEqual(self.inventory_items_manager.count_owned_items(inventory_item.the_id), 2)

        self.inventory_items_manager.drop_item(inventory_item.the_id)
        self.assertEqual(self.inventory_items_manager.count_owned_items(inventory_item.the_id), 1)


    def test_get_owned_items_when_all_ok(self):
        inventory_item1 = self._create_inventory_item(the_id='the_id_1', owned_count=0)
        inventory_item2 = self._create_inventory_item(the_id='the_id_2', owned_count=0)
        delta = 2

        before = len(self.inventory_items_manager._inventory_items_store.inventory_items)

        self.inventory_items_manager.register(inventory_item1)
        self.inventory_items_manager.register(inventory_item2)

        self.inventory_items_manager.pick_item(inventory_item2.the_id)

        after = len(self.inventory_items_manager._inventory_items_store.inventory_items)
        self.assertEqual(before + delta, after)
        self.assertEqual(len(self.inventory_items_manager.get_owned_items()), 1)
        self.assertEqual(self.inventory_items_manager.get_owned_items()[0].the_id, inventory_item2.the_id)


    def test_get_item_when_all_ok(self):
        inventory_item1 = self._create_inventory_item(the_id='the_id_1')
        inventory_item2 = self._create_inventory_item(the_id='the_id_2')
        delta = 2

        before = len(self.inventory_items_manager._inventory_items_store.inventory_items)

        self.inventory_items_manager.register(inventory_item1)
        self.inventory_items_manager.register(inventory_item2)

        after = len(self.inventory_items_manager._inventory_items_store.inventory_items)
        self.assertEqual(before + delta, after)

        item1 = self.inventory_items_manager.get_item(inventory_item1.the_id)
        self._assert_inventory_items(item1, inventory_item1)

        item2 = self.inventory_items_manager.get_item(inventory_item2.the_id)
        self._assert_inventory_items(item2, inventory_item2)


    def test_get_item_when_inventory_item_not_found(self):
        id = 'non existing inventory item id'

        with self.assertRaises(KeyError):
            self.inventory_items_manager.get_item(id)


    def _create_inventory_item(
        self                                   ,
        the_id               = 'the_id'        ,
        category             = 'category'      ,
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
        owned_count          = 31
    ):
        return InventoryItem(
            the_id               = the_id              ,
            category             = category            ,
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
            owned_count          = owned_count
        )


    def _assert_inventory_items(self, lhs, rhs):
        self.assertEqual(lhs.the_id              , rhs.the_id)
        self.assertEqual(lhs.category            , rhs.category)
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
