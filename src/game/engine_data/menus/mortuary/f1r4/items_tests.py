import unittest


from game.engine_data.menus.graphics_menu_item_tests import (GraphicsMenuItemTest)
from game.engine_data.menus.mortuary.f1r4.items import (
    FromMortuaryF1R4ToMortuaryF1R3,
    FromMortuaryF1R4ToMortuaryF1R1,
    FromMortuaryF1R4ToMortuaryF1Rc,
    FromMortuaryF1R4ToMortuaryF2R7,
    InMortuaryF1R4Zm732,
)


class F1R1ItemsTest(GraphicsMenuItemTest):
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


if __name__ == '__main__':
    unittest.main() # pragma: no cover
