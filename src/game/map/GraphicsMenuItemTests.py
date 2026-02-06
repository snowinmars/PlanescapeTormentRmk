import unittest


from game.engine.log_events.LogEventsManager import (LogEventsManager)
from game.engine.state.StateManager import (StateManager)
from game.engine.inventory_items.InventoryItemsManager import (InventoryItemsManager)
from game.engine.locations.LocationsManager import (LocationsManager)
from game.engine.characters.CharactersManager import (CharactersManager)
from game.engine.journal_notes.JournalNotesManager import (JournalNotesManager)
from game.engine.narrat.NarratManager import (NarratManager)
from game.engine.world.WorldManager import (WorldManager)
from game.engine.quests.QuestsManager import (QuestsManager)

from game.engine.locations.LocationsStore import (LocationsStore)
from game.engine.journal_notes.JournalNotesStore import (JournalNotesStore)
from game.engine.log_events.LogEventsStore import (LogEventsStore)
from game.engine.characters.CharactersStore import (CharactersStore)
from game.engine.inventory_items.InventoryItemsStore import (InventoryItemsStore)
from game.engine.narrat.NarratStore import (NarratStore)
from game.engine.world.WorldStore import (WorldStore)
from game.engine.quests.QuestsStore import (QuestsStore)

from game.engine_data.settings.build_all_settings import (build_all_settings)
from game.engine_data.inventory_items.build_all_inventory_items import (build_all_inventory_items)
from game.engine_data.locations.build_all_locations import (build_all_locations)
from game.engine_data.characters.build_all_characters import (build_all_characters)
from game.engine_data.journal_notes.build_all_journal_notes import (build_all_journal_notes)
from game.engine_data.quests.build_all_quests import (build_all_quests)


class GraphicsMenuItemTests(unittest.TestCase):
    def setUp(self):
        self.x = 11
        self.y = 13

        self.logger = self.mock_logger(False, './logs')
        self.log_events_manager = LogEventsManager(self.logger)
        self.locations_manager = LocationsManager(self.log_events_manager)
        self.characters_manager = CharactersManager(self.log_events_manager)
        self.journal_notes_manager = JournalNotesManager(self.log_events_manager)
        self.world_manager = WorldManager(self.log_events_manager)
        self.inventory_items_manager = InventoryItemsManager(self.log_events_manager)
        self.narrat_manager = NarratManager(self.log_events_manager)
        self.quests_manager = QuestsManager(self.log_events_manager)
        self.state_manager = StateManager(
            self.log_events_manager,
            self.world_manager,
            self.characters_manager,
            self.locations_manager,
            self.journal_notes_manager,
            self.inventory_items_manager,
            self.narrat_manager,
            self.quests_manager
        )

        self.reset_stores()


    def reset_stores(self):
        self.locations_store = LocationsStore()
        self.locations_manager.set_store(self.locations_store)

        self.journal_notes_store = JournalNotesStore()
        self.journal_notes_manager.set_store(self.journal_notes_store)

        self.log_events_store = LogEventsStore()
        self.log_events_manager.set_store(self.log_events_store)

        self.characters_store = CharactersStore()
        self.characters_manager.set_store(self.characters_store)

        self.inventory_items_store = InventoryItemsStore()
        self.inventory_items_manager.set_store(self.inventory_items_store)

        self.narrat_store = NarratStore()
        self.narrat_manager.set_store(self.narrat_store)

        self.world_store = WorldStore()
        self.world_manager.set_store(self.world_store)

        self.quests_store = QuestsStore()
        self.quests_manager.set_store(self.quests_store)

        build_all_locations(self.locations_manager)
        build_all_journal_notes(self.journal_notes_manager)
        build_all_characters(self.characters_manager)
        build_all_inventory_items(self.inventory_items_manager)
        build_all_settings(self.world_manager)
        build_all_quests(self.quests_manager)


    def _test_graphics_menu_item(self, item):
        self.assertTrue(item.when())
        self.assertTrue(len(item.texture()) > 0)
        self.assertEqual(item.pos()[0], self.x)
        self.assertEqual(item.pos()[1], self.y)
        self.assertTrue(len(item.tooltip()) > 0)
        navigation = item.jump()
        self.assertIsNotNone(navigation)

        if navigation.is_jump:
            self.assertIsNotNone(navigation.jump)
            if navigation.before_jump is not None:
                navigation.before_jump()
        if navigation.is_snack:
            self.assertIsNotNone(navigation.snack)
            if navigation.snack_texture is not None:
                self.assertTrue(len(navigation.snack_texture) > 0)
            if navigation.snack_on_pickup is not None:
                navigation.snack_on_pickup()


    def _test_graphics_menu_shadow(self, item):
        self.assertTrue(item.when_unvisited() or item.when_visited())
        self.assertTrue(len(item.texture()) > 0)
        self.assertEqual(item.pos()['x'], self.x)
        self.assertEqual(item.pos()['y'], self.y)
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
