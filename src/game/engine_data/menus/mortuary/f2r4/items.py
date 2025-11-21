from game.engine_data.menus.menu_items import (
    NavigationDirective,
    MenuItem,
    GoToLocationMenuItem,
    ZombieMenuItem,
)


class FromMortuaryF2R4ToMortuaryF2R5(GoToLocationMenuItem):
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


class FromMortuaryF2R4ToMortuaryF2R3(GoToLocationMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r3'):
            return 'Пройти в северо-западную приёмную'
        return 'Пройти в комнату'
    def jump(self):
        return NavigationDirective(
            'graphics_menu',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f2r3')
        )


class InMortuaryF2R4Zm1664(ZombieMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zm1664()
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zm1664_times() > 0:
            return 'Поговорить с трупом «1664»'
        return 'Поговорить с трупом без челюсти'
    def jump(self):
        return NavigationDirective(
            'zm1664_speak',
        )
