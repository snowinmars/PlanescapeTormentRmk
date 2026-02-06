import unittest


from game.engine.LogicTests import (LogicTests)
from game.dlgs.mortuary_zombies.zm506.Zm506Logic import (Zm506LogicGenerated, Zm506Logic)


class Zm506LogicGeneratedTests(LogicTests):
    def setUp(self):
        super(Zm506LogicGeneratedTests, self).setUp()
        self.logic = Zm506LogicGenerated(self.state_manager)


    def test_r45480_action(self):
        self.state_manager.world_manager.set_has_506_thread(False)
        self.state_manager.inventory_items_manager.drop_all_items('has_needle')
        who_experience = 'protagonist_character_name'
        prop_experience = 'experience'
        delta_experience = 100

        self.assertFalse(self.state_manager.world_manager.get_has_506_thread())
        self.assertFalse(self.state_manager.inventory_items_manager.is_own_item('has_needle'))
        experience_before = self.state_manager.characters_manager.get_property(who_experience, prop_experience)

        self.logic.r45480_action()

        self.assertTrue(self.state_manager.world_manager.get_has_506_thread())
        self.assertTrue(self.state_manager.inventory_items_manager.is_own_item('has_needle'))
        experience_after = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)

        self.logic.r45480_action()

        self.assertTrue(self.state_manager.world_manager.get_has_506_thread())
        self.assertTrue(self.state_manager.inventory_items_manager.is_own_item('has_needle'))
        experience_after_once = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)


    def test_r45484_action(self):
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -1
        self.state_manager.world_manager.set_zombie_chaotic(False)

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertFalse(self.state_manager.world_manager.get_zombie_chaotic())

        self.logic.r45484_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.state_manager.world_manager.get_zombie_chaotic())

        self.logic.r45484_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.state_manager.world_manager.get_zombie_chaotic())


    def test_r45502_action(self):
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -1
        self.state_manager.world_manager.set_zombie_chaotic(False)

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertFalse(self.state_manager.world_manager.get_zombie_chaotic())

        self.logic.r45502_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.state_manager.world_manager.get_zombie_chaotic())

        self.logic.r45502_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.state_manager.world_manager.get_zombie_chaotic())


    def test_r45420_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_has_506_thread(x),
            self.logic.r45420_condition
        )


    def test_r45421_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_vaxis_exposed(x),
            self.logic.r45421_condition
        )


    def test_r45422_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_can_speak_with_dead(x),
            self.logic.r45422_condition
        )


    def test_r45480_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.inventory_items_manager.pick_item('has_scalpel') if x else self.state_manager.inventory_items_manager.drop_item('has_scalpel'),
            self.logic.r45480_condition
        )


    def test_r45481_condition(self):
        self.state_manager.inventory_items_manager.pick_item('has_scalpel')
        self._boolean_invert_condition(
            lambda x: self.state_manager.inventory_items_manager.pick_item('has_scalpel') if x else self.state_manager.inventory_items_manager.drop_item('has_scalpel'),
            self.logic.r45481_condition
        )


    def test_r45484_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_zombie_chaotic(x),
            self.logic.r45484_condition
        )


    def test_r45496_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_zombie_chaotic(x),
            self.logic.r45496_condition
        )


    def test_r45502_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_zombie_chaotic(x),
            self.logic.r45502_condition
        )


    def test_r45508_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_zombie_chaotic(x),
            self.logic.r45508_condition
        )


    def test_r45510_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_vaxis_exposed(x),
            self.logic.r45510_condition
        )


    def test_r45512_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_can_speak_with_dead(x),
            self.logic.r45512_condition
        )


class Zm506LogicTests(LogicTests):
    def setUp(self):
        super(Zm506LogicTests, self).setUp()
        self.logic = Zm506Logic(self.state_manager)


    def test_talk(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_talked_to_zm506_times,
            1,
            self.logic.talk
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
