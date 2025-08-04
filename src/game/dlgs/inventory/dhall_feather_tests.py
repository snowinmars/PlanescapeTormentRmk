import unittest

from game.engine.tests import (LogicTest)
from game.dlgs.inventory.dhall_feather_logic import DhallFeatherLogic

class DhallFeatherLogicTest(LogicTest):
    def test_ctor(self):
        logic = DhallFeatherLogic(self.settings_manager)
        self.assertIsNotNone(logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = DhallFeatherLogic
        self._methods_are_bound()


    def test_break_feather(self):
        logic = DhallFeatherLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'lore'
        delta = 1

        self._change_prop(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            logic.break_feather
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
