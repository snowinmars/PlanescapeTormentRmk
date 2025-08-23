import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortualy_zombies.zm1664_logic import Zm1664Logic


class Zm1664LogicTest(LogicTest):
    def setUp(self):
        super(Zm1664LogicTest, self).setUp()
        self.logic = Zm1664Logic(self.settings_manager)


    def test_r47014_action(self):
        self.settings_manager.set_has_logpage(False)
        self.settings_manager.set_has_zm1664_page(False)

        self.assertFalse(self.settings_manager.get_has_logpage())
        self.assertFalse(self.settings_manager.get_has_zm1664_page())

        self.logic.r47014_action()

        self.assertTrue(self.settings_manager.get_has_logpage())
        self.assertTrue(self.settings_manager.get_has_zm1664_page())

        self.logic.r47014_action()

        self.assertTrue(self.settings_manager.get_has_logpage())
        self.assertTrue(self.settings_manager.get_has_zm1664_page())


    def test_r47003_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_has_zm1664_page(x),
            self.logic.r47003_condition
        )


    def test_r47004_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_zm1664_page(x),
            self.logic.r47004_condition
        )


    def test_r47005_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r47005_condition
        )


    def test_r47006_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r47006_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
