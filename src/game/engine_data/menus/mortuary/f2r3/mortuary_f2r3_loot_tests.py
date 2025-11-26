import unittest


from game.engine.tests import (LogicTest)
from game.engine_data.menus.mortuary.f2r3.mortuary_f2r3_loot_logic import (MortuaryF2R3LootLogic)


class MortuaryF2R3LootLogicTest(LogicTest):
    def setUp(self):
        super(MortuaryF2R3LootLogicTest, self).setUp()
        self.logic = MortuaryF2R3LootLogic(self.state_manager)


if __name__ == '__main__':
    unittest.main() # pragma: no cover
