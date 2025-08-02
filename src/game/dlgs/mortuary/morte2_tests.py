import unittest

from engine.tests import (LogicTest)
from dlgs.mortuary.morte2_logic import Morte2Logic

class Morte2LogicTest(LogicTest):
    def test_initialization(self):
        logic = Morte2Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Morte2Logic
        self._methods_are_bound()


    def test_morte2_init(self):
        logic = Morte2Logic(self.settings_manager)

        self.assertNotEqual(self.settings_manager.glm.get_location(), 'mortuary_f2r2')
        self.assertEqual(self.settings_manager.get_in_party_morte(), False)

        logic.morte2_init()

        self.assertEqual(self.settings_manager.glm.get_location(), 'mortuary_f2r2')
        self.assertEqual(self.settings_manager.get_in_party_morte(), True)


    def test_morte2_s31_init(self):
        logic = Morte2Logic(self.settings_manager)
        id = 'mortuary_f2r3'

        self._step_into_location_action(
            id,
            lambda: logic.morte2_s31_init()
        )


    def test_r41145_action(self):
        logic = Morte2Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_mortuary_walkthrough_1(),
            lambda: logic.r41145_action()
        )


    def test_r41146_action(self):
        logic = Morte2Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_mortuary_walkthrough_1(),
            lambda: logic.r41146_action()
        )


    def test_r41147_action(self):
        logic = Morte2Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_mortuary_walkthrough_1(),
            lambda: logic.r41147_action()
        )


    def test_r41148_action(self):
        logic = Morte2Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_mortuary_walkthrough_1(),
            lambda: logic.r41148_action()
        )


    def test_r41177_action(self):
        logic = Morte2Logic(self.settings_manager)
        id = '39516'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r41177_action()
        )


    def test_r41251_action(self):
        logic = Morte2Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_in_party_morte(),
            lambda: logic.r41251_action()
        )


    def test_r41255_action(self):
        logic = Morte2Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_in_party_morte(),
            lambda: logic.r41255_action()
        )


    def test_r41258_action(self):
        logic = Morte2Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_in_party_morte(),
            lambda: logic.r41258_action()
        )


    def test_r41263_action(self):
        logic = Morte2Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_mortuary_walkthrough_2(),
            lambda: logic.r41263_action()
        )


    def test_r41163_condition(self):
        logic = Morte2Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r41163_condition()
        )


    def test_r41181_condition(self):
        logic = Morte2Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            lambda: logic.r41181_condition()
        )


    def test_r41182_condition(self):
        logic = Morte2Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            lambda: logic.r41182_condition()
        )


    def test_r41184_condition(self):
        logic = Morte2Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            lambda: logic.r41184_condition()
        )


    def test_r41185_condition(self):
        logic = Morte2Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_bandages(x),
            lambda: logic.r41185_condition()
        )


    def test_r41186_condition(self):
        logic = Morte2Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            lambda: logic.r41186_condition()
        )


    def test_r41187_condition(self):
        logic = Morte2Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            lambda: logic.r41187_condition()
        )


    def test_r41191_condition(self):
        logic = Morte2Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            lambda: logic.r41191_condition()
        )


    def test_r41192_condition(self):
        logic = Morte2Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            lambda: logic.r41192_condition()
        )


    def test_r41196_condition(self):
        logic = Morte2Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            lambda: logic.r41196_condition()
        )


    def test_r41197_condition(self):
        logic = Morte2Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            lambda: logic.r41197_condition()
        )


    def test_r41201_condition(self):
        logic = Morte2Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            lambda: logic.r41201_condition()
        )


    def test_r41203_condition(self):
        logic = Morte2Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            lambda: logic.r41203_condition()
        )


    def test_r41206_condition(self):
        logic = Morte2Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            lambda: logic.r41206_condition()
        )


    def test_r41207_condition(self):
        logic = Morte2Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            lambda: logic.r41207_condition()
        )


    def test_r41210_condition(self):
        logic = Morte2Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            lambda: logic.r41210_condition()
        )


    def test_r41211_condition(self):
        logic = Morte2Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            lambda: logic.r41211_condition()
        )


    def test_r41214_condition(self):
        logic = Morte2Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            lambda: logic.r41214_condition()
        )


    def test_r41215_condition(self):
        logic = Morte2Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            lambda: logic.r41215_condition()
        )


    def test_r41219_condition(self):
        logic = Morte2Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            lambda: logic.r41219_condition()
        )


    def test_r41220_condition(self):
        logic = Morte2Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            lambda: logic.r41220_condition()
        )


    def test_r41223_condition(self):
        logic = Morte2Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            lambda: logic.r41223_condition()
        )


    def test_r41224_condition(self):
        logic = Morte2Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            lambda: logic.r41224_condition()
        )


    def test_r41227_condition(self):
        logic = Morte2Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            lambda: logic.r41227_condition()
        )


    def test_r41228_condition(self):
        logic = Morte2Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            lambda: logic.r41228_condition()
        )


    def test_r41231_condition(self):
        logic = Morte2Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            lambda: logic.r41231_condition()
        )


    def test_r41232_condition(self):
        logic = Morte2Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_mortuary_walkthrough_1(x),
            lambda: logic.r41232_condition()
        )


    def test_r41239_condition(self):
        logic = Morte2Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r41239_condition()
        )


if __name__ == '__main__':
    unittest.main()
