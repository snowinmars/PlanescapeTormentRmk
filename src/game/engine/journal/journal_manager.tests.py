import unittest

from game.engine.tests import (LogicTest)


class JournalManagerTest(LogicTest):
    def test_ctor(self):
        self.assertIsNotNone(self.journal_manager)
        self.assertIsNotNone(self.journal_manager._events_manager)
        self.assertIsNotNone(self.journal_manager._notes)
        self.assertEqual(len(self.journal_manager._notes), 0)


    def test_register_when_all_ok(self):
        note_id = 'note_id'
        note_content = 'note_content'
        note_found = True

        self.assertEqual(len(self.journal_manager._notes), 0)

        self.journal_manager.register(note_id, note_content, note_found)
        self.assertEqual(len(self.journal_manager._notes), 1)
        self.assertEqual(self.journal_manager._notes[0].id, note_id)
        self.assertEqual(self.journal_manager._notes[0].content, note_content)
        self.assertEqual(self.journal_manager._notes[0].found, note_found)


    def test_register_when_already_registrated(self):
        note_id = 'note_id'
        note_content = 'note_content'
        note_found = True

        self.assertEqual(len(self.journal_manager._notes), 0)

        self.journal_manager.register(note_id, note_content, note_found)
        self.assertEqual(len(self.journal_manager._notes), 1)

        with self.assertRaises(KeyError):
            self.journal_manager.register(note_id, note_content, note_found)


    def test_get_when_all_ok(self):
        note_id = 'note_id'
        note_content = 'note_content'
        note_found = True

        self.assertEqual(len(self.journal_manager._notes), 0)

        self.journal_manager.register(note_id, note_content, note_found)
        self.assertEqual(len(self.journal_manager._notes), 1)

        note = self.journal_manager.get(note_id)
        self.assertEqual(note.id, note_id)
        self.assertEqual(note.content, note_content)
        self.assertEqual(note.found, note_found)


    def test_get_when_not_registrated(self):
        note_id = 'note_id'

        with self.assertRaises(KeyError):
            self.journal_manager.get(note_id)


    def test_has_journal_note_when_all_ok(self):
        note_id = 'note_id'
        note_content = 'note_content'
        note_found = True

        self.assertFalse(self.journal_manager.has_journal_note(note_id))

        self.journal_manager.register(note_id, note_content, note_found)
        self.assertTrue(self.journal_manager.has_journal_note(note_id))


    def test_has_journal_note_when_not_registrated(self):
        note_id = 'note_id'

        with self.assertRaises(KeyError):
            self.journal_manager.has_journal_note(note_id)


    def test_update_journal_when_all_ok(self):
        note_id = 'note_id'
        note_content = 'note_content'
        note_found = False

        self.assertEqual(len(self.journal_manager._notes), 0)

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

        self.assertEqual(len(self.journal_manager._notes), 0)

        self.journal_manager.register(note_id1, note_content1, note_found1)
        self.journal_manager.register(note_id2, note_content2, note_found2)
        self.journal_manager.register(note_id3, note_content3, note_found3)
        note1 = self.journal_manager.get(note_id1)
        note2 = self.journal_manager.get(note_id2)
        note3 = self.journal_manager.get(note_id3)
        notes = self.journal_manager.build_journal()
        self.assertEqual(len(notes), 0)

        self.journal_manager.update_journal(note_id1)
        notes = self.journal_manager.build_journal()
        self.assertEqual(len(notes), 1)
        self.assertEqual(notes[0], note1)

        self.journal_manager.update_journal(note_id2)
        notes = self.journal_manager.build_journal()
        self.assertEqual(len(notes), 2)
        self.assertEqual(notes[0], note1)
        self.assertEqual(notes[1], note2)

        self.journal_manager.update_journal(note_id3)
        notes = self.journal_manager.build_journal()
        self.assertEqual(len(notes), 3)
        self.assertEqual(notes[0], note1)
        self.assertEqual(notes[1], note2)
        self.assertEqual(notes[2], note3)
