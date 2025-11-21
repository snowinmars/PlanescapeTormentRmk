import unittest


from game.engine.tests import (LogicTest)
from game.engine_data.menus.mortuary.f3r1.loot_logic import (MortuaryF3R1LootLogic)


class MortuaryF3R1LootLogicTest(LogicTest):
    def setUp(self):
        super(MortuaryF3R1LootLogicTest, self).setUp()
        self.logic = MortuaryF3R1LootLogic(self.state_manager)


    def test_mortuary_key(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_has_mortuary_key,
            self.logic.mortuary_key
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
