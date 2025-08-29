import unittest


from game.engine_data.menus.graphics_menu_item_tests import (GraphicsMenuItemTest)
from game.engine_data.menus.mortuary.f2r8.items import (
    FromMortuaryF2R8ToMortuaryF2R1,
    FromMortuaryF2R8ToMortuaryF2R7,
    InMortuaryF2R8Zf891,
)


class F1R1ItemsTest(GraphicsMenuItemTest):
    def test_FromMortuaryF2R8ToMortuaryF2R1(self):
        self._test_graphics_menu_item(FromMortuaryF2R8ToMortuaryF2R1(self.gsm, self.x, self.y))
    def test_FromMortuaryF2R8ToMortuaryF2R7(self):
        self._test_graphics_menu_item(FromMortuaryF2R8ToMortuaryF2R7(self.gsm, self.x, self.y))
    def test_InMortuaryF2R8Zf891(self):
        self._test_graphics_menu_item(InMortuaryF2R8Zf891(self.gsm, self.x, self.y))
