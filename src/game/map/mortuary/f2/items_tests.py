import unittest


from game.map.graphics_menu_item_tests import (GraphicsMenuItemTest)
from game.map.mortuary.f2.items import (
    InMortuaryF2R1PickScalpel,
    FromMortuaryF2R1ToMortuaryF2R2,
    FromMortuaryF2R1ToMortuaryF2R8,
    FromMortuaryF2R1ToMortuaryF3R1,
    FromMortuaryF2R1ToMortuaryF1R1,
    InMortuaryF2R1Zm569,
    InMortuaryF2R1Zm825,
    InMortuaryF2R1Zm782,
    MortuaryF2R1Shadow,

    FromMortuaryF2R2ToMortuaryF2R1,
    FromMortuaryF2R2ToMortuaryF2R3,
    InMortuaryF2R2Zm965,
    InMortuaryF2R2Zf594,
    InMortuaryF2R2Zf626,
    MortuaryF2R2Shadow,

    FromMortuaryF2R3ToMortuaryF2R2,
    FromMortuaryF2R3ToMortuaryF2R4,
    InMortuaryF2R3Dhall,
    InMortuaryF2R3Zm396,
    InMortuaryF2R3Zm1201,
    InMortuaryF2R3Zf1096,
    InMortuaryF2R3Zf1072,
    MortuaryF2R3Shadow,

    FromMortuaryF2R4ToMortuaryF2R3,
    FromMortuaryF2R4ToMortuaryF2R5,
    InMortuaryF2R4Zm1664,
    MortuaryF2R4Shadow,

    FromMortuaryF2R5ToMortuaryF2R4,
    FromMortuaryF2R5ToMortuaryF2R6,
    InMortuaryF2R5Eivene,
    InMortuaryF2R5Zm257,
    InMortuaryF2R5Zm506,
    InMortuaryF2R5Zm985,
    MortuaryF2R5Shadow,

    FromMortuaryF2R6ToMortuaryF2R5,
    FromMortuaryF2R6ToMortuaryF2R7,
    InMortuaryF2R6Vaxis,
    MortuaryF2R6Shadow,

    FromMortuaryF2R7ToMortuaryF2R6,
    FromMortuaryF2R7ToMortuaryF2R8,
    FromMortuaryF2R7ToMortuaryF3R3,
    FromMortuaryF2R7ToMortuaryF1R4,
    InMortuaryF2R7PickEmbalm,
    InMortuaryF2R7PickCopperEarringClosed,
    MortuaryF2R7Shadow,

    FromMortuaryF2R8ToMortuaryF2R7,
    FromMortuaryF2R8ToMortuaryF2R1,
    InMortuaryF2R8Zf891,
    MortuaryF2R8Shadow
)


class F2ItemsTest(GraphicsMenuItemTest):
    def test_InMortuaryF2R1PickScalpel(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r1')
        self._test_graphics_menu_item(InMortuaryF2R1PickScalpel(self.state_manager, self.x, self.y))
    def test_FromMortuaryF2R1ToMortuaryF2R2(self):
        self.state_manager.inventory_manager.pick_item('has_intro_key')
        self.state_manager.locations_manager.set_location('mortuary_f2r1')
        self._test_graphics_menu_item(FromMortuaryF2R1ToMortuaryF2R2(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r2')
        self.state_manager.locations_manager.set_location('mortuary_f2r1')
        self._test_graphics_menu_item(FromMortuaryF2R1ToMortuaryF2R2(self.state_manager, self.x, self.y))
    def test_FromMortuaryF2R1ToMortuaryF2R8(self):
        self.state_manager.inventory_manager.pick_item('has_intro_key')
        self.state_manager.locations_manager.set_location('mortuary_f2r1')
        self._test_graphics_menu_item(FromMortuaryF2R1ToMortuaryF2R8(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r8')
        self.state_manager.locations_manager.set_location('mortuary_f2r1')
        self._test_graphics_menu_item(FromMortuaryF2R1ToMortuaryF2R8(self.state_manager, self.x, self.y))
    def test_FromMortuaryF2R1ToMortuaryF3R1(self):
        self.state_manager.inventory_manager.pick_item('has_intro_key')
        self.state_manager.locations_manager.set_location('mortuary_f2r1')
        self._test_graphics_menu_item(FromMortuaryF2R1ToMortuaryF3R1(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f3r3')
        self.state_manager.locations_manager.set_location('mortuary_f2r1')
        self._test_graphics_menu_item(FromMortuaryF2R1ToMortuaryF3R1(self.state_manager, self.x, self.y))
    def test_FromMortuaryF2R1ToMortuaryF1R1(self):
        self.state_manager.inventory_manager.pick_item('has_intro_key')
        self.state_manager.locations_manager.set_location('mortuary_f2r1')
        self._test_graphics_menu_item(FromMortuaryF2R1ToMortuaryF1R1(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f1r4')
        self.state_manager.locations_manager.set_location('mortuary_f2r1')
        self._test_graphics_menu_item(FromMortuaryF2R1ToMortuaryF1R1(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R1Zm569(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r1')
        self._test_graphics_menu_item(InMortuaryF2R1Zm569(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zm569_times(1)
        self._test_graphics_menu_item(InMortuaryF2R1Zm569(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R1Zm825(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r1')
        self._test_graphics_menu_item(InMortuaryF2R1Zm825(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zm825_times(1)
        self._test_graphics_menu_item(InMortuaryF2R1Zm825(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R1Zm782(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r1')
        self._test_graphics_menu_item(InMortuaryF2R1Zm782(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zm782_times(1)
        self._test_graphics_menu_item(InMortuaryF2R1Zm782(self.state_manager, self.x, self.y))
    def test_MortuaryF2R1Shadow(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r2')
        self._test_graphics_menu_shadow(MortuaryF2R1Shadow(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r1')
        self.state_manager.locations_manager.set_location('mortuary_f2r2')
        self._test_graphics_menu_shadow(MortuaryF2R1Shadow(self.state_manager, self.x, self.y))


    ###


    def test_FromMortuaryF2R2ToMortuaryF2R1(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r2')
        self._test_graphics_menu_item(FromMortuaryF2R2ToMortuaryF2R1(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r1')
        self.state_manager.locations_manager.set_location('mortuary_f2r2')
        self._test_graphics_menu_item(FromMortuaryF2R2ToMortuaryF2R1(self.state_manager, self.x, self.y))
    def test_FromMortuaryF2R2ToMortuaryF2R3(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r2')
        self._test_graphics_menu_item(FromMortuaryF2R2ToMortuaryF2R3(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r3')
        self.state_manager.locations_manager.set_location('mortuary_f2r2')
        self._test_graphics_menu_item(FromMortuaryF2R2ToMortuaryF2R3(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R2Zm965(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r2')
        self._test_graphics_menu_item(InMortuaryF2R2Zm965(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zm965_times(1)
        self._test_graphics_menu_item(InMortuaryF2R2Zm965(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R2Zf594(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r2')
        self._test_graphics_menu_item(InMortuaryF2R2Zf594(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zf594_times(1)
        self._test_graphics_menu_item(InMortuaryF2R2Zf594(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R2Zf626(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r2')
        self._test_graphics_menu_item(InMortuaryF2R2Zf626(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zf626_times(1)
        self._test_graphics_menu_item(InMortuaryF2R2Zf626(self.state_manager, self.x, self.y))
    def test_MortuaryF2R2Shadow(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r3')
        self._test_graphics_menu_shadow(MortuaryF2R2Shadow(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r2')
        self.state_manager.locations_manager.set_location('mortuary_f2r3')
        self._test_graphics_menu_shadow(MortuaryF2R2Shadow(self.state_manager, self.x, self.y))


    ###


    def test_FromMortuaryF2R3ToMortuaryF2R4(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r3')
        self._test_graphics_menu_item(FromMortuaryF2R3ToMortuaryF2R4(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r4')
        self.state_manager.locations_manager.set_location('mortuary_f2r3')
        self._test_graphics_menu_item(FromMortuaryF2R3ToMortuaryF2R4(self.state_manager, self.x, self.y))
    def test_FromMortuaryF2R3ToMortuaryF2R2(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r3')
        self._test_graphics_menu_item(FromMortuaryF2R3ToMortuaryF2R2(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r2')
        self.state_manager.locations_manager.set_location('mortuary_f2r3')
        self._test_graphics_menu_item(FromMortuaryF2R3ToMortuaryF2R2(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R3Dhall(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r3')
        self._test_graphics_menu_item(InMortuaryF2R3Dhall(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_know_dhall_name(True)
        self._test_graphics_menu_item(InMortuaryF2R3Dhall(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_know_dhall_name(False)
        self.state_manager.world_manager.set_talked_to_dhall_times(1)
        self._test_graphics_menu_item(InMortuaryF2R3Dhall(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R3Zm396(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r3')
        self._test_graphics_menu_item(InMortuaryF2R3Zm396(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zm396_times(1)
        self._test_graphics_menu_item(InMortuaryF2R3Zm396(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R3Zm1201(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r3')
        self._test_graphics_menu_item(InMortuaryF2R3Zm1201(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zm1201_times(1)
        self._test_graphics_menu_item(InMortuaryF2R3Zm1201(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R3Zf1096(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r3')
        self._test_graphics_menu_item(InMortuaryF2R3Zf1096(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zf1096_times(1)
        self._test_graphics_menu_item(InMortuaryF2R3Zf1096(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R3Zf1072(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r3')
        self._test_graphics_menu_item(InMortuaryF2R3Zf1072(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zf1072_times(1)
        self._test_graphics_menu_item(InMortuaryF2R3Zf1072(self.state_manager, self.x, self.y))
    def test_MortuaryF2R3Shadow(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r4')
        self._test_graphics_menu_shadow(MortuaryF2R3Shadow(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r3')
        self.state_manager.locations_manager.set_location('mortuary_f2r4')
        self._test_graphics_menu_shadow(MortuaryF2R3Shadow(self.state_manager, self.x, self.y))


    ###


    def test_FromMortuaryF2R4ToMortuaryF2R5(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r4')
        self._test_graphics_menu_item(FromMortuaryF2R4ToMortuaryF2R5(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r5')
        self.state_manager.locations_manager.set_location('mortuary_f2r4')
        self._test_graphics_menu_item(FromMortuaryF2R4ToMortuaryF2R5(self.state_manager, self.x, self.y))
    def test_FromMortuaryF2R4ToMortuaryF2R3(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r4')
        self._test_graphics_menu_item(FromMortuaryF2R4ToMortuaryF2R3(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r3')
        self.state_manager.locations_manager.set_location('mortuary_f2r4')
        self._test_graphics_menu_item(FromMortuaryF2R4ToMortuaryF2R3(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R4Zm1664(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r4')
        self._test_graphics_menu_item(InMortuaryF2R4Zm1664(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zm1664_times(1)
        self._test_graphics_menu_item(InMortuaryF2R4Zm1664(self.state_manager, self.x, self.y))
    def test_MortuaryF2R4Shadow(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r5')
        self._test_graphics_menu_shadow(MortuaryF2R4Shadow(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r4')
        self.state_manager.locations_manager.set_location('mortuary_f2r5')
        self._test_graphics_menu_shadow(MortuaryF2R4Shadow(self.state_manager, self.x, self.y))


    ###


    def test_FromMortuaryF2R5ToMortuaryF2R6(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r5')
        self._test_graphics_menu_item(FromMortuaryF2R5ToMortuaryF2R6(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r6')
        self.state_manager.locations_manager.set_location('mortuary_f2r5')
        self._test_graphics_menu_item(FromMortuaryF2R5ToMortuaryF2R6(self.state_manager, self.x, self.y))
    def test_FromMortuaryF2R5ToMortuaryF2R4(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r5')
        self._test_graphics_menu_item(FromMortuaryF2R5ToMortuaryF2R4(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r4')
        self.state_manager.locations_manager.set_location('mortuary_f2r5')
        self._test_graphics_menu_item(FromMortuaryF2R5ToMortuaryF2R4(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R5Eivene(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r5')
        self._test_graphics_menu_item(InMortuaryF2R5Eivene(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_know_eivene_name(True)
        self._test_graphics_menu_item(InMortuaryF2R5Eivene(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R5Zm257(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r5')
        self._test_graphics_menu_item(InMortuaryF2R5Zm257(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zm257_times(1)
        self._test_graphics_menu_item(InMortuaryF2R5Zm257(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R5Zm506(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r5')
        self._test_graphics_menu_item(InMortuaryF2R5Zm506(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zm506_times(1)
        self._test_graphics_menu_item(InMortuaryF2R5Zm506(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R5Zm985(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r5')
        self._test_graphics_menu_item(InMortuaryF2R5Zm985(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zm985_times(1)
        self._test_graphics_menu_item(InMortuaryF2R5Zm985(self.state_manager, self.x, self.y))
    def test_MortuaryF2R5Shadow(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r6')
        self._test_graphics_menu_shadow(MortuaryF2R5Shadow(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r5')
        self.state_manager.locations_manager.set_location('mortuary_f2r6')
        self._test_graphics_menu_shadow(MortuaryF2R5Shadow(self.state_manager, self.x, self.y))


    ###


    def test_FromMortuaryF2R6ToMortuaryF2R7(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r6')
        self._test_graphics_menu_item(FromMortuaryF2R6ToMortuaryF2R7(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r7')
        self.state_manager.locations_manager.set_location('mortuary_f2r6')
        self._test_graphics_menu_item(FromMortuaryF2R6ToMortuaryF2R7(self.state_manager, self.x, self.y))
    def test_FromMortuaryF2R6ToMortuaryF2R5(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r6')
        self._test_graphics_menu_item(FromMortuaryF2R6ToMortuaryF2R5(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r5')
        self.state_manager.locations_manager.set_location('mortuary_f2r6')
        self._test_graphics_menu_item(FromMortuaryF2R6ToMortuaryF2R5(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R6Vaxis(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r6')
        self._test_graphics_menu_item(InMortuaryF2R6Vaxis(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_know_vaxis_name(True)
        self._test_graphics_menu_item(InMortuaryF2R6Vaxis(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_know_vaxis_name(False)
        self.state_manager.world_manager.set_talked_to_vaxis_times(1)
        self._test_graphics_menu_item(InMortuaryF2R6Vaxis(self.state_manager, self.x, self.y))
    def test_MortuaryF2R6Shadow(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r7')
        self._test_graphics_menu_shadow(MortuaryF2R6Shadow(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r6')
        self.state_manager.locations_manager.set_location('mortuary_f2r7')
        self._test_graphics_menu_shadow(MortuaryF2R6Shadow(self.state_manager, self.x, self.y))


    ###


    def test_FromMortuaryF2R7ToMortuaryF3R3(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r7')
        self._test_graphics_menu_item(FromMortuaryF2R7ToMortuaryF3R3(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f3r3')
        self.state_manager.locations_manager.set_location('mortuary_f2r7')
        self._test_graphics_menu_item(FromMortuaryF2R7ToMortuaryF3R3(self.state_manager, self.x, self.y))
    def test_FromMortuaryF2R7ToMortuaryF1R4(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r7')
        self._test_graphics_menu_item(FromMortuaryF2R7ToMortuaryF1R4(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f1r4')
        self.state_manager.locations_manager.set_location('mortuary_f2r7')
        self._test_graphics_menu_item(FromMortuaryF2R7ToMortuaryF1R4(self.state_manager, self.x, self.y))
    def test_FromMortuaryF2R7ToMortuaryF2R8(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r7')
        self._test_graphics_menu_item(FromMortuaryF2R7ToMortuaryF2R8(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r8')
        self.state_manager.locations_manager.set_location('mortuary_f2r7')
        self._test_graphics_menu_item(FromMortuaryF2R7ToMortuaryF2R8(self.state_manager, self.x, self.y))
    def test_FromMortuaryF2R7ToMortuaryF2R6(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r7')
        self._test_graphics_menu_item(FromMortuaryF2R7ToMortuaryF2R6(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r6')
        self.state_manager.locations_manager.set_location('mortuary_f2r7')
        self._test_graphics_menu_item(FromMortuaryF2R7ToMortuaryF2R6(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R7PickEmbalm(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r7')
        self._test_graphics_menu_item(InMortuaryF2R7PickEmbalm(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R7PickCopperEarringClosed(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r7')
        self._test_graphics_menu_item(InMortuaryF2R7PickCopperEarringClosed(self.state_manager, self.x, self.y))
    def test_MortuaryF2R7Shadow(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r8')
        self._test_graphics_menu_shadow(MortuaryF2R7Shadow(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r7')
        self.state_manager.locations_manager.set_location('mortuary_f2r8')
        self._test_graphics_menu_shadow(MortuaryF2R7Shadow(self.state_manager, self.x, self.y))


    ###


    def test_FromMortuaryF2R8ToMortuaryF2R1(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r8')
        self._test_graphics_menu_item(FromMortuaryF2R8ToMortuaryF2R1(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r1')
        self.state_manager.locations_manager.set_location('mortuary_f2r8')
        self._test_graphics_menu_item(FromMortuaryF2R8ToMortuaryF2R1(self.state_manager, self.x, self.y))
    def test_FromMortuaryF2R8ToMortuaryF2R7(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r8')
        self._test_graphics_menu_item(FromMortuaryF2R8ToMortuaryF2R7(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r7')
        self.state_manager.locations_manager.set_location('mortuary_f2r8')
        self._test_graphics_menu_item(FromMortuaryF2R8ToMortuaryF2R7(self.state_manager, self.x, self.y))
    def test_InMortuaryF2R8Zf891(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r8')
        self._test_graphics_menu_item(InMortuaryF2R8Zf891(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zf891_times(1)
        self._test_graphics_menu_item(InMortuaryF2R8Zf891(self.state_manager, self.x, self.y))
    def test_MortuaryF2R8Shadow(self):
        self.state_manager.locations_manager.set_location('mortuary_f2r1')
        self._test_graphics_menu_shadow(MortuaryF2R8Shadow(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r8')
        self.state_manager.locations_manager.set_location('mortuary_f2r1')
        self._test_graphics_menu_shadow(MortuaryF2R8Shadow(self.state_manager, self.x, self.y))


if __name__ == '__main__':
    unittest.main() # pragma: no cover
