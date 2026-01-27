import pickle
import unittest
import time

from game.engine.inventory.InventoryItem import (InventoryItem)
from game.engine.inventory.inventory_store import (InventoryStore)


class CharacterStoreTest(unittest.TestCase):
    def setUp(self):
        self.store = InventoryStore()
        self.inventory_item_a = InventoryItem(
            settings_id="inventory_item_a_settings_id",
            orig_id='inventory_item_a_orig_id',
            name="inventory_item_a_name",
            description="inventory_item_a_description",
            grid_image="inventory_item_a_grid_image",
            used_by='inventory_item_a_used_by',
            properties='inventory_item_a_properties',
            detail_image="inventory_item_a_detail_image",
            jump_on_use_to="inventory_item_a_jump_on_use_to",
            owned_count=3
        )
        self.inventory_item_b = InventoryItem(
            settings_id="inventory_item_b_settings_id",
            orig_id='inventory_item_b_orig_id',
            name="inventory_item_b_name",
            description="inventory_item_b_description",
            grid_image="inventory_item_b_grid_image",
            used_by="inventory_item_b_used_by",
            properties="inventory_item_b_properties",
            detail_image="inventory_item_b_detail_image",
            jump_on_use_to="inventory_item_b_jump_on_use_to",
            owned_count=5
        )


    def test_reserialize_empty_pickle(self):
        dump = pickle.dumps(self.store)
        expected = b'\x80\x05\x95W\x00\x00\x00\x00\x00\x00\x00\x8c%game.engine.inventory.inventory_store\x94\x8c\x0eInventoryStore\x94\x93\x94)\x81\x94}\x94\x8c\x0finventory_items\x94}\x94sb.'
        self.assertEqual(dump, expected)

        store = pickle.loads(dump)
        self._assert_empty_store(store)


    def test_reserialize_empty_json(self):
        dump = self.store.toJson()
        expected = '{"inventory_items": {}}'
        self.assertEqual(dump, expected)

        store = InventoryStore.fromJson(dump)
        self._assert_empty_store(store)


    def test_reserialize_filled_pickle(self):
        self._fill_store(self.store)

        dump = pickle.dumps(self.store)
        expected = b'\x80\x05\x95R\x03\x00\x00\x00\x00\x00\x00\x8c%game.engine.inventory.inventory_store\x94\x8c\x0eInventoryStore\x94\x93\x94)\x81\x94}\x94\x8c\x0finventory_items\x94}\x94(\x8c\x15inventory_item_a_name\x94\x8c#game.engine.inventory.InventoryItem\x94\x8c\rInventoryItem\x94\x93\x94)\x81\x94}\x94(\x8c\x0bsettings_id\x94\x8c\x1cinventory_item_a_settings_id\x94\x8c\x07orig_id\x94\x8c\x18inventory_item_a_orig_id\x94\x8c\x04name\x94h\x07\x8c\x0bdescription\x94\x8c\x1cinventory_item_a_description\x94\x8c\x07used_by\x94\x8c\x18inventory_item_a_used_by\x94\x8c\nproperties\x94\x8c\x1binventory_item_a_properties\x94\x8c\ngrid_image\x94\x8c\x1binventory_item_a_grid_image\x94\x8c\x0cdetail_image\x94\x8c\x1dinventory_item_a_detail_image\x94\x8c\x0ejump_on_use_to\x94\x8c\x1finventory_item_a_jump_on_use_to\x94\x8c\x0bowned_count\x94K\x03ub\x8c\x15inventory_item_b_name\x94h\n)\x81\x94}\x94(h\r\x8c\x1cinventory_item_b_settings_id\x94h\x0f\x8c\x18inventory_item_b_orig_id\x94h\x11h\x1fh\x12\x8c\x1cinventory_item_b_description\x94h\x14\x8c\x18inventory_item_b_used_by\x94h\x16\x8c\x1binventory_item_b_properties\x94h\x18\x8c\x1binventory_item_b_grid_image\x94h\x1a\x8c\x1dinventory_item_b_detail_image\x94h\x1c\x8c\x1finventory_item_b_jump_on_use_to\x94h\x1eK\x05ubusb.'
        self.assertEqual(dump, expected)

        store = pickle.loads(dump)
        self._assert_filled_store(store)


    def test_reserialize_filled_json(self):
        self._fill_store(self.store)

        dump = self.store.toJson()
        expected = '{"inventory_items": {"inventory_item_a_name": {"settings_id": "inventory_item_a_settings_id", "orig_id": "inventory_item_a_orig_id", "name": "inventory_item_a_name", "description": "inventory_item_a_description", "used_by": "inventory_item_a_used_by", "properties": "inventory_item_a_properties", "grid_image": "inventory_item_a_grid_image", "detail_image": "inventory_item_a_detail_image", "jump_on_use_to": "inventory_item_a_jump_on_use_to", "owned_count": 3}, "inventory_item_b_name": {"settings_id": "inventory_item_b_settings_id", "orig_id": "inventory_item_b_orig_id", "name": "inventory_item_b_name", "description": "inventory_item_b_description", "used_by": "inventory_item_b_used_by", "properties": "inventory_item_b_properties", "grid_image": "inventory_item_b_grid_image", "detail_image": "inventory_item_b_detail_image", "jump_on_use_to": "inventory_item_b_jump_on_use_to", "owned_count": 5}}}'
        self.assertEqual(dump, expected)

        store = InventoryStore.fromJson(dump)
        self._assert_filled_store(store)


    def _fill_store(self, store):
        store.inventory_items[self.inventory_item_a.name] = self.inventory_item_a
        store.inventory_items[self.inventory_item_b.name] = self.inventory_item_b


    def _assert_empty_store(self, store):
        self.assertIsNotNone(store.inventory_items)
        self.assertEqual(len(store.inventory_items), 0)


    def _assert_filled_store(self, store):
        self.assertIsNotNone(store.inventory_items)
        self.assertEqual(len(store.inventory_items), 2)
        self.assertTrue(self.inventory_item_a.name in store.inventory_items)
        self.assertTrue(self.inventory_item_b.name in store.inventory_items)
        self._assert_equal_inventory_items(store.inventory_items[self.inventory_item_a.name], self.inventory_item_a)
        self._assert_equal_inventory_items(store.inventory_items[self.inventory_item_b.name], self.inventory_item_b)

    def _assert_equal_inventory_items(self, lhs, rhs):
        self.assertEqual(lhs.settings_id, rhs.settings_id)
        self.assertEqual(lhs.orig_id, rhs.orig_id)
        self.assertEqual(lhs.name, rhs.name)
        self.assertEqual(lhs.description, rhs.description)
        self.assertEqual(lhs.grid_image, rhs.grid_image)
        self.assertEqual(lhs.used_by, rhs.used_by)
        self.assertEqual(lhs.properties, rhs.properties)
        self.assertEqual(lhs.detail_image, rhs.detail_image)
        self.assertEqual(lhs.jump_on_use_to, rhs.jump_on_use_to)
        self.assertEqual(lhs.owned_count, rhs.owned_count)


if __name__ == "__main__":
    unittest.main()
