import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortualy_zombies.zm1201_logic import Zm1201Logic


class Zm1201LogicTest(LogicTest):
    def setUp(self):
        super(Zm1201LogicTest, self).setUp()
        self.logic = Zm1201Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zm1201Logic
        self._methods_are_bound()


    def test_zm1201_init(self):
        self._init_with_location(
            'mortuary_f2r3',
            self.logic.zm1201_init,
            self.settings_manager.get_talked_to_zm1201_times
        )


    def test_kill_zm1201(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zm1201())
        exp_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.kill_zm1201()

        self.assertTrue(self.settings_manager.get_dead_zm1201())
        exp_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(exp_before + delta, exp_after)


    def test_r34956_action(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self.assertFalse(self.settings_manager.get_1201_note_retrieved())
        self.assertFalse(self.settings_manager.get_has_1201_note())
        exp_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r34956_action()

        self.assertTrue(self.settings_manager.get_1201_note_retrieved())
        self.assertTrue(self.settings_manager.get_has_1201_note())
        exp_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(exp_before + delta, exp_after)


    def test_r45129_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        law_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r45129_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_before + delta, law_after)

        self.logic.r45129_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after_once = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_after + delta, law_after_once)


    def test_r34954_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_1201_note_retrieved(x),
            self.logic.r34954_condition
        )


    def test_r34957_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r34957_condition
        )


    def test_r34958_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r34958_condition
        )


    def test_r34956_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_scalpel(x),
            self.logic.r34956_condition
        )


    def test_r45122_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_has_scalpel(x),
            self.logic.r45122_condition
        )


    def test_r45129_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r45129_condition
        )


    def test_r45130_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r45130_condition
        )


    def test_r45131_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r45131_condition
        )


    def test_r45132_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r45132_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
