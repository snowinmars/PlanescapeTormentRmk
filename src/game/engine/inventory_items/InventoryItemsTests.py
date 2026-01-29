import unittest
import pickle

from game.engine.LogicTests import (LogicTests)
from game.engine.inventory_items.InventoryItem import (InventoryItem)


class InventoryItemsTests(LogicTests):
    def test_ctor(self):
        settings_id = 'settings_id'
        orig_id = 'orig_id'
        name = 'name'
        description = 'description'
        grid_image = 'grid_image'
        used_by = 'used_by'
        properties = 'properties'
        detail_image = 'detail_image'
        jump_on_use_to = 'jump_on_use_to'
        owned_count = 0

        inventory_item = self._create_inventory_item(
            settings_id=settings_id,
            orig_id=orig_id,
            name=name,
            description=description,
            grid_image=grid_image,
            used_by=used_by,
            properties=properties,
            detail_image=detail_image,
            jump_on_use_to=jump_on_use_to,
            owned_count=owned_count
        )

        self.assertIsNotNone(inventory_item)

        self.assertEqual(inventory_item.settings_id, settings_id)
        self.assertEqual(inventory_item.orig_id, orig_id)
        self.assertEqual(inventory_item.name, name)
        self.assertEqual(inventory_item.description, description)
        self.assertEqual(inventory_item.grid_image, grid_image)
        self.assertEqual(inventory_item.detail_image, detail_image)
        self.assertEqual(inventory_item.jump_on_use_to, jump_on_use_to)


    def test_reserialize_pickle(self):
        inventory_item = self._create_inventory_item()

        dump = pickle.dumps(inventory_item)
        expected = b'\x80\x05\x95\xda\x00\x00\x00\x00\x00\x00\x00\x8c)game.engine.inventory_items.InventoryItem\x94\x8c\rInventoryItem\x94\x93\x94)\x81\x94}\x94(\x8c\x0bsettings_id\x94h\x05\x8c\x07orig_id\x94h\x06\x8c\x04name\x94h\x07\x8c\x0bdescription\x94h\x08\x8c\x07used_by\x94h\t\x8c\nproperties\x94h\n\x8c\ngrid_image\x94h\x0b\x8c\x0cdetail_image\x94h\x0c\x8c\x0ejump_on_use_to\x94h\r\x8c\x0bowned_count\x94K\x00ub.'
        self.assertEqual(dump, expected)

        restored_inventory_item = pickle.loads(dump)
        self._assert_inventory_item(inventory_item, restored_inventory_item)


    def test_reserialize_json(self):
        inventory_item = self._create_inventory_item()

        dump = inventory_item.toJson()
        expected = '{"settings_id": "settings_id", "orig_id": "orig_id", "name": "name", "description": "description", "used_by": "used_by", "properties": "properties", "grid_image": "grid_image", "detail_image": "detail_image", "jump_on_use_to": "jump_on_use_to", "owned_count": 0}'
        self.assertEqual(dump, expected)

        restored_inventory_item = InventoryItem.fromJson(dump)
        self._assert_inventory_item(inventory_item, restored_inventory_item)


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
        owned_count=0
    ):
        return InventoryItem(
            settings_id=settings_id,
            orig_id=orig_id,
            name=name,
            description=description,
            grid_image=grid_image,
            used_by=used_by,
            properties=properties,
            detail_image=detail_image,
            jump_on_use_to=jump_on_use_to,
            owned_count=owned_count
        )


    def _assert_inventory_item(self, lhs, rhs):
        self.assertEqual(lhs.settings_id   , rhs.settings_id)
        self.assertEqual(lhs.orig_id       , rhs.orig_id)
        self.assertEqual(lhs.name          , rhs.name)
        self.assertEqual(lhs.description   , rhs.description)
        self.assertEqual(lhs.grid_image    , rhs.grid_image)
        self.assertEqual(lhs.used_by       , rhs.used_by)
        self.assertEqual(lhs.properties    , rhs.properties)
        self.assertEqual(lhs.detail_image  , rhs.detail_image)
        self.assertEqual(lhs.jump_on_use_to, rhs.jump_on_use_to)
        self.assertEqual(lhs.owned_count   , rhs.owned_count)
