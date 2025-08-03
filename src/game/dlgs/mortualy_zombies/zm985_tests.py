import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.zm985_logic import Zm985Logic

class Zm985LogicTest(LogicTest):
    def test_initialization(self):
        logic = Zm985Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Zm985Logic
        self._methods_are_bound()


    def test_zm985_init(self):
        self._init_(
            'mortuary_f2r5',
            Zm985Logic(self.settings_manager).zm985_init,
            self.settings_manager.get_talked_to_zm985_times
        )


    def test_s3_action(self):
        logic = Zm985Logic(self.settings_manager)

        self.assertFalse(self.settings_manager.get_topple_985())
        self.assertFalse(self.settings_manager.get_dead_zm985())

        logic.s3_action()

        self.assertTrue(self.settings_manager.get_topple_985())
        self.assertTrue(self.settings_manager.get_dead_zm985())


    def test_s4_action(self):
        logic = Zm985Logic(self.settings_manager)
        logic.s4_action()


    def test_r45516_action(self):
        logic = Zm985Logic(self.settings_manager)
        who = 'protagonist'
        propLaw = 'law'
        propGood = 'good'
        delta = -1

        lawBefore = self.settings_manager.gcm.get_character_property(who, propLaw)
        goodBefore = self.settings_manager.gcm.get_character_property(who, propGood)

        logic.r45516_action()

        lawAfter = self.settings_manager.gcm.get_character_property(who, propLaw)
        goodAfter = self.settings_manager.gcm.get_character_property(who, propGood)
        self.assertEqual(lawBefore + delta, lawAfter)
        self.assertEqual(goodBefore + delta, goodAfter)

        logic.r45516_action()

        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, propLaw)
        goodAfterOnce = self.settings_manager.gcm.get_character_property(who, propGood)
        self.assertEqual(lawAfter, lawAfterOnce)
        self.assertEqual(goodAfter, goodAfterOnce)


    def test_r45517_action(self):
        logic = Zm985Logic(self.settings_manager)
        who = 'protagonist'
        propLaw = 'law'
        propGood = 'good'
        delta = -1

        lawBefore = self.settings_manager.gcm.get_character_property(who, propLaw)
        goodBefore = self.settings_manager.gcm.get_character_property(who, propGood)

        logic.r45517_action()

        lawAfter = self.settings_manager.gcm.get_character_property(who, propLaw)
        goodAfter = self.settings_manager.gcm.get_character_property(who, propGood)
        self.assertEqual(lawBefore + delta, lawAfter)
        self.assertEqual(goodBefore + delta, goodAfter)

        logic.r45517_action()

        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, propLaw)
        goodAfterOnce = self.settings_manager.gcm.get_character_property(who, propGood)
        self.assertEqual(lawAfter, lawAfterOnce)
        self.assertEqual(goodAfter, goodAfterOnce)


    def test_r45518_action(self):
        logic = Zm985Logic(self.settings_manager)
        who = 'protagonist'
        propLaw = 'law'
        propGood = 'good'
        delta = 1

        lawBefore = self.settings_manager.gcm.get_character_property(who, propLaw)
        goodBefore = self.settings_manager.gcm.get_character_property(who, propGood)

        logic.r45518_action()

        lawAfter = self.settings_manager.gcm.get_character_property(who, propLaw)
        goodAfter = self.settings_manager.gcm.get_character_property(who, propGood)
        self.assertEqual(lawBefore + delta, lawAfter)
        self.assertEqual(goodBefore + delta, goodAfter)

        logic.r45518_action()

        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, propLaw)
        goodAfterOnce = self.settings_manager.gcm.get_character_property(who, propGood)
        self.assertEqual(lawAfter, lawAfterOnce)
        self.assertEqual(goodAfter, goodAfterOnce)


    def test_r45519_action(self):
        logic = Zm985Logic(self.settings_manager)
        who = 'protagonist'
        propLaw = 'law'
        propGood = 'good'
        delta = 1

        lawBefore = self.settings_manager.gcm.get_character_property(who, propLaw)
        goodBefore = self.settings_manager.gcm.get_character_property(who, propGood)

        logic.r45519_action()

        lawAfter = self.settings_manager.gcm.get_character_property(who, propLaw)
        goodAfter = self.settings_manager.gcm.get_character_property(who, propGood)
        self.assertEqual(lawBefore + delta, lawAfter)
        self.assertEqual(goodBefore + delta, goodAfter)

        logic.r45519_action()

        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, propLaw)
        goodAfterOnce = self.settings_manager.gcm.get_character_property(who, propGood)
        self.assertEqual(lawAfter, lawAfterOnce)
        self.assertEqual(goodAfter, goodAfterOnce)


    def test_r45532_action(self):
        logic = Zm985Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertFalse(self.settings_manager.get_zombie_chaotic())

        logic.r45532_action()

        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)
        self.assertTrue(self.settings_manager.get_zombie_chaotic())

        logic.r45532_action()

        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)
        self.assertTrue(self.settings_manager.get_zombie_chaotic())


    def test_r45539_action(self):
        logic = Zm985Logic(self.settings_manager)
        logic.r45539_action()


    def test_r45516_condition(self):
        logic = Zm985Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r45516_condition()
        )


    def test_r45517_condition(self):
        logic = Zm985Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r45517_condition()
        )


    def test_r45518_condition(self):
        logic = Zm985Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r45518_condition()
        )


    def test_r45519_condition(self):
        logic = Zm985Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r45519_condition()
        )


    def test_r45520_condition(self):
        logic = Zm985Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r45520_condition()
        )


    def test_r45521_condition(self):
        logic = Zm985Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r45521_condition()
        )


    def test_r45532_condition(self):
        logic = Zm985Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r45532_condition()
        )


    def test_r45533_condition(self):
        logic = Zm985Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r45533_condition()
        )


    def test_r45534_condition(self):
        logic = Zm985Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r45534_condition()
        )


    def test_r45535_condition(self):
        logic = Zm985Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r45535_condition()
        )


if __name__ == '__main__':
    unittest.main()
