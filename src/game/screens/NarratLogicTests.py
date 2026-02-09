import unittest

from game.engine.LogicTests import (LogicTests)
from game.screens.NarratLogic import (NarratLogic)


class NarratLogicTests(LogicTests):
    def setUp(self):
        super(NarratLogicTests, self).setUp()
        self.logic = NarratLogic(self.state_manager)

