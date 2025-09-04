import unittest


from game.engine.tests import (LogicTest)
from game.engine_data.menus.mortuary.f2r8.loot_logic import (MortuaryF2R8LootLogic)


class MortuaryF3R1LootLogicTest(LogicTest):
    def setUp(self):
        super(MortuaryF2R8LootLogic, self).setUp()
        self.logic = MortuaryF2R8LootLogic(self.settings_manager)


    def test_mortuary_key(self):
        self._false_then_true_action(
            self.settings_manager.get_has_mortuary_key,
            self.logic.mortuary_key
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
