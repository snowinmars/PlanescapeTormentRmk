import unittest


from game.engine.event_manager import (EventManager)
from game.engine.settings_manager import (SettingsManager)
from game.engine.inventory_manager import (InventoryManager)
from game.engine.location_manager import (LocationManager)
from game.engine.character_manager import (CharacterManager)
from game.engine.journal_manager import (JournalManager)

from game.engine_data.settings.all_settings import (build_all_settings)
from game.engine_data.inventory.all_inventory import (build_all_inventory)
from game.engine_data.locations.all_locations import (build_all_locations)
from game.engine_data.characters.all_characters import (build_all_characters)
from game.engine_data.journal.all_notes import (build_all_notes)


class GraphicsMenuItemTest(unittest.TestCase):
    def setUp(self):
        self.x = 11
        self.y = 13

        self.event_manager = EventManager()
        self.location_manager = LocationManager(self.event_manager)
        self.character_manager = CharacterManager(self.event_manager)
        self.journal_manager = JournalManager(self.event_manager)
        self.gsm = SettingsManager(self.event_manager, self.character_manager, self.location_manager, self.journal_manager)

        build_all_settings(self.gsm)
        build_all_characters(self.character_manager)
        build_all_locations(self.location_manager)
        build_all_notes(self.journal_manager)


    def _test_graphics_menu_item(self, item):
        self.assertTrue(item.when())
        self.assertTrue(len(item.texture()) > 0)
        self.assertEqual(item.pos()['x'], self.x)
        self.assertEqual(item.pos()['y'], self.y)
        self.assertTrue(len(item.tooltip()) > 0)
        self.assertTrue(len(item.jump()) > 0)
