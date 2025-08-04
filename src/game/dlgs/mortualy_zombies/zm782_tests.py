import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortualy_zombies.zm782_logic import Zm782Logic


class Zm782LogicTest(LogicTest):
    def setUp(self):
        super(Zm782LogicTest, self).setUp()
        self.logic = Zm782Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zm782Logic
        self._methods_are_bound()


    def test_zm782_init(self):
        self._init_with_location(
            'mortuary_f2r1',
            self.logic.zm782_init,
            self.settings_manager.get_talked_to_zm782_times
        )


    def test_kill_zm782(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zm782())
        exp_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.kill_zm782()

        self.assertTrue(self.settings_manager.get_dead_zm782())
        exp_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(exp_before + delta, exp_after)


    def test_pick_key_up(self):
        self._false_then_true_action(
            self.settings_manager.get_has_intro_key,
            self.logic.pick_key_up
        )


    def test_has_key_has_morte(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_intro_key(False)
        self.assertFalse(self.logic.has_key_has_morte())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_intro_key(True)
        self.assertTrue(self.logic.has_key_has_morte())


    def test_no_key_has_morte(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_intro_key(True)
        self.assertFalse(self.logic.no_key_has_morte())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_intro_key(False)
        self.assertTrue(self.logic.no_key_has_morte())


    def test_has_key_no_morte(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_intro_key(False)
        self.assertFalse(self.logic.has_key_no_morte())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_intro_key(True)
        self.assertTrue(self.logic.has_key_no_morte())


    def test_no_key_no_morte(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_intro_key(True)
        self.assertFalse(self.logic.no_key_no_morte())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_intro_key(False)
        self.assertTrue(self.logic.no_key_no_morte())


    def test_r24709_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_intro_key(True)
        self.assertFalse(self.logic.r24709_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_intro_key(False)
        self.assertTrue(self.logic.r24709_condition())


    def test_r24712_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_intro_key(True)
        self.assertFalse(self.logic.r24712_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_intro_key(False)
        self.assertTrue(self.logic.r24712_condition())


    def test_r24713_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_has_intro_key(x),
            self.logic.r24713_condition
        )


    def test_r24714_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_intro_key(x),
            self.logic.r24714_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
