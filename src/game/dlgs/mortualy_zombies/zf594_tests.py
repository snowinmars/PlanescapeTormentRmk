import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortualy_zombies.zf594_logic import Zf594Logic


class Zf594LogicTest(LogicTest):
    def setUp(self):
        super(Zf594LogicTest, self).setUp()
        self.logic = Zf594Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zf594Logic
        self._methods_are_bound()


    def test_zf594_init(self):
        self._init_with_location(
            'mortuary_f2r2',
            self.logic.zf594_init,
            self.settings_manager.get_talked_to_zf594_times
        )


    def test_kill_zf594(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zf594())
        exp_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.kill_zf594()

        self.assertTrue(self.settings_manager.get_dead_zf594())
        exp_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(exp_before + delta, exp_after)


    def test_r35019_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        law_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r35019_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_before + delta, law_after)

        self.logic.r35019_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after_once = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_after + delta, law_after_once)


    def test_r35019_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r35019_condition
        )


    def test_r35036_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r35036_condition
        )


    def test_r35037_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r35037_condition
        )


    def test_r35038_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r35038_condition
        )


    def test_r35043_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r35043_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r35043_condition())


    def test_r35044_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r35044_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r35044_condition())


    def test_r35045_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35045_condition
        )


    def test_r35046_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35046_condition
        )


    def test_r35047_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r35047_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r35047_condition())


    def test_r35048_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r35048_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r35048_condition())


    def test_r35021_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r35021_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r35021_condition())


    def test_r35034_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35034_condition
        )


    def test_r35035_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r35035_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r35035_condition())


    def test_r35040_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r35040_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r35040_condition())


    def test_r35041_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35041_condition
        )


    def test_r35042_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r35042_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r35042_condition())


if __name__ == '__main__':
    unittest.main() # pragma: no cover
