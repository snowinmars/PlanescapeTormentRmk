import unittest


from game.engine.tests import (LogicTest)
from game.engine_data.menus.mortuary.f3r4.loot_logic import (MortuaryF3R4LootLogic)


class MortuaryF3R4LootLogicTest(LogicTest):
    def setUp(self):
        super(MortuaryF3R4LootLogicTest, self).setUp()
        self.logic = MortuaryF3R4LootLogic(self.state_manager)


    def test_prybar(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_has_prybar,
            self.logic.prybar
        )


    def test_dustman_request(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_has_dustman_request,
            self.logic.dustman_request
        )

    def test_needle(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_has_needle,
            self.logic.needle
        )


    def test_garbage(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_has_garbage,
            self.logic.garbage
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
