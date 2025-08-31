from game.engine_data.menus.menu_items import (
    NavigationDirective,
    MenuItem,
    GoToLocationMenuItem,
    ZombieMenuItem,
    SkeletMenuItem,
    ContainerMenuItem,
)


class FromMortuaryF3R4ToMortuaryF3R3(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def tooltip(self):
        return 'Пройти западнее'
    def jump(self):
        return NavigationDirective(
            'graphics_menu',
            lambda: self.gsm.location_manager.set_location('mortuary_f3r3')
        )


class FromMortuaryF3R4ToMortuaryF3R1(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def tooltip(self):
        return 'Пройти восточнее'
    def jump(self):
        return NavigationDirective(
            'graphics_menu',
            lambda: self.gsm.location_manager.set_location('mortuary_f3r1')
        )


class InMortuaryF3R4PickPrybar(ContainerMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_has_prybar()
    def tooltip(self):
        return 'Взять ломик'
    def jump(self):
        return NavigationDirective(
            'walk_mortuary_f3r4_pick_prybar',
        )


class InMortuaryF3R4PickDustmanRequest(ContainerMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_has_dustman_request()
    def tooltip(self):
        return 'Взять бумагу'
    def jump(self):
        return NavigationDirective(
            'walk_mortuary_f3r4_pick_dustman_request',
        )


class InMortuaryF3R4PickNeedle(ContainerMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_has_needle()
    def tooltip(self):
        return 'Взять иголку'
    def jump(self):
        return NavigationDirective(
            'walk_mortuary_f3r4_pick_needle',
        )


class InMortuaryF3R4PickGarbage(ContainerMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_has_garbage()
    def tooltip(self):
        return 'Взять мусор'
    def jump(self):
        return NavigationDirective(
            'walk_mortuary_f3r4_pick_garbage',
        )


class InMortuaryF3R4Dustfem(MenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_dead_dustfem()
    def texture(self):
        return 'images/menu_sprites/dustfem.png'
    def tooltip(self):
        if self.gsm.get_talked_to_dustfem_times() > 0:
            return 'Поговорить с тленным'
        return 'Поговорить с человеком'
    def jump(self):
        return NavigationDirective(
            'dustfem_speak',
        )


class InMortuaryF3R4S42(SkeletMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_dead_s42()
    def tooltip(self):
        if self.gsm.get_talked_to_s42_times() > 0:
            return 'Поговорить со скелетом «42»'
        return 'Поговорить со скелетом в комбинезоне'
    def jump(self):
        return NavigationDirective(
            's42_speak',
        )


class InMortuaryF3R4Zf832(ZombieMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_dead_zf832()
    def tooltip(self):
        if self.gsm.get_talked_to_zf832_times() > 0:
            return 'Поговорить с трупом «832»'
        return 'Поговорить с красивым трупом'
    def jump(self):
        return NavigationDirective(
            'zf832_speak',
        )


class InMortuaryF3R4Zm613(ZombieMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_dead_zm613()
    def tooltip(self):
        if self.gsm.get_talked_to_zm613_times() > 0:
            return 'Поговорить с трупом «613»'
        return 'Поговорить с изрезанным трупом'
    def jump(self):
        return NavigationDirective(
            'zm613_speak',
        )


class InMortuaryF3R4Zm79(ZombieMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_dead_zm79()
    def tooltip(self):
        if self.gsm.get_talked_to_zm79_times() > 0:
            return 'Поговорить с трупом «79»'
        return 'Поговорить с трупом почти без головы'
    def jump(self):
        return NavigationDirective(
            'zm79_speak',
        )


class InMortuaryF3R4Zf679(ZombieMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_dead_zf679()
    def tooltip(self):
        if self.gsm.get_talked_to_zf679_times() > 0:
            return 'Поговорить с трупом «679»'
        return 'Поговорить с древним трупом'
    def jump(self):
        return NavigationDirective(
            'zf679_speak',
        )


class InMortuaryF3R4S1221(SkeletMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_dead_s1221()
    def tooltip(self):
        if self.gsm.get_talked_to_s1221_times() > 0:
            return 'Поговорить со скелетом «1221»'
        return 'Поговорить с вонючим скелетом'
    def jump(self):
        return NavigationDirective(
            's1221_speak',
        )
