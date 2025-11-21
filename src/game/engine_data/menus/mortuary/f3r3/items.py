from game.engine_data.menus.menu_items import (
    NavigationDirective,
    MenuItem,
    GoToLocationMenuItem,
    SkeletMenuItem,
    ZombieMenuItem,
)


class FromMortuaryF3R3ToMortuaryF2R7(GoToLocationMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r7'):
            return 'Спуститься на второй этаж'
        return 'Спуститься по лестнице'
    def jump(self):
        return NavigationDirective(
            'graphics_menu',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f2r7')
        )


class FromMortuaryF3R3ToMortuaryF3R2(GoToLocationMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def tooltip(self):
        return 'Пройти севернее'
    def jump(self):
        return NavigationDirective(
            'graphics_menu',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f3r2')
        )


class FromMortuaryF3R3ToMortuaryF3R4(GoToLocationMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def tooltip(self):
        return 'Пройти южнее'
    def jump(self):
        return NavigationDirective(
            'graphics_menu',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f3r4')
        )


class InMortuaryF3R3S748(SkeletMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_s748()
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_s748_times() > 0:
            return 'Поговорить со скелетом «748»'
        return 'Поговорить со скелетом со вставной челюстью'
    def jump(self):
        return NavigationDirective(
            's748_speak',
        )


class InMortuaryF3R3S996(SkeletMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_s996()
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_s996_times() > 0:
            return 'Поговорить со скелетом «996»'
        return 'Поговорить со скелетом со словом на лбу'
    def jump(self):
        return NavigationDirective(
            's996_speak',
        )


class InMortuaryF3R3Zm475(ZombieMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zm475()
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zm475_times() > 0:
            return 'Поговорить с трупом «475»'
        return 'Поговорить с проржавевшим трупом'
    def jump(self):
        return NavigationDirective(
            'zm475_speak',
        )


class InMortuaryF3R3Zm310(ZombieMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zm310()
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zm310_times() > 0:
            return 'Поговорить с трупом «310»'
        return 'Поговорить с безжизненным трупом'
    def jump(self):
        return NavigationDirective(
            'zm310_speak',
        )
