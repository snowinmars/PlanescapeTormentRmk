import unittest

from game.engine.tests import (LogicTest)
from game.engine.character import (Character)
from game.engine.event_manager import (EventManager)
from game.engine.settings_manager import (SettingsManager)
from game.engine.character_manager import (CharacterManager)
from game.engine.location_manager import (LocationManager)


class SettingsManagerTest(LogicTest):
    def test_ctor(self):
        self.assertIsNotNone(self.settings_manager)
        self.assertIsNotNone(self.settings_manager._once_keys)
        self.assertIsNotNone(self.settings_manager.journal_manager)
        self.assertIsNotNone(self.settings_manager._registry)
        self.assertIsNotNone(self.settings_manager._event_manager)
        self.assertEqual(len(self.settings_manager._once_keys), 0)
        self.assertNotEqual(len(self.settings_manager._registry), 0)
        self.assertIsNotNone(self.settings_manager.character_manager)
        self.assertIsNotNone(self.settings_manager.location_manager)


    # def test_update_journal_when_all_ok(self):
    #     note_id = 'note_id'

    #     self.assertEqual(len(self.settings_manager._open_journal_note_ids), 0)

    #     self.settings_manager.journal_manager.update_journal(note_id)
    #     self.assertEqual(len(self.settings_manager._open_journal_note_ids), 1)

    #     self.settings_manager.journal_manager.update_journal(note_id)
    #     self.assertEqual(len(self.settings_manager._open_journal_note_ids), 1)


    # def test_has_journal_note_when_all_ok(self):
    #     note_id_1 = 'note_id_1'
    #     note_id_2 = 'note_id_2'

    #     self.assertEqual(len(self.settings_manager._open_journal_note_ids), 0)
    #     self.assertFalse(self.settings_manager.journal_manager.has_journal_note(note_id_1))
    #     self.assertFalse(self.settings_manager.journal_manager.has_journal_note(note_id_2))

    #     self.settings_manager.journal_manager.update_journal(note_id_1)
    #     self.assertEqual(len(self.settings_manager._open_journal_note_ids), 1)
    #     self.assertTrue(self.settings_manager.journal_manager.has_journal_note(note_id_1))
    #     self.assertFalse(self.settings_manager.journal_manager.has_journal_note(note_id_2))

    #     self.settings_manager.journal_manager.update_journal(note_id_2)
    #     self.assertEqual(len(self.settings_manager._open_journal_note_ids), 2)
    #     self.assertTrue(self.settings_manager.journal_manager.has_journal_note(note_id_1))
    #     self.assertTrue(self.settings_manager.journal_manager.has_journal_note(note_id_2))


    def test_gain_experience_when_full_party(self):
        protagonist = self.settings_manager.character_manager.get_character('protagonist')
        morte = self.settings_manager.character_manager.get_character('morte')
        annah = self.settings_manager.character_manager.get_character('annah')
        ignus = self.settings_manager.character_manager.get_character('ignus')
        grace = self.settings_manager.character_manager.get_character('grace')
        dakkon = self.settings_manager.character_manager.get_character('dakkon')
        nordom = self.settings_manager.character_manager.get_character('nordom')
        vhail = self.settings_manager.character_manager.get_character('vhail')
        prop = 'experience'
        delta = 17

        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_in_party_annah(True)
        self.settings_manager.set_in_party_ignus(True)
        self.settings_manager.set_in_party_grace(True)
        self.settings_manager.set_in_party_dakkon(True)
        self.settings_manager.set_in_party_nordom(True)
        self.settings_manager.set_in_party_vhail(True)

        protagonist_before = self.settings_manager.character_manager.get_property(protagonist.name, prop)
        morte_before = self.settings_manager.character_manager.get_property(morte.name, prop)
        annah_before = self.settings_manager.character_manager.get_property(annah.name, prop)
        ignus_before = self.settings_manager.character_manager.get_property(ignus.name, prop)
        grace_before = self.settings_manager.character_manager.get_property(grace.name, prop)
        dakkon_before = self.settings_manager.character_manager.get_property(dakkon.name, prop)
        nordom_before = self.settings_manager.character_manager.get_property(nordom.name, prop)
        vhail_before = self.settings_manager.character_manager.get_property(vhail.name, prop)

        self.settings_manager.gain_experience('party', delta)

        protagonist_after = self.settings_manager.character_manager.get_property(protagonist.name, prop)
        morte_after = self.settings_manager.character_manager.get_property(morte.name, prop)
        annah_after = self.settings_manager.character_manager.get_property(annah.name, prop)
        ignus_after = self.settings_manager.character_manager.get_property(ignus.name, prop)
        grace_after = self.settings_manager.character_manager.get_property(grace.name, prop)
        dakkon_after = self.settings_manager.character_manager.get_property(dakkon.name, prop)
        nordom_after = self.settings_manager.character_manager.get_property(nordom.name, prop)
        vhail_after = self.settings_manager.character_manager.get_property(vhail.name, prop)

        self.assertEqual(protagonist_before + delta, protagonist_after)
        self.assertEqual(morte_before + delta, morte_after)
        self.assertEqual(annah_before + delta, annah_after)
        self.assertEqual(ignus_before + delta, ignus_after)
        self.assertEqual(grace_before + delta, grace_after)
        self.assertEqual(dakkon_before + delta, dakkon_after)
        self.assertEqual(nordom_before + delta, nordom_after)
        self.assertEqual(vhail_before + delta, vhail_after)

    def test_gain_experience_when_empty_party(self):
        protagonist = self.settings_manager.character_manager.get_character('protagonist')
        morte = self.settings_manager.character_manager.get_character('morte')
        annah = self.settings_manager.character_manager.get_character('annah')
        ignus = self.settings_manager.character_manager.get_character('ignus')
        grace = self.settings_manager.character_manager.get_character('grace')
        dakkon = self.settings_manager.character_manager.get_character('dakkon')
        nordom = self.settings_manager.character_manager.get_character('nordom')
        vhail = self.settings_manager.character_manager.get_character('vhail')
        prop = 'experience'
        delta = 17

        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_in_party_annah(False)
        self.settings_manager.set_in_party_ignus(False)
        self.settings_manager.set_in_party_grace(False)
        self.settings_manager.set_in_party_dakkon(False)
        self.settings_manager.set_in_party_nordom(False)
        self.settings_manager.set_in_party_vhail(False)

        protagonist_before = self.settings_manager.character_manager.get_property(protagonist.name, prop)
        morte_before = self.settings_manager.character_manager.get_property(morte.name, prop)
        annah_before = self.settings_manager.character_manager.get_property(annah.name, prop)
        ignus_before = self.settings_manager.character_manager.get_property(ignus.name, prop)
        grace_before = self.settings_manager.character_manager.get_property(grace.name, prop)
        dakkon_before = self.settings_manager.character_manager.get_property(dakkon.name, prop)
        nordom_before = self.settings_manager.character_manager.get_property(nordom.name, prop)
        vhail_before = self.settings_manager.character_manager.get_property(vhail.name, prop)

        self.settings_manager.gain_experience('party', delta)

        protagonist_after = self.settings_manager.character_manager.get_property(protagonist.name, prop)
        morte_after = self.settings_manager.character_manager.get_property(morte.name, prop)
        annah_after = self.settings_manager.character_manager.get_property(annah.name, prop)
        ignus_after = self.settings_manager.character_manager.get_property(ignus.name, prop)
        grace_after = self.settings_manager.character_manager.get_property(grace.name, prop)
        dakkon_after = self.settings_manager.character_manager.get_property(dakkon.name, prop)
        nordom_after = self.settings_manager.character_manager.get_property(nordom.name, prop)
        vhail_after = self.settings_manager.character_manager.get_property(vhail.name, prop)

        self.assertEqual(protagonist_before + delta, protagonist_after)
        self.assertEqual(morte_before, morte_after)
        self.assertEqual(annah_before, annah_after)
        self.assertEqual(ignus_before, ignus_after)
        self.assertEqual(grace_before, grace_after)
        self.assertEqual(dakkon_before, dakkon_after)
        self.assertEqual(nordom_before, nordom_after)
        self.assertEqual(vhail_before, vhail_after)


    def test_gain_experience_when_per_npc(self):
        protagonist = self.settings_manager.character_manager.get_character('protagonist')
        morte = self.settings_manager.character_manager.get_character('morte')
        annah = self.settings_manager.character_manager.get_character('annah')
        ignus = self.settings_manager.character_manager.get_character('ignus')
        grace = self.settings_manager.character_manager.get_character('grace')
        dakkon = self.settings_manager.character_manager.get_character('dakkon')
        nordom = self.settings_manager.character_manager.get_character('nordom')
        vhail = self.settings_manager.character_manager.get_character('vhail')
        prop = 'experience'
        delta = 17

        protagonist_before = self.settings_manager.character_manager.get_property(protagonist.name, prop)
        self.settings_manager.gain_experience('protagonist', delta)
        protagonist_after = self.settings_manager.character_manager.get_property(protagonist.name, prop)
        self.assertEqual(protagonist_before + delta, protagonist_after)

        morte_before = self.settings_manager.character_manager.get_property(morte.name, prop)
        self.settings_manager.gain_experience('morte', delta)
        morte_after = self.settings_manager.character_manager.get_property(morte.name, prop)
        self.assertEqual(protagonist_before + delta, protagonist_after)
        self.assertEqual(morte_before + delta, morte_after)

        annah_before = self.settings_manager.character_manager.get_property(annah.name, prop)
        self.settings_manager.gain_experience('annah', delta)
        annah_after = self.settings_manager.character_manager.get_property(annah.name, prop)
        self.assertEqual(protagonist_before + delta, protagonist_after)
        self.assertEqual(morte_before + delta, morte_after)
        self.assertEqual(annah_before + delta, annah_after)

        ignus_before = self.settings_manager.character_manager.get_property(ignus.name, prop)
        self.settings_manager.gain_experience('ignus', delta)
        ignus_after = self.settings_manager.character_manager.get_property(ignus.name, prop)
        self.assertEqual(protagonist_before + delta, protagonist_after)
        self.assertEqual(morte_before + delta, morte_after)
        self.assertEqual(annah_before + delta, annah_after)
        self.assertEqual(ignus_before + delta, ignus_after)

        grace_before = self.settings_manager.character_manager.get_property(grace.name, prop)
        self.settings_manager.gain_experience('grace', delta)
        grace_after = self.settings_manager.character_manager.get_property(grace.name, prop)
        self.assertEqual(protagonist_before + delta, protagonist_after)
        self.assertEqual(morte_before + delta, morte_after)
        self.assertEqual(annah_before + delta, annah_after)
        self.assertEqual(ignus_before + delta, ignus_after)
        self.assertEqual(grace_before + delta, grace_after)

        dakkon_before = self.settings_manager.character_manager.get_property(dakkon.name, prop)
        self.settings_manager.gain_experience('dakkon', delta)
        dakkon_after = self.settings_manager.character_manager.get_property(dakkon.name, prop)
        self.assertEqual(protagonist_before + delta, protagonist_after)
        self.assertEqual(morte_before + delta, morte_after)
        self.assertEqual(annah_before + delta, annah_after)
        self.assertEqual(ignus_before + delta, ignus_after)
        self.assertEqual(grace_before + delta, grace_after)
        self.assertEqual(dakkon_before + delta, dakkon_after)

        nordom_before = self.settings_manager.character_manager.get_property(nordom.name, prop)
        self.settings_manager.gain_experience('nordom', delta)
        nordom_after = self.settings_manager.character_manager.get_property(nordom.name, prop)
        self.assertEqual(protagonist_before + delta, protagonist_after)
        self.assertEqual(morte_before + delta, morte_after)
        self.assertEqual(annah_before + delta, annah_after)
        self.assertEqual(ignus_before + delta, ignus_after)
        self.assertEqual(grace_before + delta, grace_after)
        self.assertEqual(dakkon_before + delta, dakkon_after)
        self.assertEqual(nordom_before + delta, nordom_after)

        vhail_before = self.settings_manager.character_manager.get_property(vhail.name, prop)
        self.settings_manager.gain_experience('vhail', delta)
        vhail_after = self.settings_manager.character_manager.get_property(vhail.name, prop)
        self.assertEqual(protagonist_before + delta, protagonist_after)
        self.assertEqual(morte_before + delta, morte_after)
        self.assertEqual(annah_before + delta, annah_after)
        self.assertEqual(ignus_before + delta, ignus_after)
        self.assertEqual(grace_before + delta, grace_after)
        self.assertEqual(dakkon_before + delta, dakkon_after)
        self.assertEqual(nordom_before + delta, nordom_after)
        self.assertEqual(vhail_before + delta, vhail_after)


    def test_register_when_all_ok(self):
        setting_id = 'setting_id'
        default_value = 3

        self.assertFalse(setting_id in self.settings_manager._registry)

        self.settings_manager.register(setting_id, default_value)

        self.assertEqual(self.settings_manager._registry[setting_id], default_value)
        self.assertEqual(getattr(self.settings_manager, f'get_{setting_id}')(), default_value)

        getattr(self.settings_manager, f'set_{setting_id}')(default_value * 2)
        self.assertEqual(getattr(self.settings_manager, f'get_{setting_id}')(), default_value * 2)

        getattr(self.settings_manager, f'inc_{setting_id}')()
        self.assertEqual(getattr(self.settings_manager, f'get_{setting_id}')(), default_value * 2 + 1)
        getattr(self.settings_manager, f'inc_{setting_id}')()
        self.assertEqual(getattr(self.settings_manager, f'get_{setting_id}')(), default_value * 2 + 2)

        getattr(self.settings_manager, f'dec_{setting_id}')()
        self.assertEqual(getattr(self.settings_manager, f'get_{setting_id}')(), default_value * 2 + 1)
        getattr(self.settings_manager, f'dec_{setting_id}')()
        self.assertEqual(getattr(self.settings_manager, f'get_{setting_id}')(), default_value * 2)


    def test_register_when_inc_once(self):
        setting_id = 'setting_id'
        key1 = 'key1'
        key2 = 'key2'
        default_value = 3
        delta = 2

        self.assertFalse(setting_id in self.settings_manager._registry)

        self.settings_manager.register(setting_id, default_value)

        self.assertEqual(self.settings_manager._registry[setting_id], default_value)
        self.assertEqual(getattr(self.settings_manager, f'get_{setting_id}')(), default_value)

        getattr(self.settings_manager, f'inc_once_{setting_id}')(key1)
        self.assertEqual(getattr(self.settings_manager, f'get_{setting_id}')(), default_value + 1)

        getattr(self.settings_manager, f'inc_once_{setting_id}')(key1)
        self.assertEqual(getattr(self.settings_manager, f'get_{setting_id}')(), default_value + 1)

        getattr(self.settings_manager, f'inc_once_{setting_id}')(key2, delta)
        self.assertEqual(getattr(self.settings_manager, f'get_{setting_id}')(), default_value + 1 + delta)

        getattr(self.settings_manager, f'inc_once_{setting_id}')(key1, delta)
        self.assertEqual(getattr(self.settings_manager, f'get_{setting_id}')(), default_value + 1 + delta)

        getattr(self.settings_manager, f'inc_once_{setting_id}')(key2, delta)
        self.assertEqual(getattr(self.settings_manager, f'get_{setting_id}')(), default_value + 1 + delta)


    def test_register_when_dec_once(self):
        setting_id = 'setting_id'
        key1 = 'key1'
        key2 = 'key2'
        default_value = 3
        delta = 2

        self.assertFalse(setting_id in self.settings_manager._registry)

        self.settings_manager.register(setting_id, default_value)

        self.assertEqual(self.settings_manager._registry[setting_id], default_value)
        self.assertEqual(getattr(self.settings_manager, f'get_{setting_id}')(), default_value)

        getattr(self.settings_manager, f'dec_once_{setting_id}')(key1)
        self.assertEqual(getattr(self.settings_manager, f'get_{setting_id}')(), default_value - 1)

        getattr(self.settings_manager, f'dec_once_{setting_id}')(key1)
        self.assertEqual(getattr(self.settings_manager, f'get_{setting_id}')(), default_value - 1)

        getattr(self.settings_manager, f'dec_once_{setting_id}')(key2, delta)
        self.assertEqual(getattr(self.settings_manager, f'get_{setting_id}')(), default_value - 1 - delta)

        getattr(self.settings_manager, f'dec_once_{setting_id}')(key1, delta)
        self.assertEqual(getattr(self.settings_manager, f'get_{setting_id}')(), default_value - 1 - delta)

        getattr(self.settings_manager, f'dec_once_{setting_id}')(key2, delta)
        self.assertEqual(getattr(self.settings_manager, f'get_{setting_id}')(), default_value - 1 - delta)


    def test_get_setting_value_when_all_ok(self):
        setting_id = 'setting_id'
        default_value = 3

        self.assertFalse(setting_id in self.settings_manager._registry)

        self.settings_manager.register(setting_id, default_value)

        self.assertEqual(self.settings_manager._registry[setting_id], default_value)
        self.assertEqual(getattr(self.settings_manager, f'get_{setting_id}')(), self.settings_manager.get_setting_value(setting_id))
        self.assertEqual(getattr(self.settings_manager, f'get_{setting_id}')(), default_value)


    def test_get_setting_value_when_setting_was_not_registrated(self):
        setting_id = 'non existing setting id'

        self.assertFalse(setting_id in self.settings_manager._registry)

        with self.assertRaises(KeyError):
            self.settings_manager.get_setting_value(setting_id)
