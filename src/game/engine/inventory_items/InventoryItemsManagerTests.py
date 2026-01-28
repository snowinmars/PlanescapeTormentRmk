import unittest

from game.engine.LogicTests import (LogicTests)
from game.engine.inventory_items.InventoryItem import (InventoryItem)
from game.engine.inventory_items.InventoryItemsManager import (InventoryItemsManager)
from game.engine.inventory_items.InventoryItemsStore import (InventoryItemsStore)


class InventoryItemsManagerTests(LogicTests):
    def test_ctor(self):
        self.assertIsNotNone(self.inventory_items_manager)
        self.assertIsNotNone(self.inventory_items_manager._log_events_manager)
        self.assertIsNotNone(self.inventory_items_manager._inventory_items_store.inventory_items)
        self.assertNotEqual(len(self.inventory_items_manager._inventory_items_store.inventory_items), 0)
        self.assertIsNone(self.inventory_items_manager._selected_item_id)


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
        inventory_item = self._create_inventory_item(postfix='_1')
        self.inventory_items_manager.register(inventory_item)
        inventory_item = self.inventory_items_manager.get_item(inventory_item.settings_id)

        self.assertEqual(inventory_item.owned_count, 0)

        self.inventory_items_manager.pick_item(inventory_item.settings_id)
        self.assertEqual(inventory_item.owned_count, 1)

        self.inventory_items_manager.pick_item(inventory_item.settings_id, 3)
        self.assertEqual(inventory_item.owned_count, 4)


    def test_pick_item_when_owned_count_is_weird(self):
        inventory_item = self._create_inventory_item(postfix='_1')
        self.inventory_items_manager.register(inventory_item)
        inventory_item = self.inventory_items_manager.get_item(inventory_item.settings_id)
        inventory_item.owned_count = -2

        self.assertEqual(inventory_item.owned_count, -2)

        with self.assertRaises(IndexError):
            self.inventory_items_manager.pick_item(inventory_item.settings_id)


    def test_pick_item_when_wrong_settings_id(self):
        wrong_settings_id = 'wrong_settings_id'
        inventory_item = self._create_inventory_item(postfix='_1')
        self.inventory_items_manager.register(inventory_item)

        with self.assertRaises(KeyError):
            self.inventory_items_manager.pick_item(wrong_settings_id)


    def test_drop_item_when_all_ok(self):
        inventory_item = self._create_inventory_item(postfix='_1')
        self.inventory_items_manager.register(inventory_item)
        inventory_item = self.inventory_items_manager.get_item(inventory_item.settings_id)

        self.inventory_items_manager.pick_item(inventory_item.settings_id, 10)
        self.assertEqual(inventory_item.owned_count, 10)

        self.inventory_items_manager.drop_item(inventory_item.settings_id)
        self.assertEqual(inventory_item.owned_count, 9)

        self.inventory_items_manager.drop_item(inventory_item.settings_id, 3)
        self.assertEqual(inventory_item.owned_count, 6)


    def test_drop_item_when_owned_count_is_weird(self):
        inventory_item = self._create_inventory_item(postfix='_1')
        self.inventory_items_manager.register(inventory_item)
        inventory_item = self.inventory_items_manager.get_item(inventory_item.settings_id)

        self.assertEqual(inventory_item.owned_count, 0)

        with self.assertRaises(IndexError):
            self.inventory_items_manager.drop_item(inventory_item.settings_id)


    def test_drop_item_when_wrong_settings_id(self):
        wrong_settings_id = 'wrong_settings_id'
        inventory_item = self._create_inventory_item(postfix='_1')
        self.inventory_items_manager.register(inventory_item)

        with self.assertRaises(KeyError):
            self.inventory_items_manager.drop_item(wrong_settings_id)


    def test_drop_all_items(self):
        inventory_item = self._create_inventory_item(postfix='_1')
        self.inventory_items_manager.register(inventory_item)
        inventory_item = self.inventory_items_manager.get_item(inventory_item.settings_id)

        self.inventory_items_manager.pick_item(inventory_item.settings_id, 10)
        self.assertEqual(inventory_item.owned_count, 10)

        self.inventory_items_manager.drop_all_items(inventory_item.settings_id)
        self.assertEqual(inventory_item.owned_count, 0)


    def test_drop_all_items_when_wrong_settings_id(self):
        wrong_settings_id = 'wrong_settings_id'
        inventory_item = self._create_inventory_item(postfix='_1')
        self.inventory_items_manager.register(inventory_item)

        with self.assertRaises(KeyError):
            self.inventory_items_manager.drop_all_items(wrong_settings_id)


    def test_is_own_item_when_all_ok(self):
        inventory_item = self._create_inventory_item(postfix='_1')
        self.inventory_items_manager.register(inventory_item)

        self.assertFalse(self.inventory_items_manager.is_own_item(inventory_item.settings_id))

        self.inventory_items_manager.pick_item(inventory_item.settings_id)
        self.assertTrue(self.inventory_items_manager.is_own_item(inventory_item.settings_id))

        self.inventory_items_manager.drop_item(inventory_item.settings_id)
        self.assertFalse(self.inventory_items_manager.is_own_item(inventory_item.settings_id))


    def test_owned_item_count_when_all_ok(self):
        inventory_item = self._create_inventory_item(postfix='_1')
        self.inventory_items_manager.register(inventory_item)

        self.assertEqual(self.inventory_items_manager.owned_item_count(inventory_item.settings_id), 0)

        self.inventory_items_manager.pick_item(inventory_item.settings_id, 2)
        self.assertEqual(self.inventory_items_manager.owned_item_count(inventory_item.settings_id), 2)

        self.inventory_items_manager.drop_item(inventory_item.settings_id)
        self.assertEqual(self.inventory_items_manager.owned_item_count(inventory_item.settings_id), 1)


    def test_get_owned_items_when_all_ok(self):
        inventory_item1 = self._create_inventory_item(postfix='_1')
        inventory_item2 = self._create_inventory_item('_2')
        delta = 2

        before = len(self.inventory_items_manager._inventory_items_store.inventory_items)

        self.inventory_items_manager.register(inventory_item1)
        self.inventory_items_manager.register(inventory_item2)

        self.inventory_items_manager.pick_item(inventory_item2.settings_id)

        after = len(self.inventory_items_manager._inventory_items_store.inventory_items)
        self.assertEqual(before + delta, after)
        self.assertEqual(len(self.inventory_items_manager.get_owned_items()), 1)
        self.assertEqual(self.inventory_items_manager.get_owned_items()[0].settings_id, inventory_item2.settings_id)


    def test_get_item_when_all_ok(self):
        inventory_item1 = self._create_inventory_item(postfix='_1')
        inventory_item2 = self._create_inventory_item('_2')
        delta = 2

        before = len(self.inventory_items_manager._inventory_items_store.inventory_items)

        self.inventory_items_manager.register(inventory_item1)
        self.inventory_items_manager.register(inventory_item2)

        after = len(self.inventory_items_manager._inventory_items_store.inventory_items)
        self.assertEqual(before + delta, after)

        item1 = self.inventory_items_manager.get_item(inventory_item1.settings_id)
        self.assertEqual(item1.settings_id, inventory_item1.settings_id)
        self.assertEqual(item1.orig_id, inventory_item1.orig_id)
        self.assertEqual(item1.name, inventory_item1.name)
        self.assertEqual(item1.description, inventory_item1.description)
        self.assertEqual(item1.used_by, inventory_item1.used_by)
        self.assertEqual(item1.properties, inventory_item1.properties)
        self.assertEqual(item1.grid_image, inventory_item1.grid_image)
        self.assertEqual(item1.detail_image, inventory_item1.detail_image)
        self.assertEqual(item1.jump_on_use_to, inventory_item1.jump_on_use_to)
        self.assertEqual(item1.owned_count, inventory_item1.owned_count)

        item2 = self.inventory_items_manager.get_item(inventory_item2.settings_id)
        self.assertEqual(item2.settings_id, inventory_item2.settings_id)
        self.assertEqual(item2.orig_id, inventory_item2.orig_id)
        self.assertEqual(item2.name, inventory_item2.name)
        self.assertEqual(item2.description, inventory_item2.description)
        self.assertEqual(item2.used_by, inventory_item2.used_by)
        self.assertEqual(item2.properties, inventory_item2.properties)
        self.assertEqual(item2.grid_image, inventory_item2.grid_image)
        self.assertEqual(item2.detail_image, inventory_item2.detail_image)
        self.assertEqual(item2.jump_on_use_to, inventory_item2.jump_on_use_to)
        self.assertEqual(item2.owned_count, inventory_item2.owned_count)



    def test_get_item_when_inventory_item_not_found(self):
        id = 'non existing inventory item id'

        with self.assertRaises(KeyError):
            self.inventory_items_manager.get_item(id)


    def test_get_selected_item_id_when_all_ok(self):
        inventory_item = self._create_inventory_item(postfix='_1')
        self.inventory_items_manager.register(inventory_item)

        self.assertIsNone(self.inventory_items_manager.get_selected_item_id())
        self.inventory_items_manager.set_selected_item_id(inventory_item.settings_id)
        self.assertEqual(self.inventory_items_manager.get_selected_item_id(), inventory_item.settings_id)


    def test_set_selected_item_id_when_all_ok(self):
        inventory_item = self._create_inventory_item(postfix='_1')
        self.inventory_items_manager.register(inventory_item)

        self.inventory_items_manager.set_selected_item_id(inventory_item.settings_id)
        self.assertEqual(self.inventory_items_manager.get_selected_item_id(), inventory_item.settings_id)


    def test_set_selected_item_id_when_inventory_item_not_found(self):
        id = 'non existing inventory item id'

        with self.assertRaises(KeyError):
            self.inventory_items_manager.set_selected_item_id(id)


    def test_has_selected_item_id_when_all_ok(self):
        inventory_item = self._create_inventory_item(postfix='_1')
        self.inventory_items_manager.register(inventory_item)

        self.assertFalse(self.inventory_items_manager.has_selected_item_id())
        self.inventory_items_manager.set_selected_item_id(inventory_item.settings_id)
        self.assertTrue(self.inventory_items_manager.has_selected_item_id())


    def test_clear_selected_item_id_when_all_ok(self):
        inventory_item = self._create_inventory_item(postfix='_1')
        self.inventory_items_manager.register(inventory_item)

        self.assertFalse(self.inventory_items_manager.has_selected_item_id())
        self.inventory_items_manager.set_selected_item_id(inventory_item.settings_id)
        self.assertTrue(self.inventory_items_manager.has_selected_item_id())
        self.inventory_items_manager.clear_selected_item_id()
        self.assertFalse(self.inventory_items_manager.has_selected_item_id())


    def _create_inventory_item(self,
        settings_id='settings_id',
        orig_id='orig_id',
        name='name',
        description='description',
        grid_image='grid_image',
        used_by='used_by',
        properties='properties',
        detail_image='detail_image',
        jump_on_use_to='jump_on_use_to',
        owned_count=0,
        postfix=''
    ):
        return InventoryItem(
            settings_id=settings_id + postfix,
            orig_id=orig_id + postfix,
            name=name + postfix,
            description=description + postfix,
            grid_image=grid_image + postfix,
            used_by=used_by + postfix,
            properties=properties + postfix,
            detail_image=detail_image + postfix,
            jump_on_use_to=jump_on_use_to + postfix,
            owned_count=owned_count
        )
