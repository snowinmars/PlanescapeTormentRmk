import unittest


from game.engine.tests import (LogicTest)
from game.engine_data.menus.mortuary.f2r8.loot_logic import (MortuaryF2R8LootLogic)


class MortuaryF2R8LootLogicTest(LogicTest):
    def setUp(self):
        super(MortuaryF2R8LootLogic, self).setUp()
        self.logic = MortuaryF2R8LootLogic(self.settings_manager)


if __name__ == '__main__':
    unittest.main() # pragma: no cover
