import unittest


from game.engine.tests import (LogicTest)
from game.engine_data.menus.mortuary.f3r3.loot_logic import (MortuaryF3R3LootLogic)


class MortuaryF3R3LootLogicTest(LogicTest):
    def setUp(self):
        super(MortuaryF3R3LootLogic, self).setUp()
        self.logic = MortuaryF3R3LootLogic(self.state_manager)


if __name__ == '__main__':
    unittest.main() # pragma: no cover
