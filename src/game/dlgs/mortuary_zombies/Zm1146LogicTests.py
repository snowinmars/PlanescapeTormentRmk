import unittest


from game.engine.LogicTests import (LogicTests)
from game.dlgs.mortuary_zombies.Zm1146Logic import (Zm1146LogicGenerated, Zm1146Logic)


class Zm1146LogicGeneratedTests(LogicTests):
    def setUp(self):
        super(Zm1146LogicGeneratedTests, self).setUp()
        self.logic = Zm1146LogicGenerated(self.state_manager)


    def test_r6521_action(self):
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -1
        self.state_manager.world_manager.set_zombie_chaotic(False)

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertFalse(self.state_manager.world_manager.get_zombie_chaotic())

        self.logic.r6521_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.state_manager.world_manager.get_zombie_chaotic())

        self.logic.r6521_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.state_manager.world_manager.get_zombie_chaotic())


    def test_r6524_action(self):
        self.state_manager.world_manager.set_crispy(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_crispy,
            1,
            self.logic.r6524_action
        )


    def test_r9415_action(self):
        who = 'protagonist_character_name'
        prop = 'good'
        delta = 1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r9415_action
        )


    def test_r9426_action(self):
        who_good = 'protagonist_character_name'
        prop_good = 'good'
        delta_good = -1
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -1

        good_before = self.state_manager.characters_manager.get_property(who_good, prop_good)
        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)

        self.logic.r9426_action()

        good_after = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_before + delta_good, good_after)
        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)

        self.logic.r9426_action()

        good_after_once = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_after, good_after_once)
        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after, law_after_once)


    def test_r6521_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_zombie_chaotic(x),
            self.logic.r6521_condition
        )


    def test_r6522_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_zombie_chaotic(x),
            self.logic.r6522_condition
        )


    def test_r6523_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_vaxis_exposed(x),
            self.logic.r6523_condition
        )


    def test_r6524_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_can_speak_with_dead(x),
            self.logic.r6524_condition
        )


    def test_r9434_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_pharod(x),
            0,
            self.logic.r9434_condition
        )


class Zm1146LogicTests(LogicTests):
    def setUp(self):
        super(Zm1146LogicTests, self).setUp()
        self.logic = Zm1146Logic(self.state_manager)


    def test_talk(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_talked_to_zm1146_times,
            1,
            self.logic.talk
        )


    def test_talk_crispy(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_talked_to_crispy_times,
            1,
            self.logic.talk_crispy
        )


    def test_get_crispy(self):
        self.assertNotEqual(self.logic.get_crispy(), 3)
        self.state_manager.world_manager.set_crispy(3)
        self.assertEqual(self.logic.get_crispy(), 3)


if __name__ == '__main__':
    unittest.main() # pragma: no cover
