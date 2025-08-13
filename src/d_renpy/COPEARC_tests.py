import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.copearc_logic import CopearcLogic


class CopearcLogicTest(LogicTest):
    def setUp(self):
        super(CopearcLogicTest, self).setUp()
        self.logic = CopearcLogic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = CopearcLogic
        self._methods_are_bound()


    def test_copearc_init(self):
        location = 'LOCATION'
        talked_to_copearc_times_before = 0
        talked_to_copearc_times_after = 1
        talked_to_copearc_times_after_once = 2 * 1

        self.assertNotEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_copearc_times(), talked_to_copearc_times_before)

        self.logic.copearc_init()

        self.assertEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_copearc_times(), talked_to_copearc_times_after)

        self.logic.copearc_init()

        self.assertEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_copearc_times(), talked_to_copearc_times_after_once)


    def test_kill_copearc(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_copearc,
            self.logic.kill_copearc
        )


    def test_r46725_action(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r46725_action
        )


    def test_r46728_action(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r46728_action
        )


    def test_r46733_action(self):
        self.assertTrue(self.settings_manager.get_has_copper_earring_closed())
        self.assertFalse(self.settings_manager.get_has_copper_earring_opened())

        self.logic.r46733_action()

        self.assertFalse(self.settings_manager.get_has_copper_earring_closed())
        self.assertTrue(self.settings_manager.get_has_copper_earring_opened())

        self.logic.r46733_action()

        self.assertFalse(self.settings_manager.get_has_copper_earring_closed())
        self.assertTrue(self.settings_manager.get_has_copper_earring_opened())


    def test_r46725_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_copper_earring_secret(x),
            self.logic.r46725_condition
        )


    def test_r46728_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_copper_earring_secret(x),
            self.logic.r46728_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
