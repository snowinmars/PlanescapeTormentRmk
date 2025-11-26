import unittest


from game.engine.tests import (LogicTest)
from game.engine_data.menus.mortuary.f1r1.mortuary_f1r1_loot_logic import (MortuaryF1R1LootLogic)


class MortuaryF1R1LootLogicTest(LogicTest):
    def setUp(self):
        super(MortuaryF1R1LootLogicTest, self).setUp()
        self.logic = MortuaryF1R1LootLogic(self.state_manager)


if __name__ == '__main__':
    unittest.main() # pragma: no cover
