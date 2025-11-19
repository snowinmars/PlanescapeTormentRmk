import unittest

from game.engine.tests import (LogicTest)


class JournalManagerTest(LogicTest):
    def test_ctor(self):
        self.assertIsNotNone(self.journal_manager)
        self.assertIsNotNone(self.journal_manager._events_manager)
        self.assertIsNotNone(self.journal_manager._journal_store.notes)


    def test_register_when_all_ok(self):
        note_id = 'note_id'
        note_content = 'note_content'
        note_found = True

        notes_length_before = len(self.journal_manager._journal_store.notes)

        self.journal_manager.register(note_id, note_content, note_found)
        self.assertEqual(len(self.journal_manager._journal_store.notes), notes_length_before + 1)
        self.assertEqual(self.journal_manager._journal_store.notes[note_id].id, note_id)
        self.assertEqual(self.journal_manager._journal_store.notes[note_id].content, note_content)
        self.assertEqual(self.journal_manager._journal_store.notes[note_id].found, note_found)


    def test_register_when_already_registrated(self):
        note_id = 'note_id'
        note_content = 'note_content'
        note_found = True

        notes_length_before = len(self.journal_manager._journal_store.notes)

        self.journal_manager.register(note_id, note_content, note_found)
        self.assertEqual(len(self.journal_manager._journal_store.notes), notes_length_before + 1)

        with self.assertRaises(KeyError):
            self.journal_manager.register(note_id, note_content, note_found)


    def test_get_when_all_ok(self):
        note_id = 'note_id'
        note_content = 'note_content'
        note_found = True

        notes_length_before = len(self.journal_manager._journal_store.notes)

        self.journal_manager.register(note_id, note_content, note_found)
        self.assertEqual(len(self.journal_manager._journal_store.notes), notes_length_before + 1)

        note = self.journal_manager.get(note_id)
        self.assertEqual(note.id, note_id)
        self.assertEqual(note.content, note_content)
        self.assertEqual(note.found, note_found)


    def test_get_when_not_registrated(self):
        note_id = 'note_id'

        with self.assertRaises(KeyError):
            self.journal_manager.get(note_id)


    def test_found_journal_note_when_all_ok(self):
        note_id = 'note_id'
        note_content = 'note_content'
        note_found = False

        self.journal_manager.register(note_id, note_content, note_found)
        self.assertFalse(self.journal_manager.found_journal_note(note_id))

        self.journal_manager.update_journal(note_id)
        self.assertTrue(self.journal_manager.found_journal_note(note_id))


    def test_found_journal_note_when_not_registrated(self):
        note_id = 'note_id'

        with self.assertRaises(KeyError):
            self.journal_manager.found_journal_note(note_id)


    def test_update_journal_when_all_ok(self):
        note_id = 'note_id'
        note_content = 'note_content'
        note_found = False

        self.journal_manager.register(note_id, note_content, note_found)
        note = self.journal_manager.get(note_id)
        self.assertFalse(note.found)

        self.journal_manager.update_journal(note_id)
        note = self.journal_manager.get(note_id)
        self.assertTrue(note.found)


    def test_update_journal_when_not_registrated(self):
        note_id = 'note_id'

        with self.assertRaises(KeyError):
            self.journal_manager.update_journal(note_id)


    def test_build_journal_when_all_ok(self):
        note_id1 = 'note_id1'
        note_content1 = 'note_content'
        note_found1 = False
        note_id2 = 'note_id2'
        note_content2 = 'note_content'
        note_found2 = False
        note_id3 = 'note_id3'
        note_content3 = 'note_content'
        note_found3 = False

        notes_length_before = len(list(self.journal_manager.build_journal()))

        self.journal_manager.register(note_id1, note_content1, note_found1)
        self.journal_manager.register(note_id2, note_content2, note_found2)
        self.journal_manager.register(note_id3, note_content3, note_found3)
        note1 = self.journal_manager.get(note_id1)
        note2 = self.journal_manager.get(note_id2)
        note3 = self.journal_manager.get(note_id3)
        notes_length_after1 = len(list(self.journal_manager.build_journal()))
        self.assertEqual(notes_length_after1, notes_length_before)

        self.journal_manager.update_journal(note_id1)
        notes_after2 = list(self.journal_manager.build_journal())
        notes_length_after2 = len(notes_after2)
        self.assertEqual(notes_length_after2, notes_length_before + 1)
        self._assert_equals_notes(notes_after2[0], note1)

        self.journal_manager.update_journal(note_id2)
        notes_after3 = list(self.journal_manager.build_journal())
        notes_length_after3 = len(list(self.journal_manager.build_journal()))
        self.assertEqual(notes_length_after3, notes_length_before + 2)
        self._assert_equals_notes(notes_after3[0], note1)
        self._assert_equals_notes(notes_after3[1], note2)

        self.journal_manager.update_journal(note_id3)
        notes_after4 = list(self.journal_manager.build_journal())
        notes_length_after4 = len(list(self.journal_manager.build_journal()))
        self.assertEqual(notes_length_after4, notes_length_before + 3)
        self._assert_equals_notes(notes_after4[0], note1)
        self._assert_equals_notes(notes_after4[1], note2)
        self._assert_equals_notes(notes_after4[2], note3)


    def _assert_equals_notes(self, lhs, rhs):
        self.assertEqual(lhs.id     , rhs.id)
        self.assertEqual(lhs.content, rhs.content)
        self.assertEqual(lhs.found  , rhs.found)
