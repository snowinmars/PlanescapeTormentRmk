import unittest


from game.engine.tests import (LogicTest)
from game.engine_data.menus.mortuary.f3r2.loot_logic import (MortuaryF3R2LootLogic)


class MortuaryF3R2LootLogicTest(LogicTest):
    def setUp(self):
        super(MortuaryF3R2LootLogic, self).setUp()
        self.logic = MortuaryF3R2LootLogic(self.settings_manager)


    def test_needle(self):
        self._false_then_true_action(
            self.settings_manager.get_has_needle,
            self.logic.needle
        )


    def test_garbage(self):
        self._false_then_true_action(
            self.settings_manager.get_has_garbage,
            self.logic.garbage
        )


    def test_mortuary_task_list(self):
        self._false_then_true_action(
            self.settings_manager.get_has_mortuary_task_list,
            self.logic.mortuary_task_list
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
