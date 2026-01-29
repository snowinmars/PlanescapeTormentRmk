import pickle
import unittest
import time

from game.engine.quests.Quest import (Quest)
from game.engine.quests.QuestsStore import (QuestsStore)


class QuestsStoreTests(unittest.TestCase):
    def setUp(self):
        self.store = QuestsStore()
        self.quest_a = Quest(
            'A',
            ['a1', 'a2']
        )


    def test_reserialize_empty_pickle(self):
        dump = pickle.dumps(self.store)
        expected = b'\x80\x05\x95^\x00\x00\x00\x00\x00\x00\x00\x8c\x1egame.engine.quests.QuestsStore\x94\x8c\x0bQuestsStore\x94\x93\x94)\x81\x94}\x94(\x8c\x06quests\x94}\x94\x8c\x14quest_state_id_index\x94}\x94ub.'
        self.assertEqual(dump, expected)

        store = pickle.loads(dump)
        self._assert_empty_store(store)


    def test_reserialize_empty_json(self):
        dump = self.store.toJson()
        expected = '{"quests": {}, "quest_state_id_index": {}}'
        self.assertEqual(dump, expected)

        store = QuestsStore.fromJson(dump)
        self._assert_empty_store(store)


    def test_reserialize_filled_pickle(self):
        self._fill_store(self.store)

        dump = pickle.dumps(self.store)
        expected =  b'\x80\x05\x95\xf2\x00\x00\x00\x00\x00\x00\x00\x8c\x1egame.engine.quests.QuestsStore\x94\x8c\x0bQuestsStore\x94\x93\x94)\x81\x94}\x94(\x8c\x06quests\x94}\x94\x8c\x01A\x94\x8c\x18game.engine.quests.Quest\x94\x8c\x05Quest\x94\x93\x94)\x81\x94}\x94(\x8c\x08quest_id\x94h\x07\x8c\x0fquest_state_ids\x94]\x94(\x8c\x02a1\x94\x8c\x02a2\x94e\x8c\x0factive_state_id\x94h\x10\x8c\x07started\x94\x89\x8c\x08finished\x94\x89ubs\x8c\x14quest_state_id_index\x94}\x94(h\x10h\x07h\x11h\x07uub.'
        self.assertEqual(dump, expected)

        store = pickle.loads(dump)
        self._assert_filled_store(self.store)


    def test_reserialize_filled_json(self):
        self._fill_store(self.store)

        dump = self.store.toJson()
        expected = '{"quests": {"A": {"quest_id": "A", "quest_state_ids": ["a1", "a2"], "active_state_id": "a1", "started": false, "finished": false}}, "quest_state_id_index": {"a1": "A", "a2": "A"}}'
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
