import unittest

from game.engine.LogicTests import (LogicTests)
from game.dlgs.inventory_items.quill.QuillLogic import (QuillLogicGenerated, QuillLogic)


class QuillLogicGeneratedTests(LogicTests):
    def setUp(self):
        super(QuillLogicGeneratedTests, self).setUp()
        self.logic = QuillLogicGenerated(self.state_manager)


class QuillLogicTests(LogicTests):
    def setUp(self):
        super(QuillLogicTests, self).setUp()
        self.logic = QuillLogic(self.state_manager)


    def test_break_quill(self):
        logic = QuillLogic(self.state_manager)
        who = 'protagonist_character_name'
        prop = 'lore'
        delta = 1

        self._change_prop(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            logic.break_quill
        )


    def test_talk(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_talked_to_quill_times,
            1,
            self.logic.talk
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
