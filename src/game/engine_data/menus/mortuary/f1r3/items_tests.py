import unittest


from game.engine_data.menus.graphics_menu_item_tests import (GraphicsMenuItemTest)
from game.engine_data.menus.mortuary.f1r3.items import (
    FromMortuaryF1R3ToMortuaryF1R2,
    FromMortuaryF1R3ToMortuaryF1R4,
    FromMortuaryF1R3ToMortuaryF1Rc,
    InMortuaryF1R3Zf114,
    InMortuaryF1R3Zm1041,
    InMortuaryF1R3Xach,
)


class F1R1ItemsTest(GraphicsMenuItemTest):
    def test_FromMortuaryF1R3ToMortuaryF1R2(self):
        self._test_graphics_menu_item(FromMortuaryF1R3ToMortuaryF1R2(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f1r2')
        self._test_graphics_menu_item(FromMortuaryF1R3ToMortuaryF1R2(self.state_manager, self.x, self.y))
    def test_FromMortuaryF1R3ToMortuaryF1R4(self):
        self._test_graphics_menu_item(FromMortuaryF1R3ToMortuaryF1R4(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f1r4')
        self._test_graphics_menu_item(FromMortuaryF1R3ToMortuaryF1R4(self.state_manager, self.x, self.y))
    def test_FromMortuaryF1R3ToMortuaryF1Rc(self):
        self._test_graphics_menu_item(FromMortuaryF1R3ToMortuaryF1Rc(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f1rc')
        self._test_graphics_menu_item(FromMortuaryF1R3ToMortuaryF1Rc(self.state_manager, self.x, self.y))
    def test_InMortuaryF1R3Zf114(self):
        self._test_graphics_menu_item(InMortuaryF1R3Zf114(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zf114_times(1)
        self._test_graphics_menu_item(InMortuaryF1R3Zf114(self.state_manager, self.x, self.y))
    def test_InMortuaryF1R3Zm1041(self):
        self._test_graphics_menu_item(InMortuaryF1R3Zm1041(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zm1041_times(1)
        self._test_graphics_menu_item(InMortuaryF1R3Zm1041(self.state_manager, self.x, self.y))
    def test_InMortuaryF1R3Xach(self):
        self._test_graphics_menu_item(InMortuaryF1R3Xach(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_know_xachariah_name(True)
        self._test_graphics_menu_item(InMortuaryF1R3Xach(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_know_xachariah_name(False)
        self.state_manager.world_manager.set_talked_to_xach_times(1)
        self._test_graphics_menu_item(InMortuaryF1R3Xach(self.state_manager, self.x, self.y))


if __name__ == '__main__':
    unittest.main() # pragma: no cover
