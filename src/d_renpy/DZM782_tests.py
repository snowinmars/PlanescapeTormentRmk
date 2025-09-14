import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.zm782_logic import Zm782Logic


class Zm782LogicTest(LogicTest):
    def setUp(self):
        super(Zm782LogicTest, self).setUp()
        self.logic = Zm782Logic(self.state_manager)


    def test_r24716_action(self):
        self.logic.r24716_action()


    def test_r24709_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.set_in_party_morte(x),
            self.logic.r24709_condition
        )


    def test_r24712_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.set_in_party_morte(x),
            self.logic.r24712_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
