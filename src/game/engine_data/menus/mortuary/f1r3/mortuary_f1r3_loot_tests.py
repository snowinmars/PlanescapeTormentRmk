import unittest


from game.engine.tests import (LogicTest)
from game.engine_data.menus.mortuary.f1r3.mortuary_f1r3_loot_logic import (MortuaryF1R3LootLogic)


class MortuaryF1R3LootLogicTest(LogicTest):
    def setUp(self):
        super(MortuaryF1R3LootLogicTest, self).setUp()
        self.logic = MortuaryF1R3LootLogic(self.state_manager)


if __name__ == '__main__':
    unittest.main() # pragma: no cover
