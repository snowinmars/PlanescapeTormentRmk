import unittest

from engine.tests import (LogicTest)
from dlgs.inventory.n1201_logic import N1201Logic

class N1201LogicTest(LogicTest):
    def test_initialization(self):
        logic = N1201Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = N1201Logic
        self._methods_are_bound()


    def test_r44994_action(self):
        logic = N1201Logic(self.settings_manager)

        self.assertFalse(self.settings_manager.get_ur_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 0)

        logic.r44994_action()

        self.assertTrue(self.settings_manager.get_ur_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 1)


    def test_r44995_action(self):
        logic = N1201Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_lr_1201(),
            lambda: logic.r44995_action()
        )


    def test_r44996_action(self):
        logic = N1201Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_ll_1201(),
            lambda: logic.r44996_action()
        )

    def test_r44997_action(self):
        logic = N1201Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_ul_1201(),
            lambda: logic.r44997_action()
        )


    def test_r44998_action(self):
        logic = N1201Logic(self.settings_manager)

        self.settings_manager.set_ur_1201(True)
        self.settings_manager.set_lr_1201(True)
        self.settings_manager.set_ll_1201(True)
        self.settings_manager.set_ul_1201(True)
        self.settings_manager.set_1201_note_quest(1)

        self.assertTrue(self.settings_manager.get_ur_1201())
        self.assertTrue(self.settings_manager.get_lr_1201())
        self.assertTrue(self.settings_manager.get_ll_1201())
        self.assertTrue(self.settings_manager.get_ul_1201())
        self.assertNotEqual(self.settings_manager.get_1201_note_quest(), 0)

        logic.r44998_action()

        self.assertFalse(self.settings_manager.get_ur_1201())
        self.assertFalse(self.settings_manager.get_lr_1201())
        self.assertFalse(self.settings_manager.get_ll_1201())
        self.assertFalse(self.settings_manager.get_ul_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 0)


    def test_r45000_action(self):
        logic = N1201Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_ur_1201(),
            lambda: logic.r45000_action()
        )


    def test_r45001_action(self):
        logic = N1201Logic(self.settings_manager)

        self.assertNotEqual(self.settings_manager.get_1201_note_quest(), 2)
        self.assertFalse(self.settings_manager.get_lr_1201())

        logic.r45001_action()

        self.assertEqual(self.settings_manager.get_1201_note_quest(), 2)
        self.assertTrue(self.settings_manager.get_lr_1201())


    def test_r45002_action(self):
        logic = N1201Logic(self.settings_manager)

        self.settings_manager.set_1201_note_quest(2)
        self.assertNotEqual(self.settings_manager.get_1201_note_quest(), 0)
        self.assertFalse(self.settings_manager.get_lr_1201())

        logic.r45002_action()

        self.assertEqual(self.settings_manager.get_1201_note_quest(), 0)
        self.assertTrue(self.settings_manager.get_lr_1201())


    def test_r45003_action(self):
        logic = N1201Logic(self.settings_manager)

        self.settings_manager.set_1201_note_quest(2)
        self.assertNotEqual(self.settings_manager.get_1201_note_quest(), 0)
        self.assertFalse(self.settings_manager.get_ll_1201())

        logic.r45003_action()

        self.assertEqual(self.settings_manager.get_1201_note_quest(), 0)
        self.assertTrue(self.settings_manager.get_ll_1201())


    def test_r45004_action(self):
        logic = N1201Logic(self.settings_manager)

        self.settings_manager.set_1201_note_quest(2)
        self.assertNotEqual(self.settings_manager.get_1201_note_quest(), 0)
        self.assertFalse(self.settings_manager.get_ul_1201())

        logic.r45004_action()

        self.assertEqual(self.settings_manager.get_1201_note_quest(), 0)
        self.assertTrue(self.settings_manager.get_ul_1201())


    def test_r45006_action(self):
        logic = N1201Logic(self.settings_manager)

        self.settings_manager.set_ur_1201(True)
        self.settings_manager.set_lr_1201(True)
        self.settings_manager.set_ll_1201(True)
        self.settings_manager.set_ul_1201(True)
        self.settings_manager.set_1201_note_quest(1)

        self.assertTrue(self.settings_manager.get_ur_1201())
        self.assertTrue(self.settings_manager.get_lr_1201())
        self.assertTrue(self.settings_manager.get_ll_1201())
        self.assertTrue(self.settings_manager.get_ul_1201())
        self.assertNotEqual(self.settings_manager.get_1201_note_quest(), 0)

        logic.r45006_action()

        self.assertFalse(self.settings_manager.get_ur_1201())
        self.assertFalse(self.settings_manager.get_lr_1201())
        self.assertFalse(self.settings_manager.get_ll_1201())
        self.assertFalse(self.settings_manager.get_ul_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 0)


    def test_r45008_action(self):
        logic = N1201Logic(self.settings_manager)

        self.settings_manager.set_ur_1201(True)
        self.settings_manager.set_lr_1201(True)
        self.settings_manager.set_ll_1201(True)
        self.settings_manager.set_ul_1201(True)
        self.settings_manager.set_1201_note_quest(1)

        self.assertTrue(self.settings_manager.get_ur_1201())
        self.assertTrue(self.settings_manager.get_lr_1201())
        self.assertTrue(self.settings_manager.get_ll_1201())
        self.assertTrue(self.settings_manager.get_ul_1201())
        self.assertNotEqual(self.settings_manager.get_1201_note_quest(), 0)

        logic.r45008_action()

        self.assertFalse(self.settings_manager.get_ur_1201())
        self.assertFalse(self.settings_manager.get_lr_1201())
        self.assertFalse(self.settings_manager.get_ll_1201())
        self.assertFalse(self.settings_manager.get_ul_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 0)

    def test_r45017_action(self):
        logic = N1201Logic(self.settings_manager)

        self.settings_manager.set_ur_1201(True)
        self.settings_manager.set_lr_1201(True)
        self.settings_manager.set_ll_1201(True)
        self.settings_manager.set_ul_1201(True)
        self.settings_manager.set_1201_note_quest(1)

        self.assertTrue(self.settings_manager.get_ur_1201())
        self.assertTrue(self.settings_manager.get_lr_1201())
        self.assertTrue(self.settings_manager.get_ll_1201())
        self.assertTrue(self.settings_manager.get_ul_1201())
        self.assertNotEqual(self.settings_manager.get_1201_note_quest(), 0)

        logic.r45017_action()

        self.assertFalse(self.settings_manager.get_ur_1201())
        self.assertFalse(self.settings_manager.get_lr_1201())
        self.assertFalse(self.settings_manager.get_ll_1201())
        self.assertFalse(self.settings_manager.get_ul_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 0)


    def test_r45018_action(self):
        logic = N1201Logic(self.settings_manager)

        self.settings_manager.set_ur_1201(True)
        self.settings_manager.set_lr_1201(True)
        self.settings_manager.set_ll_1201(True)
        self.settings_manager.set_ul_1201(True)
        self.settings_manager.set_1201_note_quest(1)

        self.assertTrue(self.settings_manager.get_ur_1201())
        self.assertTrue(self.settings_manager.get_lr_1201())
        self.assertTrue(self.settings_manager.get_ll_1201())
        self.assertTrue(self.settings_manager.get_ul_1201())
        self.assertNotEqual(self.settings_manager.get_1201_note_quest(), 0)

        logic.r45018_action()

        self.assertFalse(self.settings_manager.get_ur_1201())
        self.assertFalse(self.settings_manager.get_lr_1201())
        self.assertFalse(self.settings_manager.get_ll_1201())
        self.assertFalse(self.settings_manager.get_ul_1201())
        self.assertEqual(self.settings_manager.get_1201_note_quest(), 0)


    def test_r45023_action(self):
        logic = N1201Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r45023_action()
        )


    def test_r45025_action(self):
        logic = N1201Logic(self.settings_manager)

        self.settings_manager.set_has_tearring(False)
        self.settings_manager.set_has_1201_note(True)

        self.assertFalse(self.settings_manager.get_has_tearring())
        self.assertTrue(self.settings_manager.get_has_1201_note())

        logic.r45025_action()

        self.assertTrue(self.settings_manager.get_has_tearring())
        self.assertFalse(self.settings_manager.get_has_1201_note())


    def test_r45000_condition(self):
        logic = N1201Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_ur_1201(x),
            lambda: logic.r45000_condition()
        )


    def test_r45001_condition(self):
        logic = N1201Logic(self.settings_manager)

        self.assertFalse(logic.r45001_condition())

        self.settings_manager.set_1201_note_quest(1)

        self.assertTrue(logic.r45001_condition())


    def test_r45002_condition(self):
        logic = N1201Logic(self.settings_manager)

        self.assertTrue(logic.r45002_condition())

        self.settings_manager.set_1201_note_quest(1)

        self.assertFalse(logic.r45002_condition())


    def test_r45003_condition(self):
        logic = N1201Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_ll_1201(x),
            lambda: logic.r45003_condition()
        )


    def test_r45004_condition(self):
        logic = N1201Logic(self.settings_manager)

        self.assertTrue(logic.r45004_condition())

        self.settings_manager.set_1201_note_quest(2)

        self.assertFalse(logic.r45004_condition())


    def test_r45005_condition(self):
        logic = N1201Logic(self.settings_manager)

        self.assertFalse(logic.r45005_condition())

        self.settings_manager.set_1201_note_quest(2)

        self.assertTrue(logic.r45005_condition())


if __name__ == '__main__':
    unittest.main()
