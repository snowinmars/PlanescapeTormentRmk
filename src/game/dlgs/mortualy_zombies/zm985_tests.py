import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortualy_zombies.zm985_logic import Zm985Logic


class Zm985LogicTest(LogicTest):
    def setUp(self):
        super(Zm985LogicTest, self).setUp()
        self.logic = Zm985Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zm985Logic
        self._methods_are_bound()


    def test_zm985_init(self):
        self._init_with_location(
            'mortuary_f2r5',
            self.logic.zm985_init,
            self.settings_manager.get_talked_to_zm985_times
        )


    def test_s3_action(self):
        self.assertFalse(self.settings_manager.get_topple_985())
        self.assertFalse(self.settings_manager.get_limb_985())
        self.assertFalse(self.settings_manager.get_dead_zm985())

        self.logic.s3_action()

        self.assertTrue(self.settings_manager.get_topple_985())
        self.assertTrue(self.settings_manager.get_limb_985())
        self.assertTrue(self.settings_manager.get_dead_zm985())


    def test_s4_action(self):
        self.logic.s4_action()



    def test_r45516_action(self):
        who = 'protagonist'
        prop_law = 'law'
        prop_good = 'good'
        delta = -1

        law_before = self.settings_manager.character_manager.get_property(who, prop_law)
        good_before = self.settings_manager.character_manager.get_property(who, prop_good)

        self.logic.r45516_action()

        law_after = self.settings_manager.character_manager.get_property(who, prop_law)
        good_after = self.settings_manager.character_manager.get_property(who, prop_good)
        self.assertEqual(law_before + delta, law_after)
        self.assertEqual(good_before + delta, good_after)

        self.logic.r45516_action()

        law_after_once = self.settings_manager.character_manager.get_property(who, prop_law)
        good_after_once = self.settings_manager.character_manager.get_property(who, prop_good)
        self.assertEqual(law_after, law_after_once)
        self.assertEqual(good_after, good_after_once)


    def test_r45517_action(self):
        who = 'protagonist'
        prop_law = 'law'
        prop_good = 'good'
        delta = -1

        law_before = self.settings_manager.character_manager.get_property(who, prop_law)
        good_before = self.settings_manager.character_manager.get_property(who, prop_good)

        self.logic.r45517_action()

        law_after = self.settings_manager.character_manager.get_property(who, prop_law)
        good_after = self.settings_manager.character_manager.get_property(who, prop_good)
        self.assertEqual(law_before + delta, law_after)
        self.assertEqual(good_before + delta, good_after)

        self.logic.r45517_action()

        law_after_once = self.settings_manager.character_manager.get_property(who, prop_law)
        good_after_once = self.settings_manager.character_manager.get_property(who, prop_good)
        self.assertEqual(law_after, law_after_once)
        self.assertEqual(good_after, good_after_once)


    def test_r45518_action(self):
        who = 'protagonist'
        prop_law = 'law'
        prop_good = 'good'
        delta = 1

        law_before = self.settings_manager.character_manager.get_property(who, prop_law)
        good_before = self.settings_manager.character_manager.get_property(who, prop_good)

        self.logic.r45518_action()

        law_after = self.settings_manager.character_manager.get_property(who, prop_law)
        good_after = self.settings_manager.character_manager.get_property(who, prop_good)
        self.assertEqual(law_before + delta, law_after)
        self.assertEqual(good_before + delta, good_after)

        self.logic.r45518_action()

        law_after_once = self.settings_manager.character_manager.get_property(who, prop_law)
        good_after_once = self.settings_manager.character_manager.get_property(who, prop_good)
        self.assertEqual(law_after, law_after_once)
        self.assertEqual(good_after, good_after_once)


    def test_r45519_action(self):
        who = 'protagonist'
        prop_law = 'law'
        prop_good = 'good'
        delta = 1

        law_before = self.settings_manager.character_manager.get_property(who, prop_law)
        good_before = self.settings_manager.character_manager.get_property(who, prop_good)

        self.logic.r45519_action()

        law_after = self.settings_manager.character_manager.get_property(who, prop_law)
        good_after = self.settings_manager.character_manager.get_property(who, prop_good)
        self.assertEqual(law_before + delta, law_after)
        self.assertEqual(good_before + delta, good_after)

        self.logic.r45519_action()

        law_after_once = self.settings_manager.character_manager.get_property(who, prop_law)
        good_after_once = self.settings_manager.character_manager.get_property(who, prop_good)
        self.assertEqual(law_after, law_after_once)
        self.assertEqual(good_after, good_after_once)


    def test_r45532_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        law_before = self.settings_manager.character_manager.get_property(who, prop)
        self.assertFalse(self.settings_manager.get_zombie_chaotic())

        self.logic.r45532_action()

        law_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_before + delta, law_after)
        self.assertTrue(self.settings_manager.get_zombie_chaotic())

        self.logic.r45532_action()

        law_after_once = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_after + delta, law_after_once)
        self.assertTrue(self.settings_manager.get_zombie_chaotic())


    def test_r45539_action(self):
        self.logic.r45539_action()


    def test_r45516_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r45516_condition
        )


    def test_r45517_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r45517_condition
        )


    def test_r45518_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r45518_condition
        )


    def test_r45519_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r45519_condition
        )


    def test_r45520_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r45520_condition
        )


    def test_r45521_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r45521_condition
        )


    def test_r45532_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r45532_condition
        )


    def test_r45533_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r45533_condition
        )


    def test_r45534_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r45534_condition
        )


    def test_r45535_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r45535_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
