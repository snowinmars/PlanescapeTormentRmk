import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortuary_zombies.zm79_logic import (Zm79LogicGenerated, Zm79Logic)


class Zm79LogicTest(LogicTest):
    def setUp(self):
        super(Zm79LogicTest, self).setUp()
        self.logic = Zm79Logic(self.state_manager)


class Zm79LogicGeneratedTest(LogicTest):
    def setUp(self):
        super(Zm79LogicGeneratedTest, self).setUp()
        self.logic = Zm79LogicGenerated(self.state_manager)


    def test_r34943_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r34943_action
        )


    def test_r34946_action(self):
        self._false_then_true_action(
            self.state_manager.get_know_copper_earring_secret,
            self.logic.r34946_action
        )


    def test_j64536_s3_r64279_action(self):
        note_id = '64536'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j64536_s3_r64279_action
        )


    def test_j64537_s3_r64280_action(self):
        note_id = '64537'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j64537_s3_r64280_action
        )


    def test_r34946_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.set_know_copper_earring_secret(x),
            self.logic.r34946_condition
        )


    def test_r34947_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_vaxis_exposed(x),
            self.logic.r34947_condition
        )


    def test_r34948_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_can_speak_with_dead(x),
            self.logic.r34948_condition
        )


    def test_r64279_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.set_has_copper_earring_closed(x),
            self.logic.r64279_condition
        )


    def test_r64280_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_has_copper_earring_closed(x),
            self.logic.r64280_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
