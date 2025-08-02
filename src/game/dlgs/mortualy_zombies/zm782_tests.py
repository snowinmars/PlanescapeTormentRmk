import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.zm782_logic import Zm782Logic

class Zm782LogicTest(LogicTest):
    def test_initialization(self):
        logic = Zm782Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Zm782Logic
        self._methods_are_bound()


    def test_zm782_init(self):
        logic = Zm782Logic(self.settings_manager)
        id = 'mortuary_f2r1'

        self.assertNotEqual(self.settings_manager.glm.get_location(), id)
        self.assertFalse(self.settings_manager.get_meet_zm782())

        logic.zm782_init()

        self.assertEqual(self.settings_manager.glm.get_location(), id)
        self.assertTrue(self.settings_manager.get_meet_zm782(), True)


    def test_kill_zm782(self):
        logic = Zm782Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zm782())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.kill_zm782()

        self.assertTrue(self.settings_manager.get_dead_zm782())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_pick_key_up(self):
        logic = Zm782Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_has_intro_key(),
            lambda: logic.pick_key_up()
        )


    def test_has_key_has_morte(self):
        logic = Zm782Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_intro_key(False)
        self.assertFalse(logic.has_key_has_morte())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_intro_key(True)
        self.assertTrue(logic.has_key_has_morte())


    def test_no_key_has_morte(self):
        logic = Zm782Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_intro_key(True)
        self.assertFalse(logic.no_key_has_morte())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_intro_key(False)
        self.assertTrue(logic.no_key_has_morte())


    def test_has_key_no_morte(self):
        logic = Zm782Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_intro_key(False)
        self.assertFalse(logic.has_key_no_morte())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_intro_key(True)
        self.assertTrue(logic.has_key_no_morte())


    def test_no_key_no_morte(self):
        logic = Zm782Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_intro_key(True)
        self.assertFalse(logic.no_key_no_morte())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_intro_key(False)
        self.assertTrue(logic.no_key_no_morte())


    def test_r24716_action(self):
        logic = Zm782Logic(self.settings_manager)
        logic.r24716_action()


    def test_r24709_condition(self):
        logic = Zm782Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_intro_key(True)
        self.assertFalse(logic.r24709_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_intro_key(False)
        self.assertTrue(logic.r24709_condition())


    def test_r24712_condition(self):
        logic = Zm782Logic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_has_intro_key(True)
        self.assertFalse(logic.r24712_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_has_intro_key(False)
        self.assertTrue(logic.r24712_condition())


    def test_r24713_condition(self):
        logic = Zm782Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_has_intro_key(x),
            lambda: logic.r24713_condition()
        )


    def test_r24714_condition(self):
        logic = Zm782Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_intro_key(x),
            lambda: logic.r24714_condition()
        )


if __name__ == '__main__':
    unittest.main()
