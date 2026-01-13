import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.deionarra_logic import (DeionarraLogicGenerated, DeionarraLogic)


class DeionarraLogicGeneratedTest(LogicTest):
    def setUp(self):
        super(DeionarraLogicGeneratedTest, self).setUp()
        self.logic = DeionarraLogicGenerated(self.state_manager)


    def test_r701_action(self):
        self.logic.r701_action()


    def test_r699_action(self):
        self.logic.r699_action()


    def test_r9616_action(self):
        self.logic.r9616_action()


    def test_r705_action(self):
        self.logic.r705_action()


    def test_r707_action(self):
        self.state_manager.world_manager.set_deionarra_value(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_deionarra_value,
            1,
            self.logic.r707_action
        )


    def test_r708_action(self):
        self.state_manager.world_manager.set_deionarra_value(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_deionarra_value,
            1,
            self.logic.r708_action
        )


    def test_r709_action(self):
        self.state_manager.world_manager.set_deionarra_value(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_deionarra_value,
            1,
            self.logic.r709_action
        )


    def test_r712_action(self):
        who_good = 'protagonist_character_name'
        prop_good = 'good'
        delta_good = -1
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -1

        good_before = self.state_manager.characters_manager.get_property(who_good, prop_good)
        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)

        self.logic.r712_action()

        good_after = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_before + delta_good, good_after)
        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)

        self.logic.r712_action()

        good_after_once = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_after, good_after_once)
        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after, law_after_once)


    def test_r700_action(self):
        self.state_manager.world_manager.set_deionarra_value(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_deionarra_value,
            2,
            self.logic.r700_action
        )


    def test_r702_action(self):
        who_good = 'protagonist_character_name'
        prop_good = 'good'
        delta_good = -1
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -1

        good_before = self.state_manager.characters_manager.get_property(who_good, prop_good)
        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)

        self.logic.r702_action()

        good_after = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_before + delta_good, good_after)
        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)

        self.logic.r702_action()

        good_after_once = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_after, good_after_once)
        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after, law_after_once)


    def test_r747_action(self):
        self.state_manager.world_manager.set_deionarra_value(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_deionarra_value,
            2,
            self.logic.r747_action
        )


    def test_r1313_action(self):
        self.state_manager.world_manager.set_deionarra_value(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_deionarra_value,
            2,
            self.logic.r1313_action
        )


    def test_r13255_action(self):
        self.state_manager.world_manager.set_deionarra_value(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_deionarra_value,
            2,
            self.logic.r13255_action
        )


    def test_r803_action(self):
        self.logic.r803_action()


    def test_r6085_action(self):
        self.logic.r6085_action()


    def test_r13256_action(self):
        self.logic.r13256_action()


    def test_r780_action(self):
        who_good = 'protagonist_character_name'
        prop_good = 'good'
        delta_good = -2
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -2

        good_before = self.state_manager.characters_manager.get_property(who_good, prop_good)
        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)

        self.logic.r780_action()

        good_after = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_before + delta_good, good_after)
        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)

        self.logic.r780_action()

        good_after_once = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_after, good_after_once)
        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after, law_after_once)


    def test_r6093_action(self):
        who_good = 'protagonist_character_name'
        prop_good = 'good'
        delta_good = 2
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = 2

        good_before = self.state_manager.characters_manager.get_property(who_good, prop_good)
        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)

        self.logic.r6093_action()

        good_after = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_before + delta_good, good_after)
        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)

        self.logic.r6093_action()

        good_after_once = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_after, good_after_once)
        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after, law_after_once)


    def test_r805_action(self):
        who_good = 'protagonist_character_name'
        prop_good = 'good'
        delta_good = -2
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -2

        good_before = self.state_manager.characters_manager.get_property(who_good, prop_good)
        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)

        self.logic.r805_action()

        good_after = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_before + delta_good, good_after)
        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)

        self.logic.r805_action()

        good_after_once = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_after, good_after_once)
        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after, law_after_once)


    def test_r808_action(self):
        who_good = 'protagonist_character_name'
        prop_good = 'good'
        delta_good = 2
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = 2

        good_before = self.state_manager.characters_manager.get_property(who_good, prop_good)
        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)

        self.logic.r808_action()

        good_after = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_before + delta_good, good_after)
        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)

        self.logic.r808_action()

        good_after_once = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_after, good_after_once)
        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after, law_after_once)


    def test_r786_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_prophecy,
            self.logic.r786_action
        )


    def test_r6081_action(self):
        self.state_manager.world_manager.set_deionarra_value(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_deionarra_value,
            2,
            self.logic.r6081_action
        )


    def test_r6082_action(self):
        self.state_manager.world_manager.set_deionarra_value(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_deionarra_value,
            2,
            self.logic.r6082_action
        )


    def test_r13257_action(self):
        self.state_manager.world_manager.set_deionarra_value(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_deionarra_value,
            2,
            self.logic.r13257_action
        )


    def test_j26087_s29_r810_action(self):
        note_id = '26087'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j26087_s29_r810_action
        )


    def test_r6129_action(self):
        deionarra_value_before = 0
        deionarra_value_after = 1
        deionarra_value_after_once = 1
        self.state_manager.world_manager.set_deionarra_value(deionarra_value_before)
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -1

        self.assertEqual(self.state_manager.world_manager.get_deionarra_value(), deionarra_value_before)
        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)

        self.logic.r6129_action()

        self.assertEqual(self.state_manager.world_manager.get_deionarra_value(), deionarra_value_after)
        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)

        self.logic.r6129_action()

        self.assertEqual(self.state_manager.world_manager.get_deionarra_value(), deionarra_value_after_once)
        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after, law_after_once)


    def test_r6131_action(self):
        deionarra_value_before = 0
        deionarra_value_after = 1
        deionarra_value_after_once = 1
        self.state_manager.world_manager.set_deionarra_value(deionarra_value_before)
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -1

        self.assertEqual(self.state_manager.world_manager.get_deionarra_value(), deionarra_value_before)
        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)

        self.logic.r6131_action()

        self.assertEqual(self.state_manager.world_manager.get_deionarra_value(), deionarra_value_after)
        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)

        self.logic.r6131_action()

        self.assertEqual(self.state_manager.world_manager.get_deionarra_value(), deionarra_value_after_once)
        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after, law_after_once)


    def test_r6132_action(self):
        deionarra_value_before = 0
        deionarra_value_after = 1
        deionarra_value_after_once = 1
        self.state_manager.world_manager.set_deionarra_value(deionarra_value_before)
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -1

        self.assertEqual(self.state_manager.world_manager.get_deionarra_value(), deionarra_value_before)
        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)

        self.logic.r6132_action()

        self.assertEqual(self.state_manager.world_manager.get_deionarra_value(), deionarra_value_after)
        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)

        self.logic.r6132_action()

        self.assertEqual(self.state_manager.world_manager.get_deionarra_value(), deionarra_value_after_once)
        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after, law_after_once)


    def test_r6133_action(self):
        self.state_manager.world_manager.set_deionarra_value(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_deionarra_value,
            1,
            self.logic.r6133_action
        )


    def test_r6095_action(self):
        who = 'protagonist_character_name'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r6095_action
        )


    def test_r6097_action(self):
        who = 'protagonist_character_name'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r6097_action
        )


    def test_r6100_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_deionarra_curse,
            self.logic.r6100_action
        )


    def test_r6101_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_deionarra_curse,
            self.logic.r6101_action
        )


    def test_r6148_action(self):
        self.state_manager.world_manager.set_deionarra_portal(False)
        who_experience = 'protagonist_character_name'
        prop_experience = 'experience'
        delta_experience = 500

        self.assertFalse(self.state_manager.world_manager.get_deionarra_portal())
        experience_before = self.state_manager.characters_manager.get_property(who_experience, prop_experience)

        self.logic.r6148_action()

        self.assertTrue(self.state_manager.world_manager.get_deionarra_portal())
        experience_after = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)

        self.logic.r6148_action()

        self.assertTrue(self.state_manager.world_manager.get_deionarra_portal())
        experience_after_once = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)


    def test_r6154_action(self):
        self.state_manager.world_manager.set_deionarra_value(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_deionarra_value,
            2,
            self.logic.r6154_action
        )


    def test_r6155_action(self):
        self.state_manager.world_manager.set_deionarra_value(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_deionarra_value,
            2,
            self.logic.r6155_action
        )


    def test_r13258_action(self):
        self.state_manager.world_manager.set_deionarra_value(3)
        self._integer_equals_action(
            self.state_manager.world_manager.get_deionarra_value,
            2,
            self.logic.r13258_action
        )


    def test_r63371_action(self):
        self.logic.r63371_action()


    def test_r64594_action(self):
        self.logic.r64594_action()


    def test_r63373_action(self):
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = 3
        who_good = 'protagonist_character_name'
        prop_good = 'good'
        delta_good = 1

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        good_before = self.state_manager.characters_manager.get_property(who_good, prop_good)

        self.logic.r63373_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        good_after = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_before + delta_good, good_after)

        self.logic.r63373_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after, law_after_once)
        good_after_once = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_after, good_after_once)


    def test_r63374_action(self):
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -3
        who_good = 'protagonist_character_name'
        prop_good = 'good'
        delta_good = -1

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        good_before = self.state_manager.characters_manager.get_property(who_good, prop_good)

        self.logic.r63374_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        good_after = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_before + delta_good, good_after)

        self.logic.r63374_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after, law_after_once)
        good_after_once = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_after, good_after_once)


    def test_r63376_action(self):
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -1
        who_good = 'protagonist_character_name'
        prop_good = 'good'
        delta_good = -2

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        good_before = self.state_manager.characters_manager.get_property(who_good, prop_good)

        self.logic.r63376_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        good_after = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_before + delta_good, good_after)

        self.logic.r63376_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after, law_after_once)
        good_after_once = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_after, good_after_once)


    def test_r63377_action(self):
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = 1
        who_good = 'protagonist_character_name'
        prop_good = 'good'
        delta_good = 1

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        good_before = self.state_manager.characters_manager.get_property(who_good, prop_good)

        self.logic.r63377_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        good_after = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_before + delta_good, good_after)

        self.logic.r63377_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after, law_after_once)
        good_after_once = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_after, good_after_once)


    def test_r63380_action(self):
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -1
        who_good = 'protagonist_character_name'
        prop_good = 'good'
        delta_good = -1

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        good_before = self.state_manager.characters_manager.get_property(who_good, prop_good)

        self.logic.r63380_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        good_after = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_before + delta_good, good_after)

        self.logic.r63380_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after, law_after_once)
        good_after_once = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_after, good_after_once)


    def test_r63381_action(self):
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = 1
        who_good = 'protagonist_character_name'
        prop_good = 'good'
        delta_good = 1

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        good_before = self.state_manager.characters_manager.get_property(who_good, prop_good)

        self.logic.r63381_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        good_after = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_before + delta_good, good_after)

        self.logic.r63381_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after, law_after_once)
        good_after_once = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_after, good_after_once)


    def test_r63382_action(self):
        who = 'protagonist_character_name'
        prop = 'law'
        delta = 2

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r63382_action
        )


    def test_r63384_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_deionarra_forgives,
            self.logic.r63384_action
        )


    def test_r63388_action(self):
        self.state_manager.world_manager.set_1200_cut_scene_2(False)
        self.state_manager.world_manager.set_cd_int_1(False)

        self.assertFalse(self.state_manager.world_manager.get_1200_cut_scene_2())
        self.assertFalse(self.state_manager.world_manager.get_cd_int_1())

        self.logic.r63388_action()

        self.assertTrue(self.state_manager.world_manager.get_1200_cut_scene_2())
        self.assertTrue(self.state_manager.world_manager.get_cd_int_1())

        self.logic.r63388_action()

        self.assertTrue(self.state_manager.world_manager.get_1200_cut_scene_2())
        self.assertTrue(self.state_manager.world_manager.get_cd_int_1())


    def test_r63391_action(self):
        self.state_manager.world_manager.set_1200_cut_scene_2(False)
        self.state_manager.world_manager.set_cd_int_1(False)

        self.assertFalse(self.state_manager.world_manager.get_1200_cut_scene_2())
        self.assertFalse(self.state_manager.world_manager.get_cd_int_1())

        self.logic.r63391_action()

        self.assertTrue(self.state_manager.world_manager.get_1200_cut_scene_2())
        self.assertTrue(self.state_manager.world_manager.get_cd_int_1())

        self.logic.r63391_action()

        self.assertTrue(self.state_manager.world_manager.get_1200_cut_scene_2())
        self.assertTrue(self.state_manager.world_manager.get_cd_int_1())


    def test_j68117_s68_r63415_action(self):
        note_id = '68117'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j68117_s68_r63415_action
        )


    def test_j68117_s69_r63417_action(self):
        note_id = '68117'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j68117_s69_r63417_action
        )


    def test_r63419_action(self):
        self.state_manager.world_manager.set_has_wedding_ring(True)
        self.state_manager.world_manager.set_has_sup_ring(False)

        self.assertTrue(self.state_manager.world_manager.get_has_wedding_ring())
        self.assertFalse(self.state_manager.world_manager.get_has_sup_ring())

        self.logic.r63419_action()

        self.assertFalse(self.state_manager.world_manager.get_has_wedding_ring())
        self.assertTrue(self.state_manager.world_manager.get_has_sup_ring())

        self.logic.r63419_action()

        self.assertFalse(self.state_manager.world_manager.get_has_wedding_ring())
        self.assertTrue(self.state_manager.world_manager.get_has_sup_ring())


    def test_j66917_s73_r66914_action(self):
        note_id = '66917'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j66917_s73_r66914_action
        )


    def test_r66914_action(self):
        who_experience = 'protagonist_character_name'
        prop_experience = 'experience'
        delta_experience = 1000
        self.state_manager.world_manager.set_deionarra_raise_dead(False)
        self.state_manager.world_manager.set_can_raise_dead(False)
        self.state_manager.world_manager.set_can_raise_dead(False)
        self.state_manager.world_manager.set_can_raise_dead(False)

        experience_before = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertFalse(self.state_manager.world_manager.get_deionarra_raise_dead())
        self.assertFalse(self.state_manager.world_manager.get_can_raise_dead())
        self.assertFalse(self.state_manager.world_manager.get_can_raise_dead())
        self.assertFalse(self.state_manager.world_manager.get_can_raise_dead())

        self.logic.r66914_action()

        experience_after = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)
        self.assertTrue(self.state_manager.world_manager.get_deionarra_raise_dead())
        self.assertTrue(self.state_manager.world_manager.get_can_raise_dead())
        self.assertTrue(self.state_manager.world_manager.get_can_raise_dead())
        self.assertTrue(self.state_manager.world_manager.get_can_raise_dead())

        self.logic.r66914_action()

        experience_after_once = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)
        self.assertTrue(self.state_manager.world_manager.get_deionarra_raise_dead())
        self.assertTrue(self.state_manager.world_manager.get_can_raise_dead())
        self.assertTrue(self.state_manager.world_manager.get_can_raise_dead())
        self.assertTrue(self.state_manager.world_manager.get_can_raise_dead())


    def test_r701_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_deionarra_quip_1(x),
            self.logic.r701_condition
        )


    def test_r699_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_deionarra_quip_1(True)

        self.assertFalse(self.logic.r699_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_deionarra_quip_1(False)

        self.assertTrue(self.logic.r699_condition())


    def test_r9616_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_deionarra_quip_1(True)

        self.assertFalse(self.logic.r9616_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_deionarra_quip_1(False)

        self.assertTrue(self.logic.r9616_condition())


    def test_r708_condition(self):
        who_intelligence = 'protagonist_character_name'
        prop_intelligence = 'intelligence'
        delta_intelligence = 11
        who_charisma = 'protagonist_character_name'
        prop_charisma = 'charisma'
        delta_charisma = 11

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)
        self.state_manager.characters_manager.set_property(who_charisma, prop_charisma, delta_charisma)

        self.assertFalse(self.logic.r708_condition())

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence + 1)
        self.state_manager.characters_manager.set_property(who_charisma, prop_charisma, delta_charisma - 1)

        self.assertTrue(self.logic.r708_condition())


    def test_r709_condition(self):
        who = 'protagonist_character_name'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r709_condition
        )


    def test_r713_condition(self):
        who_intelligence = 'protagonist_character_name'
        prop_intelligence = 'intelligence'
        delta_intelligence = 11
        who_charisma = 'protagonist_character_name'
        prop_charisma = 'charisma'
        delta_charisma = 11

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)
        self.state_manager.characters_manager.set_property(who_charisma, prop_charisma, delta_charisma)

        self.assertFalse(self.logic.r713_condition())

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence + 1)
        self.state_manager.characters_manager.set_property(who_charisma, prop_charisma, delta_charisma - 1)

        self.assertTrue(self.logic.r713_condition())


    def test_r714_condition(self):
        who = 'protagonist_character_name'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r714_condition
        )


    def test_r1308_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r1308_condition
        )


    def test_r6080_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r6080_condition
        )


    def test_r767_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r767_condition
        )


    def test_r1309_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r1309_condition
        )


    def test_r718_condition(self):
        who_intelligence = 'protagonist_character_name'
        prop_intelligence = 'intelligence'
        delta_intelligence = 11
        who_charisma = 'protagonist_character_name'
        prop_charisma = 'charisma'
        delta_charisma = 11

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)
        self.state_manager.characters_manager.set_property(who_charisma, prop_charisma, delta_charisma)

        self.assertFalse(self.logic.r718_condition())

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence + 1)
        self.state_manager.characters_manager.set_property(who_charisma, prop_charisma, delta_charisma - 1)

        self.assertTrue(self.logic.r718_condition())


    def test_r719_condition(self):
        who = 'protagonist_character_name'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r719_condition
        )


    def test_r721_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r721_condition
        )


    def test_r1310_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r1310_condition
        )


    def test_r1311_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r1311_condition
        )


    def test_r764_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r764_condition
        )


    def test_r723_condition(self):
        who_intelligence = 'protagonist_character_name'
        prop_intelligence = 'intelligence'
        delta_intelligence = 11
        who_charisma = 'protagonist_character_name'
        prop_charisma = 'charisma'
        delta_charisma = 11

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)
        self.state_manager.characters_manager.set_property(who_charisma, prop_charisma, delta_charisma)

        self.assertFalse(self.logic.r723_condition())

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence + 1)
        self.state_manager.characters_manager.set_property(who_charisma, prop_charisma, delta_charisma - 1)

        self.assertTrue(self.logic.r723_condition())


    def test_r724_condition(self):
        who = 'protagonist_character_name'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r724_condition
        )


    def test_r1312_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r1312_condition
        )


    def test_r6084_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r6084_condition
        )


    def test_r747_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_deionarra_quip_1(x),
            self.logic.r747_condition
        )


    def test_r1313_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_deionarra_quip_1(True)

        self.assertFalse(self.logic.r1313_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_deionarra_quip_1(False)

        self.assertTrue(self.logic.r1313_condition())


    def test_r13255_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_deionarra_quip_1(True)

        self.assertFalse(self.logic.r13255_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_deionarra_quip_1(False)

        self.assertTrue(self.logic.r13255_condition())


    def test_r731_condition(self):
        who_wisdom = 'protagonist_character_name'
        prop_wisdom = 'wisdom'
        delta_wisdom = 13

        self.state_manager.world_manager.set_escape_mortuary(True)
        self.state_manager.characters_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom)

        self.assertFalse(self.logic.r731_condition())

        self.state_manager.world_manager.set_escape_mortuary(False)
        self.state_manager.characters_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom - 1)

        self.assertTrue(self.logic.r731_condition())


    def test_r732_condition(self):
        who_wisdom = 'protagonist_character_name'
        prop_wisdom = 'wisdom'
        delta_wisdom = 12

        self.state_manager.world_manager.set_escape_mortuary(True)
        self.state_manager.characters_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom)

        self.assertFalse(self.logic.r732_condition())

        self.state_manager.world_manager.set_escape_mortuary(False)
        self.state_manager.characters_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom + 1)

        self.assertTrue(self.logic.r732_condition())


    def test_r1314_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r1314_condition
        )


    def test_r6127_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r6127_condition
        )


    def test_r737_condition(self):
        who_wisdom = 'protagonist_character_name'
        prop_wisdom = 'wisdom'
        delta_wisdom = 13

        self.state_manager.world_manager.set_escape_mortuary(True)
        self.state_manager.characters_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom)

        self.assertFalse(self.logic.r737_condition())

        self.state_manager.world_manager.set_escape_mortuary(False)
        self.state_manager.characters_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom - 1)

        self.assertTrue(self.logic.r737_condition())


    def test_r738_condition(self):
        who_wisdom = 'protagonist_character_name'
        prop_wisdom = 'wisdom'
        delta_wisdom = 12

        self.state_manager.world_manager.set_escape_mortuary(True)
        self.state_manager.characters_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom)

        self.assertFalse(self.logic.r738_condition())

        self.state_manager.world_manager.set_escape_mortuary(False)
        self.state_manager.characters_manager.set_property(who_wisdom, prop_wisdom, delta_wisdom + 1)

        self.assertTrue(self.logic.r738_condition())


    def test_r768_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r768_condition
        )


    def test_r1315_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_deionarra_curse(x),
            self.logic.r1315_condition
        )


    def test_r6107_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r6107_condition
        )


    def test_r6128_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r6128_condition
        )


    def test_r742_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r742_condition
        )


    def test_r1316_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r1316_condition
        )


    def test_r746_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r746_condition
        )


    def test_r792_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r792_condition
        )


    def test_r790_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r790_condition
        )


    def test_r1318_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r1318_condition
        )


    def test_r755_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r755_condition
        )


    def test_r1319_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r1319_condition
        )


    def test_r803_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_deionarra_quip_1(x),
            self.logic.r803_condition
        )


    def test_r6085_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_deionarra_quip_1(True)

        self.assertFalse(self.logic.r6085_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_deionarra_quip_1(False)

        self.assertTrue(self.logic.r6085_condition())


    def test_r13256_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_deionarra_quip_1(True)

        self.assertFalse(self.logic.r13256_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_deionarra_quip_1(False)

        self.assertTrue(self.logic.r13256_condition())


    def test_r778_condition(self):
        who = 'protagonist_character_name'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r778_condition
        )


    def test_r813_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r813_condition
        )


    def test_r1320_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r1320_condition
        )


    def test_r6081_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_deionarra_quip_1(x),
            self.logic.r6081_condition
        )


    def test_r6082_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_deionarra_quip_1(True)

        self.assertFalse(self.logic.r6082_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_deionarra_quip_1(False)

        self.assertTrue(self.logic.r6082_condition())


    def test_r13257_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_deionarra_quip_1(True)

        self.assertFalse(self.logic.r13257_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_deionarra_quip_1(False)

        self.assertTrue(self.logic.r13257_condition())


    def test_r797_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_deionarra_raise_dead(x),
            self.logic.r797_condition
        )


    def test_r66911_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_deionarra_raise_dead(x),
            self.logic.r66911_condition
        )


    def test_r798_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r798_condition
        )


    def test_r1321_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r1321_condition
        )


    def test_r801_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r801_condition
        )


    def test_r802_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r802_condition
        )


    def test_r1322_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r1322_condition
        )


    def test_r1323_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r1323_condition
        )


    def test_r816_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r816_condition
        )


    def test_r1324_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r1324_condition
        )


    def test_r820_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r820_condition
        )


    def test_r1325_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r1325_condition
        )


    def test_r823_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r823_condition
        )


    def test_r1326_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r1326_condition
        )


    def test_r6129_condition(self):
        who = 'protagonist_character_name'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r6129_condition
        )


    def test_r6131_condition(self):
        who_intelligence = 'protagonist_character_name'
        prop_intelligence = 'intelligence'
        delta_intelligence = 11
        who_charisma = 'protagonist_character_name'
        prop_charisma = 'charisma'
        delta_charisma = 11

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)
        self.state_manager.characters_manager.set_property(who_charisma, prop_charisma, delta_charisma)

        self.assertFalse(self.logic.r6131_condition())

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence + 1)
        self.state_manager.characters_manager.set_property(who_charisma, prop_charisma, delta_charisma - 1)

        self.assertTrue(self.logic.r6131_condition())


    def test_r6132_condition(self):
        who = 'protagonist_character_name'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r6132_condition
        )


    def test_r6112_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r6112_condition
        )


    def test_r6113_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r6113_condition
        )


    def test_r6114_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r6114_condition
        )


    def test_r6115_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r6115_condition
        )


    def test_r6117_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r6117_condition
        )


    def test_r6118_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r6118_condition
        )


    def test_r6119_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r6119_condition
        )


    def test_r6120_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r6120_condition
        )


    def test_r6139_condition(self):
        who = 'protagonist_character_name'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r6139_condition
        )


    def test_r6140_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r6140_condition
        )


    def test_r6141_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r6141_condition
        )


    def test_r6145_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r6145_condition
        )


    def test_r6146_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r6146_condition
        )


    def test_r6147_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_deionarra_portal(x),
            self.logic.r6147_condition
        )


    def test_r6148_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_deionarra_portal(x),
            self.logic.r6148_condition
        )


    def test_r6150_condition(self):
        who = 'protagonist_character_name'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r6150_condition
        )


    def test_r6152_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r6152_condition
        )


    def test_r6153_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_prophecy(x),
            self.logic.r6153_condition
        )


    def test_r6154_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_morte_deionarra_quip_1(x),
            self.logic.r6154_condition
        )


    def test_r6155_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_deionarra_quip_1(True)

        self.assertFalse(self.logic.r6155_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_deionarra_quip_1(False)

        self.assertTrue(self.logic.r6155_condition())


    def test_r13258_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_deionarra_quip_1(True)

        self.assertFalse(self.logic.r13258_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_deionarra_quip_1(False)

        self.assertTrue(self.logic.r13258_condition())


    def test_r63367_condition(self):
        self.state_manager.world_manager.set_fortress_party(0)
        self.state_manager.world_manager.set_fortress_ignus(1)
        self.state_manager.world_manager.set_fortress_vhailor(1)

        self.assertFalse(self.logic.r63367_condition())

        self.state_manager.world_manager.set_fortress_party(2)
        self.state_manager.world_manager.set_fortress_ignus(0)
        self.state_manager.world_manager.set_fortress_vhailor(0)

        self.assertTrue(self.logic.r63367_condition())


    def test_r63368_condition(self):
        self.state_manager.world_manager.set_fortress_party(0)
        self.state_manager.world_manager.set_fortress_ignus(1)
        self.state_manager.world_manager.set_fortress_vhailor(1)

        self.assertFalse(self.logic.r63368_condition())

        self.state_manager.world_manager.set_fortress_party(2)
        self.state_manager.world_manager.set_fortress_ignus(0)
        self.state_manager.world_manager.set_fortress_vhailor(0)

        self.assertTrue(self.logic.r63368_condition())


    def test_r63369_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_deionarra_death_truth(x),
            0,
            self.logic.r63369_condition
        )


    def test_r63371_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_deionarra_forgives(x),
            self.logic.r63371_condition
        )


    def test_r64594_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_deionarra_forgives(x),
            self.logic.r64594_condition
        )


    def test_r63394_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_deionarra_value(x),
            0,
            self.logic.r63394_condition
        )


    def test_r63395_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_deionarra_value(x),
            0,
            self.logic.r63395_condition
        )


    def test_r63397_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_deionarra_value(x),
            0,
            self.logic.r63397_condition
        )


    def test_r63398_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_deionarra_value(x),
            0,
            self.logic.r63398_condition
        )


    def test_r63401_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_know_shadow_player_connection(x),
            self.logic.r63401_condition
        )


    def test_r63402_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_know_shadow_player_connection(x),
            self.logic.r63402_condition
        )


    def test_r63406_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_fortress_party(x),
            2,
            self.logic.r63406_condition
        )


    def test_r63407_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_fortress_party(x),
            2,
            self.logic.r63407_condition
        )


    def test_r63408_condition(self):
        self.state_manager.world_manager.set_fortress_party(0)
        self.state_manager.world_manager.set_deionarra_value(-1)

        self.assertFalse(self.logic.r63408_condition())

        self.state_manager.world_manager.set_fortress_party(1)
        self.state_manager.world_manager.set_deionarra_value(1)

        self.assertTrue(self.logic.r63408_condition())


    def test_r63409_condition(self):
        self.state_manager.world_manager.set_fortress_party(0)
        self.state_manager.world_manager.set_deionarra_value(1)

        self.assertFalse(self.logic.r63409_condition())

        self.state_manager.world_manager.set_fortress_party(1)
        self.state_manager.world_manager.set_deionarra_value(0)

        self.assertTrue(self.logic.r63409_condition())


    def test_r63413_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_fortress_party(x),
            2,
            self.logic.r63413_condition
        )


    def test_r63414_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_fortress_party(x),
            2,
            self.logic.r63414_condition
        )


    def test_r63415_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_fortress_party(x),
            1,
            self.logic.r63415_condition
        )


    def test_r63419_condition(self):
        self.state_manager.world_manager.set_deionarra_value(-1)
        self.state_manager.world_manager.set_has_wedding_ring(False)

        self.assertFalse(self.logic.r63419_condition())

        self.state_manager.world_manager.set_deionarra_value(1)
        self.state_manager.world_manager.set_has_wedding_ring(True)

        self.assertTrue(self.logic.r63419_condition())


    def test_r63420_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_deionarra_value(x),
            0,
            self.logic.r63420_condition
        )


    def test_r63421_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_deionarra_value(x),
            0,
            self.logic.r63421_condition
        )


    def test_r63423_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_deionarra_value(x),
            0,
            self.logic.r63423_condition
        )


class DeionarraLogicTest(LogicTest):
    def setUp(self):
        super(DeionarraLogicTest, self).setUp()
        self.logic = DeionarraLogic(self.state_manager)


    def test_set_know_deionarra_name(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_know_deionarra_name,
            self.logic.set_know_deionarra_name
        )


    def test_get_know_deionarra_name(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_know_deionarra_name(x),
            self.logic.get_know_deionarra_name
        )


    def test_talk(self):
        self._integer_inc_action(
            self.state_manager.world_manager.get_talked_to_deionarra_times,
            1,
            self.logic.talk
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
