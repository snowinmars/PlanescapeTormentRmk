import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortuary_zombies.zm1664_logic import (Zm1664LogicGenerated, Zm1664Logic)


class Zm1664LogicGeneratedTest(LogicTest):
    def setUp(self):
        super(Zm1664LogicGeneratedTest, self).setUp()
        self.logic = Zm1664LogicGenerated(self.state_manager)


    def test_r47014_action(self):
        self.state_manager.inventory_manager.drop_all_items('has_logpage')
        self.state_manager.world_manager.set_has_zm1664_page(False)

        self.assertFalse(self.state_manager.inventory_manager.is_own_item('has_logpage'))
        self.assertFalse(self.state_manager.world_manager.get_has_zm1664_page())

        self.logic.r47014_action()

        self.assertTrue(self.state_manager.inventory_manager.is_own_item('has_logpage'))
        self.assertTrue(self.state_manager.world_manager.get_has_zm1664_page())

        self.logic.r47014_action()

        self.assertTrue(self.state_manager.inventory_manager.is_own_item('has_logpage'))
        self.assertTrue(self.state_manager.world_manager.get_has_zm1664_page())


    def test_r47003_condition(self):
        self._boolean_invert_condition(
            self.state_manager.world_manager.set_has_zm1664_page,
            self.logic.r47003_condition
        )


    def test_r47004_condition(self):
        self._boolean_straight_condition(
            self.state_manager.world_manager.set_has_zm1664_page,
            self.logic.r47004_condition
        )


    def test_r47005_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_vaxis_exposed(x),
            self.logic.r47005_condition
        )


    def test_r47006_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_can_speak_with_dead(x),
            self.logic.r47006_condition
        )


class Zm1664LogicTest(LogicTest):
    def setUp(self):
        super(Zm1664LogicTest, self).setUp()
        self.logic = Zm1664Logic(self.state_manager)


    def test_talk(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_talked_to_zm1664_times,
            1,
            self.logic.talk
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
