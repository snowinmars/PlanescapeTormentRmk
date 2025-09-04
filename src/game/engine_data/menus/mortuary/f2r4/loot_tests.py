import unittest


from game.engine.tests import (LogicTest)
from game.engine_data.menus.mortuary.f2r4.loot_logic import (MortuaryF2R4LootLogic)


class MortuaryF2R4LootLogicTest(LogicTest):
    def setUp(self):
        super(MortuaryF2R4LootLogic, self).setUp()
        self.logic = MortuaryF2R4LootLogic(self.settings_manager)


if __name__ == '__main__':
    unittest.main() # pragma: no cover
