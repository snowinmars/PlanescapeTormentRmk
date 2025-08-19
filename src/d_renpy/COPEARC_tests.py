import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.copearc_logic import CopearcLogic


class CopearcLogicTest(LogicTest):
    def setUp(self):
        super(CopearcLogicTest, self).setUp()
        self.logic = CopearcLogic(self.settings_manager)


    def test_r46725_action(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r46725_action
        )


    def test_r46728_action(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r46728_action
        )


    def test_r46733_action(self):
        self.assertTrue(self.settings_manager.get_has_copper_earring_closed())
        self.assertFalse(self.settings_manager.get_has_copper_earring_opened())

        self.logic.r46733_action()

        self.assertFalse(self.settings_manager.get_has_copper_earring_closed())
        self.assertTrue(self.settings_manager.get_has_copper_earring_opened())

        self.logic.r46733_action()

        self.assertFalse(self.settings_manager.get_has_copper_earring_closed())
        self.assertTrue(self.settings_manager.get_has_copper_earring_opened())


    def test_r46725_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_copper_earring_secret(x),
            self.logic.r46725_condition
        )


    def test_r46728_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_copper_earring_secret(x),
            self.logic.r46728_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
