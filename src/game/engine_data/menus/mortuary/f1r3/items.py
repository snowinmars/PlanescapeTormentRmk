from game.engine_data.menus.menu_items import (
    NavigationDirective,
    MenuItem,
    GoToLocationMenuItem,
    ZombieMenuItem,
)


class FromMortuaryF1R3ToMortuaryF1R2(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def tooltip(self):
        if self.gsm.location_manager.is_visited('mortuary_f1r2'):
            return 'Пройти в северо-восточную усыпальню'
        return 'Пройти в комнату'
    def jump(self):
        return NavigationDirective(
            'graphics_menu',
            lambda: self.gsm.location_manager.set_location('mortuary_f1r2')
        )


class FromMortuaryF1R3ToMortuaryF1R4(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def tooltip(self):
        if self.gsm.location_manager.is_visited('mortuary_f1r4'):
            return 'Пройти в юго-западную усыпальню'
        return 'Пройти в комнату'
    def jump(self):
        return NavigationDirective(
            'graphics_menu',
            lambda: self.gsm.location_manager.set_location('mortuary_f1r4')
        )


class FromMortuaryF1R3ToMortuaryF1Rc(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def tooltip(self):
        if self.gsm.location_manager.is_visited('mortuary_f1rc'):
            return 'Пройти в центральную усыпальню'
        return 'Пройти в комнату'
    def jump(self):
        return NavigationDirective(
            'graphics_menu',
            lambda: self.gsm.location_manager.set_location('mortuary_f1rc')
        )


class InMortuaryF1R3Zf114(ZombieMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_dead_zf114()
    def tooltip(self):
        if self.gsm.get_talked_to_zf114_times() > 0:
            return 'Поговорить с трупом «114»'
        return 'Поговорить с ходячим трупом повешенного'
    def jump(self):
        return NavigationDirective(
            'zf114_speak',
        )


class InMortuaryF1R3Zm1041(ZombieMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_dead_zm1041()
    def tooltip(self):
        if self.gsm.get_talked_to_zm1041_times() > 0:
            return 'Поговорить с трупом «1041»'
        return 'Поговорить с ходячим трупом повешенного'
    def jump(self):
        return NavigationDirective(
            'zm1041_speak',
        )


class InMortuaryF1R3Xach(ZombieMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_dead_xach()
    def tooltip(self):
        if self.gsm.get_know_xachariah_name():
            return 'Поговорить с Захарией'
        if self.gsm.get_talked_to_xach_times() > 0:
            return 'Поговорить с трупом «331»'
        return 'Поговорить со слепым трупом'
    def jump(self):
        return NavigationDirective(
            'xach_speak',
        )
