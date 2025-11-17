import unittest


from game.engine.events.events_manager import (EventsManager)
from game.engine.state.state_manager import (StateManager)
from game.engine.inventory.inventory_manager import (InventoryManager)
from game.engine.locations.locations_manager import (LocationsManager)
from game.engine.characters.characters_manager import (CharactersManager)
from game.engine.journal.journal_manager import (JournalManager)

from game.engine.journal.journal_store import (JournalStore)

from game.engine_data.settings.all_settings import (build_all_settings)
from game.engine_data.inventory.all_inventory import (build_all_inventory)
from game.engine_data.locations.all_locations import (build_all_locations)
from game.engine_data.characters.all_characters import (build_all_characters)
from game.engine_data.journal.all_notes import (build_all_notes)


class GraphicsMenuItemTest(unittest.TestCase):
    def setUp(self):
        self.x = 11
        self.y = 13

        self.events_manager = EventsManager()
        self.locations_manager = LocationsManager(self.events_manager)
        self.characters_manager = CharactersManager(self.events_manager)
        self.journal_manager = JournalManager(self.events_manager)
        self.gsm = StateManager(self.events_manager, self.characters_manager, self.locations_manager, self.journal_manager)

        build_all_settings(self.gsm)
        build_all_characters(self.characters_manager)
        build_all_locations(self.locations_manager)
        build_all_notes(self.journal_manager)
        # TODO [snow]: this test was not discovered?


    def _test_graphics_menu_item(self, item):
        self.assertTrue(item.when())
        self.assertTrue(len(item.texture()) > 0)
        self.assertEqual(item.pos()['x'], self.x)
        self.assertEqual(item.pos()['y'], self.y)
        self.assertTrue(len(item.tooltip()) > 0)
        self.assertTrue(len(item.jump()) > 0)
