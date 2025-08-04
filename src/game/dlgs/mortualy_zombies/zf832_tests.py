import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortualy_zombies.zf832_logic import Zf832Logic


class Zf832LogicTest(LogicTest):
    def setUp(self):
        super(Zf832LogicTest, self).setUp()
        self.logic = Zf832Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zf832Logic
        self._methods_are_bound()


    def test_zf832_init(self):
        self._init_with_location(
            'mortuary_f3r8',
            self.logic.zf832_init,
            self.settings_manager.get_talked_to_zf832_times
        )


    def test_kill_zf832(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zf832())
        exp_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.kill_zf832()

        self.assertTrue(self.settings_manager.get_dead_zf832())
        exp_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(exp_before + delta, exp_after)


    def test_r35147_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        law_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r35147_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_before + delta, law_after)

        self.logic.r35147_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after_once = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_after + delta, law_after_once)


    def test_r35147_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r35147_condition
        )


    def test_r35164_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r35164_condition
        )


    def test_r35165_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r35165_condition
        )


    def test_r35166_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r35166_condition
        )


    def test_r35171_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r35171_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r35171_condition())


    def test_r35172_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r35172_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r35172_condition())


    def test_r35173_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35173_condition
        )


    def test_r35174_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35174_condition
        )


    def test_r35175_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r35175_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r35175_condition())


    def test_r35176_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r35176_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r35176_condition())


    def test_r35149_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r35149_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r35149_condition())


    def test_r35162_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35162_condition
        )


    def test_r35163_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r35163_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r35163_condition())


    def test_r35168_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r35168_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r35168_condition())


    def test_r35169_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35169_condition
        )


    def test_r35170_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r35170_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r35170_condition())


if __name__ == '__main__':
    unittest.main() # pragma: no cover
