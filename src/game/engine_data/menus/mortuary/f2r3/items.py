from game.engine_data.menus.menu_items import (
    NavigationDirective,
    MenuItem,
    GoToLocationMenuItem,
    ZombieMenuItem,
)


class FromMortuaryF2R3ToMortuaryF2R4(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def tooltip(self):
        if self.gsm.locations_manager.is_visited('mortuary_f2r4'):
            return 'Пройти в северную препараторскую'
        return 'Пройти в комнату'
    def jump(self):
        return NavigationDirective(
            'graphics_menu',
            lambda: self.gsm.locations_manager.set_location('mortuary_f2r4')
        )


class FromMortuaryF2R3ToMortuaryF2R2(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def tooltip(self):
        if self.gsm.locations_manager.is_visited('mortuary_f2r2'):
            return 'Пройти в западную препараторскую'
        return 'Пройти в комнату'
    def jump(self):
        return NavigationDirective(
            'graphics_menu',
            lambda: self.gsm.locations_manager.set_location('mortuary_f2r2')
        )


class InMortuaryF2R3Dhall(MenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_dead_dhall()
    def texture(self):
        return 'images/menu_sprites/dhall.png'
    def tooltip(self):
        if self.gsm.get_know_dhall_name():
            return 'Поговорить с Дхаллом'
        if self.gsm.get_talked_to_dhall_times() > 0:
            return 'Поговорить с существом около большой книги'
        return 'Подойти к существу около большой книги'
    def jump(self):
        return NavigationDirective(
            'dhall_speak',
        )


class InMortuaryF2R3Zm396(ZombieMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_dead_zm396()
    def tooltip(self):
        if self.gsm.get_talked_to_zm396_times() > 0:
            return 'Поговорить с трупом «396»'
        return 'Поговорить с трупом медбрата'
    def jump(self):
        return NavigationDirective(
            'zm396_speak',
        )


class InMortuaryF2R3Zm1201(ZombieMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_dead_zm1201()
    def tooltip(self):
        if self.gsm.get_talked_to_zm1201_times() > 0:
            return 'Поговорить с трупом «1201»'
        return 'Поговорить с трупом с чернильницей'
    def jump(self):
        return NavigationDirective(
            'zm1201_speak',
        )


class InMortuaryF2R3Zf1096(ZombieMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_dead_zf1096()
    def tooltip(self):
        if self.gsm.get_talked_to_zf1096_times() > 0:
            return 'Поговорить с трупом «1096»'
        return 'Поговорить с трупом с косой на шее'
    def jump(self):
        return NavigationDirective(
            'zf1096_speak',
        )


class InMortuaryF2R3Zf1072(ZombieMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_dead_zf1072()
    def tooltip(self):
        if self.gsm.get_talked_to_zf1072_times() > 0:
            return 'Поговорить с трупом «1072»'
        return 'Поговорить с трупом без челюсти'
    def jump(self):
        return NavigationDirective(
            'zf1072_speak',
        )
