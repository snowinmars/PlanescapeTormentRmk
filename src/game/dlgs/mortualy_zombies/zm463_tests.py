import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortualy_zombies.zm463_logic import Zm463Logic


class Zm463LogicTest(LogicTest):
    def setUp(self):
        super(Zm463LogicTest, self).setUp()
        self.logic = Zm463Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zm463Logic
        self._methods_are_bound()


    @unittest.skip('This zomlie is not located anywhere')
    def test_zm463_init(self):
        self._init_with_location( # pragma: no cover
            'DISABLED', # pragma: no cover
            self.logic.zm463_init, # pragma: no cover
            self.settings_manager.get_talked_to_zm463_times # pragma: no cover
        ) # pragma: no cover


    def test_kill_zm463(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zm463())
        exp_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.kill_zm463()

        self.assertTrue(self.settings_manager.get_dead_zm463())
        exp_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(exp_before + delta, exp_after)


    def test_r6485_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        law_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r6485_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_before + delta, law_after)

        self.logic.r6485_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after_once = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_after + delta, law_after_once)


    def test_r6485_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r6485_condition
        )


    def test_r6488_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r6488_condition
        )


    def test_r6489_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r6489_condition
        )


    def test_r6490_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r6490_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
