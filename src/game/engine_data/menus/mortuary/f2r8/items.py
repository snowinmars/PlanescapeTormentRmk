from game.engine_data.menus.menu_items import (
    MenuItem,
    GoToLocationMenuItem,
    ZombieMenuItem,
)


class FromMortuaryF2R8ToMortuaryF2R1(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def tooltip(self):
        if self.gsm.location_manager.is_visited('mortuary_f2r1'):
            return 'Пройти в юго-западную препараторскую'
        return 'Пройти в комнату'
    def jump(self):
        self.gsm.location_manager.set_location('mortuary_f2r1')
        return 'graphics_menu'


class FromMortuaryF2R8ToMortuaryF2R7(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def tooltip(self):
        if self.gsm.location_manager.is_visited('mortuary_f2r7'):
            return 'Пройти в юго-восточную препараторскую'
        return 'Пройти в комнату'
    def jump(self):
        self.gsm.location_manager.set_location('mortuary_f2r7')
        return 'graphics_menu'


class InMortuaryF2R8Zf891(ZombieMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_dead_zf891()
    def tooltip(self):
        if self.gsm.get_talked_to_zf891_times() > 0:
            return 'Поговорить с трупом «891»'
        return 'Поговорить с трупом без челюсти'
    def jump(self):
        return 'zf891_speak'
