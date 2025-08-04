import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.n1201_logic import N1201Logic


class N1201LogicTest(LogicTest):
    def setUp(self):
        super(N1201LogicTest, self).setUp()
        self.logic = N1201Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = N1201Logic
        self._methods_are_bound()


    def test_n1201_init(self):
        self._init_with_location(
            'LOCATION',
            self.logic.n1201_init,
            self.settings_manager.get_talked_to_n1201_times
        )


    def test_kill_n1201(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_n1201,
            self.logic.kill_n1201
        )


    def test_n1201_init(self):
        # TODO [snowinmars]: write the test
        self.logic.n1201_init()


    def test_kill_n1201(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_n1201,
            self.logic.kill_n1201
        )


    def test_r44994_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r44994_action()


    def test_r44995_action(self):
        self._false_then_true_action(
            self.settings_manager.get_lr_1201,
            self.logic.r44995_action
        )


    def test_r44996_action(self):
        self._false_then_true_action(
            self.settings_manager.get_ll_1201,
            self.logic.r44996_action
        )


    def test_r44997_action(self):
        self._false_then_true_action(
            self.settings_manager.get_ul_1201,
            self.logic.r44997_action
        )


    def test_r44998_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r44998_action()


    def test_r45000_action(self):
        self._false_then_true_action(
            self.settings_manager.get_ur_1201,
            self.logic.r45000_action
        )


    def test_r45001_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r45001_action()


    def test_r45002_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r45002_action()


    def test_r45003_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r45003_action()


    def test_r45004_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r45004_action()


    def test_r45006_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r45006_action()


    def test_r45008_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r45008_action()


    def test_r45017_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r45017_action()


    def test_r45018_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r45018_action()


    def test_r45023_action(self):
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r45023_action
        )


    def test_r45025_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r45025_action()


    def test_r45000_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_ur_1201(x),
            self.logic.r45000_condition
        )


    def test_r45001_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r45001_condition()


    def test_r45002_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r45002_condition()


    def test_r45003_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_ll_1201(x),
            self.logic.r45003_condition
        )


    def test_r45004_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r45004_condition()


    def test_r45005_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r45005_condition()


if __name__ == '__main__':
    unittest.main() # pragma: no cover
