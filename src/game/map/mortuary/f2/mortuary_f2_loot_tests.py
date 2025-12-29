import unittest


from game.engine.tests import (LogicTest)
from game.map.mortuary.f2.mortuary_f2_loot_logic import (MortuaryF2LootLogic)


class MortuaryF2LootLogicTest(LogicTest):
    def setUp(self):
        super(MortuaryF2LootLogicTest, self).setUp()
        self.logic = MortuaryF2LootLogic(self.state_manager)


    def test_prybar(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_has_scalpel,
            self.logic.scalpel
        )


    def test_embalm(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_has_embalm,
            self.logic.embalm
        )


    def test_copper_earring_closed(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_has_copper_earring_closed,
            self.logic.copper_earring_closed
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
