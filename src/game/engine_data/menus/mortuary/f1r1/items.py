from game.engine_data.menus.menu_items import (
    NavigationDirective,
    MenuItem,
    GoToLocationMenuItem,
)


class FromMortuaryF1R1ToMortuaryF2R1(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def tooltip(self):
        if self.gsm.locations_manager.is_visited('mortuary_f2r1'):
            return 'Подняться на второй этаж'
        return 'Подняться по лестнице'
    def jump(self):
        return NavigationDirective(
            'graphics_menu',
            lambda: self.gsm.locations_manager.set_location('mortuary_f2r1')
        )


class FromMortuaryF1R1ToMortuaryF1R2(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def tooltip(self):
        if self.gsm.locations_manager.is_visited('mortuary_f1r2'):
            return 'Пройти в северо-восточную усыпальню'
        return 'Пройти в комнату'
    def jump(self):
        return NavigationDirective(
            'graphics_menu',
            lambda: self.gsm.locations_manager.set_location('mortuary_f1r2')
        )


class FromMortuaryF1R1ToMortuaryF1R4(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def tooltip(self):
        if self.gsm.locations_manager.is_visited('mortuary_f1r4'):
            return 'Пройти в юго-западную усыпальню'
        return 'Пройти в комнату'
    def jump(self):
        return NavigationDirective(
            'graphics_menu',
            lambda: self.gsm.locations_manager.set_location('mortuary_f1r4')
        )


class FromMortuaryF1R1ToMortuaryF1Rc(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def tooltip(self):
        if self.gsm.locations_manager.is_visited('mortuary_f1rc'):
            return 'Пройти в центральную усыпальню'
        return 'Пройти в комнату'
    def jump(self):
        return NavigationDirective(
            'graphics_menu',
            lambda: self.gsm.locations_manager.set_location('mortuary_f1rc')
        )


class FromMortuaryF1R1ToGameEnd(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return self.gsm.get_gate_open()
    def tooltip(self):
        return 'Выйти из Морга'
    def jump(self):
        return NavigationDirective(
            'end',
        )


class InMortuaryF1R1Soego(MenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_dead_soego()
    def texture(self):
        return 'images/menu_sprites/soego.png'
    def tooltip(self):
        if self.gsm.get_talked_to_soego_times() > 0:
            return 'Поговорить с Соего'
        return 'Подойти к человеку'
    def jump(self):
        return NavigationDirective(
            'soego_speak',
        )
