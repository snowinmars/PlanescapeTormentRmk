import unittest
import pickle

from game.engine.LogicTests import (LogicTests)
from game.engine.log_events.LogEvent import (LogEvent)


class LogEventTests(LogicTests):
    def test_ctor(self):
        timestamp = 'timestamp'
        category = 'category'
        text = 'text'

        log_event = self._create_log_event(
            timestamp=timestamp,
            category=category,
            text=text
        )

        self.assertIsNotNone(log_event)

        self.assertEqual(log_event.timestamp, timestamp)
        self.assertEqual(log_event.category, category)
        self.assertEqual(log_event.text, text)


    def test_reserialize_pickle(self):
        log_event = self._create_log_event()

        dump = pickle.dumps(log_event)
        expected = b'\x80\x05\x95\\\x00\x00\x00\x00\x00\x00\x00\x8c\x1fgame.engine.log_events.LogEvent\x94\x8c\x08LogEvent\x94\x93\x94)\x81\x94}\x94(\x8c\ttimestamp\x94h\x05\x8c\x08category\x94h\x06\x8c\x04text\x94h\x07ub.'
        self.assertEqual(dump, expected)

        restored_log_event = pickle.loads(dump)
        self._assert_log_event(log_event, restored_log_event)


    def test_reserialize_json(self):
        log_event = self._create_log_event()

        dump = log_event.toJson()
        expected = '{"timestamp": "timestamp", "category": "category", "text": "text"}'
        self.assertEqual(dump, expected)

        restored_log_event = LogEvent.fromJson(dump)
        self._assert_log_event(log_event, restored_log_event)


    def _create_log_event(self,
        timestamp='timestamp',
        category='category',
        text='text'
    ):
        return LogEvent(
            timestamp=timestamp,
            category=category,
            text=text
        )


    def _assert_log_event(self, lhs, rhs):
        self.assertEqual(lhs.timestamp, rhs.timestamp)
        self.assertEqual(lhs.category , rhs.category)
        self.assertEqual(lhs.text     , rhs.text)
