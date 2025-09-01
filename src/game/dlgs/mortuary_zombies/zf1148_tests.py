import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortuary_zombies.zf1148_logic import (Zf1148LogicGenerated, Zf1148Logic)


class Zf1148LogicTest(LogicTest):
    def setUp(self):
        super(Zf1148LogicTest, self).setUp()
        self.logic = Zf1148Logic(self.settings_manager)


class Zf1148LogicGeneratedTest(LogicTest):
    def setUp(self):
        super(Zf1148LogicGeneratedTest, self).setUp()
        self.logic = Zf1148LogicGenerated(self.settings_manager)


    def test_r35243_action(self):
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = -1
        self.settings_manager.set_zombie_chaotic(False)

        law_before = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertFalse(self.settings_manager.get_zombie_chaotic())

        self.logic.r35243_action()

        law_after = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.settings_manager.get_zombie_chaotic())

        self.logic.r35243_action()

        law_after_once = self.settings_manager.character_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.settings_manager.get_zombie_chaotic())


    def test_r35243_condition(self):
        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r35243_condition
        )


    def test_r35260_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            self.logic.r35260_condition
        )


    def test_r35261_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            self.logic.r35261_condition
        )


    def test_r35262_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            self.logic.r35262_condition
        )


    def test_r35267_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35267_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35267_condition())


    def test_r35268_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35268_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35268_condition())


    def test_r35269_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35269_condition
        )


    def test_r35270_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35270_condition
        )


    def test_r35271_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35271_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35271_condition())


    def test_r35272_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35272_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35272_condition())


    def test_r35245_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35245_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35245_condition())


    def test_r35258_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35258_condition
        )


    def test_r35259_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35259_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35259_condition())


    def test_r35264_condition(self):
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35264_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35264_condition())


    def test_r35265_condition(self):
        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_morte_quip(x),
            self.logic.r35265_condition
        )


    def test_r35266_condition(self):
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_quip(True)

        self.assertFalse(self.logic.r35266_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_quip(False)

        self.assertTrue(self.logic.r35266_condition())


if __name__ == '__main__':
    unittest.main() # pragma: no cover
