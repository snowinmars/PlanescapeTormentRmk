import unittest


from game.engine.LogicTests import (LogicTests)
from game.dlgs.inventory_items.CopearcLogic import (CopearcLogicGenerated, CopearcLogic)


class CopearcLogicGeneratedTests(LogicTests):
    def setUp(self):
        super(CopearcLogicGeneratedTests, self).setUp()
        self.logic = CopearcLogicGenerated(self.state_manager)


    def test_r46725_action(self):
        who = 'protagonist_character_name'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r46725_action
        )


    def test_r46728_action(self):
        who = 'protagonist_character_name'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r46728_action
        )


    def test_r46733_action(self):
        self.state_manager.inventory_items_manager.pick_item('has_copper_earring_closed')
        self.state_manager.inventory_items_manager.drop_all_items('has_copper_earring_opened')

        self.assertTrue(self.state_manager.inventory_items_manager.is_own_item('has_copper_earring_closed'))
        self.assertFalse(self.state_manager.inventory_items_manager.is_own_item('has_copper_earring_opened'))

        self.logic.r46733_action()

        self.assertFalse(self.state_manager.inventory_items_manager.is_own_item('has_copper_earring_closed'))
        self.assertTrue(self.state_manager.inventory_items_manager.is_own_item('has_copper_earring_opened'))

        self.logic.r46733_action()

        self.assertFalse(self.state_manager.inventory_items_manager.is_own_item('has_copper_earring_closed'))
        self.assertTrue(self.state_manager.inventory_items_manager.is_own_item('has_copper_earring_opened'))


    def test_r46725_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_know_copper_earring_secret(x),
            self.logic.r46725_condition
        )


    def test_r46728_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_know_copper_earring_secret(x),
            self.logic.r46728_condition
        )


class CopearcLogicTests(LogicTests):
    def setUp(self):
        super(CopearcLogicTests, self).setUp()
        self.logic = CopearcLogic(self.state_manager)


    def test_talk_closed(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_talked_to_copper_earring_closed_times,
            1,
            self.logic.talk_closed
        )


    def test_talk_opened(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_talked_to_copper_earring_opened_times,
            1,
            self.logic.talk_opened
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
