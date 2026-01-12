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


    def test_reserialize_empty_pickle(self):
        dump = pickle.dumps(self.store)
        expected = b'\x80\x04\x95G\x00\x00\x00\x00\x00\x00\x00\x8c!game.engine.journal.journal_store\x94\x8c\x0cJournalStore\x94\x93\x94)\x81\x94}\x94\x8c\x05notes\x94}\x94sb.'
        self.assertEqual(dump, expected)

        store = pickle.loads(dump)
        self._assert_empty_store(store)


    def test_reserialize_empty_json(self):
        dump = self.store.toJson()
        expected = '{"notes": {}}'
        self.assertEqual(dump, expected)

        store = JournalStore.fromJson(dump)
        self._assert_empty_store(store)


    def test_reserialize_filled_pickle(self):
        self._fill_store(self.store)

        dump = pickle.dumps(self.store)
        expected = b'\x80\x04\x95\xe6\x00\x00\x00\x00\x00\x00\x00\x8c!game.engine.journal.journal_store\x94\x8c\x0cJournalStore\x94\x93\x94)\x81\x94}\x94\x8c\x05notes\x94}\x94(\x8c\x06note_a\x94\x8c game.engine.journal.journal_note\x94\x8c\x0bJournalNote\x94\x93\x94)\x81\x94}\x94(\x8c\x02id\x94h\x07\x8c\x07content\x94\x8c\x06Note a\x94\x8c\x05found\x94\x88\x8c\x08found_at\x94K\x00ub\x8c\x06note_b\x94h\n)\x81\x94}\x94(h\rh\x12h\x0e\x8c\x06Note b\x94h\x10\x89h\x11K\x00ubusb.'
        self.assertEqual(dump, expected)

        store = pickle.loads(dump)
        self._assert_filled_store(store)


    def test_reserialize_filled_json(self):
        self._fill_store(self.store)

        dump = self.store.toJson()
        expected = '{"notes": {"note_a": {"id": "note_a", "content": "Note a", "found": true, "found_at": 0}, "note_b": {"id": "note_b", "content": "Note b", "found": false, "found_at": 0}}}'
        self.assertEqual(dump, expected)

        store = JournalStore.fromJson(dump)
        self._assert_filled_store(store)


    def _assert_equal_notes(self, lhs, rhs):
        self.assertEqual(lhs.id, rhs.id)
        self.assertEqual(lhs.content, rhs.content)
        self.assertEqual(lhs.found, rhs.found)


    def _assert_empty_store(self, store):
        self.assertIsNotNone(store.notes)
        self.assertEqual(len(store.notes), 0)


    def _fill_store(self, store):
        store.notes[self.journal_note_a.id] = self.journal_note_a
        store.notes[self.journal_note_b.id] = self.journal_note_b


    def _assert_filled_store(self, store):
        self.assertIsNotNone(store.notes)
        self.assertEqual(len(store.notes), 2)
        self._assert_equal_notes(store.notes[self.journal_note_a.id], self.journal_note_a)
        self._assert_equal_notes(store.notes[self.journal_note_b.id], self.journal_note_b)


if __name__ == "__main__":
    unittest.main()
