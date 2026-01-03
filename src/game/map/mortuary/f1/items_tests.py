import unittest


from game.map.graphics_menu_item_tests import (GraphicsMenuItemTest)
from game.map.mortuary.f1.items import (
        FromMortuaryF1R1ToMortuaryF2R1,
        FromMortuaryF1R1ToMortuaryF1R2,
        FromMortuaryF1R1ToMortuaryF1R4,
        FromMortuaryF1R1ToMortuaryF1Rc,
        FromMortuaryF1R1ToGameEnd,
        InMortuaryF1R1Soego,

        FromMortuaryF1R2ToMortuaryF1Rc,
        FromMortuaryF1R2ToMortuaryF1R3,
        FromMortuaryF1R2ToMortuaryF1R1,
        InMortuaryF1R2Deionarra,

        FromMortuaryF1R3ToMortuaryF1R2,
        FromMortuaryF1R3ToMortuaryF1R4,
        FromMortuaryF1R3ToMortuaryF1Rc,
        InMortuaryF1R3Zf114,
        InMortuaryF1R3Zm1041,
        InMortuaryF1R3Xach,

        FromMortuaryF1R4ToMortuaryF1R3,
        FromMortuaryF1R4ToMortuaryF1R1,
        FromMortuaryF1R4ToMortuaryF1Rc,
        FromMortuaryF1R4ToMortuaryF2R7,
        InMortuaryF1R4Zm732,

        FromMortuaryF1RcToMortuaryF1R1,
        FromMortuaryF1RcToMortuaryF1R2,
        FromMortuaryF1RcToMortuaryF1R3,
        FromMortuaryF1RcToMortuaryF1R4,
        InMortuaryF1RcGiantsk
)


class F1ItemsTest(GraphicsMenuItemTest):
    def test_FromMortuaryF1R1ToMortuaryF2R1(self):
        self._test_graphics_menu_item(FromMortuaryF1R1ToMortuaryF2R1(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r1')
        self._test_graphics_menu_item(FromMortuaryF1R1ToMortuaryF2R1(self.state_manager, self.x, self.y))
    def test_FromMortuaryF1R1ToMortuaryF1R2(self):
        self._test_graphics_menu_item(FromMortuaryF1R1ToMortuaryF1R2(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f1r2')
        self._test_graphics_menu_item(FromMortuaryF1R1ToMortuaryF1R2(self.state_manager, self.x, self.y))
    def test_FromMortuaryF1R1ToMortuaryF1R4(self):
        self._test_graphics_menu_item(FromMortuaryF1R1ToMortuaryF1R4(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f1r4')
        self._test_graphics_menu_item(FromMortuaryF1R1ToMortuaryF1R4(self.state_manager, self.x, self.y))
    def test_FromMortuaryF1R1ToMortuaryF1Rc(self):
        self._test_graphics_menu_item(FromMortuaryF1R1ToMortuaryF1Rc(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f1rc')
        self._test_graphics_menu_item(FromMortuaryF1R1ToMortuaryF1Rc(self.state_manager, self.x, self.y))
    def test_FromMortuaryF1R1ToGameEnd(self):
        self.state_manager.world_manager.set_gate_open(True)
        self._test_graphics_menu_item(FromMortuaryF1R1ToGameEnd(self.state_manager, self.x, self.y))
    def test_InMortuaryF1R1Soego(self):
        self._test_graphics_menu_item(InMortuaryF1R1Soego(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_soego_times(1)
        self._test_graphics_menu_item(InMortuaryF1R1Soego(self.state_manager, self.x, self.y))


    ###


    def test_FromMortuaryF1R2ToMortuaryF1Rc(self):
        self._test_graphics_menu_item(FromMortuaryF1R2ToMortuaryF1Rc(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f1rc')
        self._test_graphics_menu_item(FromMortuaryF1R2ToMortuaryF1Rc(self.state_manager, self.x, self.y))
    def test_FromMortuaryF1R2ToMortuaryF1R3(self):
        self._test_graphics_menu_item(FromMortuaryF1R2ToMortuaryF1R3(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f1r3')
        self._test_graphics_menu_item(FromMortuaryF1R2ToMortuaryF1R3(self.state_manager, self.x, self.y))
    def test_FromMortuaryF1R2ToMortuaryF1R1(self):
        self._test_graphics_menu_item(FromMortuaryF1R2ToMortuaryF1R1(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f1r1')
        self._test_graphics_menu_item(FromMortuaryF1R2ToMortuaryF1R1(self.state_manager, self.x, self.y))
    def test_InMortuaryF1R2Deionarra(self):
        self._test_graphics_menu_item(InMortuaryF1R2Deionarra(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_deionarra_times(1)
        self._test_graphics_menu_item(InMortuaryF1R2Deionarra(self.state_manager, self.x, self.y))


    ###


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


    ###


    def test_FromMortuaryF1R4ToMortuaryF1R3(self):
        self._test_graphics_menu_item(FromMortuaryF1R4ToMortuaryF1R3(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f1r3')
        self._test_graphics_menu_item(FromMortuaryF1R4ToMortuaryF1R3(self.state_manager, self.x, self.y))
    def test_FromMortuaryF1R4ToMortuaryF1R1(self):
        self._test_graphics_menu_item(FromMortuaryF1R4ToMortuaryF1R1(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f1r1')
        self._test_graphics_menu_item(FromMortuaryF1R4ToMortuaryF1R1(self.state_manager, self.x, self.y))
    def test_FromMortuaryF1R4ToMortuaryF1Rc(self):
        self._test_graphics_menu_item(FromMortuaryF1R4ToMortuaryF1Rc(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f1rc')
        self._test_graphics_menu_item(FromMortuaryF1R4ToMortuaryF1Rc(self.state_manager, self.x, self.y))
    def test_FromMortuaryF1R4ToMortuaryF2R7(self):
        self._test_graphics_menu_item(FromMortuaryF1R4ToMortuaryF2R7(self.state_manager, self.x, self.y))
        self.state_manager.locations_manager.set_location('mortuary_f2r7')
        self._test_graphics_menu_item(FromMortuaryF1R4ToMortuaryF2R7(self.state_manager, self.x, self.y))
    def test_InMortuaryF1R4Zm732(self):
        self._test_graphics_menu_item(InMortuaryF1R4Zm732(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_zm732_times(1)
        self._test_graphics_menu_item(InMortuaryF1R4Zm732(self.state_manager, self.x, self.y))


    ###


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

if __name__ == '__main__':
    unittest.main() # pragma: no cover
