import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.mortuary.vaxis_logic import (VaxisLogicGenerated, VaxisLogic)


class VaxisLogicTest(LogicTest):
    def setUp(self):
        super(VaxisLogicTest, self).setUp()
        self.logic = VaxisLogic(self.state_manager)


    def test_set_know_vaxis_name(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_know_vaxis_name,
            self.logic.set_know_vaxis_name
        )


    def test_kill_vaxis(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_dead_vaxis,
            self.logic.kill_vaxis
        )


    def test_get_know_vaxis_name(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_know_vaxis_name(x),
            self.logic.get_know_vaxis_name
        )


class VaxisLogicGeneratedTest(LogicTest):
    def setUp(self):
        super(VaxisLogicGeneratedTest, self).setUp()
        self.logic = VaxisLogicGenerated(self.state_manager)


    def test_r454_action(self):
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = -1
        self.state_manager.world_manager.set_zombie_chaotic(False)

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertFalse(self.state_manager.world_manager.get_zombie_chaotic())

        self.logic.r454_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        self.assertTrue(self.state_manager.world_manager.get_zombie_chaotic())

        self.logic.r454_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after + delta_law, law_after_once)
        self.assertTrue(self.state_manager.world_manager.get_zombie_chaotic())


    def test_r461_action(self):
        self.state_manager.world_manager.set_vaxis_value(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_vaxis_value,
            1,
            self.logic.r461_action
        )


    def test_j64513_s2_r464_action(self):
        note_id = '64513'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j64513_s2_r464_action
        )


    def test_j64513_s2_r465_action(self):
        note_id = '64513'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j64513_s2_r465_action
        )


    def test_j64513_s2_r466_action(self):
        note_id = '64513'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j64513_s2_r466_action
        )


    def test_r472_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r472_action
        )


    def test_r473_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r473_action
        )


    def test_r475_action(self):
        self.logic.r475_action()


    def test_r476_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r476_action
        )


    def test_r477_action(self):
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = 1
        who_good = 'protagonist'
        prop_good = 'good'
        delta_good = 1

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        good_before = self.state_manager.characters_manager.get_property(who_good, prop_good)

        self.logic.r477_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        good_after = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_before + delta_good, good_after)

        self.logic.r477_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after, law_after_once)
        good_after_once = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_after, good_after_once)


    def test_j64513_s5_r480_action(self):
        note_id = '64513'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j64513_s5_r480_action
        )


    def test_r480_action(self):
        self.state_manager.world_manager.set_vaxis_value(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_vaxis_value,
            1,
            self.logic.r480_action
        )


    def test_j64513_s5_r481_action(self):
        note_id = '64513'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j64513_s5_r481_action
        )


    def test_r481_action(self):
        self.state_manager.world_manager.set_vaxis_value(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_vaxis_value,
            1,
            self.logic.r481_action
        )


    def test_j64513_s5_r482_action(self):
        note_id = '64513'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j64513_s5_r482_action
        )


    def test_r482_action(self):
        self.state_manager.world_manager.set_vaxis_value(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_vaxis_value,
            1,
            self.logic.r482_action
        )


    def test_r487_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r487_action
        )


    def test_r488_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r488_action
        )


    def test_r493_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r493_action
        )


    def test_r494_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r494_action
        )


    def test_r1306_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r1306_action
        )


    def test_r1348_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r1348_action
        )


    def test_r1359_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r1359_action
        )


    def test_r1360_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r1360_action
        )


    def test_r1361_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r1361_action
        )


    def test_r4364_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4364_action
        )


    def test_r4365_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4365_action
        )


    def test_r4370_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4370_action
        )


    def test_r4371_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4371_action
        )


    def test_r4381_action(self):
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = 1
        who_good = 'protagonist'
        prop_good = 'good'
        delta_good = 1

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        good_before = self.state_manager.characters_manager.get_property(who_good, prop_good)

        self.logic.r4381_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        good_after = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_before + delta_good, good_after)

        self.logic.r4381_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after, law_after_once)
        good_after_once = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_after, good_after_once)


    def test_r4387_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4387_action
        )


    def test_r4388_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4388_action
        )


    def test_r4391_action(self):
        who_law = 'protagonist'
        prop_law = 'law'
        delta_law = 1
        who_good = 'protagonist'
        prop_good = 'good'
        delta_good = 1

        law_before = self.state_manager.characters_manager.get_property(who_law, prop_law)
        good_before = self.state_manager.characters_manager.get_property(who_good, prop_good)

        self.logic.r4391_action()

        law_after = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_before + delta_law, law_after)
        good_after = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_before + delta_good, good_after)

        self.logic.r4391_action()

        law_after_once = self.state_manager.characters_manager.get_property(who_law, prop_law)
        self.assertEqual(law_after, law_after_once)
        good_after_once = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_after, good_after_once)


    def test_r4397_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4397_action
        )


    def test_r4398_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4398_action
        )


    def test_r4401_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4401_action
        )


    def test_r4402_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4402_action
        )


    def test_r4405_action(self):
        self.logic.r4405_action()


    def test_r4408_action(self):
        self.logic.r4408_action()


    def test_r4413_action(self):
        self.logic.r4413_action()


    def test_r4428_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4428_action
        )


    def test_r4429_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4429_action
        )


    def test_r4434_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4434_action
        )


    def test_r4442_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4442_action
        )


    def test_r4443_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4443_action
        )


    def test_r4447_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_vaxis_orders,
            self.logic.r4447_action
        )


    def test_r4448_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_vaxis_orders,
            self.logic.r4448_action
        )


    def test_r4456_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4456_action
        )


    def test_r4457_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4457_action
        )


    def test_j64517_s30_r4469_action(self):
        note_id = '64517'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j64517_s30_r4469_action
        )


    def test_r4469_action(self):
        self.state_manager.world_manager.set_vaxis_leave(False)
        self.state_manager.world_manager.set_has_bandages(False)
        self.state_manager.world_manager.set_has_bandages(False)
        self.state_manager.world_manager.set_has_bandages(False)
        self.state_manager.world_manager.set_has_embalm(False)
        self.state_manager.world_manager.set_has_needle(False)
        who_experience = 'protagonist'
        prop_experience = 'experience'
        delta_experience = 500

        self.assertFalse(self.state_manager.world_manager.get_vaxis_leave())
        self.assertFalse(self.state_manager.world_manager.get_has_bandages())
        self.assertFalse(self.state_manager.world_manager.get_has_bandages())
        self.assertFalse(self.state_manager.world_manager.get_has_bandages())
        self.assertFalse(self.state_manager.world_manager.get_has_embalm())
        self.assertFalse(self.state_manager.world_manager.get_has_needle())
        experience_before = self.state_manager.characters_manager.get_property(who_experience, prop_experience)

        self.logic.r4469_action()

        self.assertTrue(self.state_manager.world_manager.get_vaxis_leave())
        self.assertTrue(self.state_manager.world_manager.get_has_bandages())
        self.assertTrue(self.state_manager.world_manager.get_has_bandages())
        self.assertTrue(self.state_manager.world_manager.get_has_bandages())
        self.assertTrue(self.state_manager.world_manager.get_has_embalm())
        self.assertTrue(self.state_manager.world_manager.get_has_needle())
        experience_after = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)

        self.logic.r4469_action()

        self.assertTrue(self.state_manager.world_manager.get_vaxis_leave())
        self.assertTrue(self.state_manager.world_manager.get_has_bandages())
        self.assertTrue(self.state_manager.world_manager.get_has_bandages())
        self.assertTrue(self.state_manager.world_manager.get_has_bandages())
        self.assertTrue(self.state_manager.world_manager.get_has_embalm())
        self.assertTrue(self.state_manager.world_manager.get_has_needle())
        experience_after_once = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)


    def test_r4474_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = 1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4474_action
        )


    def test_r4477_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4477_action
        )


    def test_r4478_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4478_action
        )


    def test_r4484_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4484_action
        )


    def test_r4485_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4485_action
        )


    def test_r4672_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_strong_arm_vaxis,
            self.logic.r4672_action
        )


    def test_r4489_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4489_action
        )


    def test_r4490_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4490_action
        )


    def test_r4494_action(self):
        who_experience = 'protagonist'
        prop_experience = 'experience'
        delta_experience = 250
        self.state_manager.world_manager.set_has_keyem(True)
        self.state_manager.world_manager.set_vaxis_has_keyem(False)

        experience_before = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertTrue(self.state_manager.world_manager.get_has_keyem())
        self.assertFalse(self.state_manager.world_manager.get_vaxis_has_keyem())

        self.logic.r4494_action()

        experience_after = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)
        self.assertFalse(self.state_manager.world_manager.get_has_keyem())
        self.assertTrue(self.state_manager.world_manager.get_vaxis_has_keyem())

        self.logic.r4494_action()

        experience_after_once = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)
        self.assertFalse(self.state_manager.world_manager.get_has_keyem())
        self.assertTrue(self.state_manager.world_manager.get_vaxis_has_keyem())


    def test_r4496_action(self):
        self.state_manager.world_manager.set_vaxis_orders(True)
        self._true_then_false_action(
            self.state_manager.world_manager.get_vaxis_orders,
            self.logic.r4496_action
        )


    def test_r4497_action(self):
        self.state_manager.world_manager.set_vaxis_orders(True)
        self._true_then_false_action(
            self.state_manager.world_manager.get_vaxis_orders,
            self.logic.r4497_action
        )


    def test_r4498_action(self):
        who_good = 'protagonist'
        prop_good = 'good'
        delta_good = -1
        self.state_manager.world_manager.set_vaxis_orders(True)

        good_before = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertTrue(self.state_manager.world_manager.get_vaxis_orders())

        self.logic.r4498_action()

        good_after = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_before + delta_good, good_after)
        self.assertFalse(self.state_manager.world_manager.get_vaxis_orders())

        self.logic.r4498_action()

        good_after_once = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_after, good_after_once)
        self.assertFalse(self.state_manager.world_manager.get_vaxis_orders())


    def test_r4499_action(self):
        who_good = 'protagonist'
        prop_good = 'good'
        delta_good = -1
        self.state_manager.world_manager.set_vaxis_orders(True)

        good_before = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertTrue(self.state_manager.world_manager.get_vaxis_orders())

        self.logic.r4499_action()

        good_after = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_before + delta_good, good_after)
        self.assertFalse(self.state_manager.world_manager.get_vaxis_orders())

        self.logic.r4499_action()

        good_after_once = self.state_manager.characters_manager.get_property(who_good, prop_good)
        self.assertEqual(good_after, good_after_once)
        self.assertFalse(self.state_manager.world_manager.get_vaxis_orders())


    def test_r4502_action(self):
        who_experience = 'protagonist'
        prop_experience = 'experience'
        delta_experience = 250
        self.state_manager.world_manager.set_has_keyem(True)
        self.state_manager.world_manager.set_vaxis_has_keyem(False)

        experience_before = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertTrue(self.state_manager.world_manager.get_has_keyem())
        self.assertFalse(self.state_manager.world_manager.get_vaxis_has_keyem())

        self.logic.r4502_action()

        experience_after = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)
        self.assertFalse(self.state_manager.world_manager.get_has_keyem())
        self.assertTrue(self.state_manager.world_manager.get_vaxis_has_keyem())

        self.logic.r4502_action()

        experience_after_once = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)
        self.assertFalse(self.state_manager.world_manager.get_has_keyem())
        self.assertTrue(self.state_manager.world_manager.get_vaxis_has_keyem())


    def test_j64519_s36_r64520_action(self):
        note_id = '64519'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j64519_s36_r64520_action
        )


    def test_j64518_s36_r4503_action(self):
        note_id = '64518'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j64518_s36_r4503_action
        )


    def test_r4504_action(self):
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4504_action
        )


    def test_j64519_s37_r4506_action(self):
        note_id = '64519'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j64519_s37_r4506_action
        )


    def test_j64518_s37_r66150_action(self):
        note_id = '64518'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j64518_s37_r66150_action
        )


    def test_r4508_action(self):
        self.state_manager.world_manager.set_embalm_key_quest(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_embalm_key_quest,
            1,
            self.logic.r4508_action
        )


    def test_r4509_action(self):
        self.state_manager.world_manager.set_embalm_key_quest(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_embalm_key_quest,
            1,
            self.logic.r4509_action
        )


    def test_r4519_action(self):
        who_experience = 'protagonist'
        prop_experience = 'experience'
        delta_experience = 250
        self.state_manager.world_manager.set_has_keyem(True)
        self.state_manager.world_manager.set_vaxis_has_keyem(False)
        embalm_key_quest_before = 1
        embalm_key_quest_after = 3
        embalm_key_quest_after_once = 3
        self.state_manager.world_manager.set_embalm_key_quest(embalm_key_quest_before)

        experience_before = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertTrue(self.state_manager.world_manager.get_has_keyem())
        self.assertFalse(self.state_manager.world_manager.get_vaxis_has_keyem())
        self.assertEqual(self.state_manager.world_manager.get_embalm_key_quest(), embalm_key_quest_before)

        self.logic.r4519_action()

        experience_after = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)
        self.assertFalse(self.state_manager.world_manager.get_has_keyem())
        self.assertTrue(self.state_manager.world_manager.get_vaxis_has_keyem())
        self.assertEqual(self.state_manager.world_manager.get_embalm_key_quest(), embalm_key_quest_after)

        self.logic.r4519_action()

        experience_after_once = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)
        self.assertFalse(self.state_manager.world_manager.get_has_keyem())
        self.assertTrue(self.state_manager.world_manager.get_vaxis_has_keyem())
        self.assertEqual(self.state_manager.world_manager.get_embalm_key_quest(), embalm_key_quest_after_once)


    def test_j64521_s42_r4521_action(self):
        note_id = '64521'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j64521_s42_r4521_action
        )


    def test_r4521_action(self):
        self.state_manager.world_manager.set_embalm_key_quest(4)
        self._integer_equals_action(
            self.state_manager.world_manager.get_embalm_key_quest,
            3,
            self.logic.r4521_action
        )


    def test_j64521_s42_r4522_action(self):
        note_id = '64521'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j64521_s42_r4522_action
        )


    def test_r4522_action(self):
        self.state_manager.world_manager.set_embalm_key_quest(4)
        self._integer_equals_action(
            self.state_manager.world_manager.get_embalm_key_quest,
            3,
            self.logic.r4522_action
        )


    def test_j64522_s44_r4539_action(self):
        note_id = '64522'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j64522_s44_r4539_action
        )


    def test_j64522_s45_r4543_action(self):
        note_id = '64522'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j64522_s45_r4543_action
        )


    def test_j64528_s51_r64527_action(self):
        note_id = '64528'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j64528_s51_r64527_action
        )


    def test_r64527_action(self):
        who_experience = 'protagonist'
        prop_experience = 'experience'
        delta_experience = 250
        self.state_manager.world_manager.set_vaxis_help(False)

        experience_before = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertFalse(self.state_manager.world_manager.get_vaxis_help())

        self.logic.r64527_action()

        experience_after = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)
        self.assertTrue(self.state_manager.world_manager.get_vaxis_help())

        self.logic.r64527_action()

        experience_after_once = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)
        self.assertTrue(self.state_manager.world_manager.get_vaxis_help())


    def test_j64529_s51_r4568_action(self):
        note_id = '64529'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j64529_s51_r4568_action
        )


    def test_r4568_action(self):
        who_experience = 'protagonist'
        prop_experience = 'experience'
        delta_experience = 250
        self.state_manager.world_manager.set_vaxis_help(False)

        experience_before = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertFalse(self.state_manager.world_manager.get_vaxis_help())

        self.logic.r4568_action()

        experience_after = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)
        self.assertTrue(self.state_manager.world_manager.get_vaxis_help())

        self.logic.r4568_action()

        experience_after_once = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)
        self.assertTrue(self.state_manager.world_manager.get_vaxis_help())


    def test_j64529_s51_r4569_action(self):
        note_id = '64529'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j64529_s51_r4569_action
        )


    def test_r4569_action(self):
        who_experience = 'protagonist'
        prop_experience = 'experience'
        delta_experience = 250
        self.state_manager.world_manager.set_vaxis_help(False)

        experience_before = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertFalse(self.state_manager.world_manager.get_vaxis_help())

        self.logic.r4569_action()

        experience_after = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)
        self.assertTrue(self.state_manager.world_manager.get_vaxis_help())

        self.logic.r4569_action()

        experience_after_once = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)
        self.assertTrue(self.state_manager.world_manager.get_vaxis_help())


    def test_r4580_action(self):
        self.state_manager.world_manager.set_vaxis_exposes_soego(False)
        note_id = '64530'

        self.assertFalse(self.state_manager.world_manager.get_vaxis_exposes_soego())
        self.assertFalse(self.state_manager.journal_manager.has_journal_note(note_id))

        self.logic.r4580_action()

        self.assertTrue(self.state_manager.world_manager.get_vaxis_exposes_soego())
        self.assertTrue(self.state_manager.journal_manager.has_journal_note(note_id))

        self.logic.r4580_action()

        self.assertTrue(self.state_manager.world_manager.get_vaxis_exposes_soego())
        self.assertTrue(self.state_manager.journal_manager.has_journal_note(note_id))


    def test_r4592_action(self):
        who_experience = 'protagonist'
        prop_experience = 'experience'
        delta_experience = 250
        self.state_manager.world_manager.set_has_keyem(True)

        experience_before = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertTrue(self.state_manager.world_manager.get_has_keyem())

        self.logic.r4592_action()

        experience_after = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)
        self.assertFalse(self.state_manager.world_manager.get_has_keyem())

        self.logic.r4592_action()

        experience_after_once = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)
        self.assertFalse(self.state_manager.world_manager.get_has_keyem())


    def test_r4593_action(self):
        who_experience = 'protagonist'
        prop_experience = 'experience'
        delta_experience = 250
        self.state_manager.world_manager.set_has_keyem(True)

        experience_before = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertTrue(self.state_manager.world_manager.get_has_keyem())

        self.logic.r4593_action()

        experience_after = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)
        self.assertFalse(self.state_manager.world_manager.get_has_keyem())

        self.logic.r4593_action()

        experience_after_once = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)
        self.assertFalse(self.state_manager.world_manager.get_has_keyem())


    def test_r4620_action(self):
        vaxis_zombie_disguise_before = 1
        vaxis_zombie_disguise_after = 2
        vaxis_zombie_disguise_after_once = 2
        self.state_manager.world_manager.set_vaxis_zombie_disguise(vaxis_zombie_disguise_before)
        self.state_manager.world_manager.set_has_embalm(True)
        self.state_manager.world_manager.set_has_needle(True)

        self.assertEqual(self.state_manager.world_manager.get_vaxis_zombie_disguise(), vaxis_zombie_disguise_before)
        self.assertTrue(self.state_manager.world_manager.get_has_embalm())
        self.assertTrue(self.state_manager.world_manager.get_has_needle())

        self.logic.r4620_action()

        self.assertEqual(self.state_manager.world_manager.get_vaxis_zombie_disguise(), vaxis_zombie_disguise_after)
        self.assertFalse(self.state_manager.world_manager.get_has_embalm())
        self.assertFalse(self.state_manager.world_manager.get_has_needle())

        self.logic.r4620_action()

        self.assertEqual(self.state_manager.world_manager.get_vaxis_zombie_disguise(), vaxis_zombie_disguise_after_once)
        self.assertFalse(self.state_manager.world_manager.get_has_embalm())
        self.assertFalse(self.state_manager.world_manager.get_has_needle())


    def test_r4621_action(self):
        self.state_manager.world_manager.set_vaxis_zombie_disguise(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_vaxis_zombie_disguise,
            1,
            self.logic.r4621_action
        )


    def test_r4622_action(self):
        self.state_manager.world_manager.set_vaxis_zombie_disguise(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_vaxis_zombie_disguise,
            1,
            self.logic.r4622_action
        )


    def test_r4623_action(self):
        self.state_manager.world_manager.set_vaxis_zombie_disguise(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_vaxis_zombie_disguise,
            1,
            self.logic.r4623_action
        )


    def test_r4625_action(self):
        self.state_manager.world_manager.set_vaxis_zombie_disguise(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_vaxis_zombie_disguise,
            1,
            self.logic.r4625_action
        )


    def test_r4628_action(self):
        self.state_manager.world_manager.set_vaxis_zombie_disguise(2)
        self._integer_equals_action(
            self.state_manager.world_manager.get_vaxis_zombie_disguise,
            1,
            self.logic.r4628_action
        )


    def test_r4630_action(self):
        who_looks_like = 'protagonist'
        prop_looks_like = 'looks_like'
        delta_looks_like = 'zombie'
        who_experience = 'protagonist'
        prop_experience = 'experience'
        delta_experience = 500
        self.state_manager.world_manager.set_vaxis_global_xp(False)

        looks_like_before = self.state_manager.characters_manager.get_property(who_looks_like, prop_looks_like)
        experience_before = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertFalse(self.state_manager.world_manager.get_vaxis_global_xp())

        self.logic.r4630_action()

        looks_like_after = self.state_manager.characters_manager.get_property(who_looks_like, prop_looks_like)
        self.assertEqual(delta_looks_like, looks_like_after)
        experience_after = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)
        self.assertTrue(self.state_manager.world_manager.get_vaxis_global_xp())

        self.logic.r4630_action()

        looks_like_after_once = self.state_manager.characters_manager.get_property(who_looks_like, prop_looks_like)
        self.assertEqual(looks_like_after, looks_like_after_once)
        experience_after_once = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)
        self.assertTrue(self.state_manager.world_manager.get_vaxis_global_xp())


    def test_r4631_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_vaxis_quip_1,
            self.logic.r4631_action
        )


    def test_r4632_action(self):
        who = 'protagonist'
        prop = 'looks_like'
        delta = 'zombie'

        self._change_prop(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4632_action
        )


    def test_r64533_action(self):
        who = 'protagonist'
        prop = 'looks_like'
        delta = 'zombie'

        self._change_prop(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r64533_action
        )


    def test_r4635_action(self):
        self._false_then_true_action(
            self.state_manager.world_manager.get_morte_vaxis_quip_2,
            self.logic.r4635_action
        )


    def test_j64531_s67_r4638_action(self):
        note_id = '64531'

        self._pickup_journal_note_action(
            note_id,
            self.logic.j64531_s67_r4638_action
        )


    def test_r4645_action(self):
        self.logic.r4645_action()


    def test_r4651_action(self):
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.state_manager.characters_manager.get_property(who, prop),
            delta,
            self.logic.r4651_action
        )


    def test_r4661_action(self):
        self.logic.r4661_action()


    def test_r4666_action(self):
        self.logic.r4666_action()


    def test_r4669_action(self):
        self.logic.r4669_action()


    def test_r454_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_zombie_chaotic(x),
            self.logic.r454_condition
        )


    def test_r455_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_zombie_chaotic(x),
            self.logic.r455_condition
        )


    def test_r456_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_vaxis_exposed(x),
            self.logic.r456_condition
        )


    def test_r457_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_can_speak_with_dead(x),
            self.logic.r457_condition
        )


    def test_r468_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_escape_mortuary(x),
            self.logic.r468_condition
        )


    def test_r472_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r472_condition
        )


    def test_r484_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_escape_mortuary(x),
            self.logic.r484_condition
        )


    def test_r487_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r487_condition
        )


    def test_r491_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_escape_mortuary(x),
            self.logic.r491_condition
        )


    def test_r492_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_escape_mortuary(x),
            self.logic.r492_condition
        )


    def test_r493_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r493_condition
        )


    def test_r494_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r494_condition
        )


    def test_r495_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r495_condition
        )


    def test_r496_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 11

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r496_condition
        )


    def test_r1306_condition(self):
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r1306_condition
        )


    def test_r1348_condition(self):
        who = 'protagonist'
        prop = 'strength'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1348_condition
        )


    def test_r1359_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1359_condition
        )


    def test_r1360_condition(self):
        who_charisma = 'protagonist'
        prop_charisma = 'charisma'
        delta_charisma = 11
        who_intelligence = 'protagonist'
        prop_intelligence = 'intelligence'
        delta_intelligence = 12

        self.state_manager.characters_manager.set_property(who_charisma, prop_charisma, delta_charisma)
        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)

        self.assertFalse(self.logic.r1360_condition())

        self.state_manager.characters_manager.set_property(who_charisma, prop_charisma, delta_charisma + 1)
        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence - 1)

        self.assertTrue(self.logic.r1360_condition())


    def test_r1361_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r1361_condition
        )


    def test_r4362_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4362_condition
        )


    def test_r4363_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 11

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4363_condition
        )


    def test_r4364_condition(self):
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4364_condition
        )


    def test_r4365_condition(self):
        who = 'protagonist'
        prop = 'strength'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4365_condition
        )


    def test_r4368_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_escape_mortuary(x),
            self.logic.r4368_condition
        )


    def test_r4370_condition(self):
        who_charisma = 'protagonist'
        prop_charisma = 'charisma'
        delta_charisma = 11
        who_intelligence = 'protagonist'
        prop_intelligence = 'intelligence'
        delta_intelligence = 12

        self.state_manager.characters_manager.set_property(who_charisma, prop_charisma, delta_charisma)
        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)

        self.assertFalse(self.logic.r4370_condition())

        self.state_manager.characters_manager.set_property(who_charisma, prop_charisma, delta_charisma + 1)
        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence - 1)

        self.assertTrue(self.logic.r4370_condition())


    def test_r4371_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4371_condition
        )


    def test_r4379_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r4379_condition
        )


    def test_r4380_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r4380_condition
        )


    def test_r4385_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4385_condition
        )


    def test_r4386_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 11

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4386_condition
        )


    def test_r4387_condition(self):
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4387_condition
        )


    def test_r4388_condition(self):
        who = 'protagonist'
        prop = 'strength'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4388_condition
        )


    def test_r4395_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4395_condition
        )


    def test_r4396_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 11

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4396_condition
        )


    def test_r4397_condition(self):
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4397_condition
        )


    def test_r4398_condition(self):
        who = 'protagonist'
        prop = 'strength'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4398_condition
        )


    def test_r4401_condition(self):
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4401_condition
        )


    def test_r4402_condition(self):
        who = 'protagonist'
        prop = 'strength'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4402_condition
        )


    def test_r4409_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4409_condition
        )


    def test_r4410_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 11

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4410_condition
        )


    def test_r4426_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r4426_condition
        )


    def test_r4427_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r4427_condition
        )


    def test_r4428_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r4428_condition
        )


    def test_r4429_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r4429_condition
        )


    def test_r4438_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_escape_mortuary(x),
            self.logic.r4438_condition
        )


    def test_r4440_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4440_condition
        )


    def test_r4441_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 11

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4441_condition
        )


    def test_r4442_condition(self):
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4442_condition
        )


    def test_r4443_condition(self):
        who = 'protagonist'
        prop = 'strength'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4443_condition
        )


    def test_r4446_condition(self):
        who_charisma = 'protagonist'
        prop_charisma = 'charisma'
        delta_charisma = 12
        who_intelligence = 'protagonist'
        prop_intelligence = 'intelligence'
        delta_intelligence = 12

        self.state_manager.characters_manager.set_property(who_charisma, prop_charisma, delta_charisma)
        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)

        self.assertFalse(self.logic.r4446_condition())

        self.state_manager.characters_manager.set_property(who_charisma, prop_charisma, delta_charisma - 1)
        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence - 1)

        self.assertTrue(self.logic.r4446_condition())


    def test_r4447_condition(self):
        who_charisma = 'protagonist'
        prop_charisma = 'charisma'
        delta_charisma = 11
        who_intelligence = 'protagonist'
        prop_intelligence = 'intelligence'
        delta_intelligence = 12

        self.state_manager.characters_manager.set_property(who_charisma, prop_charisma, delta_charisma)
        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)

        self.assertFalse(self.logic.r4447_condition())

        self.state_manager.characters_manager.set_property(who_charisma, prop_charisma, delta_charisma + 1)
        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence - 1)

        self.assertTrue(self.logic.r4447_condition())


    def test_r4448_condition(self):
        who = 'protagonist'
        prop = 'intelligence'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4448_condition
        )


    def test_r4452_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_escape_mortuary(x),
            self.logic.r4452_condition
        )


    def test_r4454_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4454_condition
        )


    def test_r4455_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 11

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4455_condition
        )


    def test_r4456_condition(self):
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4456_condition
        )


    def test_r4457_condition(self):
        who = 'protagonist'
        prop = 'strength'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4457_condition
        )


    def test_r4469_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_vaxis_leave(x),
            self.logic.r4469_condition
        )


    def test_r4474_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4474_condition
        )


    def test_r4475_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4475_condition
        )


    def test_r4476_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 11

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4476_condition
        )


    def test_r4477_condition(self):
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4477_condition
        )


    def test_r4478_condition(self):
        who = 'protagonist'
        prop = 'strength'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4478_condition
        )


    def test_r4482_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4482_condition
        )


    def test_r4483_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 11

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4483_condition
        )


    def test_r4484_condition(self):
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4484_condition
        )


    def test_r4485_condition(self):
        who = 'protagonist'
        prop = 'strength'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4485_condition
        )


    def test_r4489_condition(self):
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4489_condition
        )


    def test_r4490_condition(self):
        who = 'protagonist'
        prop = 'strength'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4490_condition
        )


    def test_r4494_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_has_keyem(x),
            self.logic.r4494_condition
        )


    def test_r4496_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4496_condition
        )


    def test_r4497_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 11

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4497_condition
        )


    def test_r4498_condition(self):
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4498_condition
        )


    def test_r4499_condition(self):
        who = 'protagonist'
        prop = 'strength'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4499_condition
        )


    def test_r4502_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_has_keyem(x),
            self.logic.r4502_condition
        )


    def test_r64520_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_eivene_value(x),
            1,
            self.logic.r64520_condition
        )


    def test_r4503_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_eivene_value(x),
            0,
            self.logic.r4503_condition
        )


    def test_r4506_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_eivene_value(x),
            1,
            self.logic.r4506_condition
        )


    def test_r66150_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_eivene_value(x),
            0,
            self.logic.r66150_condition
        )


    def test_r4508_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_embalm_key_quest(x),
            0,
            self.logic.r4508_condition
        )


    def test_r4509_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_embalm_key_quest(x),
            0,
            self.logic.r4509_condition
        )


    def test_r4510_condition(self):
        self._integer_not_equal_condition(
            lambda x: self.state_manager.world_manager.set_embalm_key_quest(x),
            0,
            self.logic.r4510_condition
        )


    def test_r4511_condition(self):
        self._integer_not_equal_condition(
            lambda x: self.state_manager.world_manager.set_embalm_key_quest(x),
            0,
            self.logic.r4511_condition
        )


    def test_r4521_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_escape_mortuary(x),
            self.logic.r4521_condition
        )


    def test_r4522_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_escape_mortuary(x),
            self.logic.r4522_condition
        )


    def test_r64508_condition(self):
        self.state_manager.world_manager.set_escape_mortuary(True)
        self.state_manager.world_manager.set_vaxis_help(True)
        self.state_manager.world_manager.set_embalm_key_quest(1)
        self.state_manager.world_manager.set_strong_arm_vaxis(False)

        self.assertFalse(self.logic.r64508_condition())

        self.state_manager.world_manager.set_escape_mortuary(False)
        self.state_manager.world_manager.set_vaxis_help(False)
        self.state_manager.world_manager.set_embalm_key_quest(0)
        self.state_manager.world_manager.set_strong_arm_vaxis(True)

        self.assertTrue(self.logic.r64508_condition())


    def test_r4524_condition(self):
        self.state_manager.world_manager.set_escape_mortuary(True)
        self.state_manager.world_manager.set_vaxis_help(True)
        self.state_manager.world_manager.set_embalm_key_quest(1)
        self.state_manager.world_manager.set_strong_arm_vaxis(True)

        self.assertFalse(self.logic.r4524_condition())

        self.state_manager.world_manager.set_escape_mortuary(False)
        self.state_manager.world_manager.set_vaxis_help(False)
        self.state_manager.world_manager.set_embalm_key_quest(0)
        self.state_manager.world_manager.set_strong_arm_vaxis(False)

        self.assertTrue(self.logic.r4524_condition())


    def test_r4525_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_vaxis_help(x),
            self.logic.r4525_condition
        )


    def test_r4526_condition(self):
        self.state_manager.world_manager.set_vaxis_zombie_disguise(0)
        self.state_manager.world_manager.set_appearance(1)

        self.assertFalse(self.logic.r4526_condition())

        self.state_manager.world_manager.set_vaxis_zombie_disguise(1)
        self.state_manager.world_manager.set_appearance(0)

        self.assertTrue(self.logic.r4526_condition())


    def test_r4527_condition(self):
        self.state_manager.world_manager.set_vaxis_zombie_disguise(0)
        self.state_manager.world_manager.set_appearance(1)

        self.assertFalse(self.logic.r4527_condition())

        self.state_manager.world_manager.set_vaxis_zombie_disguise(2)
        self.state_manager.world_manager.set_appearance(0)

        self.assertTrue(self.logic.r4527_condition())


    def test_r4528_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_vaxis_orders(x),
            self.logic.r4528_condition
        )


    def test_r4673_condition(self):
        self._integer_lt_condition(
            lambda x: self.state_manager.world_manager.set_pharod_value(x),
            1,
            self.logic.r4673_condition
        )


    def test_r4530_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_journal(x),
            self.logic.r4530_condition
        )


    def test_r4531_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_dhall_value(x),
            0,
            self.logic.r4531_condition
        )


    def test_r4532_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_deionarra_value(x),
            0,
            self.logic.r4532_condition
        )


    def test_r4533_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_soego_value(x),
            0,
            self.logic.r4533_condition
        )


    def test_r4534_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r4534_condition
        )


    def test_r4535_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r4535_condition
        )


    def test_r4547_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r4547_condition
        )


    def test_r4548_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r4548_condition
        )


    def test_r4552_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r4552_condition
        )


    def test_r4553_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r4553_condition
        )


    def test_r4564_condition(self):
        self.state_manager.world_manager.set_strong_arm_vaxis(True)
        self.state_manager.world_manager.set_embalm_key_quest(1)
        self.state_manager.world_manager.set_vaxis_orders(True)

        self.assertFalse(self.logic.r4564_condition())

        self.state_manager.world_manager.set_strong_arm_vaxis(False)
        self.state_manager.world_manager.set_embalm_key_quest(0)
        self.state_manager.world_manager.set_vaxis_orders(False)

        self.assertTrue(self.logic.r4564_condition())


    def test_r64509_condition(self):
        self.state_manager.world_manager.set_strong_arm_vaxis(True)
        self.state_manager.world_manager.set_embalm_key_quest(1)
        self.state_manager.world_manager.set_vaxis_orders(True)

        self.assertFalse(self.logic.r64509_condition())

        self.state_manager.world_manager.set_strong_arm_vaxis(False)
        self.state_manager.world_manager.set_embalm_key_quest(3)
        self.state_manager.world_manager.set_vaxis_orders(False)

        self.assertTrue(self.logic.r64509_condition())


    def test_r64510_condition(self):
        self.state_manager.world_manager.set_strong_arm_vaxis(False)
        self.state_manager.world_manager.set_vaxis_orders(True)

        self.assertFalse(self.logic.r64510_condition())

        self.state_manager.world_manager.set_strong_arm_vaxis(True)
        self.state_manager.world_manager.set_vaxis_orders(False)

        self.assertTrue(self.logic.r64510_condition())


    def test_r64511_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_vaxis_orders(x),
            self.logic.r64511_condition
        )


    def test_r64527_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_has_bone_chrm(x),
            self.logic.r64527_condition
        )


    def test_r4568_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_has_bone_chrm(x),
            self.logic.r4568_condition
        )


    def test_r4569_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_has_bone_chrm(x),
            self.logic.r4569_condition
        )


    def test_r4586_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_embalm_key_quest(x),
            1,
            self.logic.r4586_condition
        )


    def test_r4587_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_embalm_key_quest(x),
            2,
            self.logic.r4587_condition
        )


    def test_r4588_condition(self):
        self.state_manager.world_manager.set_embalm_key_quest(1)
        self.state_manager.world_manager.set_embalm_key_quest(2)
        self.state_manager.world_manager.set_vaxis_orders(True)

        self.assertFalse(self.logic.r4588_condition())

        self.state_manager.world_manager.set_embalm_key_quest(0)
        self.state_manager.world_manager.set_embalm_key_quest(0)
        self.state_manager.world_manager.set_vaxis_orders(False)

        self.assertTrue(self.logic.r4588_condition())


    def test_r4589_condition(self):
        self.state_manager.world_manager.set_embalm_key_quest(1)
        self.state_manager.world_manager.set_embalm_key_quest(2)
        self.state_manager.world_manager.set_vaxis_orders(False)

        self.assertFalse(self.logic.r4589_condition())

        self.state_manager.world_manager.set_embalm_key_quest(0)
        self.state_manager.world_manager.set_embalm_key_quest(0)
        self.state_manager.world_manager.set_vaxis_orders(True)

        self.assertTrue(self.logic.r4589_condition())


    def test_r4592_condition(self):
        self.state_manager.world_manager.set_embalm_key_quest(0)
        self.state_manager.world_manager.set_has_keyem(False)

        self.assertFalse(self.logic.r4592_condition())

        self.state_manager.world_manager.set_embalm_key_quest(1)
        self.state_manager.world_manager.set_has_keyem(True)

        self.assertTrue(self.logic.r4592_condition())


    def test_r4593_condition(self):
        self.state_manager.world_manager.set_embalm_key_quest(0)
        self.state_manager.world_manager.set_has_keyem(False)

        self.assertFalse(self.logic.r4593_condition())

        self.state_manager.world_manager.set_embalm_key_quest(2)
        self.state_manager.world_manager.set_has_keyem(True)

        self.assertTrue(self.logic.r4593_condition())


    def test_r4594_condition(self):
        self.state_manager.world_manager.set_embalm_key_quest(0)
        self.state_manager.world_manager.set_has_keyem(True)

        self.assertFalse(self.logic.r4594_condition())

        self.state_manager.world_manager.set_embalm_key_quest(1)
        self.state_manager.world_manager.set_has_keyem(False)

        self.assertTrue(self.logic.r4594_condition())


    def test_r4599_condition(self):
        self._integer_equal_condition(
            lambda x: self.state_manager.world_manager.set_embalm_key_quest(x),
            0,
            self.logic.r4599_condition
        )


    def test_r4600_condition(self):
        self._integer_gt_condition(
            lambda x: self.state_manager.world_manager.set_embalm_key_quest(x),
            0,
            self.logic.r4600_condition
        )


    def test_r4604_condition(self):
        who_intelligence = 'protagonist'
        prop_intelligence = 'intelligence'
        delta_intelligence = 12

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)
        self.state_manager.world_manager.set_appearance(1)

        self.assertFalse(self.logic.r4604_condition())

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence + 1)
        self.state_manager.world_manager.set_appearance(0)

        self.assertTrue(self.logic.r4604_condition())


    def test_r4609_condition(self):
        who_intelligence = 'protagonist'
        prop_intelligence = 'intelligence'
        delta_intelligence = 12

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)
        self.state_manager.world_manager.set_appearance(1)

        self.assertFalse(self.logic.r4609_condition())

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence + 1)
        self.state_manager.world_manager.set_appearance(0)

        self.assertTrue(self.logic.r4609_condition())


    def test_r4610_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4610_condition
        )


    def test_r4611_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4611_condition
        )


    def test_r4612_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 9

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4612_condition
        )


    def test_r4613_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 9

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4613_condition
        )


    def test_r4615_condition(self):
        who_intelligence = 'protagonist'
        prop_intelligence = 'intelligence'
        delta_intelligence = 12

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence)
        self.state_manager.world_manager.set_appearance(1)

        self.assertFalse(self.logic.r4615_condition())

        self.state_manager.characters_manager.set_property(who_intelligence, prop_intelligence, delta_intelligence + 1)
        self.state_manager.world_manager.set_appearance(0)

        self.assertTrue(self.logic.r4615_condition())


    def test_r4616_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4616_condition
        )


    def test_r4617_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4617_condition
        )


    def test_r4618_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4618_condition
        )


    def test_r4674_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4674_condition
        )


    def test_r4620_condition(self):
        self.state_manager.world_manager.set_has_embalm(False)
        self.state_manager.world_manager.set_has_needle(False)

        self.assertFalse(self.logic.r4620_condition())

        self.state_manager.world_manager.set_has_embalm(True)
        self.state_manager.world_manager.set_has_needle(True)

        self.assertTrue(self.logic.r4620_condition())


    def test_r4630_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_vaxis_global_xp(True)

        self.assertFalse(self.logic.r4630_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_vaxis_global_xp(False)

        self.assertTrue(self.logic.r4630_condition())


    def test_r4631_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_vaxis_quip_1(True)

        self.assertFalse(self.logic.r4631_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_vaxis_quip_1(False)

        self.assertTrue(self.logic.r4631_condition())


    def test_r4632_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_vaxis_quip_1(False)

        self.assertFalse(self.logic.r4632_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_vaxis_quip_1(True)

        self.assertTrue(self.logic.r4632_condition())


    def test_r64533_condition(self):
        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_vaxis_global_xp(False)

        self.assertFalse(self.logic.r64533_condition())

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_vaxis_global_xp(True)

        self.assertTrue(self.logic.r64533_condition())


    def test_r4634_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_in_party_morte(x),
            self.logic.r4634_condition
        )


    def test_r4635_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_vaxis_quip_2(True)

        self.assertFalse(self.logic.r4635_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_vaxis_quip_2(False)

        self.assertTrue(self.logic.r4635_condition())


    def test_r4636_condition(self):
        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_morte_vaxis_quip_2(False)

        self.assertFalse(self.logic.r4636_condition())

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_morte_vaxis_quip_2(True)

        self.assertTrue(self.logic.r4636_condition())


    def test_r4656_condition(self):
        self._boolean_invert_condition(
            lambda x: self.state_manager.world_manager.set_vaxis_help(x),
            self.logic.r4656_condition
        )


    def test_r64532_condition(self):
        self._boolean_straight_condition(
            lambda x: self.state_manager.world_manager.set_vaxis_help(x),
            self.logic.r64532_condition
        )


    def test_r4664_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            self.logic.r4664_condition
        )


    def test_r4665_condition(self):
        who = 'protagonist'
        prop = 'charisma'
        value = 11

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            self.logic.r4665_condition
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
