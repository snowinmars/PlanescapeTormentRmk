import unittest


from game.engine_data.menus.graphics_menu_item_tests import (GraphicsMenuItemTest)
from game.engine_data.menus.mortuary.f2r4.items import (
    FromMortuaryF2R4ToMortuaryF2R5,
    FromMortuaryF2R4ToMortuaryF2R3,
    InMortuaryF2R4Zm1664,
)


class F1R1ItemsTest(GraphicsMenuItemTest):
    def test_FromMortuaryF2R4ToMortuaryF2R5(self):
        self._test_graphics_menu_item(FromMortuaryF2R4ToMortuaryF2R5(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r5')
        self._test_graphics_menu_item(FromMortuaryF2R4ToMortuaryF2R5(self.state_manager, self.x, self.y))
    def test_FromMortuaryF2R4ToMortuaryF2R3(self):
        self._test_graphics_menu_item(FromMortuaryF2R4ToMortuaryF2R3(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r3')
        self._test_graphics_menu_item(FromMortuaryF2R4ToMortuaryF2R3(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R4Zm1664(self):
        self._test_graphics_menu_item(InMortuaryF2R4Zm1664(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zm1664_times(1)
        self._test_graphics_menu_item(InMortuaryF2R4Zm1664(self.state_manager, self.x, self.y))
