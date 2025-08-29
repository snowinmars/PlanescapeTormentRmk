import unittest


from game.engine_data.menus.graphics_menu_item_tests import (GraphicsMenuItemTest)
from game.engine_data.menus.mortuary.f1r1.items import (
    FromMortuaryF1R1ToMortuaryF2R1,
    FromMortuaryF1R1ToMortuaryF1R2,
    FromMortuaryF1R1ToMortuaryF1R4,
    FromMortuaryF1R1ToMortuaryF1Rc,
    FromMortuaryF1R1ToGameEnd,
    InMortuaryF1R1Soego,
)


class F1R1ItemsTest(GraphicsMenuItemTest):
    def test_FromMortuaryF1R1ToMortuaryF2R1(self):
        self._test_graphics_menu_item(FromMortuaryF1R1ToMortuaryF2R1(self.gsm, self.x, self.y))
    def test_FromMortuaryF1R1ToMortuaryF1R2(self):
        self._test_graphics_menu_item(FromMortuaryF1R1ToMortuaryF1R2(self.gsm, self.x, self.y))
    def test_FromMortuaryF1R1ToMortuaryF1R4(self):
        self._test_graphics_menu_item(FromMortuaryF1R1ToMortuaryF1R4(self.gsm, self.x, self.y))
    def test_FromMortuaryF1R1ToMortuaryF1Rc(self):
        self._test_graphics_menu_item(FromMortuaryF1R1ToMortuaryF1Rc(self.gsm, self.x, self.y))
    def test_FromMortuaryF1R1ToGameEnd(self):
        self.gsm.set_gate_open(True)
        self._test_graphics_menu_item(FromMortuaryF1R1ToGameEnd(self.gsm, self.x, self.y))
    def test_InMortuaryF1R1Soego(self):
        self._test_graphics_menu_item(InMortuaryF1R1Soego(self.gsm, self.x, self.y))
