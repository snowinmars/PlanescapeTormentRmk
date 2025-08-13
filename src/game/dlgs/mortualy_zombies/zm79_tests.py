import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortualy_zombies.zm79_logic import Zm79Logic


class Zm79LogicTest(LogicTest):
    def setUp(self):
        super(Zm79LogicTest, self).setUp()
        self.logic = Zm79Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zm79Logic
        self._methods_are_bound()


    def test_zm79_init(self):
        self._init_with_location(
            'mortuary_f3r4',
            self.logic.zm79_init,
            self.settings_manager.get_talked_to_zm79_times
        )


    def test_kill_zm79(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zm79())
        exp_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.kill_zm79()

        self.assertTrue(self.settings_manager.get_dead_zm79())
        exp_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(exp_before + delta, exp_after)


    def test_r34943_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r34943_action
        )


    def test_r34946_action(self):
        self._false_then_true_action(
            self.settings_manager.get_know_copper_earring_secret,
            self.logic.r34946_action
        )


    def test_r64279_action(self):
        note_id = '64536'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r64279_action
        )


    def test_r64280_action(self):
        note_id = '64537'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r64280_action
        )


    def test_r34946_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_know_copper_earring_secret(x),
            self.logic.r34946_condition
        )


    def test_r34947_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r34947_condition
        )


    def test_r34948_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r34948_condition
        )


    def test_r64279_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_has_copper_earring_closed(x),
            self.logic.r64279_condition
        )


    def test_r64280_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_copper_earring_closed(x),
            self.logic.r64280_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
