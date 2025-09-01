import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortuary.morte1_logic import (Morte1LogicGenerated, Morte1Logic)


class Morte1LogicTest(LogicTest):
    def setUp(self):
        super(Morte1LogicTest, self).setUp()
        self.logic = Morte1Logic(self.settings_manager)


    def test_s23_action(self):
        self.settings_manager.set_mortuary_walkthrough(2)
        self._integer_equals_action(
            self.settings_manager.get_mortuary_walkthrough,
            1,
            self.logic.s23_action
        )


    def test_s24_action(self):
        self._false_then_true_action(
            self.settings_manager.get_has_intro_key,
            self.logic.s24_action
        )


class Morte1LogicGeneratedTest(LogicTest):
    def setUp(self):
        super(Morte1LogicGeneratedTest, self).setUp()
        self.logic = Morte1LogicGenerated(self.settings_manager)


    def test_r39793_action(self):
        self.settings_manager.set_morte_value(2)
        self._integer_equals_action(
            self.settings_manager.get_morte_value,
            1,
            self.logic.r39793_action
        )


    def test_r39824_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = 1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r39824_action
        )


    def test_r39852_action(self):
        self._false_then_true_action(
            self.settings_manager.get_in_party_morte,
            self.logic.r39852_action
        )


    def test_r39856_action(self):
        self._false_then_true_action(
            self.settings_manager.get_in_party_morte,
            self.logic.r39856_action
        )


    def test_r39859_action(self):
        self._false_then_true_action(
            self.settings_manager.get_in_party_morte,
            self.logic.r39859_action
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
