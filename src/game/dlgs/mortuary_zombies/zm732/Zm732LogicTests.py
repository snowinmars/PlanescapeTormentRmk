import unittest


from game.engine.LogicTests import (LogicTests)
from game.dlgs.mortuary_zombies.zm732.Zm732Logic import (Zm732LogicGenerated, Zm732Logic)


class Zm732LogicGeneratedTests(LogicTests):
    def setUp(self):
        super(Zm732LogicGeneratedTests, self).setUp()
        self.logic = Zm732LogicGenerated(self.state_manager)


    def test_r6533_action(self):
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -1
        self.state_manager.world_manager.set_zombie_chaotic(False)

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertFalse(self.state_manager.world_manager.get_zombie_chaotic())

        self.logic.r6533_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.state_manager.world_manager.get_zombie_chaotic())

        self.logic.r6533_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.state_manager.world_manager.get_zombie_chaotic())


    def test_r64271_action(self):
        self._false_then_true_action(
            lambda: self.state_manager.inventory_items_manager.is_own_item('has_tome_ba'),
            self.logic.r64271_action
        )


    def test_r6533_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_zombie_chaotic(x),
            self.logic.r6533_condition
        )


    def test_r6532_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_zombie_chaotic(x),
            self.logic.r6532_condition
        )


    def test_r6534_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_vaxis_exposed(x),
            self.logic.r6534_condition
        )


    def test_r6535_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_can_speak_with_dead(x),
            self.logic.r6535_condition
        )


class Zm732LogicTests(LogicTests):
    def setUp(self):
        super(Zm732LogicTests, self).setUp()
        self.logic = Zm732Logic(self.state_manager)


    def test_talk(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_talked_to_zm732_times,
            1,
            self.logic.talk
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
