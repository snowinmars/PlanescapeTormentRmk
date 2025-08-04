import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortuary.morte2_logic import Morte2Logic


class Morte2LogicTest(LogicTest):
    def setUp(self):
        super(Morte2LogicTest, self).setUp()
        self.logic = Morte2Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Morte2Logic
        self._methods_are_bound()


    def test_morte_init_first(self):
        self._init(
            self.logic.morte_init_first,
            self.settings_manager.get_talked_to_morte_times
        )


    def test_morte_init(self):
        location = 'mortuary_f2r2'

        self.assertFalse(self.settings_manager.get_in_party_morte())
        self.assertNotEqual(self.settings_manager.location_manager.get_location(), location)
        talkedTo_before = self.settings_manager.get_talked_to_morte_times()

        self.logic.morte_init()

        self.assertTrue(self.settings_manager.get_in_party_morte())
        self.assertEqual(self.settings_manager.location_manager.get_location(), location)
        talkedTo_after = self.settings_manager.get_talked_to_morte_times()
        self.assertEqual(talkedTo_before + 1, talkedTo_after)


    def test_morte_talk_dhall(self):
        self._init_with_location(
            'mortuary_f2r3',
            self.logic.morte_talk_dhall,
            self.settings_manager.get_talked_to_morte_times
        )


    def test_kill_morte(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_morte,
            self.logic.kill_morte
        )


    def test_r41145_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_mortuary_walkthrough_1,
            self.logic.r41145_action
        )


    def test_r41146_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_mortuary_walkthrough_1,
            self.logic.r41146_action
        )


    def test_r41147_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_mortuary_walkthrough_1,
            self.logic.r41147_action
        )


    def test_r41148_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_mortuary_walkthrough_1,
            self.logic.r41148_action
        )


    def test_r41177_action(self):
        note_id = '39516'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r41177_action
        )


    def test_r41251_action(self):
        self._false_then_true_action(
            self.settings_manager.get_in_party_morte,
            self.logic.r41251_action
        )


    def test_r41255_action(self):
        self._false_then_true_action(
            self.settings_manager.get_in_party_morte,
            self.logic.r41255_action
        )


    def test_r41258_action(self):
        self._false_then_true_action(
            self.settings_manager.get_in_party_morte,
            self.logic.r41258_action
        )


    def test_r41263_action(self):
        self._false_then_true_action(
            self.settings_manager.get_morte_mortuary_walkthrough_2,
            self.logic.r41263_action
        )


    def test_r41163_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r41163_condition
        )


    def test_r41181_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41181_condition
        )


    def test_r41182_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41182_condition
        )


    def test_r41184_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41184_condition
        )


    def test_r41185_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_bandages(x),
            self.logic.r41185_condition
        )


    def test_r41186_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41186_condition
        )


    def test_r41187_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41187_condition
        )


    def test_r41191_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41191_condition
        )


    def test_r41192_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41192_condition
        )


    def test_r41196_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41196_condition
        )


    def test_r41197_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41197_condition
        )


    def test_r41201_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41201_condition
        )


    def test_r41203_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41203_condition
        )


    def test_r41206_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41206_condition
        )


    def test_r41207_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41207_condition
        )


    def test_r41210_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41210_condition
        )


    def test_r41211_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41211_condition
        )


    def test_r41214_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41214_condition
        )


    def test_r41215_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41215_condition
        )


    def test_r41219_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41219_condition
        )


    def test_r41220_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41220_condition
        )


    def test_r41223_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41223_condition
        )


    def test_r41224_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41224_condition
        )


    def test_r41227_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41227_condition
        )


    def test_r41228_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41228_condition
        )


    def test_r41231_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41231_condition
        )


    def test_r41232_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            self.logic.r41232_condition
        )


    def test_r41239_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r41239_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
