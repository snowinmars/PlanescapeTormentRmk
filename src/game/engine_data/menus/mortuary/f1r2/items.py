from game.engine_data.menus.menu_items import (
    MenuItem,
    GoToLocationMenuItem,
)


class FromMortuaryF1R2ToMortuaryF1Rc(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def tooltip(self):
        if self.gsm.location_manager.is_visited('mortuary_f1rc'):
            return 'Пройти в центральную усыпальню'
        return 'Пройти в комнату'
    def jump(self):
        self.gsm.location_manager.set_location('mortuary_f1rc')
        return 'graphics_menu'


class FromMortuaryF1R2ToMortuaryF1R3(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def tooltip(self):
        if self.gsm.location_manager.is_visited('mortuary_f1r3'):
            return 'Пройти в северную усыпальню'
        return 'Пройти в комнату'
    def jump(self):
        self.gsm.location_manager.set_location('mortuary_f1r3')
        return 'graphics_menu'


class FromMortuaryF1R2ToMortuaryF1R1(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def tooltip(self):
        if self.gsm.location_manager.is_visited('mortuary_f1r1'):
            return 'Пройти в главный зал'
        return 'Пройти в комнату'
    def jump(self):
        self.gsm.location_manager.set_location('mortuary_f1r1')
        return 'graphics_menu'


class InMortuaryF1R2Deionarra(MenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_dead_deionarra()
    def texture(self):
        return 'images/menu_sprites/deionarra.png'
    def tooltip(self):
        if self.gsm.get_talked_to_deionarra_times() > 0:
            return 'Поговорить с Дейонаррой'
        return 'Подойти к призраку'
    def jump(self):
        return 'deionarra_speak'
