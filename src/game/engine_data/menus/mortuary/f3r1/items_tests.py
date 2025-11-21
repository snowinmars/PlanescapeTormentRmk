import unittest


from game.engine_data.menus.graphics_menu_item_tests import (GraphicsMenuItemTest)
from game.engine_data.menus.mortuary.f3r1.items import (
    FromMortuaryF3R1ToMortuaryF2R1,
    FromMortuaryF3R1ToMortuaryF3R2,
    FromMortuaryF3R1ToMortuaryF3R4,
    InMortuaryF3R1PickMortuaryKey,
    InMortuaryF3R1S863,
    InMortuaryF3R1Zm1146,
    InMortuaryF3R1Zf1148,
)


class F1R1ItemsTest(GraphicsMenuItemTest):
    def test_FromMortuaryF3R1ToMortuaryF2R1(self):
        self._test_graphics_menu_item(FromMortuaryF3R1ToMortuaryF2R1(self.state_manager, self.x, self.y))
    def test_FromMortuaryF3R1ToMortuaryF3R2(self):
        self._test_graphics_menu_item(FromMortuaryF3R1ToMortuaryF3R2(self.state_manager, self.x, self.y))
    def test_FromMortuaryF3R1ToMortuaryF3R4(self):
        self._test_graphics_menu_item(FromMortuaryF3R1ToMortuaryF3R4(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R1PickMortuaryKey(self):
        self._test_graphics_menu_item(InMortuaryF3R1PickMortuaryKey(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R1S863(self):
        self._test_graphics_menu_item(InMortuaryF3R1S863(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R1Zm1146(self):
        self._test_graphics_menu_item(InMortuaryF3R1Zm1146(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R1Zf1148(self):
        self._test_graphics_menu_item(InMortuaryF3R1Zf1148(self.state_manager, self.x, self.y))
