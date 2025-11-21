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
        self._test_graphics_menu_item(FromMortuaryF1RcToMortuaryF1R1(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f1r1')
        self._test_graphics_menu_item(FromMortuaryF1RcToMortuaryF1R1(self.state_manager, self.x, self.y))
    def test_FromMortuaryF1RcToMortuaryF1R2(self):
        self._test_graphics_menu_item(FromMortuaryF1RcToMortuaryF1R2(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f1r2')
        self._test_graphics_menu_item(FromMortuaryF1RcToMortuaryF1R2(self.state_manager, self.x, self.y))
    def test_FromMortuaryF1RcToMortuaryF1R3(self):
        self._test_graphics_menu_item(FromMortuaryF1RcToMortuaryF1R3(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f1r3')
        self._test_graphics_menu_item(FromMortuaryF1RcToMortuaryF1R3(self.state_manager, self.x, self.y))
    def test_FromMortuaryF1RcToMortuaryF1R4(self):
        self._test_graphics_menu_item(FromMortuaryF1RcToMortuaryF1R4(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f1r4')
        self._test_graphics_menu_item(FromMortuaryF1RcToMortuaryF1R4(self.state_manager, self.x, self.y))
    def test_InMortuaryF1RcGiantsk(self):
        self._test_graphics_menu_item(InMortuaryF1RcGiantsk(self.state_manager, self.x, self.y))
