import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortuary_zombies.zm965_logic import (Zm965LogicGenerated, Zm965Logic)


class Zm965LogicTest(LogicTest):
    def setUp(self):
        super(Zm965LogicTest, self).setUp()
        self.logic = Zm965Logic(self.state_manager)


    def test_talk(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_talked_to_zm965_times,
            1,
            self.logic.talk
        )


class Zm965LogicGeneratedTest(LogicTest):
    def setUp(self):
        super(Zm965LogicGeneratedTest, self).setUp()
        self.logic = Zm965LogicGenerated(self.state_manager)


    def test_r34923_action(self):
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -1
        self.state_manager.world_manager.set_zombie_chaotic(False)

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertFalse(self.state_manager.world_manager.get_zombie_chaotic())

        self.logic.r34923_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.state_manager.world_manager.get_zombie_chaotic())

        self.logic.r34923_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.state_manager.world_manager.get_zombie_chaotic())


    def test_r34923_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_zombie_chaotic(x),
            self.logic.r34923_condition
        )


    def test_r45070_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_zombie_chaotic(x),
            self.logic.r45070_condition
        )


    def test_r45071_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_vaxis_exposed(x),
            self.logic.r45071_condition
        )


    def test_r45072_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_can_speak_with_dead(x),
            self.logic.r45072_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
