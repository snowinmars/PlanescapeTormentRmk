import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortualy_zombies.zf916_logic import Zf916Logic


class Zf916LogicTest(LogicTest):
    def setUp(self):
        super(Zf916LogicTest, self).setUp()
        self.logic = Zf916Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = Zf916Logic
        self._methods_are_bound()


    @unittest.skip('This zomlie is not located anywhere')
    def test_zf916_init(self):
        self._init_with_location( # pragma: no cover
            'DISABLED', # pragma: no cover
            self.logic.zf916_init, # pragma: no cover
            self.settings_manager.get_talked_to_zf916_times # pragma: no cover
        ) # pragma: no cover


    def test_kill_zf916(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_zf916())
        exp_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.kill_zf916()

        self.assertTrue(self.settings_manager.get_dead_zf916())
        exp_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(exp_before + delta, exp_after)


    def test_r24720_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        law_before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r24720_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_before + delta, law_after)

        self.logic.r24720_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        law_after_once = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(law_after + delta, law_after_once)


    def test_r24720_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r24720_condition
        )


    def test_r24737_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r24737_condition
        )


    def test_r24738_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r24738_condition
        )


    def test_r24739_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r24739_condition
        )


    def test_r24744_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r24744_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r24744_condition())


    def test_r24745_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r24745_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r24745_condition())


    def test_r24746_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r24746_condition
        )


    def test_r24747_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r24747_condition
        )


    def test_r24748_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r24748_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r24748_condition())


    def test_r24749_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r24749_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r24749_condition())


    def test_r24722_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r24722_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r24722_condition())


    def test_r24735_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r24735_condition
        )


    def test_r24736_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r24736_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r24736_condition())


    def test_r24741_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r24741_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r24741_condition())


    def test_r24742_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r24742_condition
        )


    def test_r24743_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)
        self.assertFalse(self.logic.r24743_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)
        self.assertTrue(self.logic.r24743_condition())


if __name__ == '__main__':
    unittest.main() # pragma: no cover
