import pickle
import unittest
import time

from game.engine.locations.locations_store import (LocationsStore)


class LocationsStoreTest(unittest.TestCase):
    def setUp(self):
        self.store = LocationsStore()
        self.internal_location_a = 'internal_location_a'
        self.internal_location_b = 'internal_location_b'
        self.external_location_a = 'external_location_a'
        self.external_location_b = 'external_location_b'


    def test_serialize_empty(self):
        dump = pickle.dumps(self.store)
        expected = b"\x80\x05\x95\xb8\x00\x00\x00\x00\x00\x00\x00\x8c%game.engine.locations.locations_store\x94\x8c\x0eLocationsStore\x94\x93\x94)\x81\x94}\x94(\x8c\x0bi2e_mapping\x94}\x94\x8c\x0be2i_mapping\x94}\x94\x8c\x10current_external\x94N\x8c\x10current_internal\x94N\x8c\x11visited_externals\x94\x8f\x94\x8c\x11visited_internals\x94\x8f\x94ub."
        self.assertEqual(dump, expected)


    def test_deserialize_empty(self):
        dump = b"\x80\x05\x95\xb8\x00\x00\x00\x00\x00\x00\x00\x8c%game.engine.locations.locations_store\x94\x8c\x0eLocationsStore\x94\x93\x94)\x81\x94}\x94(\x8c\x0bi2e_mapping\x94}\x94\x8c\x0be2i_mapping\x94}\x94\x8c\x10current_external\x94N\x8c\x10current_internal\x94N\x8c\x11visited_externals\x94\x8f\x94\x8c\x11visited_internals\x94\x8f\x94ub."
        store = pickle.loads(dump)
        self.assertIsNotNone(store.i2e_mapping)
        self.assertIsNotNone(store.e2i_mapping)
        self.assertIsNone(store.current_external)
        self.assertIsNone(store.current_internal)
        self.assertIsNotNone(store.visited_externals)
        self.assertIsNotNone(store.visited_internals)
        self.assertEqual(len(store.i2e_mapping), 0)
        self.assertEqual(len(store.e2i_mapping), 0)
        self.assertEqual(len(store.visited_externals), 0)
        self.assertEqual(len(store.visited_internals), 0)


    def test_serialize_filled(self):
        self.store.i2e_mapping = {
            self.internal_location_a: [self.external_location_a],
            self.internal_location_b: [self.external_location_b],
        }
        self.store.e2i_mapping = {
            self.external_location_a: self.internal_location_a,
            self.external_location_b: self.internal_location_b,
        }
        self.store.current_internal = self.internal_location_b
        self.store.current_external = self.external_location_b
        self.store.visited_internals = set([self.internal_location_b])
        self.store.visited_externals = set([self.external_location_b])

        dump = pickle.dumps(self.store)
        expected = b"\x80\x05\x95,\x01\x00\x00\x00\x00\x00\x00\x8c%game.engine.locations.locations_store\x94\x8c\x0eLocationsStore\x94\x93\x94)\x81\x94}\x94(\x8c\x0bi2e_mapping\x94}\x94(\x8c\x13internal_location_a\x94]\x94\x8c\x13external_location_a\x94a\x8c\x13internal_location_b\x94]\x94\x8c\x13external_location_b\x94au\x8c\x0be2i_mapping\x94}\x94(h\th\x07h\x0ch\nu\x8c\x10current_external\x94h\x0c\x8c\x10current_internal\x94h\n\x8c\x11visited_externals\x94\x8f\x94(h\x0c\x90\x8c\x11visited_internals\x94\x8f\x94(h\n\x90ub."
        self.assertEqual(dump, expected)


    def test_deserialize_filled(self):
        dump = b"\x80\x05\x95,\x01\x00\x00\x00\x00\x00\x00\x8c%game.engine.locations.locations_store\x94\x8c\x0eLocationsStore\x94\x93\x94)\x81\x94}\x94(\x8c\x0bi2e_mapping\x94}\x94(\x8c\x13internal_location_a\x94]\x94\x8c\x13external_location_a\x94a\x8c\x13internal_location_b\x94]\x94\x8c\x13external_location_b\x94au\x8c\x0be2i_mapping\x94}\x94(h\th\x07h\x0ch\nu\x8c\x10current_external\x94h\x0c\x8c\x10current_internal\x94h\n\x8c\x11visited_externals\x94\x8f\x94(h\x0c\x90\x8c\x11visited_internals\x94\x8f\x94(h\n\x90ub."
        store = pickle.loads(dump)

        self.assertIsNotNone(store.i2e_mapping)
        self.assertIsNotNone(store.e2i_mapping)
        self.assertIsNotNone(store.current_external)
        self.assertIsNotNone(store.current_internal)
        self.assertIsNotNone(store.visited_externals)
        self.assertIsNotNone(store.visited_internals)

        self.assertEqual(len(store.i2e_mapping), 2)
        self.assertEqual(list(store.i2e_mapping.keys())[0], self.internal_location_a)
        self.assertEqual(list(store.i2e_mapping.keys())[1], self.internal_location_b)
        self.assertEqual(len(store.i2e_mapping[self.internal_location_a]), 1)
        self.assertEqual(len(store.i2e_mapping[self.internal_location_b]), 1)
        self.assertEqual(store.i2e_mapping[self.internal_location_a][0], self.external_location_a)
        self.assertEqual(store.i2e_mapping[self.internal_location_b][0], self.external_location_b)

        self.assertEqual(len(store.e2i_mapping), 2)
        self.assertEqual(list(store.e2i_mapping.keys())[0], self.external_location_a)
        self.assertEqual(list(store.e2i_mapping.keys())[1], self.external_location_b)
        self.assertEqual(store.e2i_mapping[self.external_location_a], self.internal_location_a)
        self.assertEqual(store.e2i_mapping[self.external_location_b], self.internal_location_b)

        self.assertEqual(store.current_internal, self.internal_location_b)
        self.assertEqual(store.current_external, self.external_location_b)

        self.assertTrue(isinstance(store.visited_internals, set))
        self.assertEqual(len(store.visited_internals), 1)
        self.assertEqual(list(store.visited_internals)[0], self.internal_location_b)
        self.assertTrue(isinstance(store.visited_externals, set))
        self.assertEqual(len(store.visited_externals), 1)
        self.assertEqual(list(store.visited_externals)[0], self.external_location_b)


if __name__ == "__main__":
    unittest.main()
