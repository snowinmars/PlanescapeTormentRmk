import unittest

from game.engine.tests import (LogicTest)
from game.dlgs.mortuary.giantsk_logic import GiantskLogic

class GiantskLogicTest(LogicTest):
    def test_ctor(self):
        logic = GiantskLogic(self.settings_manager)
        self.assertIsNotNone(logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = GiantskLogic
        self._methods_are_bound()


    def test_giantsk_init(self):
        self._init_with_location(
            'mortuary_f1rc',
            GiantskLogic(self.settings_manager).giantsk_init,
            self.settings_manager.get_talked_to_giantsk_times
        )


    def test_kill_giantsk(self):
        logic = GiantskLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_dead_giantsk(),
            lambda: logic.kill_giantsk()
        )


    def test_r293_action(self):
        logic = GiantskLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            lambda: logic.r293_action()
        )


    def test_r1165_action(self):
        logic = GiantskLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            lambda: logic.r1165_action()
        )


    def test_r4042_action(self):
        logic = GiantskLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_mortualy_alarmed(),
            lambda: logic.r4042_action()
        )


    def test_r4079_action(self):
        logic = GiantskLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 500

        self.assertEqual(self.settings_manager.get_giant_skeleton_enchant(), 0)
        exp_before = self.settings_manager.character_manager.get_property(who, prop)

        logic.r4079_action()

        self.assertEqual(self.settings_manager.get_giant_skeleton_enchant(), 1)
        exp_after = self.settings_manager.character_manager.get_property(who, prop)
        self.assertEqual(exp_before + delta, exp_after)


    def test_r4087_action(self):
        logic = GiantskLogic(self.settings_manager)
        delta = 1

        self.assertFalse(self.settings_manager.get_dead_giantsk())
        before = self.settings_manager.get_giant_skeleton_enchant()

        logic.r4087_action()

        self.assertTrue(self.settings_manager.get_dead_giantsk())
        after = self.settings_manager.get_giant_skeleton_enchant()
        self.assertEqual(before + delta, after)


    def test_r4088_action(self):
        logic = GiantskLogic(self.settings_manager)
        delta = 1

        self.assertFalse(self.settings_manager.get_dead_giantsk())
        before = self.settings_manager.get_giant_skeleton_enchant()

        logic.r4088_action()

        self.assertTrue(self.settings_manager.get_dead_giantsk())
        after = self.settings_manager.get_giant_skeleton_enchant()
        self.assertEqual(before + delta, after)


    def test_r4095_action(self):
        logic = GiantskLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_mortualy_alarmed(),
            lambda: logic.r4095_action()
        )


    def test_r4096_action(self):
        logic = GiantskLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 800

        self._change_prop(
            lambda: self.settings_manager.character_manager.get_property(who, prop),
            delta,
            lambda: logic.r4096_action()
        )
