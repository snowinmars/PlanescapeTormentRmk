import unittest

from game.engine.tests import (LogicTest)
from game.engine.inventory.inventory_item import (InventoryItem)


class InventoryItemTest(LogicTest):
    def test_ctor(self):
        settings_id = 'settings_id'
        orig_id = 'orig_id'
        name = 'name'
        description = 'description'
        grid_image = 'grid_image'
        detail_image = 'detail_image'
        jump_on_use_to = 'jump_on_use_to'

        inventoryItem = InventoryItem(
            settings_id=settings_id,
            orig_id=orig_id,
            name=name,
            description=description,
            grid_image=grid_image,
            detail_image=detail_image,
            jump_on_use_to=jump_on_use_to
        )

        self.assertIsNotNone(inventoryItem)

        self.assertEqual(inventoryItem.settings_id, settings_id)
        self.assertEqual(inventoryItem.orig_id, orig_id)
        self.assertEqual(inventoryItem.name, name)
        self.assertEqual(inventoryItem.description, description)
        self.assertEqual(inventoryItem.grid_image, grid_image)
        self.assertEqual(inventoryItem.detail_image, detail_image)
        self.assertEqual(inventoryItem.jump_on_use_to, jump_on_use_to)
