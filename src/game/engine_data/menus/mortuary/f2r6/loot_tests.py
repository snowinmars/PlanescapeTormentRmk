import unittest


from game.engine.tests import (LogicTest)
from game.engine_data.menus.mortuary.f2r6.loot_logic import (MortuaryF2R6LootLogic)


class MortuaryF2R6LootLogicTest(LogicTest):
    def setUp(self):
        super(MortuaryF2R6LootLogic, self).setUp()
        self.logic = MortuaryF2R6LootLogic(self.settings_manager)


if __name__ == '__main__':
    unittest.main() # pragma: no cover
