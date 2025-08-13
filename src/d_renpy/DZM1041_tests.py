import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.zm1041_logic import Zm1041Logic


class Zm1041LogicTest(LogicTest):
    def setUp(self):
        super(Zm1041LogicTest, self).setUp()
        self.logic = Zm1041Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zm1041Logic
        self._methods_are_bound()


    def test_zm1041_init(self):
        location = 'LOCATION'
        talked_to_zm1041_times_before = 0
        talked_to_zm1041_times_after = 1
        talked_to_zm1041_times_after_once = 2 * 1

        self.assertNotEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_zm1041_times(), talked_to_zm1041_times_before)

        self.logic.zm1041_init()

        self.assertEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_zm1041_times(), talked_to_zm1041_times_after)

        self.logic.zm1041_init()

        self.assertEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_zm1041_times(), talked_to_zm1041_times_after_once)


    def test_kill_zm1041(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zm1041,
            self.logic.kill_zm1041
        )


    def test_r6576_action(self):
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = -1

        law_before = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertFalse(self.settings_manager.get_zombie_chaotic())

        self.logic.r6576_action()

        law_after = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.settings_manager.get_zombie_chaotic())

        self.logic.r6576_action()

        law_after_once = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.settings_manager.get_zombie_chaotic())


    def test_r6583_action(self):
        self._integer_equals_action(
            self.settings_manager.get_bei_value,
            1,
            self.logic.r6583_action
        )


    def test_r9096_action(self):
        self._integer_equals_action(
            self.settings_manager.get_bei_value,
            1,
            self.logic.r9096_action
        )


    def test_r9097_action(self):
        self._integer_equals_action(
            self.settings_manager.get_bei_value,
            1,
            self.logic.r9097_action
        )


    def test_r9161_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = 1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r9161_action
        )


    def test_r9162_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r9162_action
        )


    def test_r9200_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = 1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r9200_action
        )


    def test_r9201_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r9201_action
        )


    def test_r9207_action(self):
        who_good = 'protagonist'
        prop_good = 'good'
        delta_good = 1

        good_before = self.settings_manager.character_manager.get_property(who_good, prop_good)
        self.assertFalse(self.settings_manager.get_know_xixi())

        self.logic.r9207_action()

        good_after = self.settings_manager.character_manager.get_property(who_good, prop_good)
        self.assertEqual(good_before + delta_good, good_after)
        self.assertTrue(self.settings_manager.get_know_xixi())

        self.logic.r9207_action()

        good_after_once = self.settings_manager.character_manager.get_property(who_good, prop_good)
        self.assertEqual(good_after, good_after_once)
        self.assertTrue(self.settings_manager.get_know_xixi())


    def test_r9208_action(self):
        who_good = 'protagonist'
        prop_good = 'good'
        delta_good = -1
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = -1

        good_before = self.settings_manager.character_manager.get_property(who_good, prop_good)
        law_before = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertFalse(self.settings_manager.get_know_xixi())

        self.logic.r9208_action()

        good_after = self.settings_manager.character_manager.get_property(who_good, prop_good)
        self.assertEqual(good_before + delta_good, good_after)
        law_after = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.settings_manager.get_know_xixi())

        self.logic.r9208_action()

        good_after_once = self.settings_manager.character_manager.get_property(who_good, prop_good)
        self.assertEqual(good_after, good_after_once)
        law_after_once = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after, law_after_once)
        self.assertTrue(self.settings_manager.get_know_xixi())


    def test_r9209_action(self):
        self._false_then_true_action(
            self.settings_manager.get_know_xixi,
            self.logic.r9209_action
        )


    def test_r9210_action(self):
        self._false_then_true_action(
            self.settings_manager.get_know_xixi,
            self.logic.r9210_action
        )


    def test_r6576_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r6576_condition
        )


    def test_r6577_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r6577_condition
        )


    def test_r6578_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r6578_condition
        )


    def test_r6579_condition(self):
        self.settings_manager.set_can_speak_with_dead(False)
        self.settings_manager.set_bei_value(1)
        self.assertFalse(self.logic.r6579_condition())

        self.settings_manager.set_can_speak_with_dead(True)
        self.settings_manager.set_bei_value(0)
        self.assertTrue(self.logic.r6579_condition())


    def test_r6580_condition(self):
        self.settings_manager.set_can_speak_with_dead(False)
        self.settings_manager.set_bei_value(0)
        self.assertFalse(self.logic.r6580_condition())

        self.settings_manager.set_can_speak_with_dead(True)
        self.settings_manager.set_bei_value(1)
        self.assertTrue(self.logic.r6580_condition())


    def test_r9109_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_pharod_value(x),
            0,
            self.logic.r9109_condition
        )


    def test_r9145_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_pharod_value(x),
            0,
            self.logic.r9145_condition
        )


    def test_r9187_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 13

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r9187_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
