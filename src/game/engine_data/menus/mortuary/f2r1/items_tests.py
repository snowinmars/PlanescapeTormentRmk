import unittest


from game.engine_data.menus.graphics_menu_item_tests import (GraphicsMenuItemTest)
from game.engine_data.menus.mortuary.f2r1.items import (
    InMortuaryF2R1PickScalpel,
    FromMortuaryF2R1ToMortuaryF2R2,
    FromMortuaryF2R1ToMortuaryF2R8,
    FromMortuaryF2R1ToMortuaryF3R1,
    FromMortuaryF2R1ToMortuaryF1R1,
    InMortuaryF2R1Zm569,
    InMortuaryF2R1Zm825,
    InMortuaryF2R1Zm782,
)


class F1R1ItemsTest(GraphicsMenuItemTest):
    def test_InMortuaryF2R1PickScalpel(self):
        self._test_graphics_menu_item(InMortuaryF2R1PickScalpel(self.state_manager, self.x, self.y))
    def test_FromMortuaryF2R1ToMortuaryF2R2(self):
        self.state_manager.world_manager.set_has_intro_key(True)
        self._test_graphics_menu_item(FromMortuaryF2R1ToMortuaryF2R2(self.state_manager, self.x, self.y))
    def test_FromMortuaryF2R1ToMortuaryF2R8(self):
        self.state_manager.world_manager.set_has_intro_key(True)
        self._test_graphics_menu_item(FromMortuaryF2R1ToMortuaryF2R8(self.state_manager, self.x, self.y))
    def test_FromMortuaryF2R1ToMortuaryF3R1(self):
        self.state_manager.world_manager.set_has_intro_key(True)
        self._test_graphics_menu_item(FromMortuaryF2R1ToMortuaryF3R1(self.state_manager, self.x, self.y))
    def test_FromMortuaryF2R1ToMortuaryF1R1(self):
        self.state_manager.world_manager.set_has_intro_key(True)
        self._test_graphics_menu_item(FromMortuaryF2R1ToMortuaryF1R1(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R1Zm569(self):
        self._test_graphics_menu_item(InMortuaryF2R1Zm569(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R1Zm825(self):
        self._test_graphics_menu_item(InMortuaryF2R1Zm825(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R1Zm782(self):
        self._test_graphics_menu_item(InMortuaryF2R1Zm782(self.state_manager, self.x, self.y))
