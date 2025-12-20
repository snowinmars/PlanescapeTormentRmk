import unittest

from game.engine.tests import (LogicTest)
from game.dlgs.inventory.dhall_feather_logic import (DhallFeatherLogicGenerated, DhallFeatherLogic)


class DhallFeatherLogicTest(LogicTest):
    def setUp(self):
        super(DhallFeatherLogicTest, self).setUp()
        self.logic = DhallFeatherLogic(self.state_manager)


    def test_break_feather(self):
        logic = DhallFeatherLogic(self.state_manager)
        who = 'protagonist_character_name'
        prop = 'lore'
        delta = 1

        self._change_prop(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            logic.break_feather
        )


class DhallFeatherLogicGeneratedTest(LogicTest):
    def setUp(self):
        super(DhallFeatherLogicGeneratedTest, self).setUp()
        self.logic = DhallFeatherLogicGenerated(self.state_manager)


if __name__ == '__main__':
    unittest.main() # pragma: no cover
