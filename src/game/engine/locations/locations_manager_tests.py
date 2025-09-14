import unittest

from game.engine.tests import (LogicTest)
from game.engine.events.events_manager import (EventsManager)


class LocationsManagerTest(LogicTest):
    def test_ctor(self):
        self.assertIsNotNone(self.locations_manager)
        self.assertIsNotNone(self.locations_manager._e2i_mapping)
        self.assertIsNotNone(self.locations_manager._i2e_mapping)
        self.assertNotEqual(len(self.locations_manager._e2i_mapping), 0)
        self.assertNotEqual(len(self.locations_manager._i2e_mapping), 0)
        self.assertIsNone(self.locations_manager._current_external)
        self.assertIsNone(self.locations_manager._current_internal)
        self.assertIsNotNone(self.locations_manager._visited_externals)
        self.assertIsNotNone(self.locations_manager._visited_internals)
        self.assertEqual(len(self.locations_manager._visited_externals), 0)
        self.assertEqual(len(self.locations_manager._visited_internals), 0)


    def test_register_when_all_ok(self):
        il_1 = 'i1'
        il_2 = 'i2'
        el_11 = 'i1e1'
        el_12 = 'i1e2'
        el_21 = 'i2e1'
        el_22 = 'i2e2'
        el_23 = 'i2e3'
        i2e_delta = 2
        e2i_delta = 5

        i2e_before = len(self.locations_manager._i2e_mapping)
        e2i_before = len(self.locations_manager._e2i_mapping)

        self.locations_manager.register(il_1, [el_11, el_12])
        self.locations_manager.register(il_2, [el_21, el_22, el_23])

        i2e_after = len(self.locations_manager._i2e_mapping)
        e2i_after = len(self.locations_manager._e2i_mapping)

        self.assertEqual(i2e_before + i2e_delta, i2e_after)
        self.assertEqual(list(self.locations_manager._i2e_mapping.keys())[-2], il_1)
        self.assertEqual(self.locations_manager._i2e_mapping[il_1][-2], el_11)
        self.assertEqual(self.locations_manager._i2e_mapping[il_1][-1], el_12)
        self.assertEqual(list(self.locations_manager._i2e_mapping.keys())[-1], il_2)
        self.assertEqual(self.locations_manager._i2e_mapping[il_2][-3], el_21)
        self.assertEqual(self.locations_manager._i2e_mapping[il_2][-2], el_22)
        self.assertEqual(self.locations_manager._i2e_mapping[il_2][-1], el_23)
        self.assertEqual(e2i_before + e2i_delta, e2i_after)
        self.assertEqual(self.locations_manager._e2i_mapping[el_11], il_1)
        self.assertEqual(self.locations_manager._e2i_mapping[el_12], il_1)
        self.assertEqual(self.locations_manager._e2i_mapping[el_21], il_2)
        self.assertEqual(self.locations_manager._e2i_mapping[el_22], il_2)
        self.assertEqual(self.locations_manager._e2i_mapping[el_23], il_2)

        self.assertIsNone(self.locations_manager._current_external)
        self.assertIsNone(self.locations_manager._current_internal)
        self.assertEqual(len(self.locations_manager._visited_externals), 0)
        self.assertEqual(len(self.locations_manager._visited_internals), 0)


    def test_register_when_internal_already_registrated(self):
        il_1 = 'i1'
        el_11 = 'i1e1'
        el_12 = 'i1e2'
        el_21 = 'i2e1'
        el_22 = 'i2e2'

        self.locations_manager.register(il_1, [el_11, el_12])

        with self.assertRaises(KeyError):
            self.locations_manager.register(il_1, [el_21, el_22])


    def test_register_when_external_already_registrated(self):
        il_1 = 'i1'
        il_2 = 'i2'
        el_11 = 'i1e1'
        el_12 = 'i1e2'

        self.locations_manager.register(il_1, [el_11, el_12])

        with self.assertRaises(ValueError):
            self.locations_manager.register(il_2, [el_11, el_12])


    def test_set_location_when_all_ok(self):
        il_1 = 'i1'
        il_2 = 'i2'
        el_11 = 'i1e1'
        el_12 = 'i1e2'
        el_21 = 'i2e1'
        el_22 = 'i2e2'
        el_23 = 'i2e3'

        self.locations_manager.register(il_1, [el_11, el_12])
        self.locations_manager.register(il_2, [el_21, el_22, el_23])

        self.assertIsNone(self.locations_manager.get_location())
        self.assertIsNone(self.locations_manager.get_current_internal())

        self.locations_manager.set_location(el_11)
        self.assertEqual(self.locations_manager.get_location(), el_11)
        self.assertEqual(self.locations_manager.get_current_internal(), il_1)
        self.assertTrue(self.locations_manager.is_visited(el_11))
        self.assertFalse(self.locations_manager.is_visited(el_12))
        self.assertFalse(self.locations_manager.is_visited(el_21))
        self.assertFalse(self.locations_manager.is_visited(el_22))
        self.assertFalse(self.locations_manager.is_visited(el_23))
        self.assertTrue(self.locations_manager.is_visited_internal(il_1))
        self.assertFalse(self.locations_manager.is_visited_internal(il_2))

        self.locations_manager.set_location(el_12)
        self.assertEqual(self.locations_manager.get_location(), el_12)
        self.assertEqual(self.locations_manager.get_current_internal(), il_1)
        self.assertTrue(self.locations_manager.is_visited(el_11))
        self.assertTrue(self.locations_manager.is_visited(el_12))
        self.assertFalse(self.locations_manager.is_visited(el_21))
        self.assertFalse(self.locations_manager.is_visited(el_22))
        self.assertFalse(self.locations_manager.is_visited(el_23))
        self.assertTrue(self.locations_manager.is_visited_internal(il_1))
        self.assertFalse(self.locations_manager.is_visited_internal(il_2))

        self.locations_manager.set_location(el_21)
        self.assertEqual(self.locations_manager.get_location(), el_21)
        self.assertEqual(self.locations_manager.get_current_internal(), il_2)
        self.assertTrue(self.locations_manager.is_visited(el_11))
        self.assertTrue(self.locations_manager.is_visited(el_12))
        self.assertTrue(self.locations_manager.is_visited(el_21))
        self.assertFalse(self.locations_manager.is_visited(el_22))
        self.assertFalse(self.locations_manager.is_visited(el_23))
        self.assertTrue(self.locations_manager.is_visited_internal(il_1))
        self.assertTrue(self.locations_manager.is_visited_internal(il_2))

        self.locations_manager.set_location(el_22)
        self.assertEqual(self.locations_manager.get_location(), el_22)
        self.assertEqual(self.locations_manager.get_current_internal(), il_2)
        self.assertTrue(self.locations_manager.is_visited(el_11))
        self.assertTrue(self.locations_manager.is_visited(el_12))
        self.assertTrue(self.locations_manager.is_visited(el_21))
        self.assertTrue(self.locations_manager.is_visited(el_22))
        self.assertFalse(self.locations_manager.is_visited(el_23))
        self.assertTrue(self.locations_manager.is_visited_internal(il_1))
        self.assertTrue(self.locations_manager.is_visited_internal(il_2))


        self.locations_manager.set_location(el_23)
        self.assertEqual(self.locations_manager.get_location(), el_23)
        self.assertEqual(self.locations_manager.get_current_internal(), il_2)
        self.assertTrue(self.locations_manager.is_visited(el_11))
        self.assertTrue(self.locations_manager.is_visited(el_12))
        self.assertTrue(self.locations_manager.is_visited(el_21))
        self.assertTrue(self.locations_manager.is_visited(el_22))
        self.assertTrue(self.locations_manager.is_visited(el_23))
        self.assertTrue(self.locations_manager.is_visited_internal(il_1))
        self.assertTrue(self.locations_manager.is_visited_internal(il_2))


    def test_set_location_when_internal_was_not_registrated(self):
        el = 'non existing external'

        with self.assertRaises(KeyError):
            self.locations_manager.set_location(el)



    def test_set_location_when_external_was_not_registrated(self):
        il_1 = 'i1'
        el_11 = 'i1e1'
        el_12 = 'i1e2'

        self.locations_manager.register(il_1, [el_11])

        with self.assertRaises(KeyError):
            self.locations_manager.set_location(el_12)
