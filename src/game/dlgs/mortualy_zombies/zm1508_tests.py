import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortualy_zombies.zm1508_logic import Zm1508Logic


class Zm1508LogicTest(LogicTest):
    def setUp(self):
        super(Zm1508LogicTest, self).setUp()
        self.logic = Zm1508Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zm1508Logic
        self._methods_are_bound()


    @unittest.skip('This zomlie is not located anywhere')
    def test_zm1508_init(self):
        self._init_with_location( # pragma: no cover
            'DISABLED', # pragma: no cover
            self.logic.zm1508_init, # pragma: no cover
            self.settings_manager.get_talked_to_zm1508_times # pragma: no cover
        ) # pragma: no cover


    def test_kill_zm1664(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zm1508())
        exp_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.kill_zm1508()

        self.assertTrue(self.settings_manager.get_dead_zm1508())
        exp_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(exp_before + delta, exp_after)


    def test_r46746_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        law_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r46746_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_before + delta, law_after)

        self.logic.r46746_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after_once = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_after + delta, law_after_once)


    def test_r46746_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r46746_condition
        )


    def test_r46749_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r46749_condition
        )


    def test_r46750_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r46750_condition
        )


    def test_r46751_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r46751_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
