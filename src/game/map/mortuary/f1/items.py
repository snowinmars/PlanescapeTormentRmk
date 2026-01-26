from game.map.NavigationDirective import (NavigationDirective)
from game.map.map_items import (
    ShadowItem,
    MenuItem
)


class FromMortuaryF1R1ToMortuaryF2R1(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f1r1'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r1'):
            return 'FromMortuaryF1R1ToMortuaryF2R1_tooltip1' # Подняться на второй этаж
        return 'FromMortuaryF1R1ToMortuaryF2R1_tooltip2' # Подняться по лестнице
    def texture(self):
        return 'bg/mortuary/f1/door_f1r1_f2r1_opened.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f2r1')
        )


class FromMortuaryF1R1ToMortuaryF1R2(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f1r1'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f1r2'):
            return 'FromMortuaryF1R1ToMortuaryF1R2_tooltip1' # Пройти в северо-восточную усыпальню
        return 'FromMortuaryF1R1ToMortuaryF1R2_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f1/door_f1r1_f1r2_opened.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f1r2')
        )


class FromMortuaryF1R1ToMortuaryF1R4(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f1r1'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f1r4'):
            return 'FromMortuaryF1R1ToMortuaryF1R4_tooltip1' # Пройти в юго-западную усыпальню
        return 'FromMortuaryF1R1ToMortuaryF1R4_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f1/door_f1r4_f1r1_opened.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f1r4')
        )


class FromMortuaryF1R1ToMortuaryF1Rc(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f1r1'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f1rc'):
            return 'FromMortuaryF1R1ToMortuaryF1Rc_tooltip1' # Пройти в центральную усыпальню
        return 'FromMortuaryF1R1ToMortuaryF1Rc_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f1/door_f1r1_f1rc_opened.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f1rc')
        )


class FromMortuaryF1R1ToGameEnd(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.world_manager.get_gate_open() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f1r1'
    def tooltip(self):
        return 'FromMortuaryF1R1ToGameEnd_tooltip1' # Выйти из Морга
    def texture(self):
        return 'bg/mortuary/f1/door_f1r1_sigil_opened.webp'
    def jump(self):
        return NavigationDirective(
            'end'
        )


class MortuaryF1R1Shadow(ShadowItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
        self.location_id = 'mortuary_f1r1'
    def texture(self):
        return 'bg/mortuary/f1/shadow_f1r1.webp'


class InMortuaryF1R1Soego(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_soego() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f1r1'
    def texture(self):
        return 'animated_soego_stand_s'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_soego_times() > 0:
            return 'InMortuaryF1R1Soego_tooltip1' # Поговорить с Соего
        return 'InMortuaryF1R1Soego_tooltip2' # Подойти к человеку
    def jump(self):
        return NavigationDirective(
            'soego_speak'
        )


###


class FromMortuaryF1R2ToMortuaryF1Rc(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f1r2'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f1rc'):
            return 'FromMortuaryF1R2ToMortuaryF1Rc_tooltip1' # Пройти в центральную усыпальню
        return 'FromMortuaryF1R2ToMortuaryF1Rc_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f1/door_f1r2_f1rc_opened.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f1rc')
        )


class FromMortuaryF1R2ToMortuaryF1R3(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f1r2'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f1r3'):
            return 'FromMortuaryF1R2ToMortuaryF1R3_tooltip1' # Пройти в северную усыпальню
        return 'FromMortuaryF1R2ToMortuaryF1R3_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f1/door_f1r2_f1r3_opened.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f1r3')
        )


class FromMortuaryF1R2ToMortuaryF1R1(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f1r2'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f1r1'):
            return 'FromMortuaryF1R2ToMortuaryF1R1_tooltip1' # Пройти в главный зал
        return 'FromMortuaryF1R2ToMortuaryF1R1_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f1/door_f1r1_f1r2_opened.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f1r1')
        )


class MortuaryF1R2Shadow(ShadowItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
        self.location_id = 'mortuary_f1r2'
    def texture(self):
        return 'bg/mortuary/f1/shadow_f1r2.webp'


class InMortuaryF1R2Deionarra(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_deionarra() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f1r2'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_deionarra_times() > 0:
            return 'InMortuaryF1R2Deionarra_tooltip1' # Поговорить с Дейонаррой
        return 'InMortuaryF1R2Deionarra_tooltip2' # Подойти к призраку
    def texture(self):
        return 'animated_deionarra_stand_s'
    def jump(self):
        return NavigationDirective(
            'deionarra_speak'
        )


###


class FromMortuaryF1R3ToMortuaryF1R2(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f1r3'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f1r2'):
            return 'FromMortuaryF1R3ToMortuaryF1R2_tooltip1' # Пройти в северо-восточную усыпальню
        return 'FromMortuaryF1R3ToMortuaryF1R2_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f1/door_f1r2_f1r3_opened.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f1r2')
        )


class FromMortuaryF1R3ToMortuaryF1R4(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f1r3'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f1r4'):
            return 'FromMortuaryF1R3ToMortuaryF1R4_tooltip1' # Пройти в юго-западную усыпальню
        return 'FromMortuaryF1R3ToMortuaryF1R4_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f1/door_f1r3_f1r4_opened.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f1r4')
        )


class FromMortuaryF1R3ToMortuaryF1Rc(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f1r3'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f1rc'):
            return 'FromMortuaryF1R3ToMortuaryF1Rc_tooltip1' # Пройти в центральную усыпальню
        return 'FromMortuaryF1R3ToMortuaryF1Rc_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f1/door_f1r3_f1rc_opened.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f1rc')
        )


class MortuaryF1R3Shadow(ShadowItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
        self.location_id = 'mortuary_f1r3'
    def texture(self):
        return 'bg/mortuary/f1/shadow_f1r3.webp'


class InMortuaryF1R3Zf114(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zf114() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f1r3'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zf114_times() > 0:
            return 'InMortuaryF1R3Zf114_tooltip1' # Поговорить с трупом «114»
        return 'InMortuaryF1R3Zf114_tooltip2' # Поговорить с ходячим трупом повешенного
    def texture(self):
        return 'animated_zf114_stand_s'
    def jump(self):
        return NavigationDirective(
            'zf114_speak'
        )


class InMortuaryF1R3Zm1041(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zm1041() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f1r3'

    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zm1041_times() > 0:
            return 'InMortuaryF1R3Zm1041_tooltip1' # Поговорить с трупом «1041»
        return 'InMortuaryF1R3Zm1041_tooltip2' # Поговорить с ходячим трупом повешенного
    def texture(self):
        return 'animated_zm1041_stand_s'
    def jump(self):
        return NavigationDirective(
            'zm1041_speak'
        )


class InMortuaryF1R3Xach(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_xach() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f1r3'
    def tooltip(self):
        if self.state_manager.world_manager.get_know_xachariah_name():
            return 'InMortuaryF1R3Xach_tooltip1' # Поговорить с Захарией
        if self.state_manager.world_manager.get_talked_to_zm331_times() > 0:
            return 'InMortuaryF1R3Xach_tooltip2' # Поговорить с трупом «331»
        return 'InMortuaryF1R3Xach_tooltip3' # Поговорить со слепым трупом
    def texture(self):
        return 'animated_xach_stand_s'
    def jump(self):
        return NavigationDirective(
            'xach_speak'
        )


###


class FromMortuaryF1R4ToMortuaryF1R3(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f1r4'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f1r3'):
            return 'FromMortuaryF1R4ToMortuaryF1R3_tooltip1' # Пройти в северную усыпальню
        return 'FromMortuaryF1R4ToMortuaryF1R3_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f1/door_f1r3_f1r4_opened.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f1r3')
        )


class FromMortuaryF1R4ToMortuaryF1R1(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f1r4'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f1r1'):
            return 'FromMortuaryF1R4ToMortuaryF1R1_tooltip1' # Пройти в главный зал
        return 'FromMortuaryF1R4ToMortuaryF1R1_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f1/door_f1r4_f1r1_opened.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f1r1')
        )


class FromMortuaryF1R4ToMortuaryF1Rc(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f1r4'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f1rc'):
            return 'FromMortuaryF1R4ToMortuaryF1Rc_tooltip1' # Пройти в центральную усыпальню
        return 'FromMortuaryF1R4ToMortuaryF1Rc_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f1/door_f1r4_f1rc_opened.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f1rc')
        )


class MortuaryF1R4Shadow(ShadowItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
        self.location_id = 'mortuary_f1r4'
    def texture(self):
        return 'bg/mortuary/f1/shadow_f1r4.webp'


class FromMortuaryF1R4ToMortuaryF2R7(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f1r4'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r7'):
            return 'FromMortuaryF1R4ToMortuaryF2R7_tooltip1' # Подняться на второй этаж
        return 'FromMortuaryF1R4ToMortuaryF2R7_tooltip2' # Подняться по лестнице
    def texture(self):
        return 'bg/mortuary/f1/door_f1r4_f2r7_opened.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f2r7')
        )


class InMortuaryF1R4Zm732(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zm732() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f1r4'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zm732_times() > 0:
            return 'InMortuaryF1R4Zm732_tooltip1' # Поговорить с трупом «732»
        return 'InMortuaryF1R4Zm732_tooltip2' # Поговорить с ходячим трупом повешенного
    def texture(self):
        return 'animated_zm732_stand_s'
    def jump(self):
        return NavigationDirective(
            'zm732_speak'
        )


###


class FromMortuaryF1RcToMortuaryF1R1(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f1rc'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f1r1'):
            return 'FromMortuaryF1RcToMortuaryF1R1_tooltip1' # Пройти в главный зал
        return 'FromMortuaryF1RcToMortuaryF1R1_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f1/door_f1r1_f1rc_opened.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f1r1')
        )


class FromMortuaryF1RcToMortuaryF1R2(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f1rc'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f1r2'):
            return 'FromMortuaryF1RcToMortuaryF1R2_tooltip1' # Пройти в северо-восточную усыпальню
        return 'FromMortuaryF1RcToMortuaryF1R2_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f1/door_f1r2_f1rc_opened.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f1r2')
        )


class FromMortuaryF1RcToMortuaryF1R3(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f1rc'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f1r3'):
            return 'FromMortuaryF1RcToMortuaryF1R3_tooltip1' # Пройти в северную усыпальню
        return 'FromMortuaryF1RcToMortuaryF1R3_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f1/door_f1r3_f1rc_opened.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f1r3')
        )


class FromMortuaryF1RcToMortuaryF1R4(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f1rc'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f1r4'):
            return 'FromMortuaryF1RcToMortuaryF1R4_tooltip1' # Пройти в юго-западную усыпальню
        return 'FromMortuaryF1RcToMortuaryF1R4_tooltip2' # Пройти в комнату
    def texture(self):
        return 'bg/mortuary/f1/door_f1r4_f1rc_opened.webp'
    def jump(self):
        return NavigationDirective(
            'map_dispatcher',
            lambda: self.state_manager.locations_manager.set_location('mortuary_f1r4')
        )


class MortuaryF1RcShadow(ShadowItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
        self.location_id = 'mortuary_f1rc'
    def texture(self):
        return 'bg/mortuary/f1/shadow_f1rc.webp'


class InMortuaryF1RcGiantsk(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_giantsk() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f1rc'
    def tooltip(self):
        return 'InMortuaryF1RcGiantsk_tooltip1' # Поговорить с гиганским скелетом
    def texture(self):
        return 'animated_giantsk_stand_s'
    def jump(self):
        return NavigationDirective(
            'giantsk_speak'
        )
