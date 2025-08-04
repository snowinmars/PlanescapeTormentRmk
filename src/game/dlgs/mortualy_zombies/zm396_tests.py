import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortualy_zombies.zm396_logic import Zm396Logic


class Zm396LogicTest(LogicTest):
    def setUp(self):
        super(Zm396LogicTest, self).setUp()
        self.logic = Zm396Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zm396Logic
        self._methods_are_bound()


    def test_zm396_init(self):
        self._init_with_location(
            'mortuary_f2r3',
            self.logic.zm396_init,
            self.settings_manager.get_talked_to_zm396_times
        )


    def test_kill_zm396(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zm396())
        exp_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.kill_zm396()

        self.assertTrue(self.settings_manager.get_dead_zm396())
        exp_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(exp_before + delta, exp_after)


    def test_r34932_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        law_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r34932_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_before + delta, law_after)

        self.logic.r34932_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after_once = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_after + delta, law_after_once)

    def test_r34936_action(self):

        self.assertFalse(self.settings_manager.get_has_bandages_zm396())
        self.assertFalse(self.settings_manager.get_has_bandages())

        self.logic.r34936_action()

        self.assertTrue(self.settings_manager.get_has_bandages_zm396())
        self.assertTrue(self.settings_manager.get_has_bandages())


    def test_r34934_action(self):
        self.assertFalse(self.settings_manager.get_has_bandages_zm396())
        self.assertFalse(self.settings_manager.get_has_bandages())

        self.logic.r34934_action()

        self.assertTrue(self.settings_manager.get_has_bandages_zm396())
        self.assertTrue(self.settings_manager.get_has_bandages())


    def test_r45112_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        law_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r45112_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_before + delta, law_after)

        self.logic.r45112_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after_once = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_after + delta, law_after_once)


    def test_get_took_zm396_bandages(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_bandages_zm396(x),
            self.logic.get_took_zm396_bandages
        )

    def test_r34936_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_has_bandages_zm396(x),
            self.logic.r34936_condition
        )


    def test_r34932_condition(self):
        self.settings_manager.set_has_bandages_zm396(True)
        self.settings_manager.set_zombie_chaotic(True)
        self.assertFalse(self.logic.r34932_condition())

        self.settings_manager.set_has_bandages_zm396(False)
        self.settings_manager.set_zombie_chaotic(False)
        self.assertTrue(self.logic.r34932_condition())


    def test_r34935_condition(self):
        self.settings_manager.set_has_bandages_zm396(True)
        self.settings_manager.set_zombie_chaotic(False)
        self.assertFalse(self.logic.r34935_condition())

        self.settings_manager.set_has_bandages_zm396(False)
        self.settings_manager.set_zombie_chaotic(True)
        self.assertTrue(self.logic.r34935_condition())


    def test_r34937_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r34937_condition
        )


    def test_r34940_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r34940_condition
        )


    def test_r34934_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_has_bandages_zm396(x),
            self.logic.r34934_condition
        )


    def test_r45112_condition(self):
        self.settings_manager.set_has_bandages_zm396(False)
        self.settings_manager.set_zombie_chaotic(True)
        self.assertFalse(self.logic.r45112_condition())

        self.settings_manager.set_has_bandages_zm396(True)
        self.settings_manager.set_zombie_chaotic(False)
        self.assertTrue(self.logic.r45112_condition())


    def test_r45113_condition(self):
        self.settings_manager.set_has_bandages_zm396(False)
        self.settings_manager.set_zombie_chaotic(False)
        self.assertFalse(self.logic.r45113_condition())

        self.settings_manager.set_has_bandages_zm396(True)
        self.settings_manager.set_zombie_chaotic(True)
        self.assertTrue(self.logic.r45113_condition())


    def test_r45114_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r45114_condition
        )


    def test_r45115_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r45115_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
