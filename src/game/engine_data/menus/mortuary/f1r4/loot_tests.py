import unittest


from game.engine.tests import (LogicTest)
from game.engine_data.menus.mortuary.f1r4.loot_logic import (MortuaryF1R4LootLogic)


class MortuaryF1R4LootLogicTest(LogicTest):
    def setUp(self):
        super(MortuaryF1R4LootLogicTest, self).setUp()
        self.logic = MortuaryF1R4LootLogic(self.state_manager)


if __name__ == '__main__':
    unittest.main() # pragma: no cover
