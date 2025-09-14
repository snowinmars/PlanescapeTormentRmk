import unittest


from game.engine.tests import (LogicTest)
from game.engine_data.menus.mortuary.f1r2.loot_logic import (MortuaryF1R2LootLogic)


class MortuaryF1R2LootLogicTest(LogicTest):
    def setUp(self):
        super(MortuaryF1R2LootLogic, self).setUp()
        self.logic = MortuaryF1R2LootLogic(self.state_manager)


if __name__ == '__main__':
    unittest.main() # pragma: no cover
