import unittest

from game.engine.LogicTests import (LogicTests)
from game.engine.state.StateManager import (StateManager)


class StateManagerTests(LogicTests):
    def test_ctor(self):
        self.assertIsNotNone(self.state_manager)
        self.assertIsNotNone(self.state_manager.world_manager)
        self.assertIsNotNone(self.state_manager.world_manager._world_store.once_keys)
        self.assertIsNotNone(self.state_manager.world_manager._world_store.registry)
        self.assertIsNotNone(self.state_manager.journal_notes_manager)
        self.assertIsNotNone(self.state_manager._log_events_manager)
        self.assertEqual(len(self.state_manager.world_manager._world_store.once_keys), 0)
        self.assertNotEqual(len(self.state_manager.world_manager._world_store.registry), 0)
        self.assertIsNotNone(self.state_manager.characters_manager)
        self.assertIsNotNone(self.state_manager.locations_manager)
        self.assertIsNotNone(self.state_manager.narrat_manager)


    # def test_update_journal_when_all_ok(self):
    #     note_id = 'note_id'

    #     self.assertEqual(len(self.state_manager._open_journal_note_ids), 0)

    #     self.state_manager.journal_notes_manager.update_journal(note_id)
    #     self.assertEqual(len(self.state_manager._open_journal_note_ids), 1)

    #     self.state_manager.journal_notes_manager.update_journal(note_id)
    #     self.assertEqual(len(self.state_manager._open_journal_note_ids), 1)


    # def test_found_journal_note_when_all_ok(self):
    #     note_id_1 = 'note_id_1'
    #     note_id_2 = 'note_id_2'

    #     self.assertEqual(len(self.state_manager._open_journal_note_ids), 0)
    #     self.assertFalse(self.state_manager.journal_notes_manager.found_journal_note(note_id_1))
    #     self.assertFalse(self.state_manager.journal_notes_manager.found_journal_note(note_id_2))

    #     self.state_manager.journal_notes_manager.update_journal(note_id_1)
    #     self.assertEqual(len(self.state_manager._open_journal_note_ids), 1)
    #     self.assertTrue(self.state_manager.journal_notes_manager.found_journal_note(note_id_1))
    #     self.assertFalse(self.state_manager.journal_notes_manager.found_journal_note(note_id_2))

    #     self.state_manager.journal_notes_manager.update_journal(note_id_2)
    #     self.assertEqual(len(self.state_manager._open_journal_note_ids), 2)
    #     self.assertTrue(self.state_manager.journal_notes_manager.found_journal_note(note_id_1))
    #     self.assertTrue(self.state_manager.journal_notes_manager.found_journal_note(note_id_2))


    def test_gain_experience_when_full_party(self):
        protagonist = self.state_manager.characters_manager.get_character('protagonist_character_name')
        morte = self.state_manager.characters_manager.get_character('morte_character_name')
        annah = self.state_manager.characters_manager.get_character('annah_character_name')
        ignus = self.state_manager.characters_manager.get_character('ignus_character_name')
        grace = self.state_manager.characters_manager.get_character('grace_character_name')
        dakkon = self.state_manager.characters_manager.get_character('dakkon_character_name')
        nordom = self.state_manager.characters_manager.get_character('nordom_character_name')
        vhail = self.state_manager.characters_manager.get_character('vhail_character_name')
        prop = 'experience'
        delta = 17

        self.state_manager.world_manager.set_in_party_morte(True)
        self.state_manager.world_manager.set_in_party_annah(True)
        self.state_manager.world_manager.set_in_party_ignus(True)
        self.state_manager.world_manager.set_in_party_grace(True)
        self.state_manager.world_manager.set_in_party_dakkon(True)
        self.state_manager.world_manager.set_in_party_nordom(True)
        self.state_manager.world_manager.set_in_party_vhail(True)

        protagonist_before = self.state_manager.characters_manager.get_property(protagonist.name, prop)
        morte_before = self.state_manager.characters_manager.get_property(morte.name, prop)
        annah_before = self.state_manager.characters_manager.get_property(annah.name, prop)
        ignus_before = self.state_manager.characters_manager.get_property(ignus.name, prop)
        grace_before = self.state_manager.characters_manager.get_property(grace.name, prop)
        dakkon_before = self.state_manager.characters_manager.get_property(dakkon.name, prop)
        nordom_before = self.state_manager.characters_manager.get_property(nordom.name, prop)
        vhail_before = self.state_manager.characters_manager.get_property(vhail.name, prop)

        self.state_manager.gain_experience('party', delta)

        protagonist_after = self.state_manager.characters_manager.get_property(protagonist.name, prop)
        morte_after = self.state_manager.characters_manager.get_property(morte.name, prop)
        annah_after = self.state_manager.characters_manager.get_property(annah.name, prop)
        ignus_after = self.state_manager.characters_manager.get_property(ignus.name, prop)
        grace_after = self.state_manager.characters_manager.get_property(grace.name, prop)
        dakkon_after = self.state_manager.characters_manager.get_property(dakkon.name, prop)
        nordom_after = self.state_manager.characters_manager.get_property(nordom.name, prop)
        vhail_after = self.state_manager.characters_manager.get_property(vhail.name, prop)

        self.assertEqual(protagonist_before + delta, protagonist_after)
        self.assertEqual(morte_before + delta, morte_after)
        self.assertEqual(annah_before + delta, annah_after)
        self.assertEqual(ignus_before + delta, ignus_after)
        self.assertEqual(grace_before + delta, grace_after)
        self.assertEqual(dakkon_before + delta, dakkon_after)
        self.assertEqual(nordom_before + delta, nordom_after)
        self.assertEqual(vhail_before + delta, vhail_after)

    def test_gain_experience_when_empty_party(self):
        protagonist = self.state_manager.characters_manager.get_character('protagonist_character_name')
        morte = self.state_manager.characters_manager.get_character('morte_character_name')
        annah = self.state_manager.characters_manager.get_character('annah_character_name')
        ignus = self.state_manager.characters_manager.get_character('ignus_character_name')
        grace = self.state_manager.characters_manager.get_character('grace_character_name')
        dakkon = self.state_manager.characters_manager.get_character('dakkon_character_name')
        nordom = self.state_manager.characters_manager.get_character('nordom_character_name')
        vhail = self.state_manager.characters_manager.get_character('vhail_character_name')
        prop = 'experience'
        delta = 17

        self.state_manager.world_manager.set_in_party_morte(False)
        self.state_manager.world_manager.set_in_party_annah(False)
        self.state_manager.world_manager.set_in_party_ignus(False)
        self.state_manager.world_manager.set_in_party_grace(False)
        self.state_manager.world_manager.set_in_party_dakkon(False)
        self.state_manager.world_manager.set_in_party_nordom(False)
        self.state_manager.world_manager.set_in_party_vhail(False)

        protagonist_before = self.state_manager.characters_manager.get_property(protagonist.name, prop)
        morte_before = self.state_manager.characters_manager.get_property(morte.name, prop)
        annah_before = self.state_manager.characters_manager.get_property(annah.name, prop)
        ignus_before = self.state_manager.characters_manager.get_property(ignus.name, prop)
        grace_before = self.state_manager.characters_manager.get_property(grace.name, prop)
        dakkon_before = self.state_manager.characters_manager.get_property(dakkon.name, prop)
        nordom_before = self.state_manager.characters_manager.get_property(nordom.name, prop)
        vhail_before = self.state_manager.characters_manager.get_property(vhail.name, prop)

        self.state_manager.gain_experience('party', delta)

        protagonist_after = self.state_manager.characters_manager.get_property(protagonist.name, prop)
        morte_after = self.state_manager.characters_manager.get_property(morte.name, prop)
        annah_after = self.state_manager.characters_manager.get_property(annah.name, prop)
        ignus_after = self.state_manager.characters_manager.get_property(ignus.name, prop)
        grace_after = self.state_manager.characters_manager.get_property(grace.name, prop)
        dakkon_after = self.state_manager.characters_manager.get_property(dakkon.name, prop)
        nordom_after = self.state_manager.characters_manager.get_property(nordom.name, prop)
        vhail_after = self.state_manager.characters_manager.get_property(vhail.name, prop)

        self.assertEqual(protagonist_before + delta, protagonist_after)
        self.assertEqual(morte_before, morte_after)
        self.assertEqual(annah_before, annah_after)
        self.assertEqual(ignus_before, ignus_after)
        self.assertEqual(grace_before, grace_after)
        self.assertEqual(dakkon_before, dakkon_after)
        self.assertEqual(nordom_before, nordom_after)
        self.assertEqual(vhail_before, vhail_after)


    def test_gain_experience_when_per_npc(self):
        protagonist = self.state_manager.characters_manager.get_character('protagonist_character_name')
        morte = self.state_manager.characters_manager.get_character('morte_character_name')
        annah = self.state_manager.characters_manager.get_character('annah_character_name')
        ignus = self.state_manager.characters_manager.get_character('ignus_character_name')
        grace = self.state_manager.characters_manager.get_character('grace_character_name')
        dakkon = self.state_manager.characters_manager.get_character('dakkon_character_name')
        nordom = self.state_manager.characters_manager.get_character('nordom_character_name')
        vhail = self.state_manager.characters_manager.get_character('vhail_character_name')
        prop = 'experience'
        delta = 17

        protagonist_before = self.state_manager.characters_manager.get_property(protagonist.name, prop)
        self.state_manager.gain_experience('protagonist_character_name', delta)
        protagonist_after = self.state_manager.characters_manager.get_property(protagonist.name, prop)
        self.assertEqual(protagonist_before + delta, protagonist_after)

        morte_before = self.state_manager.characters_manager.get_property(morte.name, prop)
        self.state_manager.gain_experience('morte_character_name', delta)
        morte_after = self.state_manager.characters_manager.get_property(morte.name, prop)
        self.assertEqual(protagonist_before + delta, protagonist_after)
        self.assertEqual(morte_before + delta, morte_after)

        annah_before = self.state_manager.characters_manager.get_property(annah.name, prop)
        self.state_manager.gain_experience('annah_character_name', delta)
        annah_after = self.state_manager.characters_manager.get_property(annah.name, prop)
        self.assertEqual(protagonist_before + delta, protagonist_after)
        self.assertEqual(morte_before + delta, morte_after)
        self.assertEqual(annah_before + delta, annah_after)

        ignus_before = self.state_manager.characters_manager.get_property(ignus.name, prop)
        self.state_manager.gain_experience('ignus_character_name', delta)
        ignus_after = self.state_manager.characters_manager.get_property(ignus.name, prop)
        self.assertEqual(protagonist_before + delta, protagonist_after)
        self.assertEqual(morte_before + delta, morte_after)
        self.assertEqual(annah_before + delta, annah_after)
        self.assertEqual(ignus_before + delta, ignus_after)

        grace_before = self.state_manager.characters_manager.get_property(grace.name, prop)
        self.state_manager.gain_experience('grace_character_name', delta)
        grace_after = self.state_manager.characters_manager.get_property(grace.name, prop)
        self.assertEqual(protagonist_before + delta, protagonist_after)
        self.assertEqual(morte_before + delta, morte_after)
        self.assertEqual(annah_before + delta, annah_after)
        self.assertEqual(ignus_before + delta, ignus_after)
        self.assertEqual(grace_before + delta, grace_after)

        dakkon_before = self.state_manager.characters_manager.get_property(dakkon.name, prop)
        self.state_manager.gain_experience('dakkon_character_name', delta)
        dakkon_after = self.state_manager.characters_manager.get_property(dakkon.name, prop)
        self.assertEqual(protagonist_before + delta, protagonist_after)
        self.assertEqual(morte_before + delta, morte_after)
        self.assertEqual(annah_before + delta, annah_after)
        self.assertEqual(ignus_before + delta, ignus_after)
        self.assertEqual(grace_before + delta, grace_after)
        self.assertEqual(dakkon_before + delta, dakkon_after)

        nordom_before = self.state_manager.characters_manager.get_property(nordom.name, prop)
        self.state_manager.gain_experience('nordom_character_name', delta)
        nordom_after = self.state_manager.characters_manager.get_property(nordom.name, prop)
        self.assertEqual(protagonist_before + delta, protagonist_after)
        self.assertEqual(morte_before + delta, morte_after)
        self.assertEqual(annah_before + delta, annah_after)
        self.assertEqual(ignus_before + delta, ignus_after)
        self.assertEqual(grace_before + delta, grace_after)
        self.assertEqual(dakkon_before + delta, dakkon_after)
        self.assertEqual(nordom_before + delta, nordom_after)

        vhail_before = self.state_manager.characters_manager.get_property(vhail.name, prop)
        self.state_manager.gain_experience('vhail_character_name', delta)
        vhail_after = self.state_manager.characters_manager.get_property(vhail.name, prop)
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

        self.assertFalse(setting_id in self.state_manager.world_manager._world_store.registry)

        self.state_manager.world_manager.register(setting_id, default_value)

        self.assertEqual(self.state_manager.world_manager._world_store.registry[setting_id], default_value)
        self.assertEqual(getattr(self.state_manager.world_manager, f'get_{setting_id}')(), default_value)

        getattr(self.state_manager.world_manager, f'set_{setting_id}')(default_value * 2)
        self.assertEqual(getattr(self.state_manager.world_manager, f'get_{setting_id}')(), default_value * 2)

        getattr(self.state_manager.world_manager, f'inc_{setting_id}')()
        self.assertEqual(getattr(self.state_manager.world_manager, f'get_{setting_id}')(), default_value * 2 + 1)
        getattr(self.state_manager.world_manager, f'inc_{setting_id}')()
        self.assertEqual(getattr(self.state_manager.world_manager, f'get_{setting_id}')(), default_value * 2 + 2)

        getattr(self.state_manager.world_manager, f'dec_{setting_id}')()
        self.assertEqual(getattr(self.state_manager.world_manager, f'get_{setting_id}')(), default_value * 2 + 1)
        getattr(self.state_manager.world_manager, f'dec_{setting_id}')()
        self.assertEqual(getattr(self.state_manager.world_manager, f'get_{setting_id}')(), default_value * 2)


    def test_register_when_inc_once(self):
        setting_id = 'setting_id'
        key1 = 'key1'
        key2 = 'key2'
        default_value = 3
        delta = 2

        self.assertFalse(setting_id in self.state_manager.world_manager._world_store.registry)

        self.state_manager.world_manager.register(setting_id, default_value)

        self.assertEqual(self.state_manager.world_manager._world_store.registry[setting_id], default_value)
        self.assertEqual(getattr(self.state_manager.world_manager, f'get_{setting_id}')(), default_value)

        getattr(self.state_manager.world_manager, f'inc_once_{setting_id}')(key1)
        self.assertEqual(getattr(self.state_manager.world_manager, f'get_{setting_id}')(), default_value + 1)

        getattr(self.state_manager.world_manager, f'inc_once_{setting_id}')(key1)
        self.assertEqual(getattr(self.state_manager.world_manager, f'get_{setting_id}')(), default_value + 1)

        getattr(self.state_manager.world_manager, f'inc_once_{setting_id}')(key2, delta)
        self.assertEqual(getattr(self.state_manager.world_manager, f'get_{setting_id}')(), default_value + 1 + delta)

        getattr(self.state_manager.world_manager, f'inc_once_{setting_id}')(key1, delta)
        self.assertEqual(getattr(self.state_manager.world_manager, f'get_{setting_id}')(), default_value + 1 + delta)

        getattr(self.state_manager.world_manager, f'inc_once_{setting_id}')(key2, delta)
        self.assertEqual(getattr(self.state_manager.world_manager, f'get_{setting_id}')(), default_value + 1 + delta)


    def test_register_when_dec_once(self):
        setting_id = 'setting_id'
        key1 = 'key1'
        key2 = 'key2'
        default_value = 3
        delta = 2

        self.assertFalse(setting_id in self.state_manager.world_manager._world_store.registry)

        self.state_manager.world_manager.register(setting_id, default_value)

        self.assertEqual(self.state_manager.world_manager._world_store.registry[setting_id], default_value)
        self.assertEqual(getattr(self.state_manager.world_manager, f'get_{setting_id}')(), default_value)

        getattr(self.state_manager.world_manager, f'dec_once_{setting_id}')(key1)
        self.assertEqual(getattr(self.state_manager.world_manager, f'get_{setting_id}')(), default_value - 1)

        getattr(self.state_manager.world_manager, f'dec_once_{setting_id}')(key1)
        self.assertEqual(getattr(self.state_manager.world_manager, f'get_{setting_id}')(), default_value - 1)

        getattr(self.state_manager.world_manager, f'dec_once_{setting_id}')(key2, delta)
        self.assertEqual(getattr(self.state_manager.world_manager, f'get_{setting_id}')(), default_value - 1 - delta)

        getattr(self.state_manager.world_manager, f'dec_once_{setting_id}')(key1, delta)
        self.assertEqual(getattr(self.state_manager.world_manager, f'get_{setting_id}')(), default_value - 1 - delta)

        getattr(self.state_manager.world_manager, f'dec_once_{setting_id}')(key2, delta)
        self.assertEqual(getattr(self.state_manager.world_manager, f'get_{setting_id}')(), default_value - 1 - delta)


    def test_get_setting_value_when_all_ok(self):
        setting_id = 'setting_id'
        default_value = 3

        self.assertFalse(setting_id in self.state_manager.world_manager._world_store.registry)

        self.state_manager.world_manager.register(setting_id, default_value)

        self.assertEqual(self.state_manager.world_manager._world_store.registry[setting_id], default_value)
        self.assertEqual(getattr(self.state_manager.world_manager, f'get_{setting_id}')(), self.state_manager.world_manager.get_setting_value(setting_id))
        self.assertEqual(getattr(self.state_manager.world_manager, f'get_{setting_id}')(), default_value)


    def test_get_setting_value_when_setting_was_not_registrated(self):
        setting_id = 'non existing setting id'

        self.assertFalse(setting_id in self.state_manager.world_manager._world_store.registry)

        with self.assertRaises(KeyError):
            self.state_manager.world_manager.get_setting_value(setting_id)
