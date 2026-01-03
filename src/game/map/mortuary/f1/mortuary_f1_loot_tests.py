import unittest


from game.engine.tests import (LogicTest)
from game.map.mortuary.f1.mortuary_f1_loot_logic import (MortuaryF1LootLogic)


class MortuaryF1LootLogicTest(LogicTest):
    def setUp(self):
        super(MortuaryF1LootLogicTest, self).setUp()
        self.logic = MortuaryF1LootLogic(self.state_manager)


if __name__ == '__main__':
    unittest.main() # pragma: no cover
