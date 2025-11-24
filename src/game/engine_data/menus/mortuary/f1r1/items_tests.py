import unittest


from game.engine_data.menus.graphics_menu_item_tests import (GraphicsMenuItemTest)
from game.engine_data.menus.mortuary.f1r1.items import (
    FromMortuaryF1R1ToMortuaryF2R1,
    FromMortuaryF1R1ToMortuaryF1R2,
    FromMortuaryF1R1ToMortuaryF1R4,
    FromMortuaryF1R1ToMortuaryF1Rc,
    FromMortuaryF1R1ToGameEnd,
    InMortuaryF1R1Soego,
)


class F1R1ItemsTest(GraphicsMenuItemTest):
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


if __name__ == '__main__':
    unittest.main() # pragma: no cover
