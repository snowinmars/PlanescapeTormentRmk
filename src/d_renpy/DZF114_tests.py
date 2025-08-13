import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.zf114_logic import Zf114Logic


class Zf114LogicTest(LogicTest):
    def setUp(self):
        super(Zf114LogicTest, self).setUp()
        self.logic = Zf114Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zf114Logic
        self._methods_are_bound()


    def test_zf114_init(self):
        location = 'LOCATION'
        talked_to_zf114_times_before = 0
        talked_to_zf114_times_after = 1
        talked_to_zf114_times_after_once = 2 * 1

        self.assertNotEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_zf114_times(), talked_to_zf114_times_before)

        self.logic.zf114_init()

        self.assertEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_zf114_times(), talked_to_zf114_times_after)

        self.logic.zf114_init()

        self.assertEqual(self.settings_manager.location_manager.get_location(), location)
        self.assertEqual(self.settings_manager.get_talked_to_zf114_times(), talked_to_zf114_times_after_once)


    def test_kill_zf114(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_zf114,
            self.logic.kill_zf114
        )


    def test_r34987_action(self):
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = -1

        law_before = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertFalse(self.settings_manager.get_zombie_chaotic())

        self.logic.r34987_action()

        law_after = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.settings_manager.get_zombie_chaotic())

        self.logic.r34987_action()

        law_after_once = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.settings_manager.get_zombie_chaotic())


    def test_r34987_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r34987_condition
        )


    def test_r35004_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r35004_condition
        )


    def test_r35005_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r35005_condition
        )


    def test_r35006_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r35006_condition
        )


    def test_r35011_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r35011_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r35011_condition())


    def test_r35012_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r35012_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r35012_condition())


    def test_r35013_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35013_condition
        )


    def test_r35014_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35014_condition
        )


    def test_r35015_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r35015_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r35015_condition())


    def test_r35016_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r35016_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r35016_condition())


    def test_r34989_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r34989_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r34989_condition())


    def test_r35002_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35002_condition
        )


    def test_r35003_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r35003_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r35003_condition())


    def test_r35008_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r35008_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r35008_condition())


    def test_r35009_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35009_condition
        )


    def test_r35010_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r35010_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r35010_condition())


if __name__ == '__main__':
    unittest.main() # pragma: no cover
