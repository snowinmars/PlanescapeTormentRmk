import unittest

from engine.tests import (LogicTest)
from dlgs.inventory.dhall_feather_logic import DhallFeatherLogic

class DhallFeatherLogicTest(LogicTest):
    def test_initialization(self):
        logic = DhallFeatherLogic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = DhallFeatherLogic
        self._methods_are_bound()


    def test_break_feather(self):
        logic = DhallFeatherLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'lore'
        delta = 1

        self._change_prop(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.break_feather()
        )
