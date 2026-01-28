import unittest
import pickle

from game.engine.LogicTests import (LogicTests)
from game.engine.journal_notes.JournalNote import (JournalNote)


class InventoryItemsTests(LogicTests):
    def test_ctor(self):
        id = 'id'
        content = 'content'
        found = False
        found_at = 0

        journal_note = self._create_journal_note(
            id=id,
            content=content,
            found=found,
            found_at=found_at
        )

        self.assertIsNotNone(journal_note)

        self.assertEqual(journal_note.id, id)
        self.assertEqual(journal_note.content, content)
        self.assertEqual(journal_note.found, found)
        self.assertEqual(journal_note.found_at, found_at)


    def test_reserialize_pickle(self):
        journal_note = self._create_journal_note()

        dump = pickle.dumps(journal_note)
        expected = b"\x80\x05\x95d\x00\x00\x00\x00\x00\x00\x00\x8c'game.engine.characters.characters_store\x94\x8c\x0fCharactersStore\x94\x93\x94)\x81\x94}\x94(\x8c\ncharacters\x94}\x94\x8c\tonce_keys\x94}\x94ub."
        self.assertEqual(dump, expected)

        restored_journal_note = pickle.loads(dump)
        self._assert_journal_note(journal_note, restored_journal_note)


    def test_reserialize_json(self):
        journal_note = self._create_journal_note()

        dump = journal_note.toJson()
        expected = '{"characters": {}, "once_keys": {}}'
        self.assertEqual(dump, expected)

        restored_journal_note = InventoryItem.fromJson(dump)
        self._assert_journal_note(journal_note, restored_journal_note)


    def _create_journal_note(self,
        id ='d',
        content='content',
        found=False,
        found_at=0
    ):
        return JournalNote(
            id=id,
            content=content,
            found=found,
            found_at=found_at
        )


    def _assert_journal_note(self, lhs, rhs):
        self.assertEqual(lhs.id      , rhs.id)
        self.assertEqual(lhs.content , rhs.content)
        self.assertEqual(lhs.found   , rhs.found)
        self.assertEqual(lhs.found_at, rhs.found_at)
