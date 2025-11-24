import unittest


from game.engine_data.menus.graphics_menu_item_tests import (GraphicsMenuItemTest)
from game.engine_data.menus.mortuary.f2r8.items import (
    FromMortuaryF2R8ToMortuaryF2R1,
    FromMortuaryF2R8ToMortuaryF2R7,
    InMortuaryF2R8Zf891,
)


class F1R1ItemsTest(GraphicsMenuItemTest):
    def test_FromMortuaryF2R8ToMortuaryF2R1(self):
        self._test_graphics_menu_item(FromMortuaryF2R8ToMortuaryF2R1(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r1')
        self._test_graphics_menu_item(FromMortuaryF2R8ToMortuaryF2R1(self.state_manager, self.x, self.y))
    def test_FromMortuaryF2R8ToMortuaryF2R7(self):
        self._test_graphics_menu_item(FromMortuaryF2R8ToMortuaryF2R7(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r7')
        self._test_graphics_menu_item(FromMortuaryF2R8ToMortuaryF2R7(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R8Zf891(self):
        self._test_graphics_menu_item(InMortuaryF2R8Zf891(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zf891_times(1)
        self._test_graphics_menu_item(InMortuaryF2R8Zf891(self.state_manager, self.x, self.y))


if __name__ == '__main__':
    unittest.main() # pragma: no cover
