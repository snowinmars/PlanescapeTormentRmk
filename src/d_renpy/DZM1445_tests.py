import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.zm1445_logic import Zm1445Logic


class Zm1445LogicTest(LogicTest):
    def setUp(self):
        super(Zm1445LogicTest, self).setUp()
        self.logic = Zm1445Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zm1445Logic
        self._methods_are_bound()


    def test_zm1445_init(self):
        location = 'LOCATION'
        talked_to_zm1445_times_before = 0
        talked_to_zm1445_times_after = 1
        talked_to_zm1445_times_after_once = 2 * 1

        self.assertNotEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_zm1445_times(), talked_to_zm1445_times_before)

        self.logic.zm1445_init()

        self.assertEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_zm1445_times(), talked_to_zm1445_times_after)

        self.logic.zm1445_init()

        self.assertEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_zm1445_times(), talked_to_zm1445_times_after_once)


    def test_kill_zm1445(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zm1445,
            self.logic.kill_zm1445
        )


    def test_r46757_action(self):
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = -1

        law_before = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertFalse(self.settings_manager.get_zombie_chaotic())

        self.logic.r46757_action()

        law_after = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.settings_manager.get_zombie_chaotic())

        self.logic.r46757_action()

        law_after_once = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.settings_manager.get_zombie_chaotic())


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
