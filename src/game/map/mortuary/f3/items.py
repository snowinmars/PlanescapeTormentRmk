from game.map.NavigationDirective import (NavigationDirective)
from game.map.map_items import (
    ShadowItem,
    MenuItem
)


class FromMortuaryF3R1ToMortuaryF2R1(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f3r1'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r1'):
            return 'FromMortuaryF3R1ToMortuaryF2R1_tooltip1' # Спуститься на второй этаж
        return 'FromMortuaryF3R1ToMortuaryF2R1_tooltip2' # Спуститься по лестнице
    def texture(self):
        return 'bg/mortuary/f3/door_f3r1_f2r1_opened.webp'
    def jump(self):
        if self.state_manager.inventory_items_manager.is_own_item('has_mortuary_key'):
            return NavigationDirective(
                'map_dispatcher',
                lambda: self.state_manager.locations_manager.set_location('mortuary_f2r1')
            )
        return NavigationDirective(
            'from_mortuary_f3r1_to_mortuary_f2r1_closed',
        )


class FromMortuaryF3R1uToMortuaryF3Rc(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f3r1'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3rc'):
            return 'FromMortuaryF3R1ToMortuaryF3Rc_tooltip1' # Пройти в центральный зал
        return 'FromMortuaryF3R1ToMortuaryF3Rc_tooltip2' # Пройти в комнату
    def texture(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3rc'):
            return 'bg/mortuary/f3/door_f3rc_f3r1u_opened.webp'
        return 'bg/mortuary/f3/door_f3rc_f3r1u_closed.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f3rc')
        )


class FromMortuaryF3R1dToMortuaryF3Rc(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f3r1'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3rc'):
            return 'FromMortuaryF3R1ToMortuaryF3Rc_tooltip1' # Пройти в центральный зал
        return 'FromMortuaryF3R1ToMortuaryF3Rc_tooltip2' # Пройти в комнату
    def texture(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3rc'):
            return 'bg/mortuary/f3/door_f3rc_f3r1d_opened.webp'
        return 'bg/mortuary/f3/door_f3rc_f3r1d_closed.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f3rc')
        )


class MortuaryF3R1Shadow(ShadowItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
        self.location_id = 'mortuary_f3r1'
    def texture(self):
        return 'bg/mortuary/f3/shadow_f3r1.webp'


###


class FromMortuaryF3R2lToMortuaryF3Rc(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f3r2'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3rc'):
            return 'FromMortuaryF3R2rToMortuaryF3Rc_tooltip1' # Пройти в центральный зал
        return 'FromMortuaryF3R2rToMortuaryF3Rc_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f3/door_f3r2l_f3rc_opened.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f3rc')
        )


class FromMortuaryF3R2rToMortuaryF3Rc(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f3r2'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3rc'):
            return 'FromMortuaryF3R2rToMortuaryF3Rc_tooltip1' # Пройти в центральный зал
        return 'FromMortuaryF3R2rToMortuaryF3Rc_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f3/door_f3r2r_f3rc_opened.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f3rc')
        )


class MortuaryF3R2Shadow(ShadowItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
        self.location_id = 'mortuary_f3r2'
    def texture(self):
        return 'bg/mortuary/f3/shadow_f3r2.webp'


class InMortuaryF3R2PickTaskList(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_looted_InMortuaryF3R2PickTaskList() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f3r2'
    def tooltip(self):
        return 'InMortuaryF3R2PickTaskList_tooltip1' # Взять бумагу
    def texture(self):
        return 'bg/mortuary/f3/loot_f3r2_mortuary_task_list.webp'
    def jump(self):
        return NavigationDirective(
            'mortuary_f3r2_loot_mortuary_task_list',
            lambda: self.state_manager.world_manager.set_looted_InMortuaryF3R2PickTaskList(True)
        )

###


class FromMortuaryF3R3ToMortuaryF2R7(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f3r3'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r7'):
            return 'FromMortuaryF3R3ToMortuaryF2R7_tooltip1'
        return 'FromMortuaryF3R3ToMortuaryF2R7_tooltip2'
    def texture(self):
        return 'bg/mortuary/f3/door_f3r3_f2r7_opened.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f2r7')
        )


class FromMortuaryF3R3uToMortuaryF3Rc(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f3r3'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3rc'):
            return 'FromMortuaryF3R3ToMortuaryF3Rc_tooltip1' # Пройти в центральный зал
        return 'FromMortuaryF3R3ToMortuaryF3Rc_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f3/door_f3r3u_f3rc_opened.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f3rc')
        )


class FromMortuaryF3R3dToMortuaryF3Rc(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f3r3'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3rc'):
            return 'FromMortuaryF3R3ToMortuaryF3Rc_tooltip1' # Пройти в центральный зал
        return 'FromMortuaryF3R3ToMortuaryF3Rc_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f3/door_f3r3d_f3rc_opened.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f3rc')
        )


class MortuaryF3R3Shadow(ShadowItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
        self.location_id = 'mortuary_f3r3'
    def texture(self):
        return 'bg/mortuary/f3/shadow_f3r3.webp'


###


class FromMortuaryF3R4lToMortuaryF3Rc(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f3r4'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3rc'):
            return 'FromMortuaryF3R4rToMortuaryF3Rc_tooltip1' # Пройти в центральный зал
        return 'FromMortuaryF3R4rToMortuaryF3Rc_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f3/door_f3r4l_f3rc_opened.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f3rc')
        )


class FromMortuaryF3R4rToMortuaryF3Rc(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f3r4'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3rc'):
            return 'FromMortuaryF3R4rToMortuaryF3Rc_tooltip1' # Пройти в центральный зал
        return 'FromMortuaryF3R4rToMortuaryF3Rc_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f3/door_f3r4r_f3rc_opened.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f3rc')
        )


class MortuaryF3R4Shadow(ShadowItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
        self.location_id = 'mortuary_f3r4'
    def texture(self):
        return 'bg/mortuary/f3/shadow_f3r4.webp'


class InMortuaryF3R4PickPrybar(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_looted_InMortuaryF3R4PickPrybar() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f3r4'
    def tooltip(self):
        return 'InMortuaryF3R4PickPrybar_tooltip1' # Взять ломик
    def texture(self):
        return 'bg/mortuary/f3/loot_f3r4_prybar.webp'
    def jump(self):
        return NavigationDirective(
            'mortuary_f3r4_loot_prybar',
            lambda: self.state_manager.world_manager.set_looted_InMortuaryF3R4PickPrybar(True)
        )


class InMortuaryF3R4PickDustmanRequest(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_looted_InMortuaryF3R4PickDustmanRequest() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f3r4'
    def tooltip(self):
        return 'InMortuaryF3R4PickDustmanRequest_tooltip1' # Взять бумагу
    def texture(self):
        return 'bg/mortuary/f3/loot_f3r4_dustman_request.webp'
    def jump(self):
        return NavigationDirective(
            'mortuary_f3r4_loot_dustman_request',
            lambda: self.state_manager.world_manager.set_looted_InMortuaryF3R4PickDustmanRequest(True)
        )


class InMortuaryF3R4Zm79(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zm79() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f3r4'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zm79_times() > 0:
            return 'InMortuaryF3R4Zm79_tooltip1' # Поговорить с трупом «79»
        return 'InMortuaryF3R4Zm79_tooltip2' # Поговорить с трупом почти без головы
    def texture(self):
        return 'animated_zm79_stand_s'
    def jump(self):
        return NavigationDirective(
            'zm79_speak',
        )


class InMortuaryF3R4Zf679(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zf679() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f3r4'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zf679_times() > 0:
            return 'InMortuaryF3R4Zf679_tooltip1' # Поговорить с трупом «679»
        return 'InMortuaryF3R4Zf679_tooltip2' # Поговорить с древним трупом
    def texture(self):
        return 'animated_zf679_stand_s'
    def jump(self):
        return NavigationDirective(
            'zf679_speak',
        )


class InMortuaryF3R4S1221(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_s1221() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f3r4'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_s1221_times() > 0:
            return 'InMortuaryF3R4S1221_tooltip1' # Поговорить со скелетом «1221»
        return 'InMortuaryF3R4S1221_tooltip2' # Поговорить с вонючим скелетом
    def texture(self):
        return 'animated_s1221_stand_s'
    def jump(self):
        return NavigationDirective(
            's1221_speak',
        )


###


class FromMortuaryF3RcToMortuaryF3R1u(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f3rc'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3r1'):
            return 'FromMortuaryF3RcToMortuaryF3R1_tooltip1' # Пройти в западный зал
        return 'FromMortuaryF3RcToMortuaryF3R1_tooltip2' # Пройти в комнату
    def texture(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3r1'):
            return 'bg/mortuary/f3/door_f3rc_f3r1u_opened.webp'
        return 'bg/mortuary/f3/door_f3rc_f3r1u_closed.webp'
    def jump(self):
        if self.state_manager.inventory_items_manager.is_own_item('has_mortuary_key'):
            return NavigationDirective(
                'map_dispatcher',
                lambda: self.state_manager.locations_manager.set_location('mortuary_f3r1')
            )
        return NavigationDirective(
            'from_mortuary_f3rc_to_mortuary_f3r1_closed'
        )


class FromMortuaryF3RcToMortuaryF3R1d(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f3rc'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3r1'):
            return 'FromMortuaryF3RcToMortuaryF3R1_tooltip1' # Пройти в западный зал
        return 'FromMortuaryF3RcToMortuaryF3R1_tooltip2' # Пройти в комнату
    def texture(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3r1'):
            return 'bg/mortuary/f3/door_f3rc_f3r1d_opened.webp'
        return 'bg/mortuary/f3/door_f3rc_f3r1d_closed.webp'
    def jump(self):
        if self.state_manager.inventory_items_manager.is_own_item('has_mortuary_key'):
            return NavigationDirective(
                'map_dispatcher',
                lambda: self.state_manager.locations_manager.set_location('mortuary_f3r1')
            )
        return NavigationDirective(
            'from_mortuary_f3rc_to_mortuary_f3r1_closed'
        )


class FromMortuaryF3RcToMortuaryF3R3u(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f3rc'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3r3'):
            return 'FromMortuaryF3RcToMortuaryF3R3_tooltip1' # Пройти в восточный зал
        return 'FromMortuaryF3RcToMortuaryF3R3_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f3/door_f3r3u_f3rc_opened.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f3r3')
        )


class FromMortuaryF3RcToMortuaryF3R3d(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f3rc'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3r3'):
            return 'FromMortuaryF3RcToMortuaryF3R3_tooltip1' # Пройти в восточный зал
        return 'FromMortuaryF3RcToMortuaryF3R3_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f3/door_f3r3d_f3rc_opened.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f3r3')
        )


class FromMortuaryF3RcToMortuaryF3R2l(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f3rc'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3r2'):
            return 'FromMortuaryF3RcToMortuaryF3R2_tooltip1' # Пройти в северный зал
        return 'FromMortuaryF3RcToMortuaryF3R2_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f3/door_f3r2l_f3rc_opened.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f3r2')
        )


class FromMortuaryF3RcToMortuaryF3R2r(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f3rc'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3r2'):
            return 'FromMortuaryF3RcToMortuaryF3R2_tooltip1' # Пройти в северный зал
        return 'FromMortuaryF3RcToMortuaryF3R2_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f3/door_f3r2r_f3rc_opened.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f3r2')
        )


class FromMortuaryF3RcToMortuaryF3R4l(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f3rc'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3r4'):
            return 'FromMortuaryF3RcToMortuaryF3R4_tooltip1' # Пройти в южный зал
        return 'FromMortuaryF3RcToMortuaryF3R4_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f3/door_f3r4l_f3rc_opened.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f3r4')
        )


class FromMortuaryF3RcToMortuaryF3R4r(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f3rc'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3r4'):
            return 'FromMortuaryF3RcToMortuaryF3R4_tooltip1' # Пройти в южный зал
        return 'FromMortuaryF3RcToMortuaryF3R4_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f3/door_f3r4r_f3rc_opened.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f3r4')
        )


class MortuaryF3RcShadow(ShadowItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
        self.location_id = 'mortuary_f3rc'
    def texture(self):
        return 'bg/mortuary/f3/shadow_f3rc.webp'


class InMortuaryF3RcPickGarbage(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_looted_InMortuaryF3RcPickGarbage() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f3rc'
    def tooltip(self):
        return 'InMortuaryF3RcPickGarbage_tooltip1' # Взять мусор
    def texture(self):
        return 'bg/mortuary/f3/loot_f3rc_garbage.webp'
    def jump(self):
        return NavigationDirective(
            'mortuary_f3r2_loot_garbage',
            lambda: self.state_manager.world_manager.set_looted_InMortuaryF3RcPickGarbage(True)
        )


class InMortuaryF3RcPickNeedle(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_looted_InMortuaryF3RcPickNeedle() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f3rc'
    def tooltip(self):
        return 'InMortuaryF3RcPickNeedle_tooltip1' # Взять иголку и нитку
    def texture(self):
        return 'bg/mortuary/f3/loot_f3rc_needle.webp'
    def jump(self):
        return NavigationDirective(
            'mortuary_f3r2_loot_needle',
            lambda: self.state_manager.world_manager.set_looted_InMortuaryF3RcPickNeedle(True)
        )


class InMortuaryF3RcPickMortuaryKey(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_looted_InMortuaryF3RcPickMortuaryKey() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f3rc'
    def tooltip(self):
        return 'InMortuaryF3RcPickMortuaryKey_tooltip1' # Взять ключ
    def texture(self):
        return 'bg/mortuary/f3/loot_f3rc_mortuary_key.webp'
    def jump(self):
        return NavigationDirective(
            'mortuary_f3r4_loot_mortuary_key',
            lambda: self.state_manager.world_manager.set_looted_InMortuaryF3RcPickMortuaryKey(True)
        )


class InMortuaryF3RcDust(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_dust() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f3rc'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_dust_times() > 0:
            return 'InMortuaryF3RcDust_tooltip1' # Поговорить с тленным
        return 'InMortuaryF3RcDust_tooltip2' # Поговорить с человеком
    def texture(self):
        return 'animated_dust_stand_s'
    def jump(self):
        return NavigationDirective(
            'dust_speak'
        )


class InMortuaryF3RcDustfem(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_dustfem() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f3rc'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_dustfem_times() > 0:
            return 'InMortuaryF3RcDustfem_tooltip1' # Поговорить с тленной
        return 'InMortuaryF3RcDustfem_tooltip2' # Поговорить с человеком
    def texture(self):
        return 'animated_dustfem_stand_s'
    def jump(self):
        return NavigationDirective(
            'dustfem_speak'
        )


class InMortuaryF3RcS42(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_s42() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f3rc'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_s42_times() > 0:
            return 'InMortuaryF3RcS42_tooltip1' # Поговорить со скелетом «42»'
        return 'InMortuaryF3RcS42_tooltip2' # Поговорить со скелетом в комбинезоне'
    def texture(self):
        return 'animated_s42_stand_s'
    def jump(self):
        return NavigationDirective(
            's42_speak'
        )


class InMortuaryF3RcS748(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_s748() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f3rc'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_s748_times() > 0:
            return 'InMortuaryF3RcS748_tooltip1' # Поговорить со скелетом «748»
        return 'InMortuaryF3RcS748_tooltip2' # Поговорить со скелетом со вставной челюстью
    def texture(self):
        return 'animated_s748_stand_s'
    def jump(self):
        return NavigationDirective(
            's748_speak'
        )


class InMortuaryF3RcS863(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_s863() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f3rc'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_s863_times() > 0:
            return 'InMortuaryF3RcS863_tooltip1' # Поговорить со скелетом «863»
        return 'InMortuaryF3RcS863_tooltip2' # Поговорить со скелетом ветерана
    def texture(self):
        return 'animated_s863_stand_s'
    def jump(self):
        return NavigationDirective(
            's863_speak'
        )


class InMortuaryF3RcS996(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_s996() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f3rc'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_s996_times() > 0:
            return 'InMortuaryF3RcS996_tooltip1' # Поговорить со скелетом «996»
        return 'InMortuaryF3RcS996_tooltip2' # Поговорить со скелетом со словом на лбу
    def texture(self):
        return 'animated_s996_stand_s'
    def jump(self):
        return NavigationDirective(
            's996_speak'
        )


class InMortuaryF3RcZm310(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zm310() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f3rc'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zm310_times() > 0:
            return 'InMortuaryF3RcZm310_tooltip1' # Поговорить с трупом «310»
        return 'InMortuaryF3RcZm310_tooltip2' # Поговорить с безжизненным трупом
    def texture(self):
        return 'animated_zm310_stand_s'
    def jump(self):
        return NavigationDirective(
            'zm310_speak'
        )


class InMortuaryF3RcZm475(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zm475() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f3rc'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zm475_times() > 0:
            return 'InMortuaryF3RcZm475_tooltip1' # Поговорить с трупом «475»
        return 'InMortuaryF3RcZm475_tooltip2' # Поговорить с проржавевшим трупом
    def texture(self):
        return 'animated_zm475_stand_s'
    def jump(self):
        return NavigationDirective(
            'zm475_speak',
        )


class InMortuaryF3RcZm613(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zm613() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f3rc'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zm613_times() > 0:
            return 'InMortuaryF3RcZm613_tooltip1' # Поговорить с трупом «613»
        return 'InMortuaryF3RcZm613_tooltip2' # Поговорить с изрезанным трупом
    def texture(self):
        return 'animated_zm613_stand_s'
    def jump(self):
        return NavigationDirective(
            'zm613_speak'
        )


class InMortuaryF3RcZf832(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zf832() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f3rc'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zf832_times() > 0:
            return 'InMortuaryF3RcZf832_tooltip1' # Поговорить с трупом «832»
        return 'InMortuaryF3RcZf832_tooltip2' # Поговорить с красивым трупом
    def texture(self):
        return 'animated_zf832_stand_s'
    def jump(self):
        return NavigationDirective(
            'zf832_speak'
        )


class InMortuaryF3RcZm1146(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zm1146()
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zm1146_times() > 0:
            return 'InMortuaryF3RcZm1146_tooltip1' # Поговорить с трупом «1146»
        return 'InMortuaryF3RcZm1146_tooltip2' # Поговорить с ходячим плешивым трупом
    def texture(self):
        return 'animated_zm1146_stand_s'
    def jump(self):
        return NavigationDirective(
            'zm1146_speak'
        )


class InMortuaryF3RcZf1148(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zf1148() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f3rc'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zf1148_times() > 0:
            return 'InMortuaryF3RcZf1148_tooltip1' # Поговорить с трупом «1148»
        return 'InMortuaryF3RcZf1148_tooltip2' # Поговорить с татуированным трупом
    def texture(self):
        return 'animated_zf1148_stand_s'
    def jump(self):
        return NavigationDirective(
            'zf1148_speak'
        )
