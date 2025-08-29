import unittest


from game.engine_data.menus.graphics_menu_item_tests import (GraphicsMenuItemTest)
from game.engine_data.menus.mortuary.f1rc.items import (
    FromMortuaryF1RcToMortuaryF1R1,
    FromMortuaryF1RcToMortuaryF1R2,
    FromMortuaryF1RcToMortuaryF1R3,
    FromMortuaryF1RcToMortuaryF1R4,
    InMortuaryF1RcGiantsk,
)


class F1R1ItemsTest(GraphicsMenuItemTest):
    def test_FromMortuaryF1RcToMortuaryF1R1(self):
        self._test_graphics_menu_item(FromMortuaryF1RcToMortuaryF1R1(self.gsm, self.x, self.y))
    def test_FromMortuaryF1RcToMortuaryF1R2(self):
        self._test_graphics_menu_item(FromMortuaryF1RcToMortuaryF1R2(self.gsm, self.x, self.y))
    def test_FromMortuaryF1RcToMortuaryF1R3(self):
        self._test_graphics_menu_item(FromMortuaryF1RcToMortuaryF1R3(self.gsm, self.x, self.y))
    def test_FromMortuaryF1RcToMortuaryF1R4(self):
        self._test_graphics_menu_item(FromMortuaryF1RcToMortuaryF1R4(self.gsm, self.x, self.y))
    def test_InMortuaryF1RcGiantsk(self):
        self._test_graphics_menu_item(InMortuaryF1RcGiantsk(self.gsm, self.x, self.y))
