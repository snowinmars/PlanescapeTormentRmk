import unittest

from engine.tests import (LogicTest)
from dlgs.inventory.copearc_logic import CopearcLogic

class CopearcLogicTest(LogicTest):
    def test_initialization(self):
        logic = CopearcLogic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = CopearcLogic
        self._methods_are_bound()


    def test_r46725_action(self):
        logic = CopearcLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r46725_action()
        )


    def test_r46728_action(self):
        logic = CopearcLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r46728_action()
        )


    def test_r46733_action(self):
        logic = CopearcLogic(self.settings_manager)

        self.settings_manager.set_has_copper_earring_closed(True)
        self.settings_manager.set_has_copper_earring_opened(False)

        self.assertTrue(self.settings_manager.get_has_copper_earring_closed())
        self.assertFalse(self.settings_manager.get_has_copper_earring_opened())

        logic.r46733_action()

        self.assertFalse(self.settings_manager.get_has_copper_earring_closed())
        self.assertTrue(self.settings_manager.get_has_copper_earring_opened())


    def test_r46725_condition(self):
        logic = CopearcLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_copper_earring_secret(x),
            lambda: logic.r46725_condition()
        )


    def test_r46728_condition(self):
        logic = CopearcLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_copper_earring_secret(x),
            lambda: logic.r46728_condition()
        )
