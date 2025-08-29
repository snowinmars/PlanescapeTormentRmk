import unittest


from game.engine_data.menus.graphics_menu_item_tests import (GraphicsMenuItemTest)
from game.engine_data.menus.mortuary.f2r6.items import (
    FromMortuaryF2R6ToMortuaryF2R7,
    FromMortuaryF2R6ToMortuaryF2R5,
    InMortuaryF2R6Vaxis,
)


class F1R1ItemsTest(GraphicsMenuItemTest):
    def test_FromMortuaryF2R6ToMortuaryF2R7(self):
        self._test_graphics_menu_item(FromMortuaryF2R6ToMortuaryF2R7(self.gsm, self.x, self.y))
    def test_FromMortuaryF2R6ToMortuaryF2R5(self):
        self._test_graphics_menu_item(FromMortuaryF2R6ToMortuaryF2R5(self.gsm, self.x, self.y))
    def test_InMortuaryF2R6Vaxis(self):
        self._test_graphics_menu_item(InMortuaryF2R6Vaxis(self.gsm, self.x, self.y))
