from game.engine_data.menus.menu_items import (
    MenuItem,
    GoToLocationMenuItem,
    ZombieMenuItem,
)


class FromMortuaryF2R4ToMortuaryF2R5(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def tooltip(self):
        if self.gsm.location_manager.is_visited('mortuary_f2r5'):
            return 'Пройти в серево-восточную препараторскую'
        return 'Пройти в комнату'
    def jump(self):
        self.gsm.location_manager.set_location('mortuary_f2r5')
        return 'graphics_menu'


class FromMortuaryF2R4ToMortuaryF2R3(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def tooltip(self):
        if self.gsm.location_manager.is_visited('mortuary_f2r3'):
            return 'Пройти в северо-западную приёмную'
        return 'Пройти в комнату'
    def jump(self):
        self.gsm.location_manager.set_location('mortuary_f2r3')
        return 'graphics_menu'


class InMortuaryF2R4Zm1664(ZombieMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_dead_zm1664()
    def tooltip(self):
        if self.gsm.get_talked_to_zm1664_times() > 0:
            return 'Поговорить с трупом «1664»'
        return 'Поговорить с трупом без челюсти'
    def jump(self):
        return 'zm1664_speak'
