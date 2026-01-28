import unittest

from game.map.GraphicsMenuItemTests import (GraphicsMenuItemTests)
from game.map.party.get_party import (get_party)
from game.map.party.morte_menu_item import (MorteMenuItem)
from game.map.party.morte1_menu_item import (Morte1MenuItem)
from game.map.party.morte2_menu_item import (Morte2MenuItem)


class GetPartyTests(GraphicsMenuItemTests):
    def test_get_party(self):
        self.assertEqual(len(get_party(self.state_manager, {'x': self.x, 'y': self.y})), 2)
    def test_MorteMenuItem(self):
        self._test_graphics_menu_item(MorteMenuItem(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_in_party_morte(True)
        self._test_graphics_menu_item(MorteMenuItem(self.state_manager, self.x, self.y))
    def test_Morte1MenuItem(self):
        self._test_graphics_menu_item(Morte1MenuItem(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_in_party_morte(True)
        self._test_graphics_menu_item(Morte1MenuItem(self.state_manager, self.x, self.y))
    def test_Morte2MenuItem(self):
        self.state_manager.world_manager.set_mortuary_walkthrough(2)
        self._test_graphics_menu_item(Morte2MenuItem(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_in_party_morte(True)
        self._test_graphics_menu_item(Morte2MenuItem(self.state_manager, self.x, self.y))


if __name__ == '__main__':
    unittest.main() # pragma: no cover
