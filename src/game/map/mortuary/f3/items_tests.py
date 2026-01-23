import unittest


from game.map.graphics_menu_item_tests import (GraphicsMenuItemTest)
from game.map.mortuary.f3.items import (
    FromMortuaryF3R1ToMortuaryF2R1,
    FromMortuaryF3R1uToMortuaryF3Rc,
    FromMortuaryF3R1dToMortuaryF3Rc,
    MortuaryF3R1Shadow,

    FromMortuaryF3R2lToMortuaryF3Rc,
    FromMortuaryF3R2rToMortuaryF3Rc,
    MortuaryF3R2Shadow,
    InMortuaryF3R2PickTaskList,

    FromMortuaryF3R3ToMortuaryF2R7,
    FromMortuaryF3R3uToMortuaryF3Rc,
    FromMortuaryF3R3dToMortuaryF3Rc,
    MortuaryF3R3Shadow,

    FromMortuaryF3R4lToMortuaryF3Rc,
    FromMortuaryF3R4rToMortuaryF3Rc,
    MortuaryF3R4Shadow,
    InMortuaryF3R4PickPrybar,
    InMortuaryF3R4PickDustmanRequest,
    InMortuaryF3R4Zm79,
    InMortuaryF3R4Zf679,
    InMortuaryF3R4S1221,

    FromMortuaryF3RcToMortuaryF3R1u,
    FromMortuaryF3RcToMortuaryF3R1d,
    FromMortuaryF3RcToMortuaryF3R3u,
    FromMortuaryF3RcToMortuaryF3R3d,
    FromMortuaryF3RcToMortuaryF3R2l,
    FromMortuaryF3RcToMortuaryF3R2r,
    FromMortuaryF3RcToMortuaryF3R4l,
    FromMortuaryF3RcToMortuaryF3R4r,
    MortuaryF3RcShadow,
    InMortuaryF3RcPickGarbage,
    InMortuaryF3RcPickNeedle,
    InMortuaryF3RcPickMortuaryKey,
    InMortuaryF3RcDust,
    InMortuaryF3RcDustfem,
    InMortuaryF3RcS42,
    InMortuaryF3RcS748,
    InMortuaryF3RcS863,
    InMortuaryF3RcS996,
    InMortuaryF3RcZm310,
    InMortuaryF3RcZm475,
    InMortuaryF3RcZm613,
    InMortuaryF3RcZf832,
    InMortuaryF3RcZm1146,
    InMortuaryF3RcZf1148
)


class F3ItemsTest(GraphicsMenuItemTest):
    def test_FromMortuaryF3R1ToMortuaryF2R1(self):
        self.state_manager.locations_manager.set_location('mortuary_f3r1')
        self._test_graphics_menu_item(FromMortuaryF3R1ToMortuaryF2R1(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r1')
        self.state_manager.locations_manager.set_location('mortuary_f3r1')
        self._test_graphics_menu_item(FromMortuaryF3R1ToMortuaryF2R1(self.state_manager, self.x, self.y))
        self.state_manager.inventory_manager.pick_item('has_mortuary_key')
        self._test_graphics_menu_item(FromMortuaryF3R1ToMortuaryF2R1(self.state_manager, self.x, self.y))
    def test_FromMortuaryF3R1uToMortuaryF3Rc(self):
        self.state_manager.locations_manager.set_location('mortuary_f3r1')
        self._test_graphics_menu_item(FromMortuaryF3R1uToMortuaryF3Rc(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self.state_manager.locations_manager.set_location('mortuary_f3r1')
        self._test_graphics_menu_item(FromMortuaryF3R1uToMortuaryF3Rc(self.state_manager, self.x, self.y))
    def test_FromMortuaryF3R1dToMortuaryF3Rc(self):
        self.state_manager.locations_manager.set_location('mortuary_f3r1')
        self._test_graphics_menu_item(FromMortuaryF3R1dToMortuaryF3Rc(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self.state_manager.locations_manager.set_location('mortuary_f3r1')
        self._test_graphics_menu_item(FromMortuaryF3R1dToMortuaryF3Rc(self.state_manager, self.x, self.y))
    def test_MortuaryF3R1Shadow(self):
        self.state_manager.locations_manager.set_location('mortuary_f3r2')
        self._test_graphics_menu_shadow(MortuaryF3R1Shadow(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f3r1')
        self.state_manager.locations_manager.set_location('mortuary_f3r2')
        self._test_graphics_menu_shadow(MortuaryF3R1Shadow(self.state_manager, self.x, self.y))


    ###


    def test_FromMortuaryF3R2lToMortuaryF3Rc(self):
        self.state_manager.locations_manager.set_location('mortuary_f3r2')
        self._test_graphics_menu_item(FromMortuaryF3R2lToMortuaryF3Rc(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self.state_manager.locations_manager.set_location('mortuary_f3r2')
        self._test_graphics_menu_item(FromMortuaryF3R2lToMortuaryF3Rc(self.state_manager, self.x, self.y))
    def test_FromMortuaryF3R2rToMortuaryF3Rc(self):
        self.state_manager.locations_manager.set_location('mortuary_f3r2')
        self._test_graphics_menu_item(FromMortuaryF3R2rToMortuaryF3Rc(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self.state_manager.locations_manager.set_location('mortuary_f3r2')
        self._test_graphics_menu_item(FromMortuaryF3R2rToMortuaryF3Rc(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R2PickTaskList(self):
        self.state_manager.locations_manager.set_location('mortuary_f3r2')
        self._test_graphics_menu_item(InMortuaryF3R2PickTaskList(self.state_manager, self.x, self.y))
    def test_MortuaryF3R2Shadow(self):
        self.state_manager.locations_manager.set_location('mortuary_f3r3')
        self._test_graphics_menu_shadow(MortuaryF3R2Shadow(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f3r2')
        self.state_manager.locations_manager.set_location('mortuary_f3r3')
        self._test_graphics_menu_shadow(MortuaryF3R2Shadow(self.state_manager, self.x, self.y))


    ###


    def test_FromMortuaryF3R3ToMortuaryF2R7(self):
        self.state_manager.locations_manager.set_location('mortuary_f3r3')
        self._test_graphics_menu_item(FromMortuaryF3R3ToMortuaryF2R7(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r7')
        self.state_manager.locations_manager.set_location('mortuary_f3r3')
        self._test_graphics_menu_item(FromMortuaryF3R3ToMortuaryF2R7(self.state_manager, self.x, self.y))
    def test_FromMortuaryF3R3uToMortuaryF3Rc(self):
        self.state_manager.locations_manager.set_location('mortuary_f3r3')
        self._test_graphics_menu_item(FromMortuaryF3R3uToMortuaryF3Rc(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self.state_manager.locations_manager.set_location('mortuary_f3r3')
        self._test_graphics_menu_item(FromMortuaryF3R3uToMortuaryF3Rc(self.state_manager, self.x, self.y))
    def test_FromMortuaryF3R3dToMortuaryF3Rc(self):
        self.state_manager.locations_manager.set_location('mortuary_f3r3')
        self._test_graphics_menu_item(FromMortuaryF3R3dToMortuaryF3Rc(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self.state_manager.locations_manager.set_location('mortuary_f3r3')
        self._test_graphics_menu_item(FromMortuaryF3R3dToMortuaryF3Rc(self.state_manager, self.x, self.y))
    def test_MortuaryF3R3Shadow(self):
        self.state_manager.locations_manager.set_location('mortuary_f3r4')
        self._test_graphics_menu_shadow(MortuaryF3R3Shadow(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f3r3')
        self.state_manager.locations_manager.set_location('mortuary_f3r4')
        self._test_graphics_menu_shadow(MortuaryF3R3Shadow(self.state_manager, self.x, self.y))


    ###


    def test_FromMortuaryF3R4lToMortuaryF3Rc(self):
        self.state_manager.locations_manager.set_location('mortuary_f3r4')
        self._test_graphics_menu_item(FromMortuaryF3R4lToMortuaryF3Rc(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self.state_manager.locations_manager.set_location('mortuary_f3r4')
        self._test_graphics_menu_item(FromMortuaryF3R4lToMortuaryF3Rc(self.state_manager, self.x, self.y))
    def test_FromMortuaryF3R4rToMortuaryF3Rc(self):
        self.state_manager.locations_manager.set_location('mortuary_f3r4')
        self._test_graphics_menu_item(FromMortuaryF3R4rToMortuaryF3Rc(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self.state_manager.locations_manager.set_location('mortuary_f3r4')
        self._test_graphics_menu_item(FromMortuaryF3R4rToMortuaryF3Rc(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R4PickPrybar(self):
        self.state_manager.locations_manager.set_location('mortuary_f3r4')
        self._test_graphics_menu_item(InMortuaryF3R4PickPrybar(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R4PickDustmanRequest(self):
        self.state_manager.locations_manager.set_location('mortuary_f3r4')
        self._test_graphics_menu_item(InMortuaryF3R4PickDustmanRequest(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R4Zm79(self):
        self.state_manager.locations_manager.set_location('mortuary_f3r4')
        self._test_graphics_menu_item(InMortuaryF3R4Zm79(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zm79_times(1)
        self._test_graphics_menu_item(InMortuaryF3R4Zm79(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R4Zf679(self):
        self.state_manager.locations_manager.set_location('mortuary_f3r4')
        self._test_graphics_menu_item(InMortuaryF3R4Zf679(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zf679_times(1)
        self._test_graphics_menu_item(InMortuaryF3R4Zf679(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R4S1221(self):
        self.state_manager.locations_manager.set_location('mortuary_f3r4')
        self._test_graphics_menu_item(InMortuaryF3R4S1221(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_s1221_times(1)
        self._test_graphics_menu_item(InMortuaryF3R4S1221(self.state_manager, self.x, self.y))
    def test_MortuaryF3R4Shadow(self):
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_shadow(MortuaryF3R4Shadow(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f3r4')
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_shadow(MortuaryF3R4Shadow(self.state_manager, self.x, self.y))


    ###


    def test_FromMortuaryF3RcToMortuaryF3R1u(self):
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_item(FromMortuaryF3RcToMortuaryF3R1u(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f3r1')
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_item(FromMortuaryF3RcToMortuaryF3R1u(self.state_manager, self.x, self.y))
        self.state_manager.inventory_manager.pick_item('has_mortuary_key')
        self._test_graphics_menu_item(FromMortuaryF3RcToMortuaryF3R1u(self.state_manager, self.x, self.y))
    def test_FromMortuaryF3RcToMortuaryF3R1d(self):
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_item(FromMortuaryF3RcToMortuaryF3R1d(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f3r1')
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_item(FromMortuaryF3RcToMortuaryF3R1d(self.state_manager, self.x, self.y))
        self.state_manager.inventory_manager.pick_item('has_mortuary_key')
        self._test_graphics_menu_item(FromMortuaryF3RcToMortuaryF3R1d(self.state_manager, self.x, self.y))
    def test_FromMortuaryF3RcToMortuaryF3R3u(self):
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_item(FromMortuaryF3RcToMortuaryF3R3u(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f3r3')
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_item(FromMortuaryF3RcToMortuaryF3R3u(self.state_manager, self.x, self.y))
    def test_FromMortuaryF3RcToMortuaryF3R3d(self):
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_item(FromMortuaryF3RcToMortuaryF3R3d(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f3r1')
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_item(FromMortuaryF3RcToMortuaryF3R3d(self.state_manager, self.x, self.y))
    def test_FromMortuaryF3RcToMortuaryF3R2l(self):
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_item(FromMortuaryF3RcToMortuaryF3R2l(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f3r2')
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_item(FromMortuaryF3RcToMortuaryF3R2l(self.state_manager, self.x, self.y))
    def test_FromMortuaryF3RcToMortuaryF3R2r(self):
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_item(FromMortuaryF3RcToMortuaryF3R2r(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f3r2')
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_item(FromMortuaryF3RcToMortuaryF3R2r(self.state_manager, self.x, self.y))
    def test_FromMortuaryF3RcToMortuaryF3R4l(self):
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_item(FromMortuaryF3RcToMortuaryF3R4l(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f3r4')
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_item(FromMortuaryF3RcToMortuaryF3R4l(self.state_manager, self.x, self.y))
    def test_FromMortuaryF3RcToMortuaryF3R4r(self):
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_item(FromMortuaryF3RcToMortuaryF3R4r(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f3r4')
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_item(FromMortuaryF3RcToMortuaryF3R4r(self.state_manager, self.x, self.y))
    def test_InMortuaryF3RcPickGarbage(self):
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_item(InMortuaryF3RcPickGarbage(self.state_manager, self.x, self.y))
    def test_InMortuaryF3RcPickNeedle(self):
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_item(InMortuaryF3RcPickNeedle(self.state_manager, self.x, self.y))
    def test_InMortuaryF3RcPickMortuaryKey(self):
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_item(InMortuaryF3RcPickMortuaryKey(self.state_manager, self.x, self.y))
    def test_InMortuaryF3RcDust(self):
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_item(InMortuaryF3RcDust(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_dust_times(1)
        self._test_graphics_menu_item(InMortuaryF3RcDust(self.state_manager, self.x, self.y))
    def test_InMortuaryF3RcDustfem(self):
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_item(InMortuaryF3RcDustfem(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_dustfem_times(1)
        self._test_graphics_menu_item(InMortuaryF3RcDustfem(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R4S42(self):
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_item(InMortuaryF3RcS42(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_s42_times(1)
        self._test_graphics_menu_item(InMortuaryF3RcS42(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R3S748(self):
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_item(InMortuaryF3RcS748(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_s748_times(1)
        self._test_graphics_menu_item(InMortuaryF3RcS748(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R1S863(self):
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_item(InMortuaryF3RcS863(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_s863_times(1)
        self._test_graphics_menu_item(InMortuaryF3RcS863(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R3S996(self):
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_item(InMortuaryF3RcS996(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_s996_times(1)
        self._test_graphics_menu_item(InMortuaryF3RcS996(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R3Zm310(self):
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_item(InMortuaryF3RcZm310(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zm310_times(1)
        self._test_graphics_menu_item(InMortuaryF3RcZm310(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R3Zm475(self):
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_item(InMortuaryF3RcZm475(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zm475_times(1)
        self._test_graphics_menu_item(InMortuaryF3RcZm475(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R4Zm613(self):
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_item(InMortuaryF3RcZm613(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zm613_times(1)
        self._test_graphics_menu_item(InMortuaryF3RcZm613(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R4Zf832(self):
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_item(InMortuaryF3RcZf832(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zf832_times(1)
        self._test_graphics_menu_item(InMortuaryF3RcZf832(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R1Zm1146(self):
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_item(InMortuaryF3RcZm1146(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zm1146_times(1)
        self._test_graphics_menu_item(InMortuaryF3RcZm1146(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R1Zf1148(self):
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self._test_graphics_menu_item(InMortuaryF3RcZf1148(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zf1148_times(1)
        self._test_graphics_menu_item(InMortuaryF3RcZf1148(self.state_manager, self.x, self.y))
    def test_MortuaryF3RcShadow(self):
        self.state_manager.locations_manager.set_location('mortuary_f3r1')
        self._test_graphics_menu_shadow(MortuaryF3RcShadow(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f3rc')
        self.state_manager.locations_manager.set_location('mortuary_f3r1')
        self._test_graphics_menu_shadow(MortuaryF3RcShadow(self.state_manager, self.x, self.y))


if __name__ == '__main__':
    unittest.main() # pragma: no cover
