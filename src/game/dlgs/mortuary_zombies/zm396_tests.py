import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortuary_zombies.zm396_logic import (Zm396LogicGenerated, Zm396Logic)


class Zm396LogicTest(LogicTest):
    def setUp(self):
        super(Zm396LogicTest, self).setUp()
        self.logic = Zm396Logic(self.settings_manager)


class Zm396LogicGeneratedTest(LogicTest):
    def setUp(self):
        super(Zm396LogicGeneratedTest, self).setUp()
        self.logic = Zm396LogicGenerated(self.settings_manager)


    def test_r34932_action(self):
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = -1
        self.settings_manager.set_zombie_chaotic(False)

        law_before = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertFalse(self.settings_manager.get_zombie_chaotic())

        self.logic.r34932_action()

        law_after = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.settings_manager.get_zombie_chaotic())

        self.logic.r34932_action()

        law_after_once = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.settings_manager.get_zombie_chaotic())


    def test_r34936_action(self):
        self._false_then_true_action(
            self.settings_manager.get_has_bandages,
            self.logic.r34936_action
        )


    def test_r34934_action(self):
        self._false_then_true_action(
            self.settings_manager.get_has_bandages,
            self.logic.r34934_action
        )


    def test_r45112_action(self):
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = -1
        self.settings_manager.set_zombie_chaotic(False)

        law_before = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertFalse(self.settings_manager.get_zombie_chaotic())

        self.logic.r45112_action()

        law_after = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.settings_manager.get_zombie_chaotic())

        self.logic.r45112_action()

        law_after_once = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.settings_manager.get_zombie_chaotic())


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
