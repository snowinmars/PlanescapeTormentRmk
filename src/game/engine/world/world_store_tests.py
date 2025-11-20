import json
import pickle
import unittest
import time

from game.engine.world.world_store import (WorldStore)


class JournalStoreTest(unittest.TestCase):
    def setUp(self):
        self.store = WorldStore()


    def test_serialize_empty_pickle(self):
        dump = pickle.dumps(self.store)
        expected = b"\x80\x05\x95S\x00\x00\x00\x00\x00\x00\x00\x8c\x1dgame.engine.world.world_store\x94\x8c\nWorldStore\x94\x93\x94)\x81\x94}\x94(\x8c\tonce_keys\x94]\x94\x8c\x08registry\x94}\x94ub."
        self.assertEqual(dump, expected)


    def test_deserialize_empty_pickle(self):
        dump = b"\x80\x05\x95S\x00\x00\x00\x00\x00\x00\x00\x8c\x1dgame.engine.world.world_store\x94\x8c\nWorldStore\x94\x93\x94)\x81\x94}\x94(\x8c\tonce_keys\x94]\x94\x8c\x08registry\x94}\x94ub."
        store = pickle.loads(dump)
        self.assertIsNotNone(store.once_keys)
        self.assertIsNotNone(store.registry)
        self.assertEqual(len(store.once_keys), 0)
        self.assertEqual(len(store.registry), 0)


    def test_serialize_empty_json(self):
        dump = self.store.toJson()
        expected = '{"once_keys": [], "registry": {}}'
        self.assertEqual(dump, expected)


    def test_deserialize_empty_json(self):
        dump = '{"once_keys": [], "registry": {}}'
        store = WorldStore.fromJson(dump)
        self.assertIsNotNone(store.once_keys)
        self.assertIsNotNone(store.registry)
        self.assertEqual(len(store.once_keys), 0)
        self.assertEqual(len(store.registry), 0)


    def test_serialize_filled_pickle(self):
        self.store.registry['setting_id_1'] = 'default_value_1'
        self.store.registry['setting_id_2'] = 'default_value_2'
        self.store.once_keys.append('once_keys_1')
        self.store.once_keys.append('once_keys_2')

        dump = pickle.dumps(self.store)
        expected = b"\x80\x05\x95\xb5\x00\x00\x00\x00\x00\x00\x00\x8c\x1dgame.engine.world.world_store\x94\x8c\nWorldStore\x94\x93\x94)\x81\x94}\x94(\x8c\tonce_keys\x94]\x94(\x8c\x0bonce_keys_1\x94\x8c\x0bonce_keys_2\x94e\x8c\x08registry\x94}\x94(\x8c\x0csetting_id_1\x94\x8c\x0fdefault_value_1\x94\x8c\x0csetting_id_2\x94\x8c\x0fdefault_value_2\x94uub."
        self.assertEqual(dump, expected)


    def test_deserialize_filled_pickle(self):
        dump = b"\x80\x05\x95\xb5\x00\x00\x00\x00\x00\x00\x00\x8c\x1dgame.engine.world.world_store\x94\x8c\nWorldStore\x94\x93\x94)\x81\x94}\x94(\x8c\tonce_keys\x94]\x94(\x8c\x0bonce_keys_1\x94\x8c\x0bonce_keys_2\x94e\x8c\x08registry\x94}\x94(\x8c\x0csetting_id_1\x94\x8c\x0fdefault_value_1\x94\x8c\x0csetting_id_2\x94\x8c\x0fdefault_value_2\x94uub."
        store = pickle.loads(dump)

        self.assertIsNotNone(store.registry)
        self.assertIsNotNone(store.once_keys)
        self.assertEqual(len(store.registry), 2)
        self.assertEqual(len(store.once_keys), 2)
        self.assertEqual(store.registry['setting_id_1'], 'default_value_1')
        self.assertEqual(store.registry['setting_id_2'], 'default_value_2')
        self.assertEqual(store.once_keys[0], 'once_keys_1')
        self.assertEqual(store.once_keys[1], 'once_keys_2')


    def test_serialize_filled_json(self):
        self.store.registry['setting_id_1'] = 'default_value_1'
        self.store.registry['setting_id_2'] = 'default_value_2'
        self.store.once_keys.append('once_keys_1')
        self.store.once_keys.append('once_keys_2')

        dump = self.store.toJson()
        expected = '{"once_keys": ["once_keys_1", "once_keys_2"], "registry": {"setting_id_1": "default_value_1", "setting_id_2": "default_value_2"}}'
        self.assertEqual(dump, expected)


    def test_deserialize_filled_json(self):
        dump = '{"once_keys": ["once_keys_1", "once_keys_2"], "registry": {"setting_id_1": "default_value_1", "setting_id_2": "default_value_2"}}'
        store = WorldStore.fromJson(dump)

        self.assertIsNotNone(store.registry)
        self.assertIsNotNone(store.once_keys)
        self.assertEqual(len(store.registry), 2)
        self.assertEqual(len(store.once_keys), 2)
        self.assertEqual(store.registry['setting_id_1'], 'default_value_1')
        self.assertEqual(store.registry['setting_id_2'], 'default_value_2')
        self.assertEqual(store.once_keys[0], 'once_keys_1')
        self.assertEqual(store.once_keys[1], 'once_keys_2')


if __name__ == "__main__":
    unittest.main()
