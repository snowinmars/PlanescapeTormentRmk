import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.n1201_logic import N1201Logic


class N1201LogicTest(LogicTest):
    def setUp(self):
        super(N1201LogicTest, self).setUp()
        self.logic = N1201Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = N1201Logic
        self._methods_are_bound()


    def test_n1201_init(self):
        location = 'LOCATION'
        talked_to_n1201_times_before = 0
        talked_to_n1201_times_after = 1
        talked_to_n1201_times_after_once = 2 * 1

        self.assertNotEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_n1201_times(), talked_to_n1201_times_before)

        self.logic.n1201_init()

        self.assertEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_n1201_times(), talked_to_n1201_times_after)

        self.logic.n1201_init()

        self.assertEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_n1201_times(), talked_to_n1201_times_after_once)


    def test_kill_n1201(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_n1201,
            self.logic.kill_n1201
        )


    def test_r44994_action(self):
        1201_note_quest_before = 0
        1201_note_quest_after = 1
        1201_note_quest_after_once = 1

        self.assertFalse(self.settings_manager.get_ur_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 1201_note_quest_before)

        self.logic.r44994_action()

        self.assertTrue(self.settings_manager.get_ur_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 1201_note_quest_after)

        self.logic.r44994_action()

        self.assertTrue(self.settings_manager.get_ur_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 1201_note_quest_after_once)


    def test_r44995_action(self):
        self._false_then_true_action(
            self.settings_manager.get_lr_1201,
            self.logic.r44995_action
        )


    def test_r44996_action(self):
        self._false_then_true_action(
            self.settings_manager.get_ll_1201,
            self.logic.r44996_action
        )


    def test_r44997_action(self):
        self._false_then_true_action(
            self.settings_manager.get_ul_1201,
            self.logic.r44997_action
        )


    def test_r44998_action(self):
        1201_note_quest_before = 1
        1201_note_quest_after = 0
        1201_note_quest_after_once = 0

        self.assertTrue(self.settings_manager.get_ur_1201())
        self.assertTrue(self.settings_manager.get_lr_1201())
        self.assertTrue(self.settings_manager.get_ll_1201())
        self.assertTrue(self.settings_manager.get_ul_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 1201_note_quest_before)

        self.logic.r44998_action()

        self.assertFalse(self.settings_manager.get_ur_1201())
        self.assertFalse(self.settings_manager.get_lr_1201())
        self.assertFalse(self.settings_manager.get_ll_1201())
        self.assertFalse(self.settings_manager.get_ul_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 1201_note_quest_after)

        self.logic.r44998_action()

        self.assertFalse(self.settings_manager.get_ur_1201())
        self.assertFalse(self.settings_manager.get_lr_1201())
        self.assertFalse(self.settings_manager.get_ll_1201())
        self.assertFalse(self.settings_manager.get_ul_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 1201_note_quest_after_once)


    def test_r45000_action(self):
        self._false_then_true_action(
            self.settings_manager.get_ur_1201,
            self.logic.r45000_action
        )


    def test_r45001_action(self):
        1201_note_quest_before = 1
        1201_note_quest_after = 2
        1201_note_quest_after_once = 2

        self.assertEqual(self.settings_manager.get_1201_note_quest(), 1201_note_quest_before)
        self.assertFalse(self.settings_manager.get_lr_1201())

        self.logic.r45001_action()

        self.assertEqual(self.settings_manager.get_1201_note_quest(), 1201_note_quest_after)
        self.assertTrue(self.settings_manager.get_lr_1201())

        self.logic.r45001_action()

        self.assertEqual(self.settings_manager.get_1201_note_quest(), 1201_note_quest_after_once)
        self.assertTrue(self.settings_manager.get_lr_1201())


    def test_r45002_action(self):
        1201_note_quest_before = 1
        1201_note_quest_after = 0
        1201_note_quest_after_once = 0

        self.assertFalse(self.settings_manager.get_lr_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 1201_note_quest_before)

        self.logic.r45002_action()

        self.assertTrue(self.settings_manager.get_lr_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 1201_note_quest_after)

        self.logic.r45002_action()

        self.assertTrue(self.settings_manager.get_lr_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 1201_note_quest_after_once)


    def test_r45003_action(self):
        1201_note_quest_before = 1
        1201_note_quest_after = 0
        1201_note_quest_after_once = 0

        self.assertFalse(self.settings_manager.get_ll_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 1201_note_quest_before)

        self.logic.r45003_action()

        self.assertTrue(self.settings_manager.get_ll_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 1201_note_quest_after)

        self.logic.r45003_action()

        self.assertTrue(self.settings_manager.get_ll_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 1201_note_quest_after_once)


    def test_r45004_action(self):
        1201_note_quest_before = 1
        1201_note_quest_after = 0
        1201_note_quest_after_once = 0

        self.assertFalse(self.settings_manager.get_ul_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 1201_note_quest_before)

        self.logic.r45004_action()

        self.assertTrue(self.settings_manager.get_ul_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 1201_note_quest_after)

        self.logic.r45004_action()

        self.assertTrue(self.settings_manager.get_ul_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 1201_note_quest_after_once)


    def test_r45006_action(self):
        1201_note_quest_before = 1
        1201_note_quest_after = 0
        1201_note_quest_after_once = 0

        self.assertTrue(self.settings_manager.get_ur_1201())
        self.assertTrue(self.settings_manager.get_lr_1201())
        self.assertTrue(self.settings_manager.get_ll_1201())
        self.assertTrue(self.settings_manager.get_ul_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 1201_note_quest_before)

        self.logic.r45006_action()

        self.assertFalse(self.settings_manager.get_ur_1201())
        self.assertFalse(self.settings_manager.get_lr_1201())
        self.assertFalse(self.settings_manager.get_ll_1201())
        self.assertFalse(self.settings_manager.get_ul_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 1201_note_quest_after)

        self.logic.r45006_action()

        self.assertFalse(self.settings_manager.get_ur_1201())
        self.assertFalse(self.settings_manager.get_lr_1201())
        self.assertFalse(self.settings_manager.get_ll_1201())
        self.assertFalse(self.settings_manager.get_ul_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 1201_note_quest_after_once)


    def test_r45008_action(self):
        1201_note_quest_before = 1
        1201_note_quest_after = 0
        1201_note_quest_after_once = 0

        self.assertTrue(self.settings_manager.get_ur_1201())
        self.assertTrue(self.settings_manager.get_lr_1201())
        self.assertTrue(self.settings_manager.get_ll_1201())
        self.assertTrue(self.settings_manager.get_ul_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 1201_note_quest_before)

        self.logic.r45008_action()

        self.assertFalse(self.settings_manager.get_ur_1201())
        self.assertFalse(self.settings_manager.get_lr_1201())
        self.assertFalse(self.settings_manager.get_ll_1201())
        self.assertFalse(self.settings_manager.get_ul_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 1201_note_quest_after)

        self.logic.r45008_action()

        self.assertFalse(self.settings_manager.get_ur_1201())
        self.assertFalse(self.settings_manager.get_lr_1201())
        self.assertFalse(self.settings_manager.get_ll_1201())
        self.assertFalse(self.settings_manager.get_ul_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 1201_note_quest_after_once)


    def test_r45017_action(self):
        1201_note_quest_before = 1
        1201_note_quest_after = 0
        1201_note_quest_after_once = 0

        self.assertTrue(self.settings_manager.get_ur_1201())
        self.assertTrue(self.settings_manager.get_lr_1201())
        self.assertTrue(self.settings_manager.get_ll_1201())
        self.assertTrue(self.settings_manager.get_ul_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 1201_note_quest_before)

        self.logic.r45017_action()

        self.assertFalse(self.settings_manager.get_ur_1201())
        self.assertFalse(self.settings_manager.get_lr_1201())
        self.assertFalse(self.settings_manager.get_ll_1201())
        self.assertFalse(self.settings_manager.get_ul_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 1201_note_quest_after)

        self.logic.r45017_action()

        self.assertFalse(self.settings_manager.get_ur_1201())
        self.assertFalse(self.settings_manager.get_lr_1201())
        self.assertFalse(self.settings_manager.get_ll_1201())
        self.assertFalse(self.settings_manager.get_ul_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 1201_note_quest_after_once)


    def test_r45018_action(self):
        1201_note_quest_before = 1
        1201_note_quest_after = 0
        1201_note_quest_after_once = 0

        self.assertTrue(self.settings_manager.get_ur_1201())
        self.assertTrue(self.settings_manager.get_lr_1201())
        self.assertTrue(self.settings_manager.get_ll_1201())
        self.assertTrue(self.settings_manager.get_ul_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 1201_note_quest_before)

        self.logic.r45018_action()

        self.assertFalse(self.settings_manager.get_ur_1201())
        self.assertFalse(self.settings_manager.get_lr_1201())
        self.assertFalse(self.settings_manager.get_ll_1201())
        self.assertFalse(self.settings_manager.get_ul_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 1201_note_quest_after)

        self.logic.r45018_action()

        self.assertFalse(self.settings_manager.get_ur_1201())
        self.assertFalse(self.settings_manager.get_lr_1201())
        self.assertFalse(self.settings_manager.get_ll_1201())
        self.assertFalse(self.settings_manager.get_ul_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 1201_note_quest_after_once)


    def test_r45023_action(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r45023_action
        )


    def test_r45025_action(self):
        self.assertFalse(self.settings_manager.get_has_tearring())
        self.assertTrue(self.settings_manager.get_has_1201_note())

        self.logic.r45025_action()

        self.assertTrue(self.settings_manager.get_has_tearring())
        self.assertFalse(self.settings_manager.get_has_1201_note())

        self.logic.r45025_action()

        self.assertTrue(self.settings_manager.get_has_tearring())
        self.assertFalse(self.settings_manager.get_has_1201_note())


    def test_r45000_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_ur_1201(x),
            self.logic.r45000_condition
        )


    def test_r45001_condition(self):
        self.settings_manager.set_lr_1201(True)
        self.settings_manager.set_1201_note_quest(0)
        self.assertFalse(self.logic.r45001_condition())

        self.settings_manager.set_lr_1201(False)
        self.settings_manager.set_1201_note_quest(1)
        self.assertTrue(self.logic.r45001_condition())


    def test_r45002_condition(self):
        self.settings_manager.set_lr_1201(True)
        self.settings_manager.set_1201_note_quest(1)
        self.assertFalse(self.logic.r45002_condition())

        self.settings_manager.set_lr_1201(False)
        self.settings_manager.set_1201_note_quest(0)
        self.assertTrue(self.logic.r45002_condition())


    def test_r45003_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_ll_1201(x),
            self.logic.r45003_condition
        )


    def test_r45004_condition(self):
        self.settings_manager.set_ul_1201(True)
        self.settings_manager.set_1201_note_quest(2)
        self.assertFalse(self.logic.r45004_condition())

        self.settings_manager.set_ul_1201(False)
        self.settings_manager.set_1201_note_quest(0)
        self.assertTrue(self.logic.r45004_condition())


    def test_r45005_condition(self):
        self.settings_manager.set_ul_1201(True)
        self.settings_manager.set_1201_note_quest(0)
        self.assertFalse(self.logic.r45005_condition())

        self.settings_manager.set_ul_1201(False)
        self.settings_manager.set_1201_note_quest(2)
        self.assertTrue(self.logic.r45005_condition())


if __name__ == '__main__':
    unittest.main() # pragma: no cover
