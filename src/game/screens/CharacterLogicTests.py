import unittest

from game.engine.LogicTests import (LogicTests)
from game.screens.CharacterLogic import (CharacterLogic)


class CharacterLogicTests(LogicTests):
    def setUp(self):
        super(CharacterLogicTests, self).setUp()
        self.logic = CharacterLogic(self.state_manager)


    def test_get_character(self):
        self.assertIsNotNone(self.logic.get_character())
