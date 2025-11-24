import unittest


from game.engine_data.menus.graphics_menu_item_tests import (GraphicsMenuItemTest)
from game.engine_data.menus.mortuary.f2r3.items import (
    FromMortuaryF2R3ToMortuaryF2R4,
    FromMortuaryF2R3ToMortuaryF2R2,
    InMortuaryF2R3Dhall,
    InMortuaryF2R3Zm396,
    InMortuaryF2R3Zm1201,
    InMortuaryF2R3Zf1096,
    InMortuaryF2R3Zf1072,
)


class F1R1ItemsTest(GraphicsMenuItemTest):
    def test_FromMortuaryF2R3ToMortuaryF2R4(self):
        self._test_graphics_menu_item(FromMortuaryF2R3ToMortuaryF2R4(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r4')
        self._test_graphics_menu_item(FromMortuaryF2R3ToMortuaryF2R4(self.state_manager, self.x, self.y))
    def test_FromMortuaryF2R3ToMortuaryF2R2(self):
        self._test_graphics_menu_item(FromMortuaryF2R3ToMortuaryF2R2(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r2')
        self._test_graphics_menu_item(FromMortuaryF2R3ToMortuaryF2R2(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R3Dhall(self):
        self._test_graphics_menu_item(InMortuaryF2R3Dhall(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_know_dhall_name(True)
        self._test_graphics_menu_item(InMortuaryF2R3Dhall(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_know_dhall_name(False)
        self.state_manager.world_manager.set_talked_to_dhall_times(1)
        self._test_graphics_menu_item(InMortuaryF2R3Dhall(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R3Zm396(self):
        self._test_graphics_menu_item(InMortuaryF2R3Zm396(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zm396_times(1)
        self._test_graphics_menu_item(InMortuaryF2R3Zm396(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R3Zm1201(self):
        self._test_graphics_menu_item(InMortuaryF2R3Zm1201(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zm1201_times(1)
        self._test_graphics_menu_item(InMortuaryF2R3Zm1201(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R3Zf1096(self):
        self._test_graphics_menu_item(InMortuaryF2R3Zf1096(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zf1096_times(1)
        self._test_graphics_menu_item(InMortuaryF2R3Zf1096(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R3Zf1072(self):
        self._test_graphics_menu_item(InMortuaryF2R3Zf1072(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zf1072_times(1)
        self._test_graphics_menu_item(InMortuaryF2R3Zf1072(self.state_manager, self.x, self.y))


if __name__ == '__main__':
    unittest.main() # pragma: no cover
