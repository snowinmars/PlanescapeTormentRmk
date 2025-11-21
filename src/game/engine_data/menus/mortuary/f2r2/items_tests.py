import unittest


from game.engine_data.menus.graphics_menu_item_tests import (GraphicsMenuItemTest)
from game.engine_data.menus.mortuary.f2r2.items import (
    FromMortuaryF2R2ToMortuaryF2R1,
    FromMortuaryF2R2ToMortuaryF2R3,
    InMortuaryF2R2Zm965,
    InMortuaryF2R2Zf594,
    InMortuaryF2R2Zf626,
)


class F1R1ItemsTest(GraphicsMenuItemTest):
    def test_FromMortuaryF2R2ToMortuaryF2R1(self):
        self._test_graphics_menu_item(FromMortuaryF2R2ToMortuaryF2R1(self.state_manager, self.x, self.y))
    def test_FromMortuaryF2R2ToMortuaryF2R3(self):
        self._test_graphics_menu_item(FromMortuaryF2R2ToMortuaryF2R3(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R2Zm965(self):
        self._test_graphics_menu_item(InMortuaryF2R2Zm965(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R2Zf594(self):
        self._test_graphics_menu_item(InMortuaryF2R2Zf594(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R2Zf626(self):
        self._test_graphics_menu_item(InMortuaryF2R2Zf626(self.state_manager, self.x, self.y))
