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
        expected = b"\x80\x05\x95d\x00\x00\x00\x00\x00\x00\x00\x8c'game.engine.characters.characters_store\x94\x8c\x0fCharactersStore\x94\x93\x94)\x81\x94}\x94(\x8c\ncharacters\x94}\x94\x8c\tonce_keys\x94}\x94ub."
        self.assertEqual(dump, expected)

        restored_inventory_item = pickle.loads(dump)
        self._assert_inventory_item(inventory_item, restored_inventory_item)


    def test_reserialize_json(self):
        inventory_item = self._create_inventory_item()

        dump = inventory_item.toJson()
        expected = '{"characters": {}, "once_keys": {}}'
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
