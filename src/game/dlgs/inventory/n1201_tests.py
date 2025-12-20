import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.inventory.n1201_logic import (N1201LogicGenerated, N1201Logic)


class N1201LogicTest(LogicTest):
    def setUp(self):
        super(N1201LogicTest, self).setUp()
        self.logic = N1201Logic(self.state_manager)


class N1201LogicGeneratedTest(LogicTest):
    def setUp(self):
        super(N1201LogicGeneratedTest, self).setUp()
        self.logic = N1201LogicGenerated(self.state_manager)


    def test_r44994_action(self):
        self.state_manager.world_manager.set_ur_1201(False)
        _1201_note_quest_before = 0
        _1201_note_quest_after = 1
        _1201_note_quest_after_once = 1
        self.state_manager.world_manager.set_1201_note_quest(_1201_note_quest_before)

        self.assertFalse(self.state_manager.world_manager.get_ur_1201())
        self.assertEqual(self.state_manager.world_manager.get_1201_note_quest(), _1201_note_quest_before)

        self.logic.r44994_action()

        self.assertTrue(self.state_manager.world_manager.get_ur_1201())
        self.assertEqual(self.state_manager.world_manager.get_1201_note_quest(), _1201_note_quest_after)

        self.logic.r44994_action()

        self.assertTrue(self.state_manager.world_manager.get_ur_1201())
        self.assertEqual(self.state_manager.world_manager.get_1201_note_quest(), _1201_note_quest_after_once)


    def test_r44995_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_lr_1201,
            self.logic.r44995_action
        )


    def test_r44996_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_ll_1201,
            self.logic.r44996_action
        )


    def test_r44997_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_ul_1201,
            self.logic.r44997_action
        )


    def test_r44998_action(self):
        self.state_manager.world_manager.set_ur_1201(True)
        self.state_manager.world_manager.set_lr_1201(True)
        self.state_manager.world_manager.set_ll_1201(True)
        self.state_manager.world_manager.set_ul_1201(True)
        _1201_note_quest_before = 1
        _1201_note_quest_after = 0
        _1201_note_quest_after_once = 0
        self.state_manager.world_manager.set_1201_note_quest(_1201_note_quest_before)

        self.assertTrue(self.state_manager.world_manager.get_ur_1201())
        self.assertTrue(self.state_manager.world_manager.get_lr_1201())
        self.assertTrue(self.state_manager.world_manager.get_ll_1201())
        self.assertTrue(self.state_manager.world_manager.get_ul_1201())
        self.assertEqual(self.state_manager.world_manager.get_1201_note_quest(), _1201_note_quest_before)

        self.logic.r44998_action()

        self.assertFalse(self.state_manager.world_manager.get_ur_1201())
        self.assertFalse(self.state_manager.world_manager.get_lr_1201())
        self.assertFalse(self.state_manager.world_manager.get_ll_1201())
        self.assertFalse(self.state_manager.world_manager.get_ul_1201())
        self.assertEqual(self.state_manager.world_manager.get_1201_note_quest(), _1201_note_quest_after)

        self.logic.r44998_action()

        self.assertFalse(self.state_manager.world_manager.get_ur_1201())
        self.assertFalse(self.state_manager.world_manager.get_lr_1201())
        self.assertFalse(self.state_manager.world_manager.get_ll_1201())
        self.assertFalse(self.state_manager.world_manager.get_ul_1201())
        self.assertEqual(self.state_manager.world_manager.get_1201_note_quest(), _1201_note_quest_after_once)


    def test_r45000_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_ur_1201,
            self.logic.r45000_action
        )


    def test_r45001_action(self):
        _1201_note_quest_before = 1
        _1201_note_quest_after = 2
        _1201_note_quest_after_once = 2
        self.state_manager.world_manager.set_1201_note_quest(_1201_note_quest_before)
        self.state_manager.world_manager.set_lr_1201(False)

        self.assertEqual(self.state_manager.world_manager.get_1201_note_quest(), _1201_note_quest_before)
        self.assertFalse(self.state_manager.world_manager.get_lr_1201())

        self.logic.r45001_action()

        self.assertEqual(self.state_manager.world_manager.get_1201_note_quest(), _1201_note_quest_after)
        self.assertTrue(self.state_manager.world_manager.get_lr_1201())

        self.logic.r45001_action()

        self.assertEqual(self.state_manager.world_manager.get_1201_note_quest(), _1201_note_quest_after_once)
        self.assertTrue(self.state_manager.world_manager.get_lr_1201())


    def test_r45002_action(self):
        self.state_manager.world_manager.set_lr_1201(False)
        _1201_note_quest_before = 1
        _1201_note_quest_after = 0
        _1201_note_quest_after_once = 0
        self.state_manager.world_manager.set_1201_note_quest(_1201_note_quest_before)

        self.assertFalse(self.state_manager.world_manager.get_lr_1201())
        self.assertEqual(self.state_manager.world_manager.get_1201_note_quest(), _1201_note_quest_before)

        self.logic.r45002_action()

        self.assertTrue(self.state_manager.world_manager.get_lr_1201())
        self.assertEqual(self.state_manager.world_manager.get_1201_note_quest(), _1201_note_quest_after)

        self.logic.r45002_action()

        self.assertTrue(self.state_manager.world_manager.get_lr_1201())
        self.assertEqual(self.state_manager.world_manager.get_1201_note_quest(), _1201_note_quest_after_once)


    def test_r45003_action(self):
        self.state_manager.world_manager.set_ll_1201(False)
        _1201_note_quest_before = 1
        _1201_note_quest_after = 0
        _1201_note_quest_after_once = 0
        self.state_manager.world_manager.set_1201_note_quest(_1201_note_quest_before)

        self.assertFalse(self.state_manager.world_manager.get_ll_1201())
        self.assertEqual(self.state_manager.world_manager.get_1201_note_quest(), _1201_note_quest_before)

        self.logic.r45003_action()

        self.assertTrue(self.state_manager.world_manager.get_ll_1201())
        self.assertEqual(self.state_manager.world_manager.get_1201_note_quest(), _1201_note_quest_after)

        self.logic.r45003_action()

        self.assertTrue(self.state_manager.world_manager.get_ll_1201())
        self.assertEqual(self.state_manager.world_manager.get_1201_note_quest(), _1201_note_quest_after_once)


    def test_r45004_action(self):
        self.state_manager.world_manager.set_ul_1201(False)
        _1201_note_quest_before = 1
        _1201_note_quest_after = 0
        _1201_note_quest_after_once = 0
        self.state_manager.world_manager.set_1201_note_quest(_1201_note_quest_before)

        self.assertFalse(self.state_manager.world_manager.get_ul_1201())
        self.assertEqual(self.state_manager.world_manager.get_1201_note_quest(), _1201_note_quest_before)

        self.logic.r45004_action()

        self.assertTrue(self.state_manager.world_manager.get_ul_1201())
        self.assertEqual(self.state_manager.world_manager.get_1201_note_quest(), _1201_note_quest_after)

        self.logic.r45004_action()

        self.assertTrue(self.state_manager.world_manager.get_ul_1201())
        self.assertEqual(self.state_manager.world_manager.get_1201_note_quest(), _1201_note_quest_after_once)


    def test_r45006_action(self):
        self.state_manager.world_manager.set_ur_1201(True)
        self.state_manager.world_manager.set_lr_1201(True)
        self.state_manager.world_manager.set_ll_1201(True)
        self.state_manager.world_manager.set_ul_1201(True)
        _1201_note_quest_before = 1
        _1201_note_quest_after = 0
        _1201_note_quest_after_once = 0
        self.state_manager.world_manager.set_1201_note_quest(_1201_note_quest_before)

        self.assertTrue(self.state_manager.world_manager.get_ur_1201())
        self.assertTrue(self.state_manager.world_manager.get_lr_1201())
        self.assertTrue(self.state_manager.world_manager.get_ll_1201())
        self.assertTrue(self.state_manager.world_manager.get_ul_1201())
        self.assertEqual(self.state_manager.world_manager.get_1201_note_quest(), _1201_note_quest_before)

        self.logic.r45006_action()

        self.assertFalse(self.state_manager.world_manager.get_ur_1201())
        self.assertFalse(self.state_manager.world_manager.get_lr_1201())
        self.assertFalse(self.state_manager.world_manager.get_ll_1201())
        self.assertFalse(self.state_manager.world_manager.get_ul_1201())
        self.assertEqual(self.state_manager.world_manager.get_1201_note_quest(), _1201_note_quest_after)

        self.logic.r45006_action()

        self.assertFalse(self.state_manager.world_manager.get_ur_1201())
        self.assertFalse(self.state_manager.world_manager.get_lr_1201())
        self.assertFalse(self.state_manager.world_manager.get_ll_1201())
        self.assertFalse(self.state_manager.world_manager.get_ul_1201())
        self.assertEqual(self.state_manager.world_manager.get_1201_note_quest(), _1201_note_quest_after_once)


    def test_r45008_action(self):
        self.state_manager.world_manager.set_ur_1201(True)
        self.state_manager.world_manager.set_lr_1201(True)
        self.state_manager.world_manager.set_ll_1201(True)
        self.state_manager.world_manager.set_ul_1201(True)
        _1201_note_quest_before = 1
        _1201_note_quest_after = 0
        _1201_note_quest_after_once = 0
        self.state_manager.world_manager.set_1201_note_quest(_1201_note_quest_before)

        self.assertTrue(self.state_manager.world_manager.get_ur_1201())
        self.assertTrue(self.state_manager.world_manager.get_lr_1201())
        self.assertTrue(self.state_manager.world_manager.get_ll_1201())
        self.assertTrue(self.state_manager.world_manager.get_ul_1201())
        self.assertEqual(self.state_manager.world_manager.get_1201_note_quest(), _1201_note_quest_before)

        self.logic.r45008_action()

        self.assertFalse(self.state_manager.world_manager.get_ur_1201())
        self.assertFalse(self.state_manager.world_manager.get_lr_1201())
        self.assertFalse(self.state_manager.world_manager.get_ll_1201())
        self.assertFalse(self.state_manager.world_manager.get_ul_1201())
        self.assertEqual(self.state_manager.world_manager.get_1201_note_quest(), _1201_note_quest_after)

        self.logic.r45008_action()

        self.assertFalse(self.state_manager.world_manager.get_ur_1201())
        self.assertFalse(self.state_manager.world_manager.get_lr_1201())
        self.assertFalse(self.state_manager.world_manager.get_ll_1201())
        self.assertFalse(self.state_manager.world_manager.get_ul_1201())
        self.assertEqual(self.state_manager.world_manager.get_1201_note_quest(), _1201_note_quest_after_once)


    def test_r45017_action(self):
        self.state_manager.world_manager.set_ur_1201(True)
        self.state_manager.world_manager.set_lr_1201(True)
        self.state_manager.world_manager.set_ll_1201(True)
        self.state_manager.world_manager.set_ul_1201(True)
        _1201_note_quest_before = 1
        _1201_note_quest_after = 0
        _1201_note_quest_after_once = 0
        self.state_manager.world_manager.set_1201_note_quest(_1201_note_quest_before)

        self.assertTrue(self.state_manager.world_manager.get_ur_1201())
        self.assertTrue(self.state_manager.world_manager.get_lr_1201())
        self.assertTrue(self.state_manager.world_manager.get_ll_1201())
        self.assertTrue(self.state_manager.world_manager.get_ul_1201())
        self.assertEqual(self.state_manager.world_manager.get_1201_note_quest(), _1201_note_quest_before)

        self.logic.r45017_action()

        self.assertFalse(self.state_manager.world_manager.get_ur_1201())
        self.assertFalse(self.state_manager.world_manager.get_lr_1201())
        self.assertFalse(self.state_manager.world_manager.get_ll_1201())
        self.assertFalse(self.state_manager.world_manager.get_ul_1201())
        self.assertEqual(self.state_manager.world_manager.get_1201_note_quest(), _1201_note_quest_after)

        self.logic.r45017_action()

        self.assertFalse(self.state_manager.world_manager.get_ur_1201())
        self.assertFalse(self.state_manager.world_manager.get_lr_1201())
        self.assertFalse(self.state_manager.world_manager.get_ll_1201())
        self.assertFalse(self.state_manager.world_manager.get_ul_1201())
        self.assertEqual(self.state_manager.world_manager.get_1201_note_quest(), _1201_note_quest_after_once)


    def test_r45018_action(self):
        self.state_manager.world_manager.set_ur_1201(True)
        self.state_manager.world_manager.set_lr_1201(True)
        self.state_manager.world_manager.set_ll_1201(True)
        self.state_manager.world_manager.set_ul_1201(True)
        _1201_note_quest_before = 1
        _1201_note_quest_after = 0
        _1201_note_quest_after_once = 0
        self.state_manager.world_manager.set_1201_note_quest(_1201_note_quest_before)

        self.assertTrue(self.state_manager.world_manager.get_ur_1201())
        self.assertTrue(self.state_manager.world_manager.get_lr_1201())
        self.assertTrue(self.state_manager.world_manager.get_ll_1201())
        self.assertTrue(self.state_manager.world_manager.get_ul_1201())
        self.assertEqual(self.state_manager.world_manager.get_1201_note_quest(), _1201_note_quest_before)

        self.logic.r45018_action()

        self.assertFalse(self.state_manager.world_manager.get_ur_1201())
        self.assertFalse(self.state_manager.world_manager.get_lr_1201())
        self.assertFalse(self.state_manager.world_manager.get_ll_1201())
        self.assertFalse(self.state_manager.world_manager.get_ul_1201())
        self.assertEqual(self.state_manager.world_manager.get_1201_note_quest(), _1201_note_quest_after)

        self.logic.r45018_action()

        self.assertFalse(self.state_manager.world_manager.get_ur_1201())
        self.assertFalse(self.state_manager.world_manager.get_lr_1201())
        self.assertFalse(self.state_manager.world_manager.get_ll_1201())
        self.assertFalse(self.state_manager.world_manager.get_ul_1201())
        self.assertEqual(self.state_manager.world_manager.get_1201_note_quest(), _1201_note_quest_after_once)


    def test_r45023_action(self):
        who = 'protagonist_character_name'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r45023_action
        )


    def test_r45025_action(self):
        self.state_manager.world_manager.set_has_tearring(False)
        self.state_manager.world_manager.set_has_1201_note(True)

        self.assertFalse(self.state_manager.world_manager.get_has_tearring())
        self.assertTrue(self.state_manager.world_manager.get_has_1201_note())

        self.logic.r45025_action()

        self.assertTrue(self.state_manager.world_manager.get_has_tearring())
        self.assertFalse(self.state_manager.world_manager.get_has_1201_note())

        self.logic.r45025_action()

        self.assertTrue(self.state_manager.world_manager.get_has_tearring())
        self.assertFalse(self.state_manager.world_manager.get_has_1201_note())


    def test_r45000_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_ur_1201(x),
            self.logic.r45000_condition
        )


    def test_r45001_condition(self):
        self.state_manager.world_manager.set_lr_1201(True)
        self.state_manager.world_manager.set_1201_note_quest(0)

        self.assertFalse(self.logic.r45001_condition())

        self.state_manager.world_manager.set_lr_1201(False)
        self.state_manager.world_manager.set_1201_note_quest(1)

        self.assertTrue(self.logic.r45001_condition())


    def test_r45002_condition(self):
        self.state_manager.world_manager.set_lr_1201(True)
        self.state_manager.world_manager.set_1201_note_quest(1)

        self.assertFalse(self.logic.r45002_condition())

        self.state_manager.world_manager.set_lr_1201(False)
        self.state_manager.world_manager.set_1201_note_quest(0)

        self.assertTrue(self.logic.r45002_condition())


    def test_r45003_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_ll_1201(x),
            self.logic.r45003_condition
        )


    def test_r45004_condition(self):
        self.state_manager.world_manager.set_ul_1201(True)
        self.state_manager.world_manager.set_1201_note_quest(2)

        self.assertFalse(self.logic.r45004_condition())

        self.state_manager.world_manager.set_ul_1201(False)
        self.state_manager.world_manager.set_1201_note_quest(0)

        self.assertTrue(self.logic.r45004_condition())


    def test_r45005_condition(self):
        self.state_manager.world_manager.set_ul_1201(True)
        self.state_manager.world_manager.set_1201_note_quest(0)

        self.assertFalse(self.logic.r45005_condition())

        self.state_manager.world_manager.set_ul_1201(False)
        self.state_manager.world_manager.set_1201_note_quest(2)

        self.assertTrue(self.logic.r45005_condition())


if __name__ == '__main__':
    unittest.main() # pragma: no cover
