import pickle
import unittest
import time

from game.engine.quests.Quest import (Quest)
from game.engine.quests.quests_store import (QuestsStore)


class QuestsStoreTests(unittest.TestCase):
    def setUp(self):
        self.store = QuestsStore()
        self.quest_a = Quest(
            'A',
            ['a1', 'a2']
        )


    def test_reserialize_empty_json(self):
        dump = self.store.toJson()
        expected = '{"quests": {}, "quest_state_id_index": {}}'
        print()
        print('test_reserialize_empty_json')
        print(dump)
        print()
        self.assertEqual(dump, expected)

        store = QuestsStore.fromJson(dump)
        self._assert_empty_store(store)


    def test_reserialize_filled_json(self):
        self._fill_store(self.store)

        dump = self.store.toJson()
        expected = '{"quests": {"A": {"quest_id": "A", "quest_state_ids": ["a1", "a2"], "active_state_id": "a1", "started": false, "finished": false}}, "quest_state_id_index": {"a1": "A", "a2": "A"}}'
        print()
        print('test_reserialize_filled_json')
        print(dump)
        print()
        self.assertEqual(dump, expected)

        store = QuestsStore.fromJson(dump)
        self._assert_filled_store(self.store)


    def _assert_empty_store(self, store):
        self.assertIsNotNone(store.quests)
        self.assertEqual(len(store.quests), 0)
        self.assertIsNotNone(store.quest_state_id_index)
        self.assertEqual(len(store.quest_state_id_index), 0)


    def _fill_store(self, store):
        store.quests[self.quest_a.quest_id] = self.quest_a
        for state_id in self.quest_a.quest_state_ids:
            store.quest_state_id_index[state_id] = self.quest_a.quest_id


    def _assert_filled_store(self, store):
        self.assertIsNotNone(store.quests)
        self.assertEqual(len(store.quests), 1)
        self._assert_equal_quests(store.quests[self.quest_a.quest_id], self.quest_a)


    def _assert_equal_quests(self, lhs, rhs):
        self.assertEqual(lhs.quest_id, rhs.quest_id)
        self.assertEqual(lhs.quest_state_ids, rhs.quest_state_ids)
        self.assertEqual(lhs.active_state_id, rhs.active_state_id)
        self.assertEqual(lhs.started, rhs.started)
        self.assertEqual(lhs.finished, rhs.finished)
