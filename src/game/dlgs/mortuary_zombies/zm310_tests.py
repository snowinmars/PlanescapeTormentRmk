import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortuary_zombies.zm310_logic import (Zm310LogicGenerated, Zm310Logic)


class Zm310LogicTest(LogicTest):
    def setUp(self):
        super(Zm310LogicTest, self).setUp()
        self.logic = Zm310Logic(self.state_manager)


    def test_set_know_oinosian_name(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_know_oinosian_name,
            self.logic.set_know_oinosian_name
        )


    def test_get_know_oinosian_name(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_know_oinosian_name(x),
            self.logic.get_know_oinosian_name
        )


class Zm310LogicGeneratedTest(LogicTest):
    def setUp(self):
        super(Zm310LogicGeneratedTest, self).setUp()
        self.logic = Zm310LogicGenerated(self.state_manager)


    def test_r6499_action(self):
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = -1
        self.state_manager.world_manager.set_zombie_chaotic(False)

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertFalse(self.state_manager.world_manager.get_zombie_chaotic())

        self.logic.r6499_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.state_manager.world_manager.get_zombie_chaotic())

        self.logic.r6499_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.state_manager.world_manager.get_zombie_chaotic())


    def test_r6502_action(self):
        self.state_manager.world_manager.set_oinosian_value(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_oinosian_value,
            1,
            self.logic.r6502_action
        )


    def test_r6499_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_zombie_chaotic(x),
            self.logic.r6499_condition
        )


    def test_r6500_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_zombie_chaotic(x),
            self.logic.r6500_condition
        )


    def test_r6501_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_vaxis_exposed(x),
            self.logic.r6501_condition
        )


    def test_r6502_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_can_speak_with_dead(x),
            self.logic.r6502_condition
        )


    def test_r9664_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_pharod_value(x),
            0,
            self.logic.r9664_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
