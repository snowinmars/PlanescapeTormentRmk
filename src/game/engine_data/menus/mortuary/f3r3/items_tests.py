import unittest


from game.engine_data.menus.graphics_menu_item_tests import (GraphicsMenuItemTest)
from game.engine_data.menus.mortuary.f3r3.items import (
    FromMortuaryF3R3ToMortuaryF2R7,
    FromMortuaryF3R3ToMortuaryF3R2,
    FromMortuaryF3R3ToMortuaryF3R4,
    InMortuaryF3R3S748,
    InMortuaryF3R3S996,
    InMortuaryF3R3Zm475,
    InMortuaryF3R3Zm310,
)


class F1R1ItemsTest(GraphicsMenuItemTest):
    def test_FromMortuaryF3R3ToMortuaryF2R7(self):
        self._test_graphics_menu_item(FromMortuaryF3R3ToMortuaryF2R7(self.gsm, self.x, self.y))
    def test_FromMortuaryF3R3ToMortuaryF3R2(self):
        self._test_graphics_menu_item(FromMortuaryF3R3ToMortuaryF3R2(self.gsm, self.x, self.y))
    def test_FromMortuaryF3R3ToMortuaryF3R4(self):
        self._test_graphics_menu_item(FromMortuaryF3R3ToMortuaryF3R4(self.gsm, self.x, self.y))
    def test_InMortuaryF3R3S748(self):
        self._test_graphics_menu_item(InMortuaryF3R3S748(self.gsm, self.x, self.y))
    def test_InMortuaryF3R3S996(self):
        self._test_graphics_menu_item(InMortuaryF3R3S996(self.gsm, self.x, self.y))
    def test_InMortuaryF3R3Zm475(self):
        self._test_graphics_menu_item(InMortuaryF3R3Zm475(self.gsm, self.x, self.y))
    def test_InMortuaryF3R3Zm310(self):
        self._test_graphics_menu_item(InMortuaryF3R3Zm310(self.gsm, self.x, self.y))
