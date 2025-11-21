import unittest


from game.engine_data.menus.graphics_menu_item_tests import (GraphicsMenuItemTest)
from game.engine_data.menus.mortuary.f1r2.items import (
    FromMortuaryF1R2ToMortuaryF1Rc,
    FromMortuaryF1R2ToMortuaryF1R3,
    FromMortuaryF1R2ToMortuaryF1R1,
    InMortuaryF1R2Deionarra,
)


class F1R1ItemsTest(GraphicsMenuItemTest):
    def test_FromMortuaryF1R2ToMortuaryF1Rc(self):
        self._test_graphics_menu_item(FromMortuaryF1R2ToMortuaryF1Rc(self.state_manager, self.x, self.y))
    def test_FromMortuaryF1R2ToMortuaryF1R3(self):
        self._test_graphics_menu_item(FromMortuaryF1R2ToMortuaryF1R3(self.state_manager, self.x, self.y))
    def test_FromMortuaryF1R2ToMortuaryF1R1(self):
        self._test_graphics_menu_item(FromMortuaryF1R2ToMortuaryF1R1(self.state_manager, self.x, self.y))
    def test_InMortuaryF1R2Deionarra(self):
        self._test_graphics_menu_item(InMortuaryF1R2Deionarra(self.state_manager, self.x, self.y))
