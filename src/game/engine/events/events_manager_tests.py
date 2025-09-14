import unittest

from game.engine.tests import (LogicTest)
from game.engine.events.events_manager import (EventsManager)


class EventsManagerTest(LogicTest):
    def test_ctor(self):
        self.assertIsNotNone(self.events_manager)
        self.assertIsNotNone(self.events_manager._events)
        self.assertNotEqual(len(self.events_manager._events), 0)


    def test_write_event_when_all_ok(self):
        text = 'text'
        category = 'general'
        delta = 1

        before = len(self.events_manager._events)
        self.events_manager.write_event(text)

        after = len(self.events_manager._events)
        self.assertEqual(before + delta, after)
        self.assertIsNotNone(self.events_manager._events[-1].timestamp)
        self.assertEqual(self.events_manager._events[-1].category, category)
        self.assertEqual(self.events_manager._events[-1].text, text)


    def test_write_event_when_maxed_out(self):
        max_entries = 2
        events_manager = EventsManager(self.logger, max_entries)
        text1 = 'text1'
        category1 = 'category1'
        text2 = 'text2'
        category2 = 'category2'
        text3 = 'text3'
        category3 = 'category3'
        text4 = 'text4'
        category4 = 'category4'
        delta = 1

        before = len(events_manager._events)

        events_manager.write_event(text1, category1)

        after1 = len(events_manager._events)
        self.assertEqual(before + delta, after1)
        self.assertIsNotNone(events_manager._events[0].timestamp)
        self.assertEqual(events_manager._events[0].category, category1)
        self.assertEqual(events_manager._events[0].text, text1)

        events_manager.write_event(text2, category2)

        after2 = len(events_manager._events)
        self.assertEqual(after1 + delta, after2)
        self.assertIsNotNone(events_manager._events[1].timestamp)
        self.assertEqual(events_manager._events[1].category, category2)
        self.assertEqual(events_manager._events[1].text, text2)

        events_manager.write_event(text3, category3)

        after3 = len(events_manager._events)
        self.assertEqual(after2, after3)
        self.assertIsNotNone(events_manager._events[1].timestamp)
        self.assertEqual(events_manager._events[1].category, category3)
        self.assertEqual(events_manager._events[1].text, text3)

        events_manager.write_event(text4, category4)

        after4 = len(events_manager._events)
        self.assertEqual(after3, after4)
        self.assertIsNotNone(events_manager._events[1].timestamp)
        self.assertEqual(events_manager._events[1].category, category4)
        self.assertEqual(events_manager._events[1].text, text4)


    def test_write_event_when_with_category(self):
        text = 'text'
        category = 'category'
        delta = 1

        before = len(self.events_manager._events)

        self.events_manager.write_event(text, category)

        after = len(self.events_manager._events)
        self.assertEqual(before + delta, after)
        self.assertIsNotNone(self.events_manager._events[-1].timestamp)
        self.assertEqual(self.events_manager._events[-1].category, category)
        self.assertEqual(self.events_manager._events[-1].text, text)


    def test_ping_when_all_ok(self):
        text = '(-_-(-_(-_(-_-)_-)-_-)_-)'
        category = 'general'
        delta = 1

        before = len(self.events_manager._events)

        self.events_manager.ping()

        after = len(self.events_manager._events)
        self.assertEqual(before + delta, after)
        self.assertIsNotNone(self.events_manager._events[-1].timestamp)
        self.assertEqual(self.events_manager._events[-1].category, category)
        self.assertEqual(self.events_manager._events[-1].text, text)


    def test_get_events_when_all_ok(self):
        max_entries = 2
        events_manager = EventsManager(self.logger, max_entries)
        text1 = 'text1'
        category1 = 'category1'
        text2 = 'text2'
        category2 = 'category2'
        text3 = 'text3'
        category3 = 'category3'
        text4 = 'text4'
        category4 = 'category4'

        self.assertEqual(len(events_manager._events), 0)

        events_manager.write_event(text1, category1)

        self.assertEqual(len(events_manager.get_events()), 1)
        self.assertIsNotNone(events_manager.get_events()[0].timestamp)
        self.assertEqual(events_manager.get_events()[0].category, category1)
        self.assertEqual(events_manager.get_events()[0].text, text1)

        events_manager.write_event(text2, category2)

        self.assertEqual(len(events_manager.get_events()), max_entries)
        self.assertIsNotNone(events_manager.get_events()[1].timestamp)
        self.assertEqual(events_manager.get_events()[1].category, category2)
        self.assertEqual(events_manager.get_events()[1].text, text2)

        events_manager.write_event(text3, category3)

        self.assertEqual(len(events_manager.get_events()), max_entries)
        self.assertIsNotNone(events_manager.get_events()[1].timestamp)
        self.assertEqual(events_manager.get_events()[1].category, category3)
        self.assertEqual(events_manager.get_events()[1].text, text3)

        events_manager.write_event(text4, category4)

        self.assertEqual(len(events_manager.get_events()), max_entries)
        self.assertIsNotNone(events_manager.get_events()[1].timestamp)
        self.assertEqual(events_manager.get_events()[1].category, category4)
        self.assertEqual(events_manager.get_events()[1].text, text4)


    def test_get_events_when_with_category(self):
        max_entries = 2
        events_manager = EventsManager(self.logger, max_entries)
        text1 = 'text1'
        category1 = 'category1'
        text2 = 'text2'
        category2 = 'category2'
        text3 = 'text3'
        category3 = 'category3'
        text4 = 'text4'
        category4 = 'category4'

        self.assertEqual(len(events_manager._events), 0)

        events_manager.write_event(text1, category1)

        self.assertEqual(len(events_manager.get_events(category2)), 0)

        events_manager.write_event(text2, category2)

        self.assertEqual(len(events_manager.get_events(category2)), 1)
        self.assertIsNotNone(events_manager.get_events(category2)[0].timestamp)
        self.assertEqual(events_manager.get_events(category2)[0].category, category2)
        self.assertEqual(events_manager.get_events(category2)[0].text, text2)


    def test_clear_when_all_ok(self):
        text = 'text'
        category = 'general'
        delta = 1

        before = len(self.events_manager._events)

        self.events_manager.write_event(text)

        after_write = len(self.events_manager._events)
        self.assertEqual(before + delta, after_write)

        self.events_manager.clear()

        after_clear = len(self.events_manager._events)
        self.assertEqual(after_clear, 0)


if __name__ == '__main__':
    unittest.main() # pragma: no cover
