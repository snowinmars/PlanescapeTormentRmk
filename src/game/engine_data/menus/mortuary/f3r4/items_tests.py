import unittest


from game.engine_data.menus.graphics_menu_item_tests import (GraphicsMenuItemTest)
from game.engine_data.menus.mortuary.f3r4.items import (
    FromMortuaryF3R4ToMortuaryF3R3,
    FromMortuaryF3R4ToMortuaryF3R1,
    InMortuaryF3R4PickPrybar,
    InMortuaryF3R4PickDustmanRequest,
    InMortuaryF3R4PickNeedle,
    InMortuaryF3R4PickGarbage,
    InMortuaryF3R4Dustfem,
    InMortuaryF3R4S42,
    InMortuaryF3R4Zf832,
    InMortuaryF3R4Zm613,
    InMortuaryF3R4Zm79,
    InMortuaryF3R4Zf679,
    InMortuaryF3R4S1221,
)


class F1R1ItemsTest(GraphicsMenuItemTest):
    def test_FromMortuaryF3R4ToMortuaryF3R3(self):
        self._test_graphics_menu_item(FromMortuaryF3R4ToMortuaryF3R3(self.state_manager, self.x, self.y))
    def test_FromMortuaryF3R4ToMortuaryF3R1(self):
        self._test_graphics_menu_item(FromMortuaryF3R4ToMortuaryF3R1(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R4PickPrybar(self):
        self._test_graphics_menu_item(InMortuaryF3R4PickPrybar(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R4PickDustmanRequest(self):
        self._test_graphics_menu_item(InMortuaryF3R4PickDustmanRequest(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R4PickNeedle(self):
        self._test_graphics_menu_item(InMortuaryF3R4PickNeedle(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R4PickGarbage(self):
        self._test_graphics_menu_item(InMortuaryF3R4PickGarbage(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R4Dustfem(self):
        self._test_graphics_menu_item(InMortuaryF3R4Dustfem(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_dustfem_times(1)
        self._test_graphics_menu_item(InMortuaryF3R4Dustfem(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R4S42(self):
        self._test_graphics_menu_item(InMortuaryF3R4S42(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_s42_times(1)
        self._test_graphics_menu_item(InMortuaryF3R4S42(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R4Zf832(self):
        self._test_graphics_menu_item(InMortuaryF3R4Zf832(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zf832_times(1)
        self._test_graphics_menu_item(InMortuaryF3R4Zf832(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R4Zm613(self):
        self._test_graphics_menu_item(InMortuaryF3R4Zm613(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zm613_times(1)
        self._test_graphics_menu_item(InMortuaryF3R4Zm613(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R4Zm79(self):
        self._test_graphics_menu_item(InMortuaryF3R4Zm79(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zm79_times(1)
        self._test_graphics_menu_item(InMortuaryF3R4Zm79(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R4Zf679(self):
        self._test_graphics_menu_item(InMortuaryF3R4Zf679(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zf679_times(1)
        self._test_graphics_menu_item(InMortuaryF3R4Zf679(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R4S1221(self):
        self._test_graphics_menu_item(InMortuaryF3R4S1221(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_s1221_times(1)
        self._test_graphics_menu_item(InMortuaryF3R4S1221(self.state_manager, self.x, self.y))
