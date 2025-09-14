import unittest


from game.engine.tests import (LogicTest)
from game.engine_data.menus.mortuary.f1rc.loot_logic import (MortuaryF1RcLootLogic)


class MortuaryF1RcLootLogicTest(LogicTest):
    def setUp(self):
        super(MortuaryF1RcLootLogic, self).setUp()
        self.logic = MortuaryF1RcLootLogic(self.state_manager)


if __name__ == '__main__':
    unittest.main() # pragma: no cover
