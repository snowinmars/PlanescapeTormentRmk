from game.engine_data.menus.menu_items import (
    MenuItem,
    GoToLocationMenuItem,
    ZombieMenuItem,
)


class FromMortuaryF2R5ToMortuaryF2R6(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def tooltip(self):
        if self.gsm.location_manager.is_visited('mortuary_f2r6'):
            return 'Пройти в восточную препараторскую'
        return 'Пройти в комнату'
    def jump(self):
        self.gsm.location_manager.set_location('mortuary_f2r6')
        return 'graphics_menu'


class FromMortuaryF2R5ToMortuaryF2R4(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def tooltip(self):
        if self.gsm.location_manager.is_visited('mortuary_f2r4'):
            return 'Пройти в восточную препараторскую'
        return 'Пройти в комнату'
    def jump(self):
        self.gsm.location_manager.set_location('mortuary_f2r4')
        return 'graphics_menu'


class InMortuaryF2R5Eivene(MenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_dead_eivene()
    def texture(self):
        return 'images/menu_sprites/eivene.png'
    def tooltip(self):
        if self.gsm.get_know_eivene_name():
            return 'Поговорить с Эи-Вейн'
        return 'Поговорить с хрупкой девушкой'
    def jump(self):
        return 'eivene_speak'


class InMortuaryF2R5Zm257(ZombieMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_dead_zm257()
    def tooltip(self):
        if self.gsm.get_talked_to_zm257_times() > 0:
            return 'Поговорить с трупом «257»'
        return 'Поговорить с трупом без челюсти'
    def jump(self):
        return 'zm257_speak'


class InMortuaryF2R5Zm506(ZombieMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_dead_zm506()
    def tooltip(self):
        if self.gsm.get_talked_to_zm506_times() > 0:
            return 'Поговорить с трупом «506»'
        return 'Поговорить с трупом без челюсти'
    def jump(self):
        return 'zm506_speak'


class InMortuaryF2R5Zm985(ZombieMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_dead_zm985()
    def tooltip(self):
        if self.gsm.get_talked_to_zm985_times() > 0:
            return 'Поговорить с трупом «985»'
        return 'Поговорить с трупом без челюсти'
    def jump(self):
        return 'zm985_speak'
