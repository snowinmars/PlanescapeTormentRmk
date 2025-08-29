from game.engine_data.menus.menu_items import (
    MenuItem,
    GoToLocationMenuItem,
    ContainerMenuItem,
    SkeletMenuItem,
    ZombieMenuItem,
)


class FromMortuaryF3R1ToMortuaryF2R1(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def tooltip(self):
        if self.gsm.location_manager.is_visited('mortuary_f2r1'):
            return 'Спуститься на второй этаж'
        return 'Спуститься по лестнице'
    def jump(self):
        if self.gsm.get_has_mortuary_key():
            self.gsm.location_manager.set_location('mortuary_f2r1')
            return 'graphics_menu'
        return 'walk_to_mortuaryf2r1_closed'


class FromMortuaryF3R1ToMortuaryF3R2(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def tooltip(self):
        return 'Пройти севернее'
    def jump(self):
        self.gsm.location_manager.set_location('mortuary_f3r2')
        return 'graphics_menu'


class FromMortuaryF3R1ToMortuaryF3R4(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def tooltip(self):
        return 'Пройти южнее'
    def jump(self):
        self.gsm.location_manager.set_location('mortuary_f3r4')
        return 'graphics_menu'


class InMortuaryF3R1PickMortuaryKey(ContainerMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_has_mortuary_key()
    def tooltip(self):
        return 'Взять ключ'
    def jump(self):
        return 'walk_mortuary_f3r4_pick_mortuary_key'


class InMortuaryF3R1S863(SkeletMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_dead_s863()
    def tooltip(self):
        if self.gsm.get_talked_to_s863_times() > 0:
            return 'Поговорить со скелетом «863»'
        return 'Поговорить со скелетом ветерана'
    def jump(self):
        return 's863_speak'


class InMortuaryF3R1Zm1146(ZombieMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_dead_zm1146()
    def tooltip(self):
        if self.gsm.get_talked_to_zm1146_times() > 0:
            return 'Поговорить с трупом «1146»'
        return 'Поговорить с ходячим плешивым трупом'
    def jump(self):
        return 'zm1146_speak'


class InMortuaryF3R1Zf1148(ZombieMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_dead_zf1148()
    def tooltip(self):
        if self.gsm.get_talked_to_zf1148_times() > 0:
            return 'Поговорить с трупом «1148»'
        return 'Поговорить с татуированным трупом'
    def jump(self):
        return 'zf1148_speak'
