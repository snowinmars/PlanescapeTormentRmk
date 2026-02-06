import pickle
import unittest
import time

from game.engine.narrat.NarratStore import (NarratStore)


class NarratStoreTests(unittest.TestCase):
    def setUp(self):
        self.store = NarratStore()


    def test_reserialize_empty_pickle(self):
        dump = pickle.dumps(self.store)
        expected = b'\x80\x05\x95\x99\x00\x00\x00\x00\x00\x00\x00\x8c\x1egame.engine.narrat.NarratStore\x94\x8c\x0bNarratStore\x94\x93\x94)\x81\x94}\x94(\x8c\x0flast_history_id\x94K\x00\x8c\x07history\x94]\x94\x8c\x0ccurrent_line\x94N\x8c\x12current_menu_items\x94]\x94\x8c\x13history_entry_limit\x94K2ub.'
        self.assertEqual(dump, expected)

        store = pickle.loads(dump)
        self._assert_empty_store(store)


    def test_reserialize_filled_pickle(self):
        self._fill_store(self.store)

        dump = pickle.dumps(self.store)
        expected = b'\x80\x05\x95\xe3\x00\x00\x00\x00\x00\x00\x00\x8c\x1egame.engine.narrat.NarratStore\x94\x8c\x0bNarratStore\x94\x93\x94)\x81\x94}\x94(\x8c\x0flast_history_id\x94K\x01\x8c\x07history\x94]\x94}\x94(\x8c\x03who\x94h\t\x8c\x04what\x94h\n\x8c\x05is_br\x94\x88\x8c\tis_change\x94\x88\x8c\x02id\x94K\x01ua\x8c\x0ccurrent_line\x94N\x8c\x12current_menu_items\x94]\x94\x8c\x13current_menu_item_1\x94a\x8c\x13history_entry_limit\x94K2ub.'
        self.assertEqual(dump, expected)

        store = pickle.loads(dump)
        self._assert_filled_store(store)


    def _fill_store(self, store):
        store.last_history_id = 1
        store.history.append({
            'who': 'who',
            'what': 'what',
            'is_br': True,
            'is_change': True,
            'id': 1,
        })
        store.current_speaker = 'current_speaker'
        store.current_text = 'current_text'
        store.current_menu_items = [
            'current_menu_item_1'
        ]


    def _assert_empty_store(self, store):
        self.assertIsNotNone(store.history)
        self.assertEqual(len(store.history), 0)
        self.assertIsNotNone(store.last_history_id)
        self.assertIsNone(store.current_speaker)
        self.assertIsNotNone(store.current_text)
        self.assertIsNotNone(store.current_menu_items)
        self.assertEqual(len(store.current_menu_items), 0)
        self.assertIsNotNone(store.config)


    def _assert_filled_store(self, store):
        self.assertIsNotNone(store.history)
        self.assertEqual(len(store.history), 1)
        self.assertEqual(store.history[0]['who'], 'who')
        self.assertEqual(store.history[0]['what'], 'what')
        self.assertEqual(store.history[0]['is_br'], True)
        self.assertEqual(store.history[0]['is_change'], True)
        self.assertEqual(store.history[0]['id'], 1)
        self.assertEqual(store.current_speaker, 'current_speaker')
        self.assertEqual(store.current_text, 'current_text')
        self.assertIsNotNone(store.current_menu_items)
        self.assertEqual(len(store.current_menu_items), 1)
        self.assertEqual(store.current_menu_items[0], 'current_menu_item_1')
        self.assertIsNotNone(store.config)


if __name__ == "__main__":
    unittest.main() # pragma: no cover
