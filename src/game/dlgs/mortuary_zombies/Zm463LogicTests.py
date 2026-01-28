import unittest


from game.engine.LogicTests import (LogicTests)
from game.dlgs.mortuary_zombies.Zm463Logic import (Zm463LogicGenerated, Zm463Logic)


class Zm463LogicGeneratedTests(LogicTests):
    def setUp(self):
        super(Zm463LogicGeneratedTests, self).setUp()
        self.logic = Zm463LogicGenerated(self.state_manager)


    def test_r6485_action(self):
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -1
        self.state_manager.world_manager.set_zombie_chaotic(False)

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertFalse(self.state_manager.world_manager.get_zombie_chaotic())

        self.logic.r6485_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.state_manager.world_manager.get_zombie_chaotic())

        self.logic.r6485_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.state_manager.world_manager.get_zombie_chaotic())


    def test_r6485_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_zombie_chaotic(x),
            self.logic.r6485_condition
        )


    def test_r6488_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_zombie_chaotic(x),
            self.logic.r6488_condition
        )


    def test_r6489_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_vaxis_exposed(x),
            self.logic.r6489_condition
        )


    def test_r6490_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_can_speak_with_dead(x),
            self.logic.r6490_condition
        )


class Zm463LogicTests(LogicTests):
    def setUp(self):
        super(Zm463LogicTests, self).setUp()
        self.logic = Zm463Logic(self.state_manager)


    def test_talk(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_talked_to_zm463_times,
            1,
            self.logic.talk
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
