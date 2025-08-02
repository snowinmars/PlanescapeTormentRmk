import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.zm569_logic import Zm569Logic

class Zm569LogicTest(LogicTest):
    def test_initialization(self):
        logic = Zm569Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Zm569Logic
        self._methods_are_bound()


    def test_zm569_init(self):
        logic = Zm569Logic(self.settings_manager)
        id = 'mortuary_f2r1'

        self.assertNotEqual(self.settings_manager.glm.get_location(), id)
        self.assertFalse(self.settings_manager.get_meet_zm569())

        logic.zm569_init()

        self.assertEqual(self.settings_manager.glm.get_location(), id)
        self.assertTrue(self.settings_manager.get_meet_zm569(), True)


    def test_kill_zm569(self):
        logic = Zm569Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zm569())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.kill_zm569()

        self.assertTrue(self.settings_manager.get_dead_zm569())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_r24576_condition(self):
        logic = Zm569Logic(self.settings_manager)

        self.settings_manager.set_mortuary_walkthrough(True)
        self.settings_manager.set_has_intro_key(True)
        self.settings_manager.set_in_party_morte(False)
        self.assertFalse(logic.r24576_condition())

        self.settings_manager.set_mortuary_walkthrough(False)
        self.settings_manager.set_has_intro_key(False)
        self.settings_manager.set_in_party_morte(True)
        self.assertTrue(logic.r24576_condition())


    def test_r24579_condition(self):
        logic = Zm569Logic(self.settings_manager)

        self.settings_manager.set_mortuary_walkthrough(True)
        self.settings_manager.set_has_intro_key(True)
        self.settings_manager.set_in_party_morte(True)
        self.assertFalse(logic.r24579_condition())

        self.settings_manager.set_mortuary_walkthrough(False)
        self.settings_manager.set_has_intro_key(False)
        self.settings_manager.set_in_party_morte(False)
        self.assertTrue(logic.r24579_condition())


    def test_r24580_condition(self):
        logic = Zm569Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_mortuary_walkthrough(x),
            lambda: logic.r24580_condition()
        )


    def test_r24581_condition(self):
        logic = Zm569Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r24581_condition()
        )


    def test_r24584_condition(self):
        logic = Zm569Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r24584_condition()
        )


    def test_r24585_condition(self):
        logic = Zm569Logic(self.settings_manager)

        self.settings_manager.set_mortuary_walkthrough(True)
        self.settings_manager.set_has_intro_key(True)
        self.assertFalse(logic.r24585_condition())

        self.settings_manager.set_mortuary_walkthrough(False)
        self.settings_manager.set_has_intro_key(False)
        self.assertTrue(logic.r24585_condition())


    def test_r42294_condition(self):
        logic = Zm569Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r42294_condition()
        )


    def test_r42295_condition(self):
        logic = Zm569Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r42295_condition()
        )


if __name__ == '__main__':
    unittest.main()
