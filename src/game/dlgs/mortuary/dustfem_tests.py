import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortuary.dustfem_logic import (DustfemLogicGenerated, DustfemLogic)


class DustfemLogicTest(LogicTest):
    def setUp(self):
        super(DustfemLogicTest, self).setUp()
        self.logic = DustfemLogic(self.state_manager)


class DustfemLogicGeneratedTest(LogicTest):
    def setUp(self):
        super(DustfemLogicGeneratedTest, self).setUp()
        self.logic = DustfemLogicGenerated(self.state_manager)


    def test_r1225_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_mortualy_alarmed,
            self.logic.r1225_action
        )


    def test_r1246_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_mortualy_alarmed,
            self.logic.r1246_action
        )


    def test_r1249_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_mortualy_alarmed,
            self.logic.r1249_action
        )


    def test_r33227_action(self):
        adahn_before = 0
        adahn_after = 1
        adahn_after_once = 2 * 1
        self.state_manager.world_manager.set_adahn(adahn_before)
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -1

        self.assertEqual(self.state_manager.world_manager.get_adahn(), adahn_before)
        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)

        self.logic.r33227_action()

        self.assertEqual(self.state_manager.world_manager.get_adahn(), adahn_after)
        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)

        self.logic.r33227_action()

        self.assertEqual(self.state_manager.world_manager.get_adahn(), adahn_after_once)
        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)


    def test_r1273_action(self):
        adahn_before = 0
        adahn_after = 1
        adahn_after_once = 2 * 1
        self.state_manager.world_manager.set_adahn(adahn_before)
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -1

        self.assertEqual(self.state_manager.world_manager.get_adahn(), adahn_before)
        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)

        self.logic.r1273_action()

        self.assertEqual(self.state_manager.world_manager.get_adahn(), adahn_after)
        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)

        self.logic.r1273_action()

        self.assertEqual(self.state_manager.world_manager.get_adahn(), adahn_after_once)
        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)


    def test_r1290_action(self):
        adahn_before = 0
        adahn_after = 1
        adahn_after_once = 2 * 1
        self.state_manager.world_manager.set_adahn(adahn_before)
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -1

        self.assertEqual(self.state_manager.world_manager.get_adahn(), adahn_before)
        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)

        self.logic.r1290_action()

        self.assertEqual(self.state_manager.world_manager.get_adahn(), adahn_after)
        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)

        self.logic.r1290_action()

        self.assertEqual(self.state_manager.world_manager.get_adahn(), adahn_after_once)
        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)


    def test_r1294_action(self):
        adahn_before = 0
        adahn_after = 1
        adahn_after_once = 2 * 1
        self.state_manager.world_manager.set_adahn(adahn_before)
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -1

        self.assertEqual(self.state_manager.world_manager.get_adahn(), adahn_before)
        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)

        self.logic.r1294_action()

        self.assertEqual(self.state_manager.world_manager.get_adahn(), adahn_after)
        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)

        self.logic.r1294_action()

        self.assertEqual(self.state_manager.world_manager.get_adahn(), adahn_after_once)
        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)


    def test_r4307_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_mortualy_alarmed,
            self.logic.r4307_action
        )


    def test_r4308_action(self):
        self.state_manager.world_manager.set_mortualy_alarmed(False)
        who_law = 'protagonist_character_name'
        prop_law = 'law'
        delta_law = -1

        self.assertFalse(self.state_manager.world_manager.get_mortualy_alarmed())
        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)

        self.logic.r4308_action()

        self.assertTrue(self.state_manager.world_manager.get_mortualy_alarmed())
        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)

        self.logic.r4308_action()

        self.assertTrue(self.state_manager.world_manager.get_mortualy_alarmed())
        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)


    def test_r4309_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_mortualy_alarmed,
            self.logic.r4309_action
        )


    def test_r4317_action(self):
        self.logic.r4317_action()


    def test_r4318_action(self):
        choke_before = 0
        choke_after = 1
        choke_after_once = 2 * 1
        self.state_manager.world_manager.set_choke(choke_before)
        self.state_manager.world_manager.set_choke_memory(False)
        choke_dustman_before = 0
        choke_dustman_after = 1
        choke_dustman_after_once = 2 * 1
        self.state_manager.world_manager.set_choke_dustman(choke_dustman_before)
        who_experience = 'protagonist_character_name'
        prop_experience = 'experience'
        delta_experience = 15

        self.assertEqual(self.state_manager.world_manager.get_choke(), choke_before)
        self.assertFalse(self.state_manager.world_manager.get_choke_memory())
        self.assertEqual(self.state_manager.world_manager.get_choke_dustman(), choke_dustman_before)
        experience_before = self.state_manager.characters_manager.get_property(who_experience, prop_experience)

        self.logic.r4318_action()

        self.assertEqual(self.state_manager.world_manager.get_choke(), choke_after)
        self.assertTrue(self.state_manager.world_manager.get_choke_memory())
        self.assertEqual(self.state_manager.world_manager.get_choke_dustman(), choke_dustman_after)
        experience_after = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)

        self.logic.r4318_action()

        self.assertEqual(self.state_manager.world_manager.get_choke(), choke_after_once)
        self.assertTrue(self.state_manager.world_manager.get_choke_memory())
        self.assertEqual(self.state_manager.world_manager.get_choke_dustman(), choke_dustman_after_once)
        experience_after_once = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)


    def test_r4319_action(self):
        choke_dustman_before = 0
        choke_dustman_after = 1
        choke_dustman_after_once = 2 * 1
        self.state_manager.world_manager.set_choke_dustman(choke_dustman_before)
        choke_before = 0
        choke_after = 1
        choke_after_once = 2 * 1
        self.state_manager.world_manager.set_choke(choke_before)
        self.state_manager.world_manager.set_dead_dustfem(False)
        who_experience = 'protagonist_character_name'
        prop_experience = 'experience'
        delta_experience = 15

        self.assertEqual(self.state_manager.world_manager.get_choke_dustman(), choke_dustman_before)
        self.assertEqual(self.state_manager.world_manager.get_choke(), choke_before)
        self.assertFalse(self.state_manager.world_manager.get_dead_dustfem())
        experience_before = self.state_manager.characters_manager.get_property(who_experience, prop_experience)

        self.logic.r4319_action()

        self.assertEqual(self.state_manager.world_manager.get_choke_dustman(), choke_dustman_after)
        self.assertEqual(self.state_manager.world_manager.get_choke(), choke_after)
        self.assertTrue(self.state_manager.world_manager.get_dead_dustfem())
        experience_after = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)

        self.logic.r4319_action()

        self.assertEqual(self.state_manager.world_manager.get_choke_dustman(), choke_dustman_after_once)
        self.assertEqual(self.state_manager.world_manager.get_choke(), choke_after_once)
        self.assertTrue(self.state_manager.world_manager.get_dead_dustfem())
        experience_after_once = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)


    def test_r4320_action(self):
        self.state_manager.world_manager.set_dead_dustfem(False)
        who_experience = 'protagonist_character_name'
        prop_experience = 'experience'
        delta_experience = 250

        self.assertFalse(self.state_manager.world_manager.get_dead_dustfem())
        experience_before = self.state_manager.characters_manager.get_property(who_experience, prop_experience)

        self.logic.r4320_action()

        self.assertTrue(self.state_manager.world_manager.get_dead_dustfem())
        experience_after = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)

        self.logic.r4320_action()

        self.assertTrue(self.state_manager.world_manager.get_dead_dustfem())
        experience_after_once = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)


    def test_r4321_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_mortualy_alarmed,
            self.logic.r4321_action
        )


    def test_r4322_action(self):
        self.logic.r4322_action()


    def test_r1235_condition(self):
        who = 'protagonist_character_name'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r1235_condition
        )


    def test_r1236_condition(self):
        who = 'protagonist_character_name'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1236_condition
        )


    def test_r1242_condition(self):
        who = 'protagonist_character_name'
        prop = 'intelligence'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1242_condition
        )


    def test_r1244_condition(self):
        who = 'protagonist_character_name'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r1244_condition
        )


    def test_r1245_condition(self):
        who = 'protagonist_character_name'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1245_condition
        )


    def test_r1247_condition(self):
        who = 'protagonist_character_name'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r1247_condition
        )


    def test_r1248_condition(self):
        who = 'protagonist_character_name'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1248_condition
        )


    def test_r1253_condition(self):
        location_AR0202 = 'mortuary_f2r1' # AR0202

        self.state_manager.world_manager.set_dhall_value(-1)
        self.assertFalse(self.state_manager.locations_manager.is_visited(location_AR0202))

        self.assertFalse(self.logic.r1253_condition())

        self.state_manager.world_manager.set_dhall_value(1)
        self.state_manager.locations_manager.set_location(location_AR0202)
        self.assertTrue(self.state_manager.locations_manager.is_visited(location_AR0202))

        self.assertTrue(self.logic.r1253_condition())


    def test_r1255_condition(self):
        location_AR0202 = 'mortuary_f2r1' # AR0202

        self.state_manager.world_manager.set_dhall_value(-1)
        self.state_manager.locations_manager.set_location(location_AR0202)
        self.assertTrue(self.state_manager.locations_manager.is_visited(location_AR0202))

        self.assertFalse(self.logic.r1255_condition())

        self.reset_stores()
        self.state_manager.world_manager.set_dhall_value(1)
        self.assertFalse(self.state_manager.locations_manager.is_visited(location_AR0202))

        self.assertTrue(self.logic.r1255_condition())


    def test_r1258_condition(self):
        location_AR0201 = 'mortuary_f1r1' # AR0201

        self.state_manager.world_manager.set_deionarra_value(-1)
        self.assertFalse(self.state_manager.locations_manager.is_visited(location_AR0201))

        self.assertFalse(self.logic.r1258_condition())

        self.state_manager.world_manager.set_deionarra_value(1)
        self.state_manager.locations_manager.set_location(location_AR0201)
        self.assertTrue(self.state_manager.locations_manager.is_visited(location_AR0201))

        self.assertTrue(self.logic.r1258_condition())


    def test_r4336_condition(self):
        location_AR0201 = 'mortuary_f1r1' # AR0201

        self.state_manager.world_manager.set_deionarra_value(-1)
        self.state_manager.locations_manager.set_location(location_AR0201)
        self.assertTrue(self.state_manager.locations_manager.is_visited(location_AR0201))

        self.assertFalse(self.logic.r4336_condition())

        self.reset_stores()
        self.state_manager.world_manager.set_deionarra_value(1)
        self.assertFalse(self.state_manager.locations_manager.is_visited(location_AR0201))

        self.assertTrue(self.logic.r4336_condition())


    def test_r33224_condition(self):
        location_AR0201 = 'mortuary_f1r1' # AR0201

        self.state_manager.world_manager.set_soego_value(-1)
        self.assertFalse(self.state_manager.locations_manager.is_visited(location_AR0201))

        self.assertFalse(self.logic.r33224_condition())

        self.state_manager.world_manager.set_soego_value(1)
        self.state_manager.locations_manager.set_location(location_AR0201)
        self.assertTrue(self.state_manager.locations_manager.is_visited(location_AR0201))

        self.assertTrue(self.logic.r33224_condition())


    def test_r33226_condition(self):
        location_AR0201 = 'mortuary_f1r1' # AR0201

        self.state_manager.world_manager.set_soego_value(-1)
        self.state_manager.locations_manager.set_location(location_AR0201)
        self.assertTrue(self.state_manager.locations_manager.is_visited(location_AR0201))

        self.assertFalse(self.logic.r33226_condition())

        self.reset_stores()
        self.state_manager.world_manager.set_soego_value(1)
        self.assertFalse(self.state_manager.locations_manager.is_visited(location_AR0201))

        self.assertTrue(self.logic.r33226_condition())


    def test_r33227_condition(self):
        who_intelligence = 'protagonist_character_name'
        prop_intelligence = 'intelligence'
        delta_intelligence = 12

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)
        self.state_manager.world_manager.set_talked_to_dustfem_times(0)

        self.assertFalse(self.logic.r33227_condition())

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence + 1)
        self.state_manager.world_manager.set_talked_to_dustfem_times(1)

        self.assertTrue(self.logic.r33227_condition())


    def test_r33229_condition(self):
        who_intelligence = 'protagonist_character_name'
        prop_intelligence = 'intelligence'
        delta_intelligence = 12

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)
        self.state_manager.world_manager.set_talked_to_dustfem_times(0)

        self.assertFalse(self.logic.r33229_condition())

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence + 1)
        self.state_manager.world_manager.set_talked_to_dustfem_times(2)

        self.assertTrue(self.logic.r33229_condition())


    def test_r1272_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_deionarra_value(x),
            0,
            self.logic.r1272_condition
        )


    def test_r1273_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_talked_to_dustfem_times(x),
            1,
            self.logic.r1273_condition
        )


    def test_r1274_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_talked_to_dustfem_times(x),
            1,
            self.logic.r1274_condition
        )


    def test_r1275_condition(self):
        who = 'protagonist_character_name'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r1275_condition
        )


    def test_r1276_condition(self):
        who = 'protagonist_character_name'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1276_condition
        )


    def test_r1281_condition(self):
        who = 'protagonist_character_name'
        prop = 'intelligence'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1281_condition
        )


    def test_r1290_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_talked_to_dustfem_times(x),
            1,
            self.logic.r1290_condition
        )


    def test_r1291_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_talked_to_dustfem_times(x),
            1,
            self.logic.r1291_condition
        )


    def test_r1292_condition(self):
        who = 'protagonist_character_name'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r1292_condition
        )


    def test_r1293_condition(self):
        who = 'protagonist_character_name'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1293_condition
        )


    def test_r1294_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_talked_to_dustfem_times(x),
            1,
            self.logic.r1294_condition
        )


    def test_r1295_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_talked_to_dustfem_times(x),
            1,
            self.logic.r1295_condition
        )


    def test_r1296_condition(self):
        who = 'protagonist_character_name'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r1296_condition
        )


    def test_r1297_condition(self):
        who = 'protagonist_character_name'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1297_condition
        )


    def test_r1396_condition(self):
        who = 'protagonist_character_name'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1396_condition
        )


    def test_r1397_condition(self):
        who = 'protagonist_character_name'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r1397_condition
        )


    def test_r1398_condition(self):
        who = 'protagonist_character_name'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r1398_condition
        )


    def test_r1399_condition(self):
        who = 'protagonist_character_name'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1399_condition
        )


    def test_r4281_condition(self):
        self._is_visited_external_location_condition(
            'mortuary_f2r1', # 'AR0202'
            self.logic.r4281_condition
        )


    def test_r4282_condition(self):
        self._not_is_visited_external_location_condition(
            'mortuary_f2r1', # 'AR0202'
            self.logic.r4282_condition
        )


    def test_r4296_condition(self):
        who = 'protagonist_character_name'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4296_condition
        )


    def test_r4297_condition(self):
        who = 'protagonist_character_name'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4297_condition
        )


    def test_r4298_condition(self):
        who = 'protagonist_character_name'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4298_condition
        )


    def test_r4300_condition(self):
        who = 'protagonist_character_name'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4300_condition
        )


    def test_r4303_condition(self):
        who = 'protagonist_character_name'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4303_condition
        )


    def test_r4304_condition(self):
        who = 'protagonist_character_name'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4304_condition
        )


    def test_r4305_condition(self):
        who = 'protagonist_character_name'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4305_condition
        )


    def test_r4306_condition(self):
        who = 'protagonist_character_name'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4306_condition
        )


    def test_r4308_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_talked_to_dustfem_times(x),
            1,
            self.logic.r4308_condition
        )


    def test_r4309_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_talked_to_dustfem_times(x),
            1,
            self.logic.r4309_condition
        )


    def test_r4312_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_warning(1)

        self.assertFalse(self.logic.r4312_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_warning(0)

        self.assertTrue(self.logic.r4312_condition())


    def test_r4313_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_warning(0)

        self.assertFalse(self.logic.r4313_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_warning(1)

        self.assertTrue(self.logic.r4313_condition())


    def test_r4314_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_warning(0)

        self.assertFalse(self.logic.r4314_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_warning(2)

        self.assertTrue(self.logic.r4314_condition())


    def test_r4315_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r4315_condition
        )


    def test_r4318_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_choke_memory(x),
            self.logic.r4318_condition
        )


    def test_r4319_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_choke_memory(x),
            self.logic.r4319_condition
        )


    def test_r4324_condition(self):
        who = 'protagonist_character_name'
        prop = 'dexterity'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4324_condition
        )


    def test_r4325_condition(self):
        who = 'protagonist_character_name'
        prop = 'dexterity'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4325_condition
        )


    def test_r4329_condition(self):
        who = 'protagonist_character_name'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4329_condition
        )


    def test_r4331_condition(self):
        who = 'protagonist_character_name'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4331_condition
        )


    def test_r4332_condition(self):
        who = 'protagonist_character_name'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4332_condition
        )


    def test_r4333_condition(self):
        who = 'protagonist_character_name'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4333_condition
        )


    def test_r66684_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_join_dustmen(x),
            1,
            self.logic.r66684_condition
        )


    def test_r66685_condition(self):
        self._integer_not_equal_condition(
            lambda x: self.state_manager.world_manager.set_join_dustmen(x),
            1,
            self.logic.r66685_condition
        )


    def test_r66686_condition(self):
        self._integer_not_equal_condition(
            lambda x: self.state_manager.world_manager.set_join_dustmen(x),
            1,
            self.logic.r66686_condition
        )


    def test_r66687_condition(self):
        self._integer_not_equal_condition(
            lambda x: self.state_manager.world_manager.set_join_dustmen(x),
            1,
            self.logic.r66687_condition
        )


    def test_r66688_condition(self):
        self._integer_not_equal_condition(
            lambda x: self.state_manager.world_manager.set_join_dustmen(x),
            1,
            self.logic.r66688_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
