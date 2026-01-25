import unittest

from game.engine.tests import (LogicTest)
from game.engine.inventory.inventory_item import (InventoryItem)
from game.engine.inventory.inventory_manager import (InventoryManager)
from game.engine.inventory.inventory_store import (InventoryStore)


class InventoryManagerTest(LogicTest):
    def test_ctor(self):
        self.assertIsNotNone(self.inventory_manager)
        self.assertIsNotNone(self.inventory_manager._log_events_manager)
        self.assertIsNotNone(self.inventory_manager._inventory_store.inventory_items)
        self.assertNotEqual(len(self.inventory_manager._inventory_store.inventory_items), 0)
        self.assertIsNone(self.inventory_manager._selected_item_id)


    def test_register_when_all_ok(self):
        inventory_item = _create_inventory_item()
        delta = 1

        before = len(self.inventory_manager._inventory_store.inventory_items)

        self.inventory_manager.register(inventory_item)

        after = len(self.inventory_manager._inventory_store.inventory_items)
        self.assertEqual(before + delta, after)


    def test_register_when_inventory_item_already_exists(self):
        inventory_item = _create_inventory_item()
        delta = 1

        before = len(self.inventory_manager._inventory_store.inventory_items)

        self.inventory_manager.register(inventory_item)

        after = len(self.inventory_manager._inventory_store.inventory_items)
        self.assertEqual(before + delta, after)

        with self.assertRaises(KeyError):
            self.inventory_manager.register(inventory_item)


    def test_get_owned_items_when_all_ok(self):
        inventory_item1 = _create_inventory_item('_1')
        inventory_item2 = _create_inventory_item('_2')
        delta = 2

        custom_inventory_manager = InventoryManager(self.log_events_manager)
        custom_inventory_manager.set_store(InventoryStore())

        before = len(custom_inventory_manager._inventory_store.inventory_items)

        custom_inventory_manager.register(inventory_item1)
        custom_inventory_manager.register(inventory_item2)

        custom_inventory_manager.pick_item(inventory_item2.settings_id)

        after = len(custom_inventory_manager._inventory_store.inventory_items)
        self.assertEqual(before + delta, after)
        self.assertEqual(len(custom_inventory_manager.get_owned_items()), 1)
        self.assertEqual(custom_inventory_manager.get_owned_items()[0], inventory_item2)


    def test_get_item_when_all_ok(self):
        inventory_item1 = _create_inventory_item('_1')
        inventory_item2 = _create_inventory_item('_2')
        delta = 2

        before = len(self.inventory_manager._inventory_store.inventory_items)

        self.inventory_manager.register(inventory_item1)
        self.inventory_manager.register(inventory_item2)

        after = len(self.inventory_manager._inventory_store.inventory_items)
        self.assertEqual(before + delta, after)
        self.assertEqual(self.inventory_manager.get_item(inventory_item1.settings_id), inventory_item1)
        self.assertEqual(self.inventory_manager.get_item(inventory_item2.settings_id), inventory_item2)


    def test_get_item_when_inventory_item_not_found(self):
        id = 'non existing inventory item id'

        with self.assertRaises(KeyError):
            self.inventory_manager.get_item(id)


    def test_get_selected_item_id_when_all_ok(self):
        inventory_item = _create_inventory_item('_1')
        self.inventory_manager.register(inventory_item)

        self.assertIsNone(self.inventory_manager.get_selected_item_id())
        self.inventory_manager.set_selected_item_id(inventory_item.settings_id)
        self.assertEqual(self.inventory_manager.get_selected_item_id(), inventory_item.settings_id)


    def test_set_selected_item_id_when_all_ok(self):
        inventory_item = _create_inventory_item('_1')
        self.inventory_manager.register(inventory_item)

        self.inventory_manager.set_selected_item_id(inventory_item.settings_id)
        self.assertEqual(self.inventory_manager.get_selected_item_id(), inventory_item.settings_id)


    def test_set_selected_item_id_when_inventory_item_not_found(self):
        id = 'non existing inventory item id'

        with self.assertRaises(KeyError):
            self.inventory_manager.set_selected_item_id(id)


    def test_has_selected_item_id_when_all_ok(self):
        inventory_item = _create_inventory_item('_1')
        self.inventory_manager.register(inventory_item)

        self.assertFalse(self.inventory_manager.has_selected_item_id())
        self.inventory_manager.set_selected_item_id(inventory_item.settings_id)
        self.assertTrue(self.inventory_manager.has_selected_item_id())


    def test_clear_selected_item_id_when_all_ok(self):
        inventory_item = _create_inventory_item('_1')
        self.inventory_manager.register(inventory_item)

        self.assertFalse(self.inventory_manager.has_selected_item_id())
        self.inventory_manager.set_selected_item_id(inventory_item.settings_id)
        self.assertTrue(self.inventory_manager.has_selected_item_id())
        self.inventory_manager.clear_selected_item_id()
        self.assertFalse(self.inventory_manager.has_selected_item_id())


def _create_inventory_item(postfix=''):
    settings_id = 'settings_id' + postfix
    orig_id = 'orig_id' + postfix
    name = 'name' + postfix
    description = 'description' + postfix
    grid_image = 'grid_image' + postfix
    detail_image = 'detail_image' + postfix
    jump_on_use_to = 'jump_on_use_to' + postfix

    return InventoryItem(
        settings_id=settings_id,
        orig_id=orig_id,
        name=name,
        description=description,
        grid_image=grid_image,
        detail_image=detail_image,
        jump_on_use_to=jump_on_use_to
    )
