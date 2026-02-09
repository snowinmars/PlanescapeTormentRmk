import unittest

from game.engine.LogicTests import (LogicTests)
from game.screens.InventoryLogic import (InventoryLogic)


class InventoryLogicTests(LogicTests):
    def setUp(self):
        super(InventoryLogicTests, self).setUp()
        self.logic = InventoryLogic(self.state_manager)


    def test_get_owned_items(self):
        self.assertIsNotNone(self.logic.get_owned_items())


    def test_get_character(self):
        self.assertIsNotNone(self.logic.get_character())


    def test_get_gold(self):
        self.assertIsNotNone(self.logic.get_gold())
