import unittest

from engine.tests import (LogicTest)
from dlgs.mortuary.vaxis_logic import VaxisLogic

class VaxisLogicTest(LogicTest):
    def test_initialization(self):
        logic = VaxisLogic(self.settings_manager)
        self.assertIsNotNone(logic.gsm)


    def test_methods_are_bound(self):
        self.target_class = VaxisLogic
        self._methods_are_bound()


    def test_vaxis_init(self):
        self._init_(
            'mortuary_f2r6',
            VaxisLogic(self.settings_manager).vaxis_init,
            self.settings_manager.get_talked_to_vaxis_times
        )


    def test_kill_vaxis(self):
        logic = VaxisLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_dead_vaxis(),
            lambda: logic.kill_vaxis()
        )


    def test_get_know_vaxis_name(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_know_vaxis_name(x),
            lambda: logic.get_know_vaxis_name()
        )


    def test_set_know_vaxis_name(self):
        logic = VaxisLogic(self.settings_manager)

        self.assertFalse(self.settings_manager.get_know_vaxis_name())

        logic.set_know_vaxis_name()

        self.assertTrue(self.settings_manager.get_know_vaxis_name())


    def test_r454_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self.assertFalse(self.settings_manager.get_zombie_chaotic())
        lawBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r454_action()

        self.assertTrue(self.settings_manager.get_zombie_chaotic())
        lawAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(lawBefore + delta, lawAfter)


    def test_r461_action(self):
        logic = VaxisLogic(self.settings_manager)

        self._integer_equals_action(
            lambda: self.settings_manager.get_vaxis_value(),
            1,
            lambda: logic.r461_action()
        )


    def test_r464_action(self):
        logic = VaxisLogic(self.settings_manager)
        id = '64513'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r464_action()
        )


    def test_r465_action(self):
        logic = VaxisLogic(self.settings_manager)
        id = '64513'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r465_action()
        )


    def test_r466_action(self):
        logic = VaxisLogic(self.settings_manager)
        id = '64513'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r466_action()
        )


    def test_r472_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r472_action()
        )


    def test_r473_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r473_action()
        )


    def test_r475_action(self):
        logic = VaxisLogic(self.settings_manager)
        logic.r475_action()


    def test_r476_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r476_action()
        )


    def test_r477_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        propLaw = 'law'
        propGood = 'good'
        delta = 1

        lawBefore = self.settings_manager.gcm.get_character_property(who, propLaw)
        goodBefore = self.settings_manager.gcm.get_character_property(who, propGood)

        logic.r477_action()

        lawAfter = self.settings_manager.gcm.get_character_property(who, propLaw)
        goodAfter = self.settings_manager.gcm.get_character_property(who, propGood)
        self.assertEqual(lawBefore + delta, lawAfter)
        self.assertEqual(goodBefore + delta, goodAfter)


    def test_r480_action(self):
        logic = VaxisLogic(self.settings_manager)
        id = '64513'

        self.assertEqual(self.settings_manager.get_vaxis_value(), 0)
        self.assertFalse(self.settings_manager.has_journal_note(id))

        logic.r480_action()

        self.assertTrue(self.settings_manager.get_vaxis_value(), 1)
        self.assertTrue(self.settings_manager.has_journal_note(id))


    def test_r481_action(self):
        logic = VaxisLogic(self.settings_manager)
        id = '64513'

        self.assertEqual(self.settings_manager.get_vaxis_value(), 0)
        self.assertFalse(self.settings_manager.has_journal_note(id))

        logic.r481_action()

        self.assertTrue(self.settings_manager.get_vaxis_value(), 1)
        self.assertTrue(self.settings_manager.has_journal_note(id))


    def test_r482_action(self):
        logic = VaxisLogic(self.settings_manager)
        id = '64513'

        self.assertEqual(self.settings_manager.get_vaxis_value(), 0)
        self.assertFalse(self.settings_manager.has_journal_note(id))

        logic.r482_action()

        self.assertTrue(self.settings_manager.get_vaxis_value(), 1)
        self.assertTrue(self.settings_manager.has_journal_note(id))


    def test_r487_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r487_action()
        )


    def test_r488_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r488_action()
        )


    def test_r493_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r493_action()
        )


    def test_r494_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r494_action()
        )


    def test_r1306_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r1306_action()
        )


    def test_r1348_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r1348_action()
        )


    def test_r1359_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r1359_action()
        )


    def test_r1360_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r1360_action()
        )


    def test_r1361_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r1361_action()
        )


    def test_r4364_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4364_action()
        )


    def test_r4365_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4365_action()
        )


    def test_r4370_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4370_action()
        )


    def test_r4371_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4371_action()
        )


    def test_r4381_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        propLaw = 'law'
        propGood = 'good'
        delta = 1

        lawBefore = self.settings_manager.gcm.get_character_property(who, propLaw)
        goodBefore = self.settings_manager.gcm.get_character_property(who, propGood)

        logic.r4381_action()

        lawAfter = self.settings_manager.gcm.get_character_property(who, propLaw)
        goodAfter = self.settings_manager.gcm.get_character_property(who, propGood)
        self.assertEqual(lawBefore + delta, lawAfter)
        self.assertEqual(goodBefore + delta, goodAfter)


    def test_r4387_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4387_action()
        )


    def test_r4388_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4388_action()
        )


    def test_r4391_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        propLaw = 'law'
        propGood = 'good'
        delta = 1

        lawBefore = self.settings_manager.gcm.get_character_property(who, propLaw)
        goodBefore = self.settings_manager.gcm.get_character_property(who, propGood)

        logic.r4391_action()

        lawAfter = self.settings_manager.gcm.get_character_property(who, propLaw)
        goodAfter = self.settings_manager.gcm.get_character_property(who, propGood)
        self.assertEqual(lawBefore + delta, lawAfter)
        self.assertEqual(goodBefore + delta, goodAfter)


    def test_r4397_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4397_action()
        )


    def test_r4398_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4398_action()
        )


    def test_r4401_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4401_action()
        )


    def test_r4402_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4402_action()
        )


    def test_r4405_action(self):
        logic = VaxisLogic(self.settings_manager)
        logic.r4405_action()


    def test_r4408_action(self):
        logic = VaxisLogic(self.settings_manager)
        logic.r4408_action()


    def test_r4413_action(self):
        logic = VaxisLogic(self.settings_manager)
        logic.r4413_action()


    def test_r4428_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4428_action()
        )


    def test_r4429_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4429_action()
        )


    def test_r4434_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4434_action()
        )


    def test_r4442_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4442_action()
        )


    def test_r4443_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4443_action()
        )


    def test_r4447_action(self):
        logic = VaxisLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_vaxis_orders(),
            lambda: logic.r4447_action()
        )


    def test_r4448_action(self):
        logic = VaxisLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_vaxis_orders(),
            lambda: logic.r4448_action()
        )


    def test_r4456_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4456_action()
        )


    def test_r4457_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4457_action()
        )


    def test_r4469_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 500

        self.assertFalse(self.settings_manager.get_vaxis_leave())
        self.assertFalse(self.settings_manager.get_has_bandages())
        self.assertFalse(self.settings_manager.get_has_bandages())
        self.assertFalse(self.settings_manager.get_has_bandages())
        self.assertFalse(self.settings_manager.get_has_embalm())
        self.assertFalse(self.settings_manager.get_has_needle())
        expBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r4469_action()

        expAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertTrue(self.settings_manager.get_vaxis_leave())
        self.assertTrue(self.settings_manager.get_has_bandages())
        self.assertTrue(self.settings_manager.get_has_bandages())
        self.assertTrue(self.settings_manager.get_has_bandages())
        self.assertTrue(self.settings_manager.get_has_embalm())
        self.assertTrue(self.settings_manager.get_has_needle())
        self.assertEqual(expBefore + delta, expAfter)


    def test_r4474_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = 1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4474_action()
        )


    def test_r4477_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4477_action()
        )


    def test_r4478_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4478_action()
        )


    def test_r4484_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4484_action()
        )


    def test_r4485_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4485_action()
        )


    def test_r4672_action(self):
        logic = VaxisLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_strong_arm_vaxis(),
            lambda: logic.r4672_action()
        )


    def test_r4489_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4489_action()
        )


    def test_r4490_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4490_action()
        )


    def test_r4494_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4494_action()
        )


    def test_r4496_action(self):
        logic = VaxisLogic(self.settings_manager)

        self.settings_manager.set_vaxis_orders(True)

        self._true_then_false_action(
            lambda: self.settings_manager.get_vaxis_orders(),
            lambda: logic.r4496_action()
        )


    def test_r4497_action(self):
        logic = VaxisLogic(self.settings_manager)

        self.settings_manager.set_vaxis_orders(True)

        self._true_then_false_action(
            lambda: self.settings_manager.get_vaxis_orders(),
            lambda: logic.r4497_action()
        )


    def test_r4498_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self.settings_manager.set_vaxis_orders(True)

        self.assertTrue(self.settings_manager.get_vaxis_orders())
        goodBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r4498_action()

        self.assertFalse(self.settings_manager.get_vaxis_orders())
        goodAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(goodBefore + delta, goodAfter)


    def test_r4499_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self.settings_manager.set_vaxis_orders(True)

        self.assertTrue(self.settings_manager.get_vaxis_orders())
        goodBefore = self.settings_manager.gcm.get_character_property(who, prop)

        logic.r4499_action()

        self.assertFalse(self.settings_manager.get_vaxis_orders())
        goodAfter = self.settings_manager.gcm.get_character_property(who, prop)
        self.assertEqual(goodBefore + delta, goodAfter)



    def test_r4502_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4502_action()
        )


    def test_r64520_action(self):
        logic = VaxisLogic(self.settings_manager)
        id = '64519'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r64520_action()
        )


    def test_r4503_action(self):
        logic = VaxisLogic(self.settings_manager)
        id = '64518'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r4503_action()
        )


    def test_r4504_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'law'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4504_action()
        )


    def test_r4506_action(self):
        logic = VaxisLogic(self.settings_manager)
        id = '64519'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r4506_action()
        )


    def test_r66150_action(self):
        logic = VaxisLogic(self.settings_manager)
        id = '64518'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r66150_action()
        )


    def test_r4508_action(self):
        logic = VaxisLogic(self.settings_manager)

        self.assertNotEqual(self.settings_manager.get_embalm_key_quest(), 1)

        logic.r4508_action()

        self.assertEqual(self.settings_manager.get_embalm_key_quest(), 1)


    def test_r4509_action(self):
        logic = VaxisLogic(self.settings_manager)

        self.assertNotEqual(self.settings_manager.get_embalm_key_quest(), 1)

        logic.r4509_action()

        self.assertEqual(self.settings_manager.get_embalm_key_quest(), 1)


    def test_r4519_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4519_action()
        )


    def test_r4521_action(self):
        logic = VaxisLogic(self.settings_manager)
        id = '64521'

        self.assertFalse(self.settings_manager.has_journal_note(id))
        self.assertNotEqual(self.settings_manager.get_embalm_key_quest(), 3)

        logic.r4521_action()

        self.assertTrue(self.settings_manager.has_journal_note(id))
        self.assertEqual(self.settings_manager.get_embalm_key_quest(), 3)


    def test_r4522_action(self):
        logic = VaxisLogic(self.settings_manager)
        id = '64521'

        self.assertFalse(self.settings_manager.has_journal_note(id))
        self.assertNotEqual(self.settings_manager.get_embalm_key_quest(), 3)

        logic.r4522_action()

        self.assertTrue(self.settings_manager.has_journal_note(id))
        self.assertEqual(self.settings_manager.get_embalm_key_quest(), 3)


    def test_r4539_action(self):
        logic = VaxisLogic(self.settings_manager)
        id = '64522'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r4539_action()
        )


    def test_r4543_action(self):
        logic = VaxisLogic(self.settings_manager)
        id = '64522'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r4543_action()
        )


    def test_r64527_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r64527_action()
        )


    def test_r4568_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4568_action()
        )


    def test_r4569_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4569_action()
        )


    def test_r4580_action(self):
        logic = VaxisLogic(self.settings_manager)
        id = '64530'

        self.assertFalse(self.settings_manager.has_journal_note(id))
        self.assertFalse(self.settings_manager.get_vaxis_exposes_soego())

        logic.r4580_action()

        self.assertTrue(self.settings_manager.has_journal_note(id))
        self.assertTrue(self.settings_manager.get_vaxis_exposes_soego())


    def test_r4592_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4592_action()
        )


    def test_r4593_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'experience'
        delta = 250

        self._change_prop(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4593_action()
        )


    def test_r4620_action(self):
        logic = VaxisLogic(self.settings_manager)

        self.assertNotEqual(self.settings_manager.get_vaxis_zombie_disguise(), 2)

        logic.r4620_action()

        self.assertEqual(self.settings_manager.get_vaxis_zombie_disguise(), 2)


    def test_r4621_action(self):
        logic = VaxisLogic(self.settings_manager)

        self.assertNotEqual(self.settings_manager.get_vaxis_zombie_disguise(), 1)

        logic.r4621_action()

        self.assertEqual(self.settings_manager.get_vaxis_zombie_disguise(), 1)


    def test_r4622_action(self):
        logic = VaxisLogic(self.settings_manager)

        self.assertNotEqual(self.settings_manager.get_vaxis_zombie_disguise(), 1)

        logic.r4622_action()

        self.assertEqual(self.settings_manager.get_vaxis_zombie_disguise(), 1)


    def test_r4623_action(self):
        logic = VaxisLogic(self.settings_manager)

        self.assertNotEqual(self.settings_manager.get_vaxis_zombie_disguise(), 1)

        logic.r4623_action()

        self.assertEqual(self.settings_manager.get_vaxis_zombie_disguise(), 1)


    def test_r4625_action(self):
        logic = VaxisLogic(self.settings_manager)

        self.assertNotEqual(self.settings_manager.get_vaxis_zombie_disguise(), 1)

        logic.r4625_action()

        self.assertEqual(self.settings_manager.get_vaxis_zombie_disguise(), 1)


    def test_r4628_action(self):
        logic = VaxisLogic(self.settings_manager)

        self.assertNotEqual(self.settings_manager.get_vaxis_zombie_disguise(), 1)

        logic.r4628_action()

        self.assertEqual(self.settings_manager.get_vaxis_zombie_disguise(), 1)


    def test_r4630_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        propExp = 'experience'
        propLooks = 'looks_like'
        delta = 500

        expBefore = self.settings_manager.gcm.get_character_property(who, propExp)
        looksBefore = self.settings_manager.gcm.get_character_property(who, propLooks)
        self.assertNotEqual(looksBefore, 'zombie')

        logic.r4630_action()

        expAfter = self.settings_manager.gcm.get_character_property(who, propExp)
        looksAfter = self.settings_manager.gcm.get_character_property(who, propLooks)
        self.assertEqual(expBefore + delta, expAfter)
        self.assertEqual(looksAfter, 'zombie')


    def test_r4631_action(self):
        logic = VaxisLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_vaxis_quip_1(),
            lambda: logic.r4631_action()
        )


    def test_r4632_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        propLooks = 'looks_like'

        looksBefore = self.settings_manager.gcm.get_character_property(who, propLooks)
        self.assertNotEqual(looksBefore, 'zombie')

        logic.r4632_action()

        looksAfter = self.settings_manager.gcm.get_character_property(who, propLooks)
        self.assertEqual(looksAfter, 'zombie')


    def test_r64533_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        propLooks = 'looks_like'

        looksBefore = self.settings_manager.gcm.get_character_property(who, propLooks)
        self.assertNotEqual(looksBefore, 'zombie')

        logic.r64533_action()

        looksAfter = self.settings_manager.gcm.get_character_property(who, propLooks)
        self.assertEqual(looksAfter, 'zombie')


    def test_r4635_action(self):
        logic = VaxisLogic(self.settings_manager)

        self._false_then_true_action(
            lambda: self.settings_manager.get_morte_vaxis_quip_2(),
            lambda: logic.r4635_action()
        )


    def test_r4638_action(self):
        logic = VaxisLogic(self.settings_manager)
        id = '64531'

        self._pickup_journal_note_action(
            id,
            lambda: logic.r4638_action()
        )


    def test_r4645_action(self):
        logic = VaxisLogic(self.settings_manager)
        logic.r4645_action()


    def test_r4651_action(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'good'
        delta = -1

        self._change_prop_once(
            lambda: self.settings_manager.gcm.get_character_property(who, prop),
            delta,
            lambda: logic.r4651_action()
        )


    def test_r4661_action(self):
        logic = VaxisLogic(self.settings_manager)
        logic.r4661_action()


    def test_r4666_action(self):
        logic = VaxisLogic(self.settings_manager)
        logic.r4666_action()


    def test_r4669_action(self):
        logic = VaxisLogic(self.settings_manager)
        logic.r4669_action()


    def test_r454_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r454_condition()
        )


    def test_r455_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_zombie_chaotic(x),
            lambda: logic.r455_condition()
        )


    def test_r456_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_exposed(x),
            lambda: logic.r456_condition()
        )


    def test_r457_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_can_speak_with_dead(x),
            lambda: logic.r457_condition()
        )

    def test_r468_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_escape_mortuary(x),
            lambda: logic.r468_condition()
        )


    def test_r472_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r472_condition()
        )


    def test_r484_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_escape_mortuary(x),
            lambda: logic.r484_condition()
        )


    def test_r487_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r487_condition()
        )


    def test_r491_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_escape_mortuary(x),
            lambda: logic.r491_condition()
        )


    def test_r492_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_escape_mortuary(x),
            lambda: logic.r492_condition()
        )


    def test_r493_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r493_condition()
        )


    def test_r494_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r494_condition()
        )


    def test_r495_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r495_condition()
        )


    def test_r496_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 11

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r496_condition()
        )


    def test_r1306_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r1306_condition()
        )


    def test_r1348_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r1348_condition()
        )


    def test_r1359_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r1359_condition()
        )


    def test_r1360_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        propCha = 'charisma'
        propInt = 'intelligence'
        deltaCha = 11
        deltaInt = 12

        self.settings_manager.gcm.set_property(who, propCha, deltaCha - 1)
        self.settings_manager.gcm.set_property(who, propInt, deltaInt + 1)
        self.assertFalse(logic.r1360_condition())

        self.settings_manager.gcm.set_property(who, propCha, deltaCha)
        self.settings_manager.gcm.set_property(who, propInt, deltaInt)
        self.assertFalse(logic.r1360_condition())

        self.settings_manager.gcm.set_property(who, propCha, deltaCha + 1)
        self.settings_manager.gcm.set_property(who, propInt, deltaInt - 1)
        self.assertTrue(logic.r1360_condition())


    def test_r1361_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r1361_condition()
        )


    def test_r4362_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4362_condition()
        )

    def test_r4363_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 11

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r4363_condition()
        )


    def test_r4364_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r4364_condition()
        )


    def test_r4365_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4365_condition()
        )


    def test_r4368_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_escape_mortuary(x),
            lambda: logic.r4368_condition()
        )


    def test_r4370_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        propCha = 'charisma'
        propInt = 'intelligence'
        deltaCha = 11
        deltaInt = 12

        self.settings_manager.gcm.set_property(who, propCha, deltaCha - 1)
        self.settings_manager.gcm.set_property(who, propInt, deltaInt + 1)
        self.assertFalse(logic.r4370_condition())

        self.settings_manager.gcm.set_property(who, propCha, deltaCha)
        self.settings_manager.gcm.set_property(who, propInt, deltaInt)
        self.assertFalse(logic.r4370_condition())

        self.settings_manager.gcm.set_property(who, propCha, deltaCha + 1)
        self.settings_manager.gcm.set_property(who, propInt, deltaInt - 1)
        self.assertTrue(logic.r4370_condition())


    def test_r4371_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4371_condition()
        )


    def test_r4379_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r4379_condition()
        )


    def test_r4380_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r4380_condition()
        )


    def test_r4385_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4385_condition()
        )


    def test_r4386_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 11

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r4386_condition()
        )


    def test_r4387_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r4387_condition()
        )


    def test_r4388_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4388_condition()
        )


    def test_r4395_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4395_condition()
        )


    def test_r4396_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 11

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r4396_condition()
        )


    def test_r4397_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r4397_condition()
        )


    def test_r4398_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4398_condition()
        )


    def test_r4401_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r4401_condition()
        )


    def test_r4402_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4402_condition()
        )


    def test_r4409_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4409_condition()
        )


    def test_r4410_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 11

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r4410_condition()
        )


    def test_r4426_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r4426_condition()
        )


    def test_r4427_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r4427_condition()
        )


    def test_r4428_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r4428_condition()
        )


    def test_r4429_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r4429_condition()
        )


    def test_r4438_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_escape_mortuary(x),
            lambda: logic.r4438_condition()
        )


    def test_r4440_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4440_condition()
        )


    def test_r4441_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 11

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r4441_condition()
        )


    def test_r4442_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r4442_condition()
        )


    def test_r4443_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4443_condition()
        )


    def test_r4446_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        propCha = 'charisma'
        propInt = 'intelligence'
        deltaCha = 12
        deltaInt = 12

        self.settings_manager.gcm.set_property(who, propCha, deltaCha - 1)
        self.settings_manager.gcm.set_property(who, propInt, deltaInt - 1)
        self.assertTrue(logic.r4446_condition())

        self.settings_manager.gcm.set_property(who, propCha, deltaCha)
        self.settings_manager.gcm.set_property(who, propInt, deltaInt)
        self.assertFalse(logic.r4446_condition())

        self.settings_manager.gcm.set_property(who, propCha, deltaCha + 1)
        self.settings_manager.gcm.set_property(who, propInt, deltaInt + 1)
        self.assertFalse(logic.r4446_condition())


    def test_r4447_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        propCha = 'charisma'
        propInt = 'intelligence'
        deltaCha = 11
        deltaInt = 12

        self.settings_manager.gcm.set_property(who, propCha, deltaCha - 1)
        self.settings_manager.gcm.set_property(who, propInt, deltaInt + 1)
        self.assertFalse(logic.r4447_condition())

        self.settings_manager.gcm.set_property(who, propCha, deltaCha)
        self.settings_manager.gcm.set_property(who, propInt, deltaInt)
        self.assertFalse(logic.r4447_condition())

        self.settings_manager.gcm.set_property(who, propCha, deltaCha + 1)
        self.settings_manager.gcm.set_property(who, propInt, deltaInt - 1)
        self.assertTrue(logic.r4447_condition())


    def test_r4448_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4448_condition()
        )


    def test_r4452_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_escape_mortuary(x),
            lambda: logic.r4452_condition()
        )


    def test_r4454_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4454_condition()
        )


    def test_r4455_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 11

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r4455_condition()
        )


    def test_r4456_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r4456_condition()
        )


    def test_r4457_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4457_condition()
        )


    def test_r4469_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_vaxis_leave(x),
            lambda: logic.r4469_condition()
        )


    def test_r4474_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4474_condition()
        )


    def test_r4475_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4475_condition()
        )


    def test_r4476_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 11

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r4476_condition()
        )


    def test_r4477_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r4477_condition()
        )


    def test_r4478_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4478_condition()
        )


    def test_r4482_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4482_condition()
        )


    def test_r4483_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 11

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r4483_condition()
        )


    def test_r4484_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r4484_condition()
        )


    def test_r4485_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4485_condition()
        )

    def test_r4489_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r4489_condition()
        )


    def test_r4490_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4490_condition()
        )


    def test_r4494_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_keyem(x),
            lambda: logic.r4494_condition()
        )


    def test_r4496_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4496_condition()
        )


    def test_r4497_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 11

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r4497_condition()
        )


    def test_r4498_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 12

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r4498_condition()
        )


    def test_r4499_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'strength'
        value = 11

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4499_condition()
        )


    def test_r4502_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_keyem(x),
            lambda: logic.r4502_condition()
        )


    def test_r64520_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._integer_equal_condition(
            lambda x: self.settings_manager.set_eivene_value(x),
            1,
            lambda: logic.r64520_condition()
        )


    def test_r4503_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._integer_equal_condition(
            lambda x: self.settings_manager.set_eivene_value(x),
            0,
            lambda: logic.r4503_condition()
        )


    def test_r4506_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._integer_equal_condition(
            lambda x: self.settings_manager.set_eivene_value(x),
            1,
            lambda: logic.r4506_condition()
        )


    def test_r66150_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._integer_equal_condition(
            lambda x: self.settings_manager.set_eivene_value(x),
            0,
            lambda: logic.r66150_condition()
        )


    def test_r4508_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._integer_equal_condition(
            lambda x: self.settings_manager.set_embalm_key_quest(x),
            0,
            lambda: logic.r4508_condition()
        )


    def test_r4509_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._integer_equal_condition(
            lambda x: self.settings_manager.set_embalm_key_quest(x),
            0,
            lambda: logic.r4509_condition()
        )


    def test_r4510_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._integer_not_equal_condition(
            lambda x: self.settings_manager.set_embalm_key_quest(x),
            0,
            lambda: logic.r4510_condition()
        )


    def test_r4511_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._integer_not_equal_condition(
            lambda x: self.settings_manager.set_embalm_key_quest(x),
            0,
            lambda: logic.r4511_condition()
        )


    def test_r4521_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_escape_mortuary(x),
            lambda: logic.r4521_condition()
        )


    def test_r4522_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_escape_mortuary(x),
            lambda: logic.r4522_condition()
        )

    def test_r64508_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self.settings_manager.set_escape_mortuary(True)
        self.settings_manager.set_vaxis_help(True)
        self.settings_manager.set_embalm_key_quest(1)
        self.settings_manager.set_strong_arm_vaxis(False)

        self.assertFalse(logic.r64508_condition())

        self.settings_manager.set_escape_mortuary(False)
        self.settings_manager.set_vaxis_help(False)
        self.settings_manager.set_embalm_key_quest(0)
        self.settings_manager.set_strong_arm_vaxis(True)

        self.assertTrue(logic.r64508_condition())


    def test_r4524_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self.settings_manager.set_escape_mortuary(True)
        self.settings_manager.set_vaxis_help(True)
        self.settings_manager.set_embalm_key_quest(1)
        self.settings_manager.set_strong_arm_vaxis(True)

        self.assertFalse(logic.r4524_condition())

        self.settings_manager.set_escape_mortuary(False)
        self.settings_manager.set_vaxis_help(False)
        self.settings_manager.set_embalm_key_quest(0)
        self.settings_manager.set_strong_arm_vaxis(False)

        self.assertTrue(logic.r4524_condition())


    def test_r4525_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_help(x),
            lambda: logic.r4525_condition()
        )


    def test_r4526_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self.settings_manager.set_vaxis_zombie_disguise(0)
        self.settings_manager.set_strong_arm_vaxis(True)

        self.assertFalse(logic.r4526_condition())

        self.settings_manager.set_vaxis_zombie_disguise(1)
        self.settings_manager.set_strong_arm_vaxis(False)

        self.assertTrue(logic.r4526_condition())


    def test_r4527_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self.settings_manager.set_vaxis_zombie_disguise(0)
        self.settings_manager.set_strong_arm_vaxis(True)

        self.assertFalse(logic.r4527_condition())

        self.settings_manager.set_vaxis_zombie_disguise(2)
        self.settings_manager.set_strong_arm_vaxis(False)

        self.assertTrue(logic.r4527_condition())


    def test_r4528_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_orders(x),
            lambda: logic.r4528_condition()
        )


    def test_r4673_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_pharod_value(x),
            lambda: logic.r4673_condition()
        )


    def test_r4530_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_journal(x),
            lambda: logic.r4530_condition()
        )


    def test_r4531_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_dhall_value(x),
            lambda: logic.r4531_condition()
        )


    def test_r4532_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_deionarra_value(x),
            lambda: logic.r4532_condition()
        )


    def test_r4533_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_soego_value(x),
            lambda: logic.r4533_condition()
        )


    def test_r4534_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r4534_condition()
        )


    def test_r4535_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r4535_condition()
        )


    def test_r4547_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r4547_condition()
        )


    def test_r4548_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r4548_condition()
        )


    def test_r4552_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r4552_condition()
        )


    def test_r4553_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r4553_condition()
        )


    def test_r4564_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self.settings_manager.set_strong_arm_vaxis(True)
        self.settings_manager.set_embalm_key_quest(1)
        self.settings_manager.set_vaxis_orders(True)

        self.assertFalse(logic.r4564_condition())

        self.settings_manager.set_strong_arm_vaxis(False)
        self.settings_manager.set_embalm_key_quest(0)
        self.settings_manager.set_vaxis_orders(False)

        self.assertTrue(logic.r4564_condition())


    def test_r64509_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self.settings_manager.set_strong_arm_vaxis(True)
        self.settings_manager.set_embalm_key_quest(1)
        self.settings_manager.set_vaxis_orders(True)

        self.assertFalse(logic.r64509_condition())

        self.settings_manager.set_strong_arm_vaxis(False)
        self.settings_manager.set_embalm_key_quest(3)
        self.settings_manager.set_vaxis_orders(False)

        self.assertTrue(logic.r64509_condition())


    def test_r64510_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self.settings_manager.set_strong_arm_vaxis(False)
        self.settings_manager.set_vaxis_orders(True)

        self.assertFalse(logic.r64510_condition())

        self.settings_manager.set_strong_arm_vaxis(True)
        self.settings_manager.set_vaxis_orders(False)

        self.assertTrue(logic.r64510_condition())


    def test_r64511_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_orders(x),
            lambda: logic.r64511_condition()
        )


    def test_r64527_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_has_bone_chrm(x),
            lambda: logic.r64527_condition()
        )


    def test_r4568_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_bone_chrm(x),
            lambda: logic.r4568_condition()
        )


    def test_r4569_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_has_bone_chrm(x),
            lambda: logic.r4569_condition()
        )


    def test_r4586_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self.assertFalse(logic.r4586_condition())

        self.settings_manager.set_embalm_key_quest(1)
        self.assertTrue(logic.r4586_condition())


    def test_r4587_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self.assertFalse(logic.r4587_condition())

        self.settings_manager.set_embalm_key_quest(2)
        self.assertTrue(logic.r4587_condition())


    def test_r4588_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self.settings_manager.set_embalm_key_quest(1)
        self.settings_manager.set_vaxis_orders(True)
        self.assertFalse(logic.r4588_condition())

        self.settings_manager.set_embalm_key_quest(3)
        self.settings_manager.set_vaxis_orders(False)
        self.assertTrue(logic.r4588_condition())


    def test_r4589_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self.settings_manager.set_embalm_key_quest(1)
        self.settings_manager.set_vaxis_orders(False)
        self.assertFalse(logic.r4589_condition())

        self.settings_manager.set_embalm_key_quest(3)
        self.settings_manager.set_vaxis_orders(True)
        self.assertTrue(logic.r4589_condition())


    def test_r4592_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self.settings_manager.set_embalm_key_quest(0)
        self.settings_manager.set_has_keyem(False)
        self.assertFalse(logic.r4592_condition())

        self.settings_manager.set_embalm_key_quest(1)
        self.settings_manager.set_has_keyem(True)
        self.assertTrue(logic.r4592_condition())


    def test_r4593_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self.settings_manager.set_embalm_key_quest(0)
        self.settings_manager.set_has_keyem(False)
        self.assertFalse(logic.r4593_condition())

        self.settings_manager.set_embalm_key_quest(2)
        self.settings_manager.set_has_keyem(True)
        self.assertTrue(logic.r4593_condition())


    def test_r4594_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self.settings_manager.set_embalm_key_quest(0)
        self.settings_manager.set_has_keyem(True)
        self.assertFalse(logic.r4594_condition())

        self.settings_manager.set_embalm_key_quest(1)
        self.settings_manager.set_has_keyem(False)
        self.assertTrue(logic.r4594_condition())


    def test_r4599_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self.assertTrue(logic.r4599_condition())

        self.settings_manager.set_embalm_key_quest(1)

        self.assertFalse(logic.r4599_condition())


    def test_r4600_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self.assertFalse(logic.r4600_condition())

        self.settings_manager.set_embalm_key_quest(1)

        self.assertTrue(logic.r4600_condition())


    def test_r4604_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self.settings_manager.set_appearance(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r4604_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r4604_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r4604_condition())

        self.settings_manager.set_appearance(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r4604_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r4604_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r4604_condition())


    def test_r4609_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self.settings_manager.set_appearance(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r4609_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r4609_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r4609_condition())

        self.settings_manager.set_appearance(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r4609_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r4609_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r4609_condition())


    def test_r4610_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r4610_condition()
        )


    def test_r4611_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r4611_condition()
        )


    def test_r4612_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 9

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4612_condition()
        )


    def test_r4613_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 9

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4613_condition()
        )


    def test_r4615_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'intelligence'
        value = 12

        self.settings_manager.set_appearance(True)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r4615_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r4615_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertFalse(logic.r4615_condition())

        self.settings_manager.set_appearance(False)

        self.settings_manager.gcm.set_property(who, prop, value - 1)
        self.assertFalse(logic.r4615_condition())

        self.settings_manager.gcm.set_property(who, prop, value)
        self.assertFalse(logic.r4615_condition())

        self.settings_manager.gcm.set_property(who, prop, value + 1)
        self.assertTrue(logic.r4615_condition())


    def test_r4616_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r4616_condition()
        )


    def test_r4617_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 13

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r4617_condition()
        )


    def test_r4618_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4618_condition()
        )


    def test_r4674_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 12

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4674_condition()
        )


    def test_r4620_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self.settings_manager.set_has_embalm(False)
        self.settings_manager.set_has_needle(False)
        self.assertFalse(logic.r4620_condition())

        self.settings_manager.set_has_embalm(True)
        self.settings_manager.set_has_needle(True)
        self.assertTrue(logic.r4620_condition())


    def test_r4630_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_vaxis_global_xp(True)
        self.assertFalse(logic.r4630_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_vaxis_global_xp(False)
        self.assertTrue(logic.r4630_condition())


    def test_r4631_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_vaxis_quip_1(True)
        self.assertFalse(logic.r4631_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_vaxis_quip_1(False)
        self.assertTrue(logic.r4631_condition())


    def test_r4632_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_vaxis_quip_1(False)
        self.assertFalse(logic.r4632_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_vaxis_quip_1(True)
        self.assertTrue(logic.r4632_condition())


    def test_r64533_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_vaxis_global_xp(False)
        self.assertFalse(logic.r64533_condition())

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_vaxis_global_xp(True)
        self.assertTrue(logic.r64533_condition())


    def test_r4634_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_in_party_morte(x),
            lambda: logic.r4634_condition()
        )


    def test_r4635_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_vaxis_quip_2(True)
        self.assertFalse(logic.r4635_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_vaxis_quip_2(False)
        self.assertTrue(logic.r4635_condition())


    def test_r4636_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_morte_vaxis_quip_2(False)
        self.assertFalse(logic.r4636_condition())

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_morte_vaxis_quip_2(True)
        self.assertTrue(logic.r4636_condition())


    def test_r4656_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_invert_condition(
            lambda x: self.settings_manager.set_vaxis_help(x),
            lambda: logic.r4656_condition()
        )


    def test_r64532_condition(self):
        logic = VaxisLogic(self.settings_manager)

        self._boolean_straight_condition(
            lambda x: self.settings_manager.set_vaxis_help(x),
            lambda: logic.r64532_condition()
        )


    def test_r4664_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 10

        self._prop_compare_gt_condition(
            who,
            prop,
            value,
            lambda: logic.r4664_condition()
        )

    def test_r4665_condition(self):
        logic = VaxisLogic(self.settings_manager)
        who = 'protagonist'
        prop = 'charisma'
        value = 11

        self._prop_compare_lt_condition(
            who,
            prop,
            value,
            lambda: logic.r4665_condition()
        )


if __name__ == '__main__':
    unittest.main()
