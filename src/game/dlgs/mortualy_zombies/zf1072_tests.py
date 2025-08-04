import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortualy_zombies.zf1072_logic import Zf1072Logic


class Zf1072LogicTest(LogicTest):
    def setUp(self):
        super(Zf1072LogicTest, self).setUp()
        self.logic = Zf1072Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zf1072Logic
        self._methods_are_bound()


    def test_zf1072_init(self):
        self._init_with_location(
            'mortuary_f2r3',
            self.logic.zf1072_init,
            self.settings_manager.get_talked_to_zf1072_times
        )


    def test_kill_zf1072(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zf1072())
        exp_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.kill_zf1072()

        self.assertTrue(self.settings_manager.get_dead_zf1072())
        exp_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(exp_before + delta, exp_after)


    def test_r35115_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        law_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r35115_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_before + delta, law_after)

        self.logic.r35115_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after_once = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_after + delta, law_after_once)


    def test_r35115_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r35115_condition
        )


    def test_r35132_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r35132_condition
        )


    def test_r35133_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r35133_condition
        )


    def test_r35134_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r35134_condition
        )


    def test_r35139_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r35139_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r35139_condition())


    def test_r35140_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r35140_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r35140_condition())


    def test_r35141_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35141_condition
        )


    def test_r35142_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35142_condition
        )


    def test_r35143_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r35143_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r35143_condition())


    def test_r35144_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r35144_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r35144_condition())


    def test_r35117_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r35117_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r35117_condition())


    def test_r35130_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35130_condition
        )


    def test_r35131_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r35131_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r35131_condition())


    def test_r35136_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r35136_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r35136_condition())


    def test_r35137_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35137_condition
        )


    def test_r35138_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r35138_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r35138_condition())


if __name__ == '__main__':
    unittest.main() # pragma: no cover
