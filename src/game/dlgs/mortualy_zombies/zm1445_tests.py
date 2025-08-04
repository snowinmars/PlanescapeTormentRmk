import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortualy_zombies.zm1445_logic import Zm1445Logic


class Zm1445LogicTest(LogicTest):
    def setUp(self):
        super(Zm1445LogicTest, self).setUp()
        self.logic = Zm1445Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zm1445Logic
        self._methods_are_bound()


    @unittest.skip('This zomlie is not located anywhere')
    def test_zm1445_init(self):
        self._init_with_location( # pragma: no cover
            'DISABLED', # pragma: no cover
            self.logic.zm1445_init, # pragma: no cover
            self.settings_manager.get_talked_to_zm1445_times # pragma: no cover
        ) # pragma: no cover


    def test_kill_zm1445(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zm1445())
        exp_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.kill_zm1445()

        self.assertTrue(self.settings_manager.get_dead_zm1445())
        exp_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(exp_before + delta, exp_after)


    def test_r46757_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        law_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r46757_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_before + delta, law_after)

        self.logic.r46757_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after_once = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_after + delta, law_after_once)


    def test_r46757_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r46757_condition
        )


    def test_r46760_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r46760_condition
        )


    def test_r46761_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r46761_condition
        )


    def test_r46762_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r46762_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
