import unittest


from game.engine_data.menus.graphics_menu_item_tests import (GraphicsMenuItemTest)
from game.engine_data.menus.mortuary.f2r3.items import (
    FromMortuaryF2R3ToMortuaryF2R4,
    FromMortuaryF2R3ToMortuaryF2R2,
    InMortuaryF2R3Dhall,
    InMortuaryF2R3Zm396,
    InMortuaryF2R3Zm1201,
    InMortuaryF2R3Zf1096,
    InMortuaryF2R3Zf1072,
)


class F1R1ItemsTest(GraphicsMenuItemTest):
    def test_FromMortuaryF2R3ToMortuaryF2R4(self):
        self._test_graphics_menu_item(FromMortuaryF2R3ToMortuaryF2R4(self.gsm, self.x, self.y))
    def test_FromMortuaryF2R3ToMortuaryF2R2(self):
        self._test_graphics_menu_item(FromMortuaryF2R3ToMortuaryF2R2(self.gsm, self.x, self.y))
    def test_InMortuaryF2R3Dhall(self):
        self._test_graphics_menu_item(InMortuaryF2R3Dhall(self.gsm, self.x, self.y))
    def test_InMortuaryF2R3Zm396(self):
        self._test_graphics_menu_item(InMortuaryF2R3Zm396(self.gsm, self.x, self.y))
    def test_InMortuaryF2R3Zm1201(self):
        self._test_graphics_menu_item(InMortuaryF2R3Zm1201(self.gsm, self.x, self.y))
    def test_InMortuaryF2R3Zf1096(self):
        self._test_graphics_menu_item(InMortuaryF2R3Zf1096(self.gsm, self.x, self.y))
    def test_InMortuaryF2R3Zf1072(self):
        self._test_graphics_menu_item(InMortuaryF2R3Zf1072(self.gsm, self.x, self.y))
