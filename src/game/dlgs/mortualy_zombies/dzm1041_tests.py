import unittest

from engine.tests import (LogicTest)
from dlgs.mortualy_zombies.dzm1041_logic import Dzm1041Logic

class Dzm1041LogicTest(LogicTest):
    def test_initialization(self):
        logic = Dzm1041Logic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = Dzm1041Logic
        self._methods_are_bound()


    def test_dzm1041_init(self):
        logic = Dzm1041Logic(self.settings_manager)
        id = 'mortuary_f2r1'

        self.assertNotEqual(self.settings_manager.glm.get_location(), id)
        self.assertFalse(self.settings_manager.get_meet_dzm1041())

        logic.dzm1041_init()

        self.assertEqual(self.settings_manager.glm.get_location(), id)
        self.assertTrue(self.settings_manager.get_meet_dzm1041(), True)


    def test_kill_dzm1041(self):
        logic = Dzm1041Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 65

        self.assertFalse(self.settings_manager.get_dead_dzm1041())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.kill_dzm1041()

        self.assertTrue(self.settings_manager.get_dead_dzm1041())
        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(expBefore + delta, expAfter)


    def test_set_know_bei_name(self):
        logic = Dzm1094Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_know_bei_name(),
            lambda: logic.set_know_bei_name()
        )


    def test_r6576_action(self):
        logic = Dzm1094Logic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r6576_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)

        logic.r6576_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawAfter + delta, lawAfterOnce)


    def test_r6583_action(self):
        logic = Dzm1094Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_meet_bei(),
            lambda: logic.r6583_action()
        )


    def test_r9096_action(self):
        logic = Dzm1094Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_meet_bei(),
            lambda: logic.r9096_action()
        )


    def test_r9097_action(self):
        logic = Dzm1094Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_meet_bei(),
            lambda: logic.r9097_action()
        )


    def test_r830_action(self):
        logic = DdhallLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = 1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r830_action()
        )


    def test_r9162_action(self):
        logic = DdhallLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r9162_action()
        )


    def test_r9200_action(self):
        logic = DdhallLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = 1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r9200_action()
        )


    def test_r9201_action(self):
        logic = DdhallLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r9201_action()
        )


    def test_r9207_action(self):
        logic = DdhallLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = 1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r9207_action()
        )


    def test_r9208_action(self):
        logic = DvaxisLogic(self.settings_manager)
        who = 'protagonist'
        propLaw = 'law'
        propGood = 'good'
        delta = -1

        lawBefore = self.settings_manager.gcm.get_character_property(who, propLaw)
        goodBefore = self.settings_manager.gcm.get_character_property(who, propGood)

        logic.r9208_action()

        lawAfter = self.settings_manager.gcm.get_character_property(who, propLaw)
        goodAfter = self.settings_manager.gcm.get_character_property(who, propGood)
        self.assertEqual(lawBefore + delta, lawAfter)
        self.assertEqual(goodBefore + delta, goodAfter)

        logic.r9208_action()

        lawAfterOnce = self.settings_manager.gcm.get_character_property(who, propLaw)
        goodAfterOnce = self.settings_manager.gcm.get_character_property(who, propGood)
        self.assertEqual(lawAfter, lawAfterOnce)
        self.assertEqual(goodAfter, goodAfterOnce)


    def test_r9209_action(self):
        logic = Dzm1094Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_know_xixi(),
            lambda: logic.r9209_action()
        )


    def test_r9210_action(self):
        logic = Dzm1094Logic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_know_xixi(),
            lambda: logic.r9210_action()
        )


    def test_get_know_bei_name(self):
        logic = Dzm1445Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_bei_name(x),
            lambda: logic.get_know_bei_name()
        )


    def test_r6576_condition(self):
        logic = Dzm1445Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r6576_condition()
        )


    def test_r6577_condition(self):
        logic = Dzm1445Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r6577_condition()
        )


    def test_r6578_condition(self):
        logic = Dzm1445Logic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r6578_condition()
        )


    def test_r6579_condition(self):
        logic = Dzm1094Logic(self.settings_manager)

        self.assertFalse(logic.r6579_condition())

        self.settings_manager.set_can_speak_with_dead(True)
        self.assertTrue(logic.r6579_condition())


    def test_r6579_condition(self):
        logic = Dzm1094Logic(self.settings_manager)

        self.assertTrue(logic.r6579_condition())

        self.settings_manager.set_can_speak_with_dead(True)
        self.assertFalse(logic.r6579_condition())


    def test_r9109_condition(self):
        logic = Dzm1445Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_meet_pharod(x),
            lambda: logic.r9109_condition()
        )


    def test_r9145_condition(self):
        logic = Dzm1445Logic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_meet_pharod(x),
            lambda: logic.r9145_condition()
        )


    def test_r9187_condition(self):
        logic = DdhallLogic(self.settings_manager)

        who = 'protagonist'
        prop = 'intelligence'
        value = 13

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r9187_condition()
        )
