import unittest


from game.engine.tests import (LogicTest)
from game.engine_data.menus.mortuary.f2r5.loot_logic import (MortuaryF2R5LootLogic)


class MortuaryF2R5LootLogicTest(LogicTest):
    def setUp(self):
        super(MortuaryF2R5LootLogic, self).setUp()
        self.logic = MortuaryF2R5LootLogic(self.settings_manager)


if __name__ == '__main__':
    unittest.main() # pragma: no cover
