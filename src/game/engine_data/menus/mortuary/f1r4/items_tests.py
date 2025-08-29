import unittest


from game.engine_data.menus.graphics_menu_item_tests import (GraphicsMenuItemTest)
from game.engine_data.menus.mortuary.f1r4.items import (
    FromMortuaryF1R4ToMortuaryF1R3,
    FromMortuaryF1R4ToMortuaryF1R1,
    FromMortuaryF1R4ToMortuaryF1Rc,
    FromMortuaryF1R4ToMortuaryF2R7,
    InMortuaryF1R4Zm732,
)


class F1R1ItemsTest(GraphicsMenuItemTest):
    def test_FromMortuaryF1R4ToMortuaryF1R3(self):
        self._test_graphics_menu_item(FromMortuaryF1R4ToMortuaryF1R3(self.gsm, self.x, self.y))
    def test_FromMortuaryF1R4ToMortuaryF1R1(self):
        self._test_graphics_menu_item(FromMortuaryF1R4ToMortuaryF1R1(self.gsm, self.x, self.y))
    def test_FromMortuaryF1R4ToMortuaryF1Rc(self):
        self._test_graphics_menu_item(FromMortuaryF1R4ToMortuaryF1Rc(self.gsm, self.x, self.y))
    def test_FromMortuaryF1R4ToMortuaryF2R7(self):
        self._test_graphics_menu_item(FromMortuaryF1R4ToMortuaryF2R7(self.gsm, self.x, self.y))
    def test_InMortuaryF1R4Zm732(self):
        self._test_graphics_menu_item(InMortuaryF1R4Zm732(self.gsm, self.x, self.y))
