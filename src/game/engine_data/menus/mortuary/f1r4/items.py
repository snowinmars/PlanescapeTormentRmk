from game.engine_data.menus.menu_items import (
    MenuItem,
    GoToLocationMenuItem,
    ZombieMenuItem,
)


class FromMortuaryF1R4ToMortuaryF1R3(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def tooltip(self):
        if self.gsm.location_manager.is_visited('mortuary_f1r3'):
            return 'Пройти в северную усыпальню'
        return 'Пройти в комнату'
    def jump(self):
        self.gsm.location_manager.set_location('mortuary_f1r3')
        return 'graphics_menu'


class FromMortuaryF1R4ToMortuaryF1R1(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def tooltip(self):
        if self.gsm.location_manager.is_visited('mortuary_f1r1'):
            return 'Пройти в главный зал'
        return 'Пройти в комнату'
    def jump(self):
        self.gsm.location_manager.set_location('mortuary_f1r1')
        return 'graphics_menu'


class FromMortuaryF1R4ToMortuaryF1Rc(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def tooltip(self):
        if self.gsm.location_manager.is_visited('mortuary_f1rc'):
            return 'Пройти в центральную усыпальню'
        return 'Пройти в комнату'
    def jump(self):
        self.gsm.location_manager.set_location('mortuary_f1rc')
        return 'graphics_menu'


class FromMortuaryF1R4ToMortuaryF2R7(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def tooltip(self):
        if self.gsm.location_manager.is_visited('mortuary_f2r7'):
            return 'Подняться на второй этаж'
        return 'Подняться по лестнице'
    def jump(self):
        self.gsm.location_manager.set_location('mortuary_f2r7')
        return 'graphics_menu'


class InMortuaryF1R4Zm732(ZombieMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_dead_zm732()
    def tooltip(self):
        if self.gsm.get_talked_to_zm732_times() > 0:
            return 'Поговорить с трупом «732»'
        return 'Поговорить с ходячим трупом повешенного'
    def jump(self):
        return 'zm732_speak'
