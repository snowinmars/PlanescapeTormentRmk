from game.engine_data.menus.menu_items import (
    NavigationDirective,
    MenuItem,
    GoToLocationMenuItem,
)


class FromMortuaryF1RcToMortuaryF1R1(GoToLocationMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f1r1'):
            return 'Пройти в главный зал'
        return 'Пройти в комнату'
    def jump(self):
        return NavigationDirective(
            'graphics_menu',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f1r1')
        )


class FromMortuaryF1RcToMortuaryF1R2(GoToLocationMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f1r2'):
            return 'Пройти в северо-восточную усыпальню'
        return 'Пройти в комнату'
    def jump(self):
        return NavigationDirective(
            'graphics_menu',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f1r2')
        )


class FromMortuaryF1RcToMortuaryF1R3(GoToLocationMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f1r3'):
            return 'Пройти в северную усыпальню'
        return 'Пройти в комнату'
    def jump(self):
        return NavigationDirective(
            'graphics_menu',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f1r3')
        )


class FromMortuaryF1RcToMortuaryF1R4(GoToLocationMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f1r4'):
            return 'Пройти в юго-западную усыпальню'
        return 'Пройти в комнату'
    def jump(self):
        return NavigationDirective(
            'graphics_menu',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f1r4')
        )


class InMortuaryF1RcGiantsk(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_giantsk()
    def texture(self):
        return 'images/menu_sprites/giantsk.png'
    def tooltip(self):
        return 'Поговорить с гиганским скелетом'
    def jump(self):
        return NavigationDirective(
            'giantsk_speak',
        )
