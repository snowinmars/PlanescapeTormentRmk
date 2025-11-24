import unittest


from game.engine_data.menus.graphics_menu_item_tests import (GraphicsMenuItemTest)
from game.engine_data.menus.mortuary.f3r2.items import (
    FromMortuaryF3R2ToMortuaryF3R3,
    FromMortuaryF3R2ToMortuaryF3R1,
    InMortuaryF3R2PickGarbage,
    InMortuaryF3R2PickTaskList,
    InMortuaryF3R2PickNeedle,
    InMortuaryF3R2Dust,
)


class F1R1ItemsTest(GraphicsMenuItemTest):
    def test_FromMortuaryF3R2ToMortuaryF3R3(self):
        self._test_graphics_menu_item(FromMortuaryF3R2ToMortuaryF3R3(self.state_manager, self.x, self.y))
    def test_FromMortuaryF3R2ToMortuaryF3R1(self):
        self._test_graphics_menu_item(FromMortuaryF3R2ToMortuaryF3R1(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R2PickGarbage(self):
        self._test_graphics_menu_item(InMortuaryF3R2PickGarbage(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R2PickTaskList(self):
        self._test_graphics_menu_item(InMortuaryF3R2PickTaskList(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R2PickNeedle(self):
        self._test_graphics_menu_item(InMortuaryF3R2PickNeedle(self.state_manager, self.x, self.y))
    def test_InMortuaryF3R2Dust(self):
        self._test_graphics_menu_item(InMortuaryF3R2Dust(self.state_manager, self.x, self.y))
        self.state_manager.world_manager.set_talked_to_dust_times(1)
        self._test_graphics_menu_item(InMortuaryF3R2Dust(self.state_manager, self.x, self.y))


if __name__ == '__main__':
    unittest.main() # pragma: no cover
