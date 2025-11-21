from game.engine_data.menus.menu_items import (
    NavigationDirective,
    MenuItem,
    GoToLocationMenuItem,
    ContainerMenuItem,
    SkeletMenuItem,
    ZombieMenuItem,
)


class FromMortuaryF3R1ToMortuaryF2R1(GoToLocationMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r1'):
            return 'Спуститься на второй этаж'
        return 'Спуститься по лестнице'
    def jump(self):
        if self.state_manager.world_manager.get_has_mortuary_key():
            return NavigationDirective(
                'graphics_menu',
                lambda: self.state_manager.locations_manager.set_location('mortuary_f2r1')
            )
        return NavigationDirective(
            'from_mortuary_f3r1_to_mortuary_f2r1_closed',
        )


class FromMortuaryF3R1ToMortuaryF3R2(GoToLocationMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def tooltip(self):
        return 'Пройти севернее'
    def jump(self):
        return NavigationDirective(
            'graphics_menu',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f3r2')
        )


class FromMortuaryF3R1ToMortuaryF3R4(GoToLocationMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def tooltip(self):
        return 'Пройти южнее'
    def jump(self):
        return NavigationDirective(
            'graphics_menu',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f3r4')
        )

class InMortuaryF3R1PickMortuaryKey(ContainerMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_has_mortuary_key()
    def tooltip(self):
        return 'Взять ключ'
    def jump(self):
        return NavigationDirective(
            'mortuary_f3r4_loot_mortuary_key',
        )


class InMortuaryF3R1S863(SkeletMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_s863()
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_s863_times() > 0:
            return 'Поговорить со скелетом «863»'
        return 'Поговорить со скелетом ветерана'
    def jump(self):
        return NavigationDirective(
            's863_speak',
        )


class InMortuaryF3R1Zm1146(ZombieMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zm1146()
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zm1146_times() > 0:
            return 'Поговорить с трупом «1146»'
        return 'Поговорить с ходячим плешивым трупом'
    def jump(self):
        return NavigationDirective(
            'zm1146_speak',
        )


class InMortuaryF3R1Zf1148(ZombieMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zf1148()
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zf1148_times() > 0:
            return 'Поговорить с трупом «1148»'
        return 'Поговорить с татуированным трупом'
    def jump(self):
        return NavigationDirective(
            'zf1148_speak',
        )
