import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortuary.xach_logic import XachLogic


class XachLogicTest(LogicTest):
    def setUp(self):
        super(XachLogicTest, self).setUp()
        self.logic = XachLogic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = XachLogic
        self._methods_are_bound()


    def test_xach_init(self):
        self._init_with_location(
            'mortuary_f1r5',
            self.logic.xach_init,
            self.settings_manager.get_talked_to_xach_times
        )


    def test_kill_xach(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_xach,
            self.logic.kill_xach
        )


    def test_r502_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        before = self.settings_manager.character_manager.get_property(who, prop)

        self.logic.r502_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(before + delta, after)


    def test_r524_action(self):
        self._false_then_true_action(
            self.settings_manager.get_vaxis_exposed,
            self.logic.r524_action
        )


    def test_r645_action(self):
        self._integer_equals_action(
            self.settings_manager.get_xachariah_ring,
            1,
            self.logic.r645_action
        )


    def test_r663_action(self):
        self._false_then_true_action(
            self.settings_manager.get_has_xac_liver,
            self.logic.r663_action
        )


    def test_r666_action(self):
        self.assertEqual(self.settings_manager.get_xachariah_ring(), 0)
        self.assertFalse(self.settings_manager.get_has_xac_heart())

        self.logic.r666_action()

        self.assertEqual(self.settings_manager.get_xachariah_ring(), 2)
        self.assertTrue(self.settings_manager.get_has_xac_heart())


    def test_r672_action(self):
        self._false_then_true_action(
            self.settings_manager.get_xachariah_request,
            self.logic.r672_action
        )


    def test_r671_action(self):
        self._false_then_true_action(
            self.settings_manager.get_xachariah_request,
            self.logic.r671_action
        )


    def test_r679_action(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_xach,
            self.logic.r679_action
        )


    def test_r681_action(self):
       self.settings_manager.set_xachariah_gutted(True)
       self._true_then_false_action(
            self.settings_manager.get_xachariah_gutted,
            self.logic.r681_action
        )


    def test_r698_action(self):
        self._false_then_true_action(
            self.settings_manager.get_xachariah_request,
            self.logic.r698_action
        )


    def test_r502_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r502_condition
        )


    def test_r503_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r503_condition
        )


    def test_r1354_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r1354_condition
        )


    def test_r1355_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r1355_condition
        )


    def test_r508_condition(self):
        who = 'protagonist'
        prop_int = 'intelligence'
        prop_cha = 'charisma'
        delta_int = 16
        delta_cha = 17

        self.settings_manager.character_manager.set_property(who, prop_int, delta_int - 1)
        self.settings_manager.character_manager.set_property(who, prop_cha, delta_cha + 1)
        self.assertFalse(self.logic.r508_condition())

        self.settings_manager.character_manager.set_property(who, prop_int, delta_int)
        self.settings_manager.character_manager.set_property(who, prop_cha, delta_cha)
        self.assertFalse(self.logic.r508_condition())

        self.settings_manager.character_manager.set_property(who, prop_int, delta_int + 1)
        self.settings_manager.character_manager.set_property(who, prop_cha, delta_cha - 1)
        self.assertTrue(self.logic.r508_condition())


    def test_r63307_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 16

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r63307_condition
        )


    def test_r506_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_xachariah_name(x),
            self.logic.r506_condition
        )


    def test_r510_condition(self):
        who = 'protagonist'
        prop_int = 'intelligence'
        prop_cha = 'charisma'
        delta_int = 16
        delta_cha = 17

        self.settings_manager.character_manager.set_property(who, prop_int, delta_int - 1)
        self.settings_manager.character_manager.set_property(who, prop_cha, delta_cha + 1)
        self.assertFalse(self.logic.r510_condition())

        self.settings_manager.character_manager.set_property(who, prop_int, delta_int)
        self.settings_manager.character_manager.set_property(who, prop_cha, delta_cha)
        self.assertFalse(self.logic.r510_condition())

        self.settings_manager.character_manager.set_property(who, prop_int, delta_int + 1)
        self.settings_manager.character_manager.set_property(who, prop_cha, delta_cha - 1)
        self.assertTrue(self.logic.r510_condition())

    def test_r63308_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 16

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r63308_condition
        )


    def test_r521_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_xachariah_name(x),
            self.logic.r521_condition
        )


    def test_r518_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r518_condition
        )


    def test_r1394_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r1394_condition
        )


    def test_r688_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r688_condition
        )


    def test_r1393_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r1393_condition
        )


    def test_r524_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r524_condition
        )


    def test_r527_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r527_condition
        )


    def test_r1392_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r1392_condition
        )


    def test_r63484_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_xachariah_ring(x),
            1,
            self.logic.r63484_condition
        )


    def test_r1391_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r1391_condition
        )


    def test_r641_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r641_condition
        )


    def test_r545_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r545_condition
        )


    def test_r1390_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r1390_condition
        )


    def test_r537_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r537_condition
        )


    def test_r1389_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r1389_condition
        )


    def test_r538_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 15

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r538_condition
        )


    def test_r546_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r546_condition
        )


    def test_r1388_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r1388_condition
        )


    def test_r542_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 17

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r542_condition
        )


    def test_r544_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r544_condition
        )


    def test_r1387_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r1387_condition
        )


    def test_r548_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 15

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r548_condition
        )


    def test_r549_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r549_condition
        )


    def test_r1386_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r1386_condition
        )


    def test_r553_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r553_condition
        )


    def test_r1385_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r1385_condition
        )


    def test_r556_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r556_condition
        )


    def test_r1384_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r1384_condition
        )


    def test_r560_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r560_condition
        )


    def test_r1383_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r1383_condition
        )


    def test_r565_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r565_condition
        )


    def test_r1382_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r1382_condition
        )


    def test_r571_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r571_condition
        )


    def test_r1381_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r1381_condition
        )


    def test_r574_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r574_condition
        )


    def test_r1380_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r1380_condition
        )


    def test_r63234_condition(self):
        self._integer_lt_condition(
            lambda x: self.settings_manager.set_xachariah_ring(x),
            2,
            self.logic.r63234_condition
        )


    def test_r579_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r579_condition
        )


    def test_r1379_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r1379_condition
        )


    def test_r587_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r587_condition
        )


    def test_r1378_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r1378_condition
        )


    def test_r592_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r592_condition
        )


    def test_r1377_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r1377_condition
        )


    def test_r599_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r599_condition
        )


    def test_r1376_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r1376_condition
        )


    def test_r601_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_dakkon_slave(x),
            self.logic.r601_condition
        )


    def test_r604_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r604_condition
        )


    def test_r1375_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r1375_condition
        )


    def test_r607_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r607_condition
        )


    def test_r1374_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r1374_condition
        )


    def test_r609_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_deionarra_death_truth(x),
            0,
            self.logic.r609_condition
        )


    def test_r611_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r611_condition
        )


    def test_r1373_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r1373_condition
        )


    def test_r619_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r619_condition
        )


    def test_r1372_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r1372_condition
        )


    def test_r624_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r624_condition
        )


    def test_r1371_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r1371_condition
        )


    def test_r628_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r628_condition
        )


    def test_r1370_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r1370_condition
        )


    def test_r631_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_xachariah_name(x),
            self.logic.r631_condition
        )


    def test_r632_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_know_xachariah_name(x),
            self.logic.r632_condition
        )


    def test_r634_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_xachariah_name(x),
            self.logic.r634_condition
        )


    def test_r635_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_know_xachariah_name(x),
            self.logic.r635_condition
        )


    def test_r636_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_xachariah_name(x),
            self.logic.r636_condition
        )


    def test_r648_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r648_condition
        )


    def test_r1369_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r1369_condition
        )


    def test_r652_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r652_condition
        )


    def test_r1368_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r1368_condition
        )


    def test_r647_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_scalpel(x),
            self.logic.r647_condition
        )


    def test_r653_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_has_scalpel(x),
            self.logic.r653_condition
        )


    def test_r660_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r660_condition
        )


    def test_r1367_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r1367_condition
        )


    def test_r669_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r669_condition
        )


    def test_r1366_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r1366_condition
        )


    def test_r691_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r691_condition
        )


    def test_r1365_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r1365_condition
        )


    def test_r696_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r696_condition
        )


    def test_r1364_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r1364_condition
        )


    def test_r698_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r698_condition
        )


    def test_r633_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r633_condition
        )


    def test_r63628_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r63628_condition
        )


    def test_r63629_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_xachariah_request(x),
            self.logic.r63629_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
