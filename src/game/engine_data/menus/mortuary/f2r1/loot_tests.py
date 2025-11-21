import unittest


from game.engine.tests import (LogicTest)
from game.engine_data.menus.mortuary.f2r1.loot_logic import (MortuaryF2R1LootLogic)


class MortuaryF2R1LootLogicTest(LogicTest):
    def setUp(self):
        super(MortuaryF2R1LootLogicTest, self).setUp()
        self.logic = MortuaryF2R1LootLogic(self.state_manager)


    def test_prybar(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_has_scalpel,
            self.logic.scalpel
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
