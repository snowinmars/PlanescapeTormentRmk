from game.engine_data.menus.menu_items import (
    NavigationDirective,
    MenuItem,
    GoToLocationMenuItem,
    ContainerMenuItem,
)


class FromMortuaryF2R7ToMortuaryF3R3(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def tooltip(self):
        if self.gsm.locations_manager.is_visited('mortuary_f3r1') or \
           self.gsm.locations_manager.is_visited('mortuary_f3r3'):
            return 'Подняться на третий этаж'
        return 'Подняться по лестнице'
    def jump(self):
        return NavigationDirective(
            'graphics_menu',
            lambda: self.gsm.locations_manager.set_location('mortuary_f3r3')
        )


class FromMortuaryF2R7ToMortuaryF1R4(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def tooltip(self):
        if self.gsm.locations_manager.is_visited('mortuary_f1r1') or \
           self.gsm.locations_manager.is_visited('mortuary_f1r4'):
            return 'Спуститься на первый этаж'
        return 'Спуститься по лестнице'
    def jump(self):
        if self.gsm.locations_manager.is_visited('mortuary_f1r1') or \
           self.gsm.locations_manager.is_visited('mortuary_f1r4') or \
           self.gsm.get_has_mortuary_key():
            return NavigationDirective(
                'graphics_menu',
                lambda: self.gsm.locations_manager.set_location('mortuary_f1r4')
            )
        return NavigationDirective(
            'from_mortuary_f2r7_to_mortuary_f1r4_closed',
        )


class FromMortuaryF2R7ToMortuaryF2R6(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def tooltip(self):
        if self.gsm.locations_manager.is_visited('mortuary_f2r6'):
            return 'Пройти в восточную препараторскую'
        return 'Пройти в комнату'
    def jump(self):
        return NavigationDirective(
            'graphics_menu',
            lambda: self.gsm.locations_manager.set_location('mortuary_f2r6')
        )


class FromMortuaryF2R7ToMortuaryF2R8(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def tooltip(self):
        if self.gsm.locations_manager.is_visited('mortuary_f2r8'):
            return 'Пройти в южную препараторскую'
        return 'Пройти в комнату'
    def jump(self):
        if self.gsm.locations_manager.is_visited('mortuary_f2r8') or \
           self.gsm.get_has_mortuary_key():
            return NavigationDirective(
                'graphics_menu',
                lambda: self.gsm.locations_manager.set_location('mortuary_f2r8')
            )
        return NavigationDirective(
            'from_mortuary_f2r7_to_mortuary_f2r8_closed',
        )


class InMortuaryF2R7PickCopperEarringClosed(ContainerMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_has_copper_earring_closed()
    def tooltip(self):
        return 'Взять серьгу'
    def jump(self):
        return NavigationDirective(
            'mortuary_f2r7_loot_copper_earring_closed',
        )


class InMortuaryF2R7PickEmbalm(ContainerMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_has_embalm()
    def tooltip(self):
        return 'Взять бальзамирующую жидкость'
    def jump(self):
        return NavigationDirective(
            'mortuary_f2r7_loot_embalm',
        )
