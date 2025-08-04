import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortualy_zombies.zm199_logic import Zm199Logic


class Zm199LogicTest(LogicTest):
    def setUp(self):
        super(Zm199LogicTest, self).setUp()
        self.logic = Zm199Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zm199Logic
        self._methods_are_bound()


    @unittest.skip('This zomlie is not located anywhere')
    def test_zm199_init(self):
        self._init_with_location( # pragma: no cover
            'DISABLED', # pragma: no cover
            self.logic.zm199_init, # pragma: no cover
            self.settings_manager.get_talked_to_zm199_times # pragma: no cover
        ) # pragma: no cover


    def test_kill_zm199(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zm199())
        exp_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.kill_zm199()

        self.assertTrue(self.settings_manager.get_dead_zm199())
        exp_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(exp_before + delta, exp_after)


    def test_r34976_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        law_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r34976_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_before + delta, law_after)

        self.logic.r34976_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after_once = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_after + delta, law_after_once)


    def test_r34976_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r34976_condition
        )


    def test_r34979_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r34979_condition
        )


    def test_r34980_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r34980_condition
        )


    def test_r34981_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r34981_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
