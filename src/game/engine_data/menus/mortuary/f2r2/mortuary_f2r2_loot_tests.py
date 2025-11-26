import unittest


from game.engine.tests import (LogicTest)
from game.engine_data.menus.mortuary.f2r2.mortuary_f2r2_loot_logic import (MortuaryF2R2LootLogic)


class MortuaryF2R2LootLogicTest(LogicTest):
    def setUp(self):
        super(MortuaryF2R2LootLogicTest, self).setUp()
        self.logic = MortuaryF2R2LootLogic(self.state_manager)


if __name__ == '__main__':
    unittest.main() # pragma: no cover
