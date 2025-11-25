import pickle
import unittest
import time

from game.engine.events.event import (Event)
from game.engine.events.events_store import (EventsStore)


class CharacterStoreTest(unittest.TestCase):
    def setUp(self):
        self.store = EventsStore()
        self.event_a = Event(
            timestamp = '[15:50]',
            category = 'event_category_a',
            text = 'event_text_a'
        )
        self.event_b = Event(
            timestamp = '[05:51]',
            category = 'event_category_b',
            text = 'event_text_b'
        )


    def test_reserialize_empty_pickle(self):
        dump = pickle.dumps(self.store)
        expected = b"\x80\x05\x95s\x00\x00\x00\x00\x00\x00\x00\x8c\x1fgame.engine.events.events_store\x94\x8c\x0bEventsStore\x94\x93\x94)\x81\x94}\x94(\x8c\x06events\x94\x8c\x0bcollections\x94\x8c\x05deque\x94\x93\x94)Kd\x86\x94R\x94\x8c\x0bmax_entries\x94Kdub."
        self.assertEqual(dump, expected)

        store = pickle.loads(dump)
        self._assert_empty_store(store)


    def test_reserialize_empty_json(self):
        dump = self.store.toJson()
        expected = '{"events": [], "max_entries": 100}'
        self.assertEqual(dump, expected)

        store = EventsStore.fromJson(dump)
        self._assert_empty_store(store)


    def test_reserialize_filled_pickle(self):
        self._fill_store(self.store)

        dump = pickle.dumps(self.store)
        expected = b"\x80\x05\x95(\x01\x00\x00\x00\x00\x00\x00\x8c\x1fgame.engine.events.events_store\x94\x8c\x0bEventsStore\x94\x93\x94)\x81\x94}\x94(\x8c\x06events\x94\x8c\x0bcollections\x94\x8c\x05deque\x94\x93\x94)Kd\x86\x94R\x94(\x8c\x18game.engine.events.event\x94\x8c\x05Event\x94\x93\x94)\x81\x94}\x94(\x8c\ttimestamp\x94\x8c\x07[15:50]\x94\x8c\x08category\x94\x8c\x10event_category_a\x94\x8c\x04text\x94\x8c\x0cevent_text_a\x94ubh\r)\x81\x94}\x94(h\x10\x8c\x07[05:51]\x94h\x12\x8c\x10event_category_b\x94h\x14\x8c\x0cevent_text_b\x94ube\x8c\x0bmax_entries\x94Kdub."
        self.assertEqual(dump, expected)

        store = pickle.loads(dump)
        self._assert_filled_store(self.store)


    def test_reserialize_filled_json(self):
        self._fill_store(self.store)

        dump = self.store.toJson()
        expected = '{"events": [{"timestamp": "[15:50]", "category": "event_category_a", "text": "event_text_a"}, {"timestamp": "[05:51]", "category": "event_category_b", "text": "event_text_b"}], "max_entries": 100}'
        self.assertEqual(dump, expected)

        store = EventsStore.fromJson(dump)
        self._assert_filled_store(self.store)


    def _assert_empty_store(self, store):
        self.assertIsNotNone(store.events)
        self.assertEqual(len(store.events), 0)
        self.assertEqual(store.max_entries, 100)


    def _fill_store(self, store):
        store.events.append(self.event_a)
        store.events.append(self.event_b)


    def _assert_filled_store(self, store):
        self.assertIsNotNone(store.events)
        self.assertEqual(len(store.events), 2)
        self._assert_equal_events(store.events[0], self.event_a)
        self._assert_equal_events(store.events[1], self.event_b)


    def _assert_equal_events(self, lhs, rhs):
        self.assertEqual(lhs.timestamp, rhs.timestamp)
        self.assertEqual(lhs.category, rhs.category)
        self.assertEqual(lhs.text, rhs.text)


if __name__ == "__main__":
    unittest.main()
