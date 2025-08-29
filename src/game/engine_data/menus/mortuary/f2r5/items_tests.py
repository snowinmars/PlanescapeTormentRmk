import unittest


from game.engine_data.menus.graphics_menu_item_tests import (GraphicsMenuItemTest)
from game.engine_data.menus.mortuary.f2r5.items import (
    FromMortuaryF2R5ToMortuaryF2R6,
    FromMortuaryF2R5ToMortuaryF2R4,
    InMortuaryF2R5Eivene,
    InMortuaryF2R5Zm257,
    InMortuaryF2R5Zm506,
    InMortuaryF2R5Zm985,
)


class F1R1ItemsTest(GraphicsMenuItemTest):
    def test_FromMortuaryF2R5ToMortuaryF2R6(self):
        self._test_graphics_menu_item(FromMortuaryF2R5ToMortuaryF2R6(self.gsm, self.x, self.y))
    def test_FromMortuaryF2R5ToMortuaryF2R4(self):
        self._test_graphics_menu_item(FromMortuaryF2R5ToMortuaryF2R4(self.gsm, self.x, self.y))
    def test_InMortuaryF2R5Eivene(self):
        self._test_graphics_menu_item(InMortuaryF2R5Eivene(self.gsm, self.x, self.y))
    def test_InMortuaryF2R5Zm257(self):
        self._test_graphics_menu_item(InMortuaryF2R5Zm257(self.gsm, self.x, self.y))
    def test_InMortuaryF2R5Zm506(self):
        self._test_graphics_menu_item(InMortuaryF2R5Zm506(self.gsm, self.x, self.y))
    def test_InMortuaryF2R5Zm985(self):
        self._test_graphics_menu_item(InMortuaryF2R5Zm985(self.gsm, self.x, self.y))
