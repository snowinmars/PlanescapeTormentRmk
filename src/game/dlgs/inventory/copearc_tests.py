import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.inventory.copearc_logic import (CopearcLogicGenerated, CopearcLogic)


class CopearcLogicTest(LogicTest):
    def setUp(self):
        super(CopearcLogicTest, self).setUp()
        self.logic = CopearcLogic(self.state_manager)


class CopearcLogicGeneratedTest(LogicTest):
    def setUp(self):
        super(CopearcLogicGeneratedTest, self).setUp()
        self.logic = CopearcLogicGenerated(self.state_manager)


    def test_r46725_action(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r46725_action
        )


    def test_r46728_action(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r46728_action
        )


    def test_r46733_action(self):
        self.state_manager.set_has_copper_earring_closed(True)
        self.state_manager.set_has_copper_earring_opened(False)

        self.assertTrue(self.state_manager.get_has_copper_earring_closed())
        self.assertFalse(self.state_manager.get_has_copper_earring_opened())

        self.logic.r46733_action()

        self.assertFalse(self.state_manager.get_has_copper_earring_closed())
        self.assertTrue(self.state_manager.get_has_copper_earring_opened())

        self.logic.r46733_action()

        self.assertFalse(self.state_manager.get_has_copper_earring_closed())
        self.assertTrue(self.state_manager.get_has_copper_earring_opened())


    def test_r46725_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_know_copper_earring_secret(x),
            self.logic.r46725_condition
        )


    def test_r46728_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_know_copper_earring_secret(x),
            self.logic.r46728_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
