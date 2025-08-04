import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortualy_zombies.zm506_logic import Zm506Logic


class Zm506LogicTest(LogicTest):
    def setUp(self):
        super(Zm506LogicTest, self).setUp()
        self.logic = Zm506Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zm506Logic
        self._methods_are_bound()


    def test_zm506_init(self):
        self._init_with_location(
            'mortuary_f2r5',
            self.logic.zm506_init,
            self.settings_manager.get_talked_to_zm506_times
        )


    def test_kill_zm506(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zm506())
        exp_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.kill_zm506()

        self.assertTrue(self.settings_manager.get_dead_zm506())
        exp_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(exp_before + delta, exp_after)


    def test_r45480_action(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 100

        self.assertFalse(self.settings_manager.get_has_506_thread())
        self.assertFalse(self.settings_manager.get_has_needle())
        exp_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r45480_action()

        self.assertTrue(self.settings_manager.get_has_506_thread())
        self.assertTrue(self.settings_manager.get_has_needle())
        exp_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(exp_before + delta, exp_after)


    def test_r45484_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        law_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r45484_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_before + delta, law_after)

        self.logic.r45484_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after_once = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_after + delta, law_after_once)


    def test_r45502_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        law_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r45502_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_before + delta, law_after)

        self.logic.r45502_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after_once = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_after + delta, law_after_once)


    def test_know_506_secret(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_506_thread(x),
            self.logic.know_506_secret
        )


    def test_r45420_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_has_506_thread(x),
            self.logic.r45420_condition
        )


    def test_r45421_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r45421_condition
        )


    def test_r45422_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r45422_condition
        )


    def test_r45480_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_scalpel(x),
            self.logic.r45480_condition
        )


    def test_r45481_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_has_scalpel(x),
            self.logic.r45481_condition
        )


    def test_r45484_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r45484_condition
        )


    def test_r45496_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r45496_condition
        )


    def test_r45502_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r45502_condition
        )


    def test_r45508_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r45508_condition
        )


    def test_r45510_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r45510_condition
        )


    def test_r45512_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r45512_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
