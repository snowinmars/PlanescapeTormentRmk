import unittest

from game.engine.LogicTests import (LogicTests)
from game.dlgs.inventory_items.DhallFeatherLogic import (DhallFeatherLogicGenerated, DhallFeatherLogic)


class DhallFeatherLogicGeneratedTests(LogicTests):
    def setUp(self):
        super(DhallFeatherLogicGeneratedTests, self).setUp()
        self.logic = DhallFeatherLogicGenerated(self.state_manager)


class DhallFeatherLogicTests(LogicTests):
    def setUp(self):
        super(DhallFeatherLogicTests, self).setUp()
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


    def test_talk(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_talked_to_dhall_feather_times,
            1,
            self.logic.talk
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
