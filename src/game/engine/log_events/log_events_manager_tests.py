import unittest

from game.engine.tests import (LogicTest)
from game.engine.log_events.log_events_manager import (LogEventsManager)
from game.engine.log_events.log_events_store import (LogEventsStore)


class LogEventsManagerTest(LogicTest):
    def test_ctor(self):
        self.assertIsNotNone(self.log_events_manager)
        self.assertIsNotNone(self.log_events_manager._log_events_store.log_events)
        self.assertNotEqual(len(self.log_events_manager._log_events_store.log_events), 0)


    def test_write_log_event_when_all_ok(self):
        text = 'text'
        category = 'general'
        delta = 1

        before = len(self.log_events_manager._log_events_store.log_events)
        self.log_events_manager.write_log_event(text)

        after = len(self.log_events_manager._log_events_store.log_events)
        self.assertEqual(before + delta, after)
        self.assertIsNotNone(self.log_events_manager._log_events_store.log_events[-1].timestamp)
        self.assertEqual(self.log_events_manager._log_events_store.log_events[-1].category, category)
        self.assertEqual(self.log_events_manager._log_events_store.log_events[-1].text, text)


    def test_write_log_event_when_maxed_out(self):
        max_entries = 2
        log_events_manager = LogEventsManager(self.logger)
        log_events_manager.set_store(LogEventsStore(max_entries))
        text1 = 'text1'
        category1 = 'category1'
        text2 = 'text2'
        category2 = 'category2'
        text3 = 'text3'
        category3 = 'category3'
        text4 = 'text4'
        category4 = 'category4'
        delta = 1

        before = len(log_events_manager._log_events_store.log_events)

        log_events_manager.write_log_event(text1, category1)

        after1 = len(log_events_manager._log_events_store.log_events)
        self.assertEqual(before + delta, after1)
        self.assertIsNotNone(log_events_manager._log_events_store.log_events[0].timestamp)
        self.assertEqual(log_events_manager._log_events_store.log_events[0].category, category1)
        self.assertEqual(log_events_manager._log_events_store.log_events[0].text, text1)

        log_events_manager.write_log_event(text2, category2)

        after2 = len(log_events_manager._log_events_store.log_events)
        self.assertEqual(after1 + delta, after2)
        self.assertIsNotNone(log_events_manager._log_events_store.log_events[1].timestamp)
        self.assertEqual(log_events_manager._log_events_store.log_events[1].category, category2)
        self.assertEqual(log_events_manager._log_events_store.log_events[1].text, text2)

        log_events_manager.write_log_event(text3, category3)

        after3 = len(log_events_manager._log_events_store.log_events)
        self.assertEqual(after2, after3)
        self.assertIsNotNone(log_events_manager._log_events_store.log_events[1].timestamp)
        self.assertEqual(log_events_manager._log_events_store.log_events[1].category, category3)
        self.assertEqual(log_events_manager._log_events_store.log_events[1].text, text3)

        log_events_manager.write_log_event(text4, category4)

        after4 = len(log_events_manager._log_events_store.log_events)
        self.assertEqual(after3, after4)
        self.assertIsNotNone(log_events_manager._log_events_store.log_events[1].timestamp)
        self.assertEqual(log_events_manager._log_events_store.log_events[1].category, category4)
        self.assertEqual(log_events_manager._log_events_store.log_events[1].text, text4)


    def test_write_log_event_when_with_category(self):
        text = 'text'
        category = 'category'
        delta = 1

        before = len(self.log_events_manager._log_events_store.log_events)

        self.log_events_manager.write_log_event(text, category)

        after = len(self.log_events_manager._log_events_store.log_events)
        self.assertEqual(before + delta, after)
        self.assertIsNotNone(self.log_events_manager._log_events_store.log_events[-1].timestamp)
        self.assertEqual(self.log_events_manager._log_events_store.log_events[-1].category, category)
        self.assertEqual(self.log_events_manager._log_events_store.log_events[-1].text, text)


    def test_ping_when_all_ok(self):
        text = '(-_-(-_(-_(-_-)_-)-_-)_-)'
        category = 'general'
        delta = 1

        before = len(self.log_events_manager._log_events_store.log_events)

        self.log_events_manager.ping()

        after = len(self.log_events_manager._log_events_store.log_events)
        self.assertEqual(before + delta, after)
        self.assertIsNotNone(self.log_events_manager._log_events_store.log_events[-1].timestamp)
        self.assertEqual(self.log_events_manager._log_events_store.log_events[-1].category, category)
        self.assertEqual(self.log_events_manager._log_events_store.log_events[-1].text, text)


    def test_get_events_when_all_ok(self):
        max_entries = 2
        log_events_manager = LogEventsManager(self.logger)
        log_events_manager.set_store(LogEventsStore(max_entries))
        text1 = 'text1'
        category1 = 'category1'
        text2 = 'text2'
        category2 = 'category2'
        text3 = 'text3'
        category3 = 'category3'
        text4 = 'text4'
        category4 = 'category4'

        self.assertEqual(len(log_events_manager._log_events_store.log_events), 0)

        log_events_manager.write_log_event(text1, category1)

        self.assertEqual(len(log_events_manager.get_log_events()), 1)
        self.assertIsNotNone(log_events_manager.get_log_events()[0].timestamp)
        self.assertEqual(log_events_manager.get_log_events()[0].category, category1)
        self.assertEqual(log_events_manager.get_log_events()[0].text, text1)

        log_events_manager.write_log_event(text2, category2)

        self.assertEqual(len(log_events_manager.get_log_events()), max_entries)
        self.assertIsNotNone(log_events_manager.get_log_events()[1].timestamp)
        self.assertEqual(log_events_manager.get_log_events()[1].category, category2)
        self.assertEqual(log_events_manager.get_log_events()[1].text, text2)

        log_events_manager.write_log_event(text3, category3)

        self.assertEqual(len(log_events_manager.get_log_events()), max_entries)
        self.assertIsNotNone(log_events_manager.get_log_events()[1].timestamp)
        self.assertEqual(log_events_manager.get_log_events()[1].category, category3)
        self.assertEqual(log_events_manager.get_log_events()[1].text, text3)

        log_events_manager.write_log_event(text4, category4)

        self.assertEqual(len(log_events_manager.get_log_events()), max_entries)
        self.assertIsNotNone(log_events_manager.get_log_events()[1].timestamp)
        self.assertEqual(log_events_manager.get_log_events()[1].category, category4)
        self.assertEqual(log_events_manager.get_log_events()[1].text, text4)


    def test_get_log_events_when_with_category(self):
        max_entries = 2
        log_events_manager = LogEventsManager(self.logger)
        log_events_manager.set_store(LogEventsStore(max_entries))
        text1 = 'text1'
        category1 = 'category1'
        text2 = 'text2'
        category2 = 'category2'
        text3 = 'text3'
        category3 = 'category3'
        text4 = 'text4'
        category4 = 'category4'

        self.assertEqual(len(log_events_manager._log_events_store.log_events), 0)

        log_events_manager.write_log_event(text1, category1)

        self.assertEqual(len(log_events_manager.get_log_events(category2)), 0)

        log_events_manager.write_log_event(text2, category2)

        self.assertEqual(len(log_events_manager.get_log_events(category2)), 1)
        self.assertIsNotNone(log_events_manager.get_log_events(category2)[0].timestamp)
        self.assertEqual(log_events_manager.get_log_events(category2)[0].category, category2)
        self.assertEqual(log_events_manager.get_log_events(category2)[0].text, text2)


    def test_clear_when_all_ok(self):
        text = 'text'
        category = 'general'
        delta = 1

        before = len(self.log_events_manager._log_events_store.log_events)

        self.log_events_manager.write_log_event(text)

        after_write = len(self.log_events_manager._log_events_store.log_events)
        self.assertEqual(before + delta, after_write)

        self.log_events_manager.clear()

        after_clear = len(self.log_events_manager._log_events_store.log_events)
        self.assertEqual(after_clear, 0)


if __name__ == '__main__':
    unittest.main() # pragma: no cover
