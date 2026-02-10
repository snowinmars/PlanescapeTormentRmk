from game.map.Navigation import (
    NavigationJump ,
    NavigationSnack,
    NavigationLoot
)
from game.map.map_items  import (
    ContainerItem,
    DoorItem     ,
    NpcItem      ,
    ShadowItem
)


class FromMortuaryF3R1ToMortuaryF2R1(DoorItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 243, 147)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f3r1'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r1'):
            return 'FromMortuaryF3R1ToMortuaryF2R1_tooltip1' # Спуститься на второй этаж
        return 'FromMortuaryF3R1ToMortuaryF2R1_tooltip2' # Спуститься по лестнице
    def texture(self):
        return 'bg/mortuary/f3/door_f3r1_f2r1_opened.webp'
    def jump(self):
        return NavigationJump('map_mortuary_f2r1')


class FromMortuaryF3R1uToMortuaryF3Rc(DoorItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 256, 192)
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
        return NavigationJump('map_mortuary_f3rc')


class FromMortuaryF3R1dToMortuaryF3Rc(DoorItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 320, 256)
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
        return NavigationJump('map_mortuary_f3rc')


class MortuaryF3R1Shadow(ShadowItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 946, 778)
        self.location_id = 'mortuary_f3r1'
    def texture(self):
        return 'bg/mortuary/f3/shadow_f3r1.webp'


###


class FromMortuaryF3R2lToMortuaryF3Rc(DoorItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 118, 357)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f3r2'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3rc'):
            return 'FromMortuaryF3R2rToMortuaryF3Rc_tooltip1' # Пройти в центральный зал
        return 'FromMortuaryF3R2rToMortuaryF3Rc_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f3/door_f3r2l_f3rc_opened.webp'
    def jump(self):
        return NavigationJump('map_mortuary_f3rc')


class FromMortuaryF3R2rToMortuaryF3Rc(DoorItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 95, 338)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f3r2'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3rc'):
            return 'FromMortuaryF3R2rToMortuaryF3Rc_tooltip1' # Пройти в центральный зал
        return 'FromMortuaryF3R2rToMortuaryF3Rc_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f3/door_f3r2r_f3rc_opened.webp'
    def jump(self):
        return NavigationJump('map_mortuary_f3rc')


class MortuaryF3R2Shadow(ShadowItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 994, 703)
        self.location_id = 'mortuary_f3r2'
    def texture(self):
        return 'bg/mortuary/f3/shadow_f3r2.webp'


class InMortuaryF3R2PickTaskList(ContainerItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 165, 178, ['tasklist'])
    def when(self):
        return not self.state_manager.world_manager.get_looted_InMortuaryF3R2PickTaskList() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f3r2'
    def tooltip(self):
        return 'InMortuaryF3R2PickTaskList_tooltip1' # Взять бумагу
    def texture(self):
        return 'bg/mortuary/f3/loot_f3r2_mortuary_task_list.webp'
    def jump(self):
        return NavigationLoot()


###


class FromMortuaryF3R3ToMortuaryF2R7(DoorItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 232, 159)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f3r3'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r7'):
            return 'FromMortuaryF3R3ToMortuaryF2R7_tooltip1'
        return 'FromMortuaryF3R3ToMortuaryF2R7_tooltip2'
    def texture(self):
        return 'bg/mortuary/f3/door_f3r3_f2r7_opened.webp'
    def jump(self):
        return NavigationJump('map_mortuary_f2r7')


class FromMortuaryF3R3uToMortuaryF3Rc(DoorItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 236, 252)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f3r3'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3rc'):
            return 'FromMortuaryF3R3ToMortuaryF3Rc_tooltip1' # Пройти в центральный зал
        return 'FromMortuaryF3R3ToMortuaryF3Rc_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f3/door_f3r3u_f3rc_opened.webp'
    def jump(self):
        return NavigationJump('map_mortuary_f3rc')


class FromMortuaryF3R3dToMortuaryF3Rc(DoorItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 276, 251)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f3r3'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3rc'):
            return 'FromMortuaryF3R3ToMortuaryF3Rc_tooltip1' # Пройти в центральный зал
        return 'FromMortuaryF3R3ToMortuaryF3Rc_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f3/door_f3r3d_f3rc_opened.webp'
    def jump(self):
        return NavigationJump('map_mortuary_f3rc')


class MortuaryF3R3Shadow(ShadowItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 1022, 774)
        self.location_id = 'mortuary_f3r3'
    def texture(self):
        return 'bg/mortuary/f3/shadow_f3r3.webp'


###


class FromMortuaryF3R4lToMortuaryF3Rc(DoorItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 110, 273)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f3r4'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3rc'):
            return 'FromMortuaryF3R4rToMortuaryF3Rc_tooltip1' # Пройти в центральный зал
        return 'FromMortuaryF3R4rToMortuaryF3Rc_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f3/door_f3r4l_f3rc_opened.webp'
    def jump(self):
        return NavigationJump('map_mortuary_f3rc')


class FromMortuaryF3R4rToMortuaryF3Rc(DoorItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 119, 266)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f3r4'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3rc'):
            return 'FromMortuaryF3R4rToMortuaryF3Rc_tooltip1' # Пройти в центральный зал
        return 'FromMortuaryF3R4rToMortuaryF3Rc_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f3/door_f3r4r_f3rc_opened.webp'
    def jump(self):
        return NavigationJump('map_mortuary_f3rc')


class MortuaryF3R4Shadow(ShadowItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 1016, 551)
        self.location_id = 'mortuary_f3r4'
    def texture(self):
        return 'bg/mortuary/f3/shadow_f3r4.webp'


class InMortuaryF3R4PickPrybar(ContainerItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 136, 114, ['prybar'])
    def when(self):
        return not self.state_manager.world_manager.get_looted_InMortuaryF3R4PickPrybar() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f3r4'
    def tooltip(self):
        return 'InMortuaryF3R4PickPrybar_tooltip1' # Взять ломик
    def texture(self):
        return 'bg/mortuary/f3/loot_f3r4_prybar.webp'
    def jump(self):
        return NavigationLoot()


class InMortuaryF3R4PickDustmanRequest(ContainerItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 127, 148, ['drequest'])
    def when(self):
        return not self.state_manager.world_manager.get_looted_InMortuaryF3R4PickDustmanRequest() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f3r4'
    def tooltip(self):
        return 'InMortuaryF3R4PickDustmanRequest_tooltip1' # Взять бумагу
    def texture(self):
        return 'bg/mortuary/f3/loot_f3r4_dustman_request.webp'
    def jump(self):
        return NavigationLoot()


class InMortuaryF3R4Zm79(NpcItem):
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
        return NavigationJump('speak_zm79')


class InMortuaryF3R4Zf679(NpcItem):
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
        return NavigationJump('speak_zf679')


class InMortuaryF3R4S1221(NpcItem):
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
        return NavigationJump('speak_s1221')


###


class FromMortuaryF3RcToMortuaryF3R1u(DoorItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 256, 192)
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
        if self.state_manager.inventory_items_manager.is_own_item('keymo2'):
            return NavigationJump('map_mortuary_f3r1')
        return NavigationSnack('FromMortuaryF3RcToMortuaryF3R1u_snack1')


class FromMortuaryF3RcToMortuaryF3R1d(DoorItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 320, 256)
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
        if self.state_manager.inventory_items_manager.is_own_item('keymo2'):
            return NavigationJump('map_mortuary_f3r1')
        return NavigationSnack('FromMortuaryF3RcToMortuaryF3R1d_snack1',)


class FromMortuaryF3RcToMortuaryF3R3u(DoorItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 236, 252)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f3rc'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3r3'):
            return 'FromMortuaryF3RcToMortuaryF3R3_tooltip1' # Пройти в восточный зал
        return 'FromMortuaryF3RcToMortuaryF3R3_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f3/door_f3r3u_f3rc_opened.webp'
    def jump(self):
        return NavigationJump('map_mortuary_f3r3')


class FromMortuaryF3RcToMortuaryF3R3d(DoorItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 276, 251)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f3rc'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3r3'):
            return 'FromMortuaryF3RcToMortuaryF3R3_tooltip1' # Пройти в восточный зал
        return 'FromMortuaryF3RcToMortuaryF3R3_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f3/door_f3r3d_f3rc_opened.webp'
    def jump(self):
        return NavigationJump('map_mortuary_f3r3')


class FromMortuaryF3RcToMortuaryF3R2l(DoorItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 118, 357)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f3rc'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3r2'):
            return 'FromMortuaryF3RcToMortuaryF3R2_tooltip1' # Пройти в северный зал
        return 'FromMortuaryF3RcToMortuaryF3R2_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f3/door_f3r2l_f3rc_opened.webp'
    def jump(self):
        return NavigationJump('map_mortuary_f3r2')


class FromMortuaryF3RcToMortuaryF3R2r(DoorItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 95, 338)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f3rc'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3r2'):
            return 'FromMortuaryF3RcToMortuaryF3R2_tooltip1' # Пройти в северный зал
        return 'FromMortuaryF3RcToMortuaryF3R2_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f3/door_f3r2r_f3rc_opened.webp'
    def jump(self):
        return NavigationJump('map_mortuary_f3r2')


class FromMortuaryF3RcToMortuaryF3R4l(DoorItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 110, 273)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f3rc'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3r4'):
            return 'FromMortuaryF3RcToMortuaryF3R4_tooltip1' # Пройти в южный зал
        return 'FromMortuaryF3RcToMortuaryF3R4_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f3/door_f3r4l_f3rc_opened.webp'
    def jump(self):
        return NavigationJump('map_mortuary_f3r4')


class FromMortuaryF3RcToMortuaryF3R4r(DoorItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 119, 266)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f3rc'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3r4'):
            return 'FromMortuaryF3RcToMortuaryF3R4_tooltip1' # Пройти в южный зал
        return 'FromMortuaryF3RcToMortuaryF3R4_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f3/door_f3r4r_f3rc_opened.webp'
    def jump(self):
        return NavigationJump('map_mortuary_f3r4')


class MortuaryF3RcShadow(ShadowItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 3623, 2551)
        self.location_id = 'mortuary_f3rc'
    def texture(self):
        return 'bg/mortuary/f3/shadow_f3rc.webp'


class InMortuaryF3RcPickGarbage(ContainerItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 155, 187, ['junk'])
    def when(self):
        return not self.state_manager.world_manager.get_looted_InMortuaryF3RcPickGarbage() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f3rc'
    def tooltip(self):
        return 'InMortuaryF3RcPickGarbage_tooltip1' # Взять мусор
    def texture(self):
        return 'bg/mortuary/f3/loot_f3rc_garbage.webp'
    def jump(self):
        return NavigationLoot()


class InMortuaryF3RcPickNeedle(ContainerItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 141, 180, ['needle'])
    def when(self):
        return not self.state_manager.world_manager.get_looted_InMortuaryF3RcPickNeedle() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f3rc'
    def tooltip(self):
        return 'InMortuaryF3RcPickNeedle_tooltip1' # Взять иголку и нитку
    def texture(self):
        return 'bg/mortuary/f3/loot_f3rc_needle.webp'
    def jump(self):
        return NavigationLoot()


class InMortuaryF3RcPickMortuaryKey(ContainerItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 146, 199, ['keymo2'])
    def when(self):
        return not self.state_manager.world_manager.get_looted_InMortuaryF3RcPickMortuaryKey() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f3rc'
    def tooltip(self):
        return 'InMortuaryF3RcPickMortuaryKey_tooltip1' # Взять ключ
    def texture(self):
        return 'bg/mortuary/f3/loot_f3rc_mortuary_key.webp'
    def jump(self):
        return NavigationLoot()


class InMortuaryF3RcDust(NpcItem):
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
        return NavigationJump('speak_dust')


class InMortuaryF3RcDustfem(NpcItem):
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
        return NavigationJump('speak_dustfem')


class InMortuaryF3RcS42(NpcItem):
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
        return NavigationJump('speak_s42')


class InMortuaryF3RcS748(NpcItem):
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
        return NavigationJump('speak_s748')


class InMortuaryF3RcS863(NpcItem):
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
        return NavigationJump('speak_s863')


class InMortuaryF3RcS996(NpcItem):
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
        return NavigationJump('speak_s996')


class InMortuaryF3RcZm310(NpcItem):
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
        return NavigationJump('speak_zm310')


class InMortuaryF3RcZm475(NpcItem):
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
        return NavigationJump('speak_zm475')


class InMortuaryF3RcZm613(NpcItem):
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
        return NavigationJump('speak_zm613')


class InMortuaryF3RcZf832(NpcItem):
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
        return NavigationJump('speak_zf832')


class InMortuaryF3RcZm1146(NpcItem):
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
        return NavigationJump('speak_zm1146')


class InMortuaryF3RcZf1148(NpcItem):
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
        return NavigationJump('speak_zf1148')
