import unittest


from game.engine_data.menus.graphics_menu_item_tests import (GraphicsMenuItemTest)
from game.engine_data.menus.mortuary.f2r7.items import (
    FromMortuaryF2R7ToMortuaryF3R3,
    FromMortuaryF2R7ToMortuaryF1R4,
    FromMortuaryF2R7ToMortuaryF2R8,
    FromMortuaryF2R7ToMortuaryF2R6,
    InMortuaryF2R7PickEmbalm,
    InMortuaryF2R7PickCopperEarringClosed,
)


class F1R1ItemsTest(GraphicsMenuItemTest):
    def test_FromMortuaryF2R7ToMortuaryF3R3(self):
        self._test_graphics_menu_item(FromMortuaryF2R7ToMortuaryF3R3(self.gsm, self.x, self.y))
    def test_FromMortuaryF2R7ToMortuaryF1R4(self):
        self._test_graphics_menu_item(FromMortuaryF2R7ToMortuaryF1R4(self.gsm, self.x, self.y))
    def test_FromMortuaryF2R7ToMortuaryF2R8(self):
        self._test_graphics_menu_item(FromMortuaryF2R7ToMortuaryF2R8(self.gsm, self.x, self.y))
    def test_FromMortuaryF2R7ToMortuaryF2R6(self):
        self._test_graphics_menu_item(FromMortuaryF2R7ToMortuaryF2R6(self.gsm, self.x, self.y))
    def test_InMortuaryF2R7PickEmbalm(self):
        self._test_graphics_menu_item(InMortuaryF2R7PickEmbalm(self.gsm, self.x, self.y))
    def test_InMortuaryF2R7PickCopperEarringClosed(self):
        self._test_graphics_menu_item(InMortuaryF2R7PickCopperEarringClosed(self.gsm, self.x, self.y))
