import unittest


from game.engine.log_events.log_events_manager import (LogEventsManager)
from game.engine.state.state_manager import (StateManager)
from game.engine.inventory.inventory_manager import (InventoryManager)
from game.engine.locations.locations_manager import (LocationsManager)
from game.engine.characters.characters_manager import (CharactersManager)
from game.engine.journal.journal_manager import (JournalManager)
from game.engine.narrat.narrat_manager import (NarratManager)
from game.engine.world.world_manager import (WorldManager)
from game.engine.quests.quests_manager import (QuestsManager)

from game.engine.locations.locations_store import (LocationsStore)
from game.engine.journal.journal_store import (JournalStore)
from game.engine.log_events.log_events_store import (LogEventsStore)
from game.engine.characters.characters_store import (CharactersStore)
from game.engine.inventory.inventory_store import (InventoryStore)
from game.engine.narrat.narrat_store import (NarratStore)
from game.engine.world.world_store import (WorldStore)
from game.engine.quests.quests_store import (QuestsStore)

from game.engine_data.settings.all_settings import (build_all_settings)
from game.engine_data.inventory.all_inventory import (build_all_inventory)
from game.engine_data.locations.all_locations import (build_all_locations)
from game.engine_data.characters.build_all_characters import (build_all_characters)
from game.engine_data.journal.build_all_notes import (build_all_notes)
from game.engine_data.quests.build_all_quests import (build_all_quests)


class GraphicsMenuItemTest(unittest.TestCase):
    def setUp(self):
        self.x = 11
        self.y = 13

        self.logger = self.mock_logger(False, './logs')
        self.log_events_manager = LogEventsManager(self.logger)
        self.locations_manager = LocationsManager(self.log_events_manager)
        self.characters_manager = CharactersManager(self.log_events_manager)
        self.journal_manager = JournalManager(self.log_events_manager)
        self.world_manager = WorldManager(self.log_events_manager)
        self.inventory_manager = InventoryManager(self.log_events_manager, lambda x: self.state_manager.get_setting_value(x))
        self.narrat_manager = NarratManager(self.log_events_manager)
        self.quests_manager = QuestsManager(self.log_events_manager)
        self.state_manager = StateManager(
            self.log_events_manager,
            self.world_manager,
            self.characters_manager,
            self.locations_manager,
            self.journal_manager,
            self.inventory_manager,
            self.narrat_manager,
            self.quests_manager
        )

        self.reset_stores()


    def reset_stores(self):
        self.locations_store = LocationsStore()
        self.locations_manager.set_store(self.locations_store)

        self.journal_store = JournalStore()
        self.journal_manager.set_store(self.journal_store)

        self.log_events_store = LogEventsStore()
        self.log_events_manager.set_store(self.log_events_store)

        self.characters_store = CharactersStore()
        self.characters_manager.set_store(self.characters_store)

        self.inventory_store = InventoryStore()
        self.inventory_manager.set_store(self.inventory_store)

        self.narrat_store = NarratStore()
        self.narrat_manager.set_store(self.narrat_store)

        self.world_store = WorldStore()
        self.world_manager.set_store(self.world_store)

        self.quests_store = QuestsStore()
        self.quests_manager.set_store(self.quests_store)

        build_all_locations(self.locations_manager)
        build_all_notes(self.journal_manager)
        build_all_characters(self.characters_manager)
        build_all_inventory(self.inventory_manager)
        build_all_settings(self.state_manager)
        build_all_quests(self.quests_manager)


    def _test_graphics_menu_item(self, item):
        self.assertTrue(item.when())
        self.assertTrue(len(item.texture()) > 0)
        self.assertEqual(item.pos()['x'], self.x)
        self.assertEqual(item.pos()['y'], self.y)
        self.assertTrue(len(item.tooltip()) > 0)
        self.assertIsNotNone(item.jump())
        self.assertIsNotNone(item.jump().execute())


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
