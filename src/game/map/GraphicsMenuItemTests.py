import unittest


from game.engine.log_events.LogEventsManager           import (LogEventsManager)
from game.engine.state.StateManager                    import (StateManager)
from game.engine.inventory_items.InventoryItemsManager import (InventoryItemsManager)
from game.engine.locations.LocationsManager            import (LocationsManager)
from game.engine.characters.CharactersManager          import (CharactersManager)
from game.engine.journal_notes.JournalNotesManager     import (JournalNotesManager)
from game.engine.narrat.NarratManager                  import (NarratManager)
from game.engine.world.WorldManager                    import (WorldManager)
from game.engine.quests.QuestsManager                  import (QuestsManager)

from game.engine.locations.LocationsStore            import (LocationsStore)
from game.engine.journal_notes.JournalNotesStore     import (JournalNotesStore)
from game.engine.log_events.LogEventsStore           import (LogEventsStore)
from game.engine.characters.CharactersStore          import (CharactersStore)
from game.engine.inventory_items.InventoryItemsStore import (InventoryItemsStore)
from game.engine.narrat.NarratStore                  import (NarratStore)
from game.engine.world.WorldStore                    import (WorldStore)
from game.engine.quests.QuestsStore                  import (QuestsStore)

from game.engine_data.settings.build_all_settings               import (build_all_settings)
from game.engine_data.inventory_items.build_all_inventory_items import (build_all_inventory_items)
from game.engine_data.locations.build_all_locations             import (build_all_locations)
from game.engine_data.characters.build_all_characters           import (build_all_characters)
from game.engine_data.journal_notes.build_all_journal_notes     import (build_all_journal_notes)
from game.engine_data.quests.build_all_quests                   import (build_all_quests)

from game.map.map_items  import (ContainerItem)


class MapItemTests(unittest.TestCase):
    def setUp(self):
        self.x = 11
        self.y = 13

        self.logger                  = self.mock_logger     (False, './logs')
        self.log_events_manager      = LogEventsManager     (self.logger)
        self.locations_manager       = LocationsManager     (self.log_events_manager)
        self.characters_manager      = CharactersManager    (self.log_events_manager)
        self.journal_notes_manager   = JournalNotesManager  (self.log_events_manager)
        self.world_manager           = WorldManager         (self.log_events_manager)
        self.inventory_items_manager = InventoryItemsManager(self.log_events_manager)
        self.narrat_manager          = NarratManager        (self.log_events_manager)
        self.quests_manager          = QuestsManager        (self.log_events_manager)
        self.state_manager           = StateManager         (
            self.log_events_manager     ,
            self.world_manager          ,
            self.characters_manager     ,
            self.locations_manager      ,
            self.journal_notes_manager  ,
            self.inventory_items_manager,
            self.narrat_manager         ,
            self.quests_manager
        )

        self.reset_stores()


    def reset_stores(self):
        self.      locations_store =      LocationsStore()
        self.  journal_notes_store =   JournalNotesStore()
        self.     log_events_store =      LogEventsStore()
        self.     characters_store =     CharactersStore()
        self.inventory_items_store = InventoryItemsStore()
        self.         narrat_store =         NarratStore()
        self.          world_store =          WorldStore()
        self.         quests_store =         QuestsStore()

        self.      locations_manager.set_store(self.      locations_store)
        self.  journal_notes_manager.set_store(self.  journal_notes_store)
        self.     log_events_manager.set_store(self.     log_events_store)
        self.     characters_manager.set_store(self.     characters_store)
        self.inventory_items_manager.set_store(self.inventory_items_store)
        self.         narrat_manager.set_store(self.         narrat_store)
        self.          world_manager.set_store(self.          world_store)
        self.         quests_manager.set_store(self.         quests_store)

        build_all_locations      (self.locations_manager)
        build_all_journal_notes  (self.journal_notes_manager)
        build_all_characters     (self.characters_manager)
        build_all_inventory_items(self.inventory_items_manager)
        build_all_settings       (self.world_manager)
        build_all_quests         (self.quests_manager)


    def test_container_item(self):
        item_x = 2
        item_y = 3
        item_xs = 5
        item_ys = 7
        item_items = ['item_id_0']

        item = ContainerItem(
            state_manager = self.state_manager,
            x             = item_x            ,
            y             = item_y            ,
            xs            = item_xs           ,
            ys            = item_ys           ,
            items         = item_items
        )

        self.assertIsNotNone(item)
        self.assertIsNotNone(item.state_manager)
        self.assertIsNotNone(item.pos)
        self.assertEqual(item.pos()[0], item_x)
        self.assertEqual(item.pos()[1], item_y)
        self.assertIsNotNone(item.size)
        self.assertEqual(item.size()[0], item_xs)
        self.assertEqual(item.size()[1], item_ys)
        self.assertIsNotNone(item.items)
        self.assertEqual(len(item.items()), len(item_items))

        item_id_1 = 'item_id_1'
        item_id_2 = 'item_id_2'
        items_length_before = len(item.items())

        item.add_item(item_id_1)
        self.assertEqual(items_length_before + 1, len(item.items()))
        item.items()[-1] == item_id_1

        item.add_item(item_id_2, 0)
        self.assertEqual(items_length_before + 2, len(item.items()))
        item.items()[-1] == item_id_1
        item.items()[-2] == item_id_2

        item.remove_item(item_id_2)
        self.assertEqual(items_length_before + 1, len(item.items()))
        item.items()[-1] == item_id_1

        with self.assertRaises(KeyError):
            item.remove_item('wrong_item_id')

        item.clear()
        self.assertEqual(0, len(item.items()))


    def mock_logger(self, emscripten, logs_folder):
        return MockLogger()


class GraphicsMenuItemTests(unittest.TestCase):
    def setUp(self):
        self.x = 11
        self.y = 13

        self.logger                  = self.mock_logger     (False, './logs')
        self.log_events_manager      = LogEventsManager     (self.logger)
        self.locations_manager       = LocationsManager     (self.log_events_manager)
        self.characters_manager      = CharactersManager    (self.log_events_manager)
        self.journal_notes_manager   = JournalNotesManager  (self.log_events_manager)
        self.world_manager           = WorldManager         (self.log_events_manager)
        self.inventory_items_manager = InventoryItemsManager(self.log_events_manager)
        self.narrat_manager          = NarratManager        (self.log_events_manager)
        self.quests_manager          = QuestsManager        (self.log_events_manager)
        self.state_manager           = StateManager         (
            self.log_events_manager     ,
            self.world_manager          ,
            self.characters_manager     ,
            self.locations_manager      ,
            self.journal_notes_manager  ,
            self.inventory_items_manager,
            self.narrat_manager         ,
            self.quests_manager
        )

        self.reset_stores()


    def reset_stores(self):
        self.locations_store       = LocationsStore()
        self.journal_notes_store   = JournalNotesStore()
        self.log_events_store      = LogEventsStore()
        self.characters_store      = CharactersStore()
        self.inventory_items_store = InventoryItemsStore()
        self.narrat_store          = NarratStore()
        self.world_store           = WorldStore()
        self.quests_store          = QuestsStore()

        self.locations_manager      .set_store(self.locations_store)
        self.journal_notes_manager  .set_store(self.journal_notes_store)
        self.log_events_manager     .set_store(self.log_events_store)
        self.characters_manager     .set_store(self.characters_store)
        self.inventory_items_manager.set_store(self.inventory_items_store)
        self.narrat_manager         .set_store(self.narrat_store)
        self.world_manager          .set_store(self.world_store)
        self.quests_manager         .set_store(self.quests_store)

        build_all_locations      (self.locations_manager)
        build_all_journal_notes  (self.journal_notes_manager)
        build_all_characters     (self.characters_manager)
        build_all_inventory_items(self.inventory_items_manager)
        build_all_settings       (self.world_manager)
        build_all_quests         (self.quests_manager)


    def _test_location_map_container(self, item):
        self.assertIsNotNone(item.pos())
        self.assertEqual    (item.pos()[0], self.x)
        self.assertEqual    (item.pos()[1], self.y)
        self.assertIsNotNone(item.size())
        self.assertTrue     (item.size()[0] > 0)
        self.assertTrue     (item.size()[1] > 0)
        self.assertIsNotNone(item.items())
        self.assertIsNotNone(item.empty())
        if item.empty():
            self.assertTrue (len(item.items()) == 0)
        else:
            self.assertTrue (len(item.items()) > 0)
        self.assertIsNotNone(item.add_item)
        self.assertIsNotNone(item.remove_item)
        self.assertIsNotNone(item.clear)
        self.assertTrue     (item.when())
        self.assertIsNotNone(item.texture())
        self.assertTrue     (len(item.texture()) > 0)
        self.assertIsNotNone(item.tooltip())
        self.assertTrue     (len(item.tooltip()) > 0)
        navigation = item.jump()
        self.assertIsNotNone(navigation)

        if navigation.is_jump:
            self.assertIsNotNone(navigation.jump)
            if navigation.before_jump is not None:
                navigation.before_jump()
        if navigation.is_snack:
            self.assertIsNotNone(navigation.snack)
            self.assertIsNotNone(navigation.pickup_items)
            if navigation.on_pickup is not None:
                navigation.on_pickup()


    def _test_location_map_door(self, item):
        self.assertIsNotNone(item.pos())
        self.assertEqual    (item.pos()[0], self.x)
        self.assertEqual    (item.pos()[1], self.y)
        self.assertIsNotNone(item.size())
        self.assertTrue     (item.size()[0] > 0)
        self.assertTrue     (item.size()[1] > 0)
        self.assertTrue     (item.when())
        self.assertIsNotNone(item.texture())
        self.assertTrue     (len(item.texture()) > 0)
        self.assertIsNotNone(item.tooltip())
        self.assertTrue     (len(item.tooltip()) > 0)
        navigation = item.jump()
        self.assertIsNotNone(navigation)

        if navigation.is_jump:
            self.assertIsNotNone(navigation.jump)
            if navigation.before_jump is not None:
                navigation.before_jump()
        if navigation.is_snack:
            self.assertIsNotNone(navigation.snack)
            self.assertIsNotNone(navigation.pickup_items)
            if navigation.on_pickup is not None:
                navigation.on_pickup()


    def _test_location_map_npc(self, item):
        self.assertIsNotNone(item.pos())
        self.assertEqual    (item.pos()[0], self.x)
        self.assertEqual    (item.pos()[1], self.y)
        self.assertIsNotNone(item.size())
        # self.assertTrue(item.size()[0] > 0)
        # self.assertTrue(item.size()[1] > 0)
        self.assertTrue     (item.when())
        self.assertIsNotNone(item.texture())
        self.assertTrue     (len(item.texture()) > 0)
        self.assertIsNotNone(item.tooltip())
        self.assertTrue     (len(item.tooltip()) > 0)
        navigation = item.jump()
        self.assertIsNotNone(navigation)

        if navigation.is_jump:
            self.assertIsNotNone(navigation.jump)
            if navigation.before_jump is not None:
                navigation.before_jump()
        if navigation.is_snack:
            self.assertIsNotNone(navigation.snack)
            self.assertIsNotNone(navigation.pickup_items)
            if navigation.on_pickup is not None:
                navigation.on_pickup()


    def _test_location_map_shadow(self, item):
        self.assertTrue     (item.when_unvisited() or item.when_visited())
        self.assertFalse    (item.when_unvisited() and item.when_visited())
        self.assertEqual    (item.pos()[0], self.x)
        self.assertEqual    (item.pos()[1], self.y)
        self.assertIsNotNone(item.size())
        self.assertTrue     (item.size()[0] > 0)
        self.assertTrue     (item.size()[1] > 0)
        self.assertIsNotNone(item.texture())
        self.assertTrue     (len(item.texture()) > 0)
        self.assertIsNotNone(item.location_id)


    def mock_logger(self, emscripten, logs_folder):
        return MockLogger()


class MockLogger():
    def debug(self, msg):
        return # pragma: no cover
    def info(self, msg):
        return # pragma: no cover
    def warn(self, msg):
        return # pragma: no cover
