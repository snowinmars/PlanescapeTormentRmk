import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortualy_zombies.zm1146_logic import Zm1146Logic


class Zm1146LogicTest(LogicTest):
    def setUp(self):
        super(Zm1146LogicTest, self).setUp()
        self.logic = Zm1146Logic(self.settings_manager)


    def test_r6521_action(self):
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = -1
        self.settings_manager.set_zombie_chaotic(False)

        law_before = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertFalse(self.settings_manager.get_zombie_chaotic())

        self.logic.r6521_action()

        law_after = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.settings_manager.get_zombie_chaotic())

        self.logic.r6521_action()

        law_after_once = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.settings_manager.get_zombie_chaotic())


    def test_r6524_action(self):
        self._integer_equals_action(
            self.settings_manager.get_crispy_value,
            1,
            self.logic.r6524_action
        )


    def test_r9415_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = 1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r9415_action
        )


    def test_r9426_action(self):
        who_good = 'protagonist'
        prop_good = 'good'
        delta_good = -1
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = -1

        good_before = self.settings_manager.character_manager.get_property(who_good, prop_good)
        law_before = self.settings_manager.character_manager.get_property(who_law, prop_law)

        self.logic.r9426_action()

        good_after = self.settings_manager.character_manager.get_property(who_good, prop_good)
        self.assertEqual(good_before + delta_good, good_after)
        law_after = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)

        self.logic.r9426_action()

        good_after_once = self.settings_manager.character_manager.get_property(who_good, prop_good)
        self.assertEqual(good_after, good_after_once)
        law_after_once = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after, law_after_once)


    def test_r6521_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r6521_condition
        )


    def test_r6522_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r6522_condition
        )


    def test_r6523_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r6523_condition
        )


    def test_r6524_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r6524_condition
        )


    def test_r9434_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_pharod_value(x),
            0,
            self.logic.r9434_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
