import pickle
import unittest
import time

from game.engine.inventory.inventory_item import (InventoryItem)
from game.engine.inventory.inventory_store import (InventoryStore)


class CharacterStoreTest(unittest.TestCase):
    def setUp(self):
        self.store = InventoryStore()
        self.inventory_item_a = InventoryItem(
            settings_id="intro_key",
            orig_id='keypr',
            name="Ключ",
            description="Ручка",
            grid_image="grid_key.png",
            detail_image="detail_key.png"
        )
        self.inventory_item_b = InventoryItem(
            settings_id="needle",
            orig_id='needle.itm',
            name="Иголка и нитка",
            description="катушка",
            grid_image="grid_needle.png",
            detail_image="detail_needle.png"
        )


    def test_serialize_empty(self):
        dump = pickle.dumps(self.store)
        expected = b"\x80\x05\x95W\x00\x00\x00\x00\x00\x00\x00\x8c%game.engine.inventory.inventory_store\x94\x8c\x0eInventoryStore\x94\x93\x94)\x81\x94}\x94\x8c\x0finventory_items\x94}\x94sb."
        self.assertEqual(dump, expected)


    def test_deserialize_empty(self):
        dump = b"\x80\x05\x95W\x00\x00\x00\x00\x00\x00\x00\x8c%game.engine.inventory.inventory_store\x94\x8c\x0eInventoryStore\x94\x93\x94)\x81\x94}\x94\x8c\x0finventory_items\x94}\x94sb."
        store = pickle.loads(dump)
        self.assertIsNotNone(store.inventory_items)
        self.assertEqual(len(store.inventory_items), 0)


    def test_serialize_filled(self):
        self.store.inventory_items[self.inventory_item_a.name] = self.inventory_item_a
        self.store.inventory_items[self.inventory_item_b.name] = self.inventory_item_b

        dump = pickle.dumps(self.store)
        expected = b"\x80\x05\x95\xc8\x01\x00\x00\x00\x00\x00\x00\x8c%game.engine.inventory.inventory_store\x94\x8c\x0eInventoryStore\x94\x93\x94)\x81\x94}\x94\x8c\x0finventory_items\x94}\x94(\x8c\x08\xd0\x9a\xd0\xbb\xd1\x8e\xd1\x87\x94\x8c$game.engine.inventory.inventory_item\x94\x8c\rInventoryItem\x94\x93\x94)\x81\x94}\x94(\x8c\x0bsettings_id\x94\x8c\tintro_key\x94\x8c\x07orig_id\x94\x8c\x05keypr\x94\x8c\x04name\x94h\x07\x8c\x0bdescription\x94\x8c\n\xd0\xa0\xd1\x83\xd1\x87\xd0\xba\xd0\xb0\x94\x8c\ngrid_image\x94\x8c\x0cgrid_key.png\x94\x8c\x0cdetail_image\x94\x8c\x0edetail_key.png\x94\x8c\x0ejump_on_use_to\x94Nub\x8c\x1a\xd0\x98\xd0\xb3\xd0\xbe\xd0\xbb\xd0\xba\xd0\xb0 \xd0\xb8 \xd0\xbd\xd0\xb8\xd1\x82\xd0\xba\xd0\xb0\x94h\n)\x81\x94}\x94(h\r\x8c\x06needle\x94h\x0f\x8c\nneedle.itm\x94h\x11h\x19h\x12\x8c\x0e\xd0\xba\xd0\xb0\xd1\x82\xd1\x83\xd1\x88\xd0\xba\xd0\xb0\x94h\x14\x8c\x0fgrid_needle.png\x94h\x16\x8c\x11detail_needle.png\x94h\x18Nubusb."
        self.assertEqual(dump, expected)


    def test_deserialize_filled(self):
        dump = b"\x80\x05\x95\xc8\x01\x00\x00\x00\x00\x00\x00\x8c%game.engine.inventory.inventory_store\x94\x8c\x0eInventoryStore\x94\x93\x94)\x81\x94}\x94\x8c\x0finventory_items\x94}\x94(\x8c\x08\xd0\x9a\xd0\xbb\xd1\x8e\xd1\x87\x94\x8c$game.engine.inventory.inventory_item\x94\x8c\rInventoryItem\x94\x93\x94)\x81\x94}\x94(\x8c\x0bsettings_id\x94\x8c\tintro_key\x94\x8c\x07orig_id\x94\x8c\x05keypr\x94\x8c\x04name\x94h\x07\x8c\x0bdescription\x94\x8c\n\xd0\xa0\xd1\x83\xd1\x87\xd0\xba\xd0\xb0\x94\x8c\ngrid_image\x94\x8c\x0cgrid_key.png\x94\x8c\x0cdetail_image\x94\x8c\x0edetail_key.png\x94\x8c\x0ejump_on_use_to\x94Nub\x8c\x1a\xd0\x98\xd0\xb3\xd0\xbe\xd0\xbb\xd0\xba\xd0\xb0 \xd0\xb8 \xd0\xbd\xd0\xb8\xd1\x82\xd0\xba\xd0\xb0\x94h\n)\x81\x94}\x94(h\r\x8c\x06needle\x94h\x0f\x8c\nneedle.itm\x94h\x11h\x19h\x12\x8c\x0e\xd0\xba\xd0\xb0\xd1\x82\xd1\x83\xd1\x88\xd0\xba\xd0\xb0\x94h\x14\x8c\x0fgrid_needle.png\x94h\x16\x8c\x11detail_needle.png\x94h\x18Nubusb."
        store = pickle.loads(dump)

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
        self.assertEqual(lhs.detail_image, rhs.detail_image)


if __name__ == "__main__":
    unittest.main()
