import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.soego_logic import SoegoLogic


class SoegoLogicTest(LogicTest):
    def setUp(self):
        super(SoegoLogicTest, self).setUp()
        self.logic = SoegoLogic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = SoegoLogic
        self._methods_are_bound()


    def test_soego_init(self):
        self._init_with_location(
            'LOCATION',
            self.logic.soego_init,
            self.settings_manager.get_talked_to_soego_times
        )


    def test_kill_soego(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_soego,
            self.logic.kill_soego
        )


    def test_soego_init(self):
        # TODO [snowinmars]: write the test
        self.logic.soego_init()


    def test_kill_soego(self):
        self._false_then_true_action(
            self.settings_manager.get_dead_soego,
            self.logic.kill_soego
        )


    def test_r1438_action(self):
        note_id = '63982'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r1438_action
        )


    def test_r1439_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r1439_action()


    def test_r1448_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r1448_action
        )


    def test_r1450_action(self):
        note_id = '63982'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r1450_action
        )


    def test_r1453_action(self):
        note_id = '63982'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r1453_action
        )


    def test_r1456_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r1456_action()


    def test_r1457_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r1457_action()


    def test_r1466_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r1466_action
        )


    def test_r1478_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r1478_action()


    def test_r1482_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r1482_action()


    def test_r1490_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r1490_action()


    def test_r1492_action(self):
        self._integer_equals_action(
            self.settings_manager.get_gate_cut_scene,
            2,
            self.logic.r1492_action
        )


    def test_r1493_action(self):
        self._integer_equals_action(
            self.settings_manager.get_gate_cut_scene,
            2,
            self.logic.r1493_action
        )


    def test_r1509_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r1509_action
        )


    def test_r1525_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r1525_action()


    def test_r1528_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r1528_action()


    def test_r1530_action(self):
        self._false_then_true_action(
            self.settings_manager.get_soego_strangle,
            self.logic.r1530_action
        )


    def test_r1531_action(self):
        self._false_then_true_action(
            self.settings_manager.get_soego_strangle,
            self.logic.r1531_action
        )


    def test_r1533_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r1533_action()


    def test_r1535_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r1535_action()


    def test_r4809_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = 1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r4809_action
        )


    def test_r4810_action(self):
        self._false_then_true_action(
            self.settings_manager.get_soego_exposed,
            self.logic.r4810_action
        )


    def test_r4836_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r4836_action()


    def test_r4837_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r4837_action()


    def test_r4861_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r4861_action()


    def test_r4862_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r4862_action()


    def test_r4864_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = 1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r4864_action
        )


    def test_r66706_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r66706_action()


    def test_r66707_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r66707_action()


    def test_r4926_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = 1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            self.logic.r4926_action
        )


    def test_r4931_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r4931_action()


    def test_r4961_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r4961_action()


    def test_r4967_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r4967_action()


    def test_r4975_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r4975_action()


    def test_r4988_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r4988_action()


    def test_r21655_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r21655_action()


    def test_r21656_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r21656_action()


    def test_r21657_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r21657_action()


    def test_r21658_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r21658_action()


    def test_r21660_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r21660_action()


    def test_r21800_action(self):
        note_id = '21805'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r21800_action
        )


    def test_r64569_action(self):
        note_id = '21805'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r64569_action
        )


    def test_r64570_action(self):
        note_id = '21805'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r64570_action
        )


    def test_r66181_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r66181_action()


    def test_r21852_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r21852_action()


    def test_r64623_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r64623_action()


    def test_r64624_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r64624_action()


    def test_r21853_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r21853_action()


    def test_r21854_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r21854_action()


    def test_r24206_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r24206_action()


    def test_r21915_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r21915_action()


    def test_r21914_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r21914_action()


    def test_r21916_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r21916_action()


    def test_r21917_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r21917_action()


    def test_r21956_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r21956_action()


    def test_r21979_action(self):
        self._false_then_true_action(
            self.settings_manager.get_know_silent_king,
            self.logic.r21979_action
        )


    def test_r21986_action(self):
        self._false_then_true_action(
            self.settings_manager.get_know_hargrimm,
            self.logic.r21986_action
        )


    def test_r25248_action(self):
        note_id = '25254'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r25248_action
        )


    def test_r25252_action(self):
        note_id = '25254'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r25252_action
        )


    def test_r25253_action(self):
        note_id = '25254'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r25253_action
        )


    def test_r21994_action(self):
        note_id = '21996'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r21994_action
        )


    def test_r21995_action(self):
        note_id = '21996'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r21995_action
        )


    def test_r21998_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r21998_action()


    def test_r22012_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r22012_action()


    def test_r22024_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r22024_action()


    def test_r22051_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r22051_action()


    def test_r66173_action(self):
        # TODO [snowinmars]: write the test
        self.logic.r66173_action()


    def test_r22058_action(self):
        note_id = '21857'

        self._pickup_journal_note_action(
            note_id,
            self.logic.r22058_action
        )


    def test_r1440_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1440_condition
        )


    def test_r1441_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 11

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r1441_condition
        )


    def test_r1446_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1446_condition
        )


    def test_r1451_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1451_condition
        )


    def test_r1452_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r1452_condition
        )


    def test_r1458_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1458_condition
        )


    def test_r1459_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r1459_condition
        )


    def test_r1464_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1464_condition
        )


    def test_r1469_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1469_condition
        )


    def test_r1470_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 11

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r1470_condition
        )


    def test_r1471_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1471_condition
        )


    def test_r1472_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r1472_condition
        )


    def test_r1478_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_keymo(x),
            self.logic.r1478_condition
        )


    def test_r1479_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_has_keymo(x),
            self.logic.r1479_condition
        )


    def test_r1483_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1483_condition
        )


    def test_r1484_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r1484_condition
        )


    def test_r1487_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r1487_condition
        )


    def test_r1488_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r1488_condition
        )


    def test_r1495_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1495_condition
        )


    def test_r1496_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_appearance(x),
            2,
            self.logic.r1496_condition
        )


    def test_r1497_condition(self):
        self._integer_not_equal_condition(
            lambda x: self.settings_manager.set_appearance(x),
            2,
            self.logic.r1497_condition
        )


    def test_r1506_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1506_condition
        )


    def test_r1512_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1512_condition
        )


    def test_r1513_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 11

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r1513_condition
        )


    def test_r1514_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1514_condition
        )


    def test_r1515_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r1515_condition
        )


    def test_r1518_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1518_condition
        )


    def test_r1520_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 11

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r1520_condition
        )


    def test_r1521_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1521_condition
        )


    def test_r1522_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r1522_condition
        )


    def test_r1530_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r1530_condition
        )


    def test_r1531_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r1531_condition
        )


    def test_r4805_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r4805_condition()


    def test_r4806_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r4806_condition()


    def test_r4807_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r4807_condition()


    def test_r4810_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r4810_condition()


    def test_r4811_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r4811_condition()


    def test_r4832_condition(self):
        self._integer_lt_condition(
            lambda x: self.settings_manager.set_pharod_value(x),
            1,
            self.logic.r4832_condition
        )


    def test_r4833_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_journal(x),
            self.logic.r4833_condition
        )


    def test_r4834_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_gate_open(x),
            self.logic.r4834_condition
        )


    def test_r4835_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_gate_open(x),
            self.logic.r4835_condition
        )


    def test_r4836_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_vaxis_lawful(x),
            self.logic.r4836_condition
        )


    def test_r4837_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_lawful(x),
            self.logic.r4837_condition
        )


    def test_r4839_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_gate_open(x),
            self.logic.r4839_condition
        )


    def test_r916_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_gate_open(x),
            self.logic.r916_condition
        )


    def test_r4853_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_gate_open(x),
            self.logic.r4853_condition
        )


    def test_r4854_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_gate_open(x),
            self.logic.r4854_condition
        )


    def test_r4858_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_gate_open(x),
            self.logic.r4858_condition
        )


    def test_r4859_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_gate_open(x),
            self.logic.r4859_condition
        )


    def test_r4866_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_gate_open(x),
            self.logic.r4866_condition
        )


    def test_r4867_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_gate_open(x),
            self.logic.r4867_condition
        )


    def test_r4870_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_gate_open(x),
            self.logic.r4870_condition
        )


    def test_r4871_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_gate_open(x),
            self.logic.r4871_condition
        )


    def test_r4876_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_gate_open(x),
            self.logic.r4876_condition
        )


    def test_r4877_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_gate_open(x),
            self.logic.r4877_condition
        )


    def test_r4879_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4879_condition
        )


    def test_r4882_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_gate_open(x),
            self.logic.r4882_condition
        )


    def test_r4883_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_gate_open(x),
            self.logic.r4883_condition
        )


    def test_r4887_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_gate_open(x),
            self.logic.r4887_condition
        )


    def test_r4888_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_gate_open(x),
            self.logic.r4888_condition
        )


    def test_r4892_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_gate_open(x),
            self.logic.r4892_condition
        )


    def test_r4893_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_gate_open(x),
            self.logic.r4893_condition
        )


    def test_r4896_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_gate_open(x),
            self.logic.r4896_condition
        )


    def test_r4897_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_gate_open(x),
            self.logic.r4897_condition
        )


    def test_r66706_condition(self):
        self._integer_lt_condition(
            lambda x: self.settings_manager.set_appearance(x),
            2,
            self.logic.r66706_condition
        )


    def test_r66707_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_appearance(x),
            2,
            self.logic.r66707_condition
        )


    def test_r4910_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4910_condition
        )


    def test_r4912_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4912_condition
        )


    def test_r4913_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4913_condition
        )


    def test_r4917_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4917_condition
        )


    def test_r4921_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4921_condition
        )


    def test_r4929_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_dhall_value(x),
            0,
            self.logic.r4929_condition
        )


    def test_r4930_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_deionarra_value(x),
            0,
            self.logic.r4930_condition
        )


    def test_r4931_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r4931_condition()


    def test_r4932_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r4932_condition()


    def test_r4951_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4951_condition
        )


    def test_r4955_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4955_condition
        )


    def test_r4958_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4958_condition
        )


    def test_r4959_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4959_condition
        )


    def test_r4965_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_deionarra_value(x),
            0,
            self.logic.r4965_condition
        )


    def test_r4967_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_soego_adahn(x),
            self.logic.r4967_condition
        )


    def test_r4968_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_soego_adahn(x),
            self.logic.r4968_condition
        )


    def test_r4975_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_keymo(x),
            self.logic.r4975_condition
        )


    def test_r4976_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_has_keymo(x),
            self.logic.r4976_condition
        )


    def test_r4984_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4984_condition
        )


    def test_r4985_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 11

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4985_condition
        )


    def test_r4988_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_keymo(x),
            self.logic.r4988_condition
        )


    def test_r4989_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_has_keymo(x),
            self.logic.r4989_condition
        )


    def test_r4991_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4991_condition
        )


    def test_r4992_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 11

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4992_condition
        )


    def test_r4993_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4993_condition
        )


    def test_r4994_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4994_condition
        )


    def test_r21655_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_soego_value(x),
            0,
            self.logic.r21655_condition
        )


    def test_r21656_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_soego_value(x),
            0,
            self.logic.r21656_condition
        )


    def test_r21657_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_soego_value(x),
            0,
            self.logic.r21657_condition
        )


    def test_r21658_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_soego_value(x),
            0,
            self.logic.r21658_condition
        )


    def test_r21660_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_soego_value(x),
            0,
            self.logic.r21660_condition
        )


    def test_r21663_condition(self):
        self._integer_not_equal_condition(
            lambda x: self.settings_manager.set_dustman_initiation(x),
            5,
            self.logic.r21663_condition
        )


    def test_r21800_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r21800_condition()


    def test_r64569_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r64569_condition()


    def test_r64547_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r64547_condition()


    def test_r21808_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_mortuary_soego_killed(x),
            self.logic.r21808_condition
        )


    def test_r21811_condition(self):
        self._integer_not_equal_condition(
            lambda x: self.settings_manager.set_dustman_initiation(x),
            5,
            self.logic.r21811_condition
        )


    def test_r21815_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_soego_strangle(x),
            self.logic.r21815_condition
        )


    def test_r21818_condition(self):
        self._integer_not_equal_condition(
            lambda x: self.settings_manager.set_dustman_initiation(x),
            5,
            self.logic.r21818_condition
        )


    def test_r21823_condition(self):
        self._integer_not_equal_condition(
            lambda x: self.settings_manager.set_dustman_initiation(x),
            5,
            self.logic.r21823_condition
        )


    def test_r66181_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r66181_condition()


    def test_r21852_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r21852_condition()


    def test_r64623_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r64623_condition()


    def test_r64624_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r64624_condition()


    def test_r21853_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r21853_condition()


    def test_r21854_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r21854_condition()


    def test_r24206_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r24206_condition()


    def test_r21915_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r21915_condition()


    def test_r21914_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r21914_condition()


    def test_r21916_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_soego_journal(x),
            self.logic.r21916_condition
        )


    def test_r21917_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_doubtful_skel(x),
            1,
            self.logic.r21917_condition
        )


    def test_r21920_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r21920_condition()


    def test_r21922_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r21922_condition()


    def test_r21944_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_hargrimm(x),
            self.logic.r21944_condition
        )


    def test_r21945_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_acaste(x),
            self.logic.r21945_condition
        )


    def test_r21946_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_stale_mary(x),
            self.logic.r21946_condition
        )


    def test_r21947_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_silent_king(x),
            self.logic.r21947_condition
        )


    def test_r21948_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r21948_condition
        )


    def test_r21949_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            self.logic.r21949_condition
        )


    def test_r25248_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r25248_condition()


    def test_r25252_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r25252_condition()


    def test_r25253_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r25253_condition()


    def test_r21994_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_cr_vic(x),
            1,
            self.logic.r21994_condition
        )


    def test_r21995_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_cr_vic(x),
            1,
            self.logic.r21995_condition
        )


    def test_r22015_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_lawful_soego_1(x),
            self.logic.r22015_condition
        )


    def test_r22016_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_lawful_soego_1(x),
            self.logic.r22016_condition
        )


    def test_r22020_condition(self):
        self._integer_not_equal_condition(
            lambda x: self.settings_manager.set_dustman_initiation(x),
            5,
            self.logic.r22020_condition
        )


    def test_r22035_condition(self):
        self._integer_not_equal_condition(
            lambda x: self.settings_manager.set_dustman_initiation(x),
            5,
            self.logic.r22035_condition
        )


    def test_r22051_condition(self):
        self._integer_equal_condition(
            lambda x: self.settings_manager.set_soego_value(x),
            0,
            self.logic.r22051_condition
        )


    def test_r66173_condition(self):
        self._integer_gt_condition(
            lambda x: self.settings_manager.set_soego_value(x),
            0,
            self.logic.r66173_condition
        )


    def test_r64617_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r64617_condition()


    def test_r64618_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_mortuary_soego_killed(x),
            self.logic.r64618_condition
        )


    def test_r64625_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r64625_condition()


    def test_r64626_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_mortuary_soego_killed(x),
            self.logic.r64626_condition
        )


    def test_r22058_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r22058_condition()


    def test_r22060_condition(self):
        # TODO [snowinmars]: write the test
        self.logic.r22060_condition()


    def test_r66716_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r66716_condition
        )


    def test_r66717_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r66717_condition
        )


    def test_r66721_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r66721_condition
        )


    def test_r66722_condition(self):
        who = 'protagonist'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r66722_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
