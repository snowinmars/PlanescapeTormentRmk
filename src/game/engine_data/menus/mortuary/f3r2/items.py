from game.engine_data.menus.menu_items import (
    NavigationDirective,
    MenuItem,
    GoToLocationMenuItem,
    ContainerMenuItem,
)


class FromMortuaryF3R2ToMortuaryF3R3(GoToLocationMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def tooltip(self):
        return 'Пройти западнее'
    def jump(self):
        return NavigationDirective(
            'graphics_menu',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f3r3')
        )


class FromMortuaryF3R2ToMortuaryF3R1(GoToLocationMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def tooltip(self):
        return 'Пройти восточнее'
    def jump(self):
        return NavigationDirective(
            'graphics_menu',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f3r1')
        )


class InMortuaryF3R2PickGarbage(ContainerMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_has_garbage()
    def tooltip(self):
        return 'Взять мусор'
    def jump(self):
        return NavigationDirective(
            'mortuary_f3r2_loot_garbage',
        )


class InMortuaryF3R2PickTaskList(ContainerMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_has_mortuary_task_list()
    def tooltip(self):
        return 'Взять бумагу'
    def jump(self):
        return NavigationDirective(
            'mortuary_f3r2_loot_mortuary_task_list',
        )


class InMortuaryF3R2PickNeedle(ContainerMenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_has_needle()
    def tooltip(self):
        return 'Взять иголку'
    def jump(self):
        return NavigationDirective(
            'mortuary_f3r2_loot_needle',
        )


class InMortuaryF3R2Dust(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_dust()
    def texture(self):
        return 'images/menu_sprites/dust.png'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_dust_times() > 0:
            return 'Поговорить с тленным'
        return 'Поговорить с человеком'
    def jump(self):
        return NavigationDirective(
            'dust_speak',
        )
