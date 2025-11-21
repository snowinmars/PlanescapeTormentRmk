from game.engine_data.menus.menu_items import (
    NavigationDirective,
    MenuItem,
    GoToLocationMenuItem,
    ZombieMenuItem,
)


class FromMortuaryF2R2ToMortuaryF2R1(GoToLocationMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r1'):
            return 'Пройти в юго-западную препараторскую'
        return 'Пройти в комнату'
    def jump(self):
        return NavigationDirective(
            'graphics_menu',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f2r1')
        )


class FromMortuaryF2R2ToMortuaryF2R3(GoToLocationMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r3'):
            return 'Пройти в северо-западную препараторскую'
        return 'Пройти в комнату'
    def jump(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r3'):
            return NavigationDirective(
                'graphics_menu',
                lambda: self.state_manager.locations_manager.set_location('mortuary_f2r3')
            )
        return NavigationDirective(
            'morte2_speak',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f2r3')
        )


class InMortuaryF2R2Zm965(ZombieMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zm965()
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zm965_times() > 0:
            return 'Поговорить с трупом «965»'
        return 'Поговорить с бродящим трупом'
    def jump(self):
        return NavigationDirective(
            'zm965_speak',
        )


class InMortuaryF2R2Zf594(ZombieMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zf594()
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zf594_times() > 0:
            return 'Поговорить с трупом «594»'
        return 'Поговорить с неуклюжим трупом'
    def jump(self):
        return NavigationDirective(
            'zf594_speak',
        )


class InMortuaryF2R2Zf626(ZombieMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zf626()
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zf626_times() > 0:
            return 'Поговорить с трупом «626»'
        return 'Поговорить с разбитым трупом'
    def jump(self):
        return NavigationDirective(
            'zf626_speak',
        )
