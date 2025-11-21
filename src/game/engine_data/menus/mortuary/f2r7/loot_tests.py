import unittest


from game.engine.tests import (LogicTest)
from game.engine_data.menus.mortuary.f2r7.loot_logic import (MortuaryF2R7LootLogic)


class MortuaryF2R7LootLogicTest(LogicTest):
    def setUp(self):
        super(MortuaryF2R7LootLogicTest, self).setUp()
        self.logic = MortuaryF2R7LootLogic(self.state_manager)


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
