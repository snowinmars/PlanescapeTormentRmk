from game.engine_data.menus.menu_items import (
    NavigationDirective,
    MenuItem,
    GoToLocationMenuItem,
    ZombieMenuItem,
)


class FromMortuaryF2R6ToMortuaryF2R7(GoToLocationMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r7'):
            return 'Пройти в юго-восточную препараторскую'
        return 'Пройти в комнату'
    def jump(self):
        return NavigationDirective(
            'graphics_menu',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f2r7')
        )


class FromMortuaryF2R6ToMortuaryF2R5(GoToLocationMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r5'):
            return 'Пройти в серево-восточную препараторскую'
        return 'Пройти в комнату'
    def jump(self):
        return NavigationDirective(
            'graphics_menu',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f2r5')
        )


class InMortuaryF2R6Vaxis(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_vaxis()
    def texture(self):
        return 'images/menu_sprites/vaxis.png'
    def tooltip(self):
        if self.state_manager.world_manager.get_know_vaxis_name():
            return 'Поговорить c Ваксисом'
        if self.state_manager.world_manager.get_talked_to_vaxis_times() > 0:
            return 'Поговорить с фальшивым зомби'
        return 'Поговорить с трупом'
    def jump(self):
        return NavigationDirective(
            'vaxis_speak',
        )
