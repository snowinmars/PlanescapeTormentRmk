import unittest


from game.engine_data.menus.graphics_menu_item_tests import (GraphicsMenuItemTest)
from game.engine_data.menus.mortuary.f3r2.items import (
    FromMortuaryF3R2ToMortuaryF3R3,
    FromMortuaryF3R2ToMortuaryF3R1,
    InMortuaryF3R2PickGarbage,
    InMortuaryF3R2PickTaskList,
    InMortuaryF3R2PickNeedle,
    InMortuaryF3R2Dust,
)


class F1R1ItemsTest(GraphicsMenuItemTest):
    def test_FromMortuaryF3R2ToMortuaryF3R3(self):
        self._test_graphics_menu_item(FromMortuaryF3R2ToMortuaryF3R3(self.gsm, self.x, self.y))
    def test_FromMortuaryF3R2ToMortuaryF3R1(self):
        self._test_graphics_menu_item(FromMortuaryF3R2ToMortuaryF3R1(self.gsm, self.x, self.y))
    def test_InMortuaryF3R2PickGarbage(self):
        self._test_graphics_menu_item(InMortuaryF3R2PickGarbage(self.gsm, self.x, self.y))
    def test_InMortuaryF3R2PickTaskList(self):
        self._test_graphics_menu_item(InMortuaryF3R2PickTaskList(self.gsm, self.x, self.y))
    def test_InMortuaryF3R2PickNeedle(self):
        self._test_graphics_menu_item(InMortuaryF3R2PickNeedle(self.gsm, self.x, self.y))
    def test_InMortuaryF3R2Dust(self):
        self._test_graphics_menu_item(InMortuaryF3R2Dust(self.gsm, self.x, self.y))
