import pickle
import unittest
import time

from game.engine.journal.journal_store import (JournalStore)
from game.engine.journal.journal_note import (JournalNote)


class JournalStoreTest(unittest.TestCase):
    def setUp(self):
        self.store = JournalStore()
        self.journal_note_a = JournalNote('note_a', 'Note a', True)
        self.journal_note_b = JournalNote('note_b', 'Note b', False)


    def test_serialize_empty_pickle(self):
        dump = pickle.dumps(self.store)
        expected = b"\x80\x05\x95G\x00\x00\x00\x00\x00\x00\x00\x8c!game.engine.journal.journal_store\x94\x8c\x0cJournalStore\x94\x93\x94)\x81\x94}\x94\x8c\x05notes\x94}\x94sb."
        self.assertEqual(dump, expected)


    def test_deserialize_empty_pickle(self):
        dump = b"\x80\x05\x95G\x00\x00\x00\x00\x00\x00\x00\x8c!game.engine.journal.journal_store\x94\x8c\x0cJournalStore\x94\x93\x94)\x81\x94}\x94\x8c\x05notes\x94}\x94sb."
        store = pickle.loads(dump)
        self.assertIsNotNone(store.notes)
        self.assertEqual(len(store.notes), 0)


    def test_serialize_empty_json(self):
        dump = self.store.toJson()
        expected = '{"notes": {}}'
        self.assertEqual(dump, expected)


    def test_deserialize_empty_json(self):
        dump = '{"notes": {}}'
        store = JournalStore.fromJson(dump)
        self.assertIsNotNone(store.notes)
        self.assertEqual(len(store.notes), 0)


    def test_serialize_filled_pickle(self):
        self.store.notes[self.journal_note_a.id] = self.journal_note_a
        self.store.notes[self.journal_note_b.id] = self.journal_note_b

        dump = pickle.dumps(self.store)
        expected = b"\x80\x05\x95\xd5\x00\x00\x00\x00\x00\x00\x00\x8c!game.engine.journal.journal_store\x94\x8c\x0cJournalStore\x94\x93\x94)\x81\x94}\x94\x8c\x05notes\x94}\x94(\x8c\x06note_a\x94\x8c game.engine.journal.journal_note\x94\x8c\x0bJournalNote\x94\x93\x94)\x81\x94}\x94(\x8c\x02id\x94h\x07\x8c\x07content\x94\x8c\x06Note a\x94\x8c\x05found\x94\x88ub\x8c\x06note_b\x94h\n)\x81\x94}\x94(h\rh\x11h\x0e\x8c\x06Note b\x94h\x10\x89ubusb."
        self.assertEqual(dump, expected)


    def test_deserialize_filled_pickle(self):
        dump = b"\x80\x05\x95\xd5\x00\x00\x00\x00\x00\x00\x00\x8c!game.engine.journal.journal_store\x94\x8c\x0cJournalStore\x94\x93\x94)\x81\x94}\x94\x8c\x05notes\x94}\x94(\x8c\x06note_a\x94\x8c game.engine.journal.journal_note\x94\x8c\x0bJournalNote\x94\x93\x94)\x81\x94}\x94(\x8c\x02id\x94h\x07\x8c\x07content\x94\x8c\x06Note a\x94\x8c\x05found\x94\x88ub\x8c\x06note_b\x94h\n)\x81\x94}\x94(h\rh\x11h\x0e\x8c\x06Note b\x94h\x10\x89ubusb."
        store = pickle.loads(dump)

        self.assertIsNotNone(store.notes)
        self.assertEqual(len(store.notes), 2)
        self._assert_equal_notes(store.notes[self.journal_note_a.id], self.journal_note_a)
        self._assert_equal_notes(store.notes[self.journal_note_b.id], self.journal_note_b)


    def test_serialize_filled_json(self):
        self.store.notes[self.journal_note_a.id] = self.journal_note_a
        self.store.notes[self.journal_note_b.id] = self.journal_note_b

        dump = self.store.toJson()
        expected = '{"notes": {"note_a": {"id": "note_a", "content": "Note a", "found": true}, "note_b": {"id": "note_b", "content": "Note b", "found": false}}}'
        self.assertEqual(dump, expected)


    def test_deserialize_filled_json(self):
        dump = '{"notes": {"note_a": {"id": "note_a", "content": "Note a", "found": true}, "note_b": {"id": "note_b", "content": "Note b", "found": false}}}'
        store = JournalStore.fromJson(dump)

        self.assertIsNotNone(store.notes)
        self.assertEqual(len(store.notes), 2)
        self._assert_equal_notes(store.notes[self.journal_note_a.id], self.journal_note_a)
        self._assert_equal_notes(store.notes[self.journal_note_b.id], self.journal_note_b)


    def _assert_equal_notes(self, lhs, rhs):
        self.assertEqual(lhs.id, rhs.id)
        self.assertEqual(lhs.content, rhs.content)
        self.assertEqual(lhs.found, rhs.found)


if __name__ == "__main__":
    unittest.main()
