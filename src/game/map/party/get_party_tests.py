import unittest

from game.engine_data.menus.graphics_menu_item_tests import (GraphicsMenuItemTest)
from game.engine_data.menus.party.get_party import (get_party)
from game.engine_data.menus.party.morte1_menu_item import (Morte1MenuItem)
from game.engine_data.menus.party.morte2_menu_item import (Morte2MenuItem)


class GetPartyTest(GraphicsMenuItemTest):
    def test_get_party(self):
        self.assertEqual(len(get_party(self.state_manager, self.x, self.y)), 2)
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
