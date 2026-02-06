from game.map.Navigation import (NavigationJump, NavigationSnack)
from game.map.map_items import (
    ShadowItem,
    MenuItem
)


class FromMortuaryF2R1ToMortuaryF2R2(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 257, 256)
    def when(self):
        return self.state_manager.inventory_items_manager.is_own_item('has_intro_key') and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f2r1'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r2'):
            return 'FromMortuaryF2R1ToMortuaryF2R2_tooltip1' # Пройти в западную комнату
        return 'FromMortuaryF2R1ToMortuaryF2R2_tooltip2' # Пройти в комнату
    def texture(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r2'):
            return 'bg/mortuary/f2/door_f2r1_f2r2_opened.webp'
        return 'bg/mortuary/f2/door_f2r1_f2r2_closed.webp'
    def jump(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r2'):
            return NavigationJump('map_mortuary_f2r2')
        return NavigationJump('speak_morte2', before_jump=lambda: self.state_manager.locations_manager.set_location('mortuary_f2r2'))


class FromMortuaryF2R1ToMortuaryF2R8(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 256, 320)
    def when(self):
        return self.state_manager.inventory_items_manager.is_own_item('has_intro_key') and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f2r1'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r8'):
            return 'FromMortuaryF2R1ToMortuaryF2R8_tooltip1' # Пройти в южную комнату
        return 'FromMortuaryF2R1ToMortuaryF2R8_tooltip2' # Пройти в комнату
    def texture(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r8'):
            return 'bg/mortuary/f2/door_f2r8_f2r1_opened.webp'
        return 'bg/mortuary/f2/door_f2r8_f2r1_closed.webp'
    def jump(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r8') or \
           self.state_manager.inventory_items_manager.is_own_item('has_mortuary_key'):
            return NavigationJump('map_mortuary_f2r8')
        return NavigationSnack('FromMortuaryF2R1ToMortuaryF2R8_snack1')


class FromMortuaryF2R1ToMortuaryF3R1(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 208, 193)
    def when(self):
        return self.state_manager.inventory_items_manager.is_own_item('has_intro_key') and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f2r1'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3r1') or \
           self.state_manager.locations_manager.is_visited('mortuary_f3r3'):
            return 'FromMortuaryF2R1ToMortuaryF3R1_tooltip1' # Подняться на третий этаж
        return 'FromMortuaryF2R1ToMortuaryF3R1_tooltip2' # Подняться по лестнице
    def texture(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3r1') or \
           self.state_manager.locations_manager.is_visited('mortuary_f3r3'):
            return 'bg/mortuary/f2/door_f2r1_f3r1_opened.webp'
        return 'bg/mortuary/f2/door_f2r1_f3r1_closed.webp'
    def jump(self):
        if self.state_manager.inventory_items_manager.is_own_item('has_mortuary_key') or \
           self.state_manager.locations_manager.is_visited('mortuary_f3r1') or \
           self.state_manager.locations_manager.is_visited('mortuary_f3r3'):
            return NavigationJump('map_mortuary_f3r1')
        return NavigationSnack('FromMortuaryF2R1ToMortuaryF3R1_snack1')


class FromMortuaryF2R1ToMortuaryF1R1(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 112, 193)
    def when(self):
        return self.state_manager.inventory_items_manager.is_own_item('has_intro_key') and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f2r1'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f1r1') or \
           self.state_manager.locations_manager.is_visited('mortuary_f1r4'):
            return 'FromMortuaryF2R1ToMortuaryF1R1_tooltip1' # Спуститься на третий этаж
        return 'FromMortuaryF2R1ToMortuaryF1R1_tooltip2' # Спуститься по лестнице
    def texture(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f1r1') or \
           self.state_manager.locations_manager.is_visited('mortuary_f1r4'):
            return 'bg/mortuary/f2/door_f2r1_f1r1_opened.webp'
        return 'bg/mortuary/f2/door_f2r1_f1r1_closed.webp'
    def jump(self):
        if self.state_manager.inventory_items_manager.is_own_item('has_mortuary_key') or \
           self.state_manager.locations_manager.is_visited('mortuary_f1r1') or \
           self.state_manager.locations_manager.is_visited('mortuary_f1r4'):
            return NavigationJump('map_mortuary_f1r1')
        return NavigationSnack('FromMortuaryF2R1ToMortuaryF1R1_snack1')


class MortuaryF2R1Shadow(ShadowItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 1743,1334)
        self.location_id = 'mortuary_f2r1'
    def texture(self):
        return 'bg/mortuary/f2/shadow_f2r1.webp'


class InMortuaryF2R1PickScalpel(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 161, 188)
    def when(self):
        return not self.state_manager.world_manager.get_looted_InMortuaryF2R1PickScalpel() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f2r1'
    def tooltip(self):
        return 'InMortuaryF2R1PickScalpel_tooltip1' # Обыскать
    def texture(self):
        return 'bg/mortuary/f2/loot_f2r1_scalpel.webp'
    def jump(self):
        return NavigationSnack('InMortuaryF2R1PickScalpel_snack1', texture='InMortuaryF2R1PickScalpel_snack1_texture', on_pickup=self._on_pickup)
    def _on_pickup(self):
        if not self.state_manager.world_manager.get_looted_InMortuaryF2R1PickScalpel():
            self.state_manager.inventory_items_manager.pick_item('has_scalpel')
            self.state_manager.world_manager.set_looted_InMortuaryF2R1PickScalpel(True)


class InMortuaryF2R1Zm569(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zm569() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f2r1'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zm569_times() > 0:
            return 'InMortuaryF2R1Zm569_tooltip1' # Поговорить с трупом «569»
        return 'InMortuaryF2R1Zm569_tooltip2' # Поговорить с ходячим плешивым трупом
    def texture(self):
        return 'animated_zm569_stand_s'
    def jump(self):
        return NavigationJump('speak_zm569')


class InMortuaryF2R1Zm825(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zm825() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f2r1'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zm825_times() > 0:
            return 'InMortuaryF2R1Zm825_tooltip1' # Поговорить с трупом «825»
        return 'InMortuaryF2R1Zm825_tooltip2' # Поговорить с ходячим трупом повешенного
    def texture(self):
        return 'animated_zm825_stand_s'
    def jump(self):
        return NavigationJump('speak_zm825')


class InMortuaryF2R1Zm782(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zm782() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f2r1'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zm782_times() > 0:
            return 'InMortuaryF2R1Zm782_tooltip1' # Поговорить с трупом «782»
        return 'InMortuaryF2R1Zm782_tooltip2' # Поговорить с ходячим трупом, полным ненависти
    def texture(self):
        return 'animated_zm782_stand_s'
    def jump(self):
        return NavigationJump('speak_zm782')


###


class FromMortuaryF2R2ToMortuaryF2R1(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 255,256)
    def when(self):
         return self.state_manager.locations_manager.get_location() == 'mortuary_f2r2'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r1'):
            return 'FromMortuaryF2R2ToMortuaryF2R1_tooltip1' # Пройти в юго-западную препараторскую
        return 'FromMortuaryF2R2ToMortuaryF2R1_tooltip2' # Пройти в комнату
    def texture(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r1'):
            return 'bg/mortuary/f2/door_f2r1_f2r2_opened.webp'
        return 'bg/mortuary/f2/door_f2r1_f2r2_closed.webp'
    def jump(self):
        return NavigationJump('map_mortuary_f2r1')


class FromMortuaryF2R2ToMortuaryF2R3(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 321, 256)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f2r2'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r3'):
            return 'FromMortuaryF2R2ToMortuaryF2R3_tooltip1' # Пройти в северо-западную препараторскую
        return 'FromMortuaryF2R2ToMortuaryF2R3_tooltip2' # Пройти в комнату
    def texture(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r3'):
            return 'bg/mortuary/f2/door_f2r2_f2r3_opened.webp'
        return 'bg/mortuary/f2/door_f2r2_f2r3_closed.webp'
    def jump(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r3'):
            return NavigationJump('map_mortuary_f2r3')
        return NavigationJump('speak_morte2', before_jump=lambda: self.state_manager.locations_manager.set_location('mortuary_f2r3'))


class MortuaryF2R2Shadow(ShadowItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 1740, 1125)
        self.location_id = 'mortuary_f2r2'
    def texture(self):
        return 'bg/mortuary/f2/shadow_f2r2.webp'


class InMortuaryF2R2Zm965(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zm965() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f2r2'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zm965_times() > 0:
            return 'InMortuaryF2R2Zm965_tooltip1' # Поговорить с трупом «965»
        return 'InMortuaryF2R2Zm965_tooltip2' # Поговорить с бродящим трупом
    def texture(self):
        return 'animated_zm965_stand_s'
    def jump(self):
        return NavigationJump('speak_zm965')


class InMortuaryF2R2Zf594(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zf594() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f2r2'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zf594_times() > 0:
            return 'InMortuaryF2R2Zf594_tooltip1' # Поговорить с трупом «594»
        return 'InMortuaryF2R2Zf594_tooltip2' # Поговорить с неуклюжим трупом
    def texture(self):
        return 'animated_zf594_stand_s'
    def jump(self):
        return NavigationJump('speak_zf594')


class InMortuaryF2R2Zf626(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zf626() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f2r2'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zf626_times() > 0:
            return 'InMortuaryF2R2Zf626_tooltip1' # Поговорить с трупом «626»
        return 'InMortuaryF2R2Zf626_tooltip2' # Поговорить с разбитым трупом
    def texture(self):
        return 'animated_zf626_stand_s'
    def jump(self):
        return NavigationJump('speak_zf626')


###



class FromMortuaryF2R3ToMortuaryF2R4(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 192, 321)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f2r3'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r4'):
            return 'FromMortuaryF2R3ToMortuaryF2R4_tooltip1' # Пройти в северную препараторскую
        return 'FromMortuaryF2R3ToMortuaryF2R4_tooltip2' # Пройти в комнату
    def texture(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r4'):
            return 'bg/mortuary/f2/door_f2r3_f2r4_opened.webp'
        return 'bg/mortuary/f2/door_f2r3_f2r4_closed.webp'
    def jump(self):
        return NavigationJump('map_mortuary_f2r4')


class FromMortuaryF2R3ToMortuaryF2R2(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 321, 256)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f2r3'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r2'):
            return 'FromMortuaryF2R3ToMortuaryF2R2_tooltip1' # Пройти в западную препараторскую
        return 'FromMortuaryF2R3ToMortuaryF2R2_tooltip2' # Пройти в комнату
    def texture(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r2'):
            return 'bg/mortuary/f2/door_f2r2_f2r3_opened.webp'
        return 'bg/mortuary/f2/door_f2r2_f2r3_closed.webp'
    def jump(self):
        return NavigationJump('map_mortuary_f2r2')


class MortuaryF2R3Shadow(ShadowItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 1802, 1287)
        self.location_id = 'mortuary_f2r3'
    def texture(self):
        return 'bg/mortuary/f2/shadow_f2r3.webp'


class InMortuaryF2R3Dhall(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_dhall() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f2r3'
    def tooltip(self):
        if self.state_manager.world_manager.get_know_dhall_name():
            return 'InMortuaryF2R3Dhall_tooltip1' # Поговорить с Дхаллом
        if self.state_manager.world_manager.get_talked_to_dhall_times() > 0:
            return 'InMortuaryF2R3Dhall_tooltip2' # Поговорить с существом около большой книги
        return 'InMortuaryF2R3Dhall_tooltip3' # Подойти к существу около большой книги
    def texture(self):
        return 'animated_dhall_stand_s'
    def jump(self):
        return NavigationJump('speak_dhall')


class InMortuaryF2R3Zm396(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zm396() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f2r3'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zm396_times() > 0:
            return 'InMortuaryF2R3Zm396_tooltip1' # Поговорить с трупом «396»
        return 'InMortuaryF2R3Zm396_tooltip2' # Поговорить с трупом медбрата
    def texture(self):
        return 'animated_zm396_stand_s'
    def jump(self):
        return NavigationJump('speak_zm396')


class InMortuaryF2R3Zm1201(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zm1201() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f2r3'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zm1201_times() > 0:
            return 'InMortuaryF2R3Zm1201_tooltip1' # Поговорить с трупом «1201»
        return 'InMortuaryF2R3Zm1201_tooltip2' # Поговорить с трупом с чернильницей
    def texture(self):
        return 'animated_zm1201_stand_s'
    def jump(self):
        return NavigationJump('speak_zm1201')


class InMortuaryF2R3Zf1096(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zf1096() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f2r3'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zf1096_times() > 0:
            return 'InMortuaryF2R3Zf1096_tooltip1' # Поговорить с трупом «1096»
        return 'InMortuaryF2R3Zf1096_tooltip2' # Поговорить с трупом с косой на шее
    def texture(self):
        return 'animated_zf1096_stand_s'
    def jump(self):
        return NavigationJump('speak_zf1096')


class InMortuaryF2R3Zf1072(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zf1072() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f2r3'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zf1072_times() > 0:
            return 'InMortuaryF2R3Zf1072_tooltip1' # Поговорить с трупом «1072»
        return 'InMortuaryF2R3Zf1072_tooltip2' # Поговорить с трупом без челюсти
    def texture(self):
        return 'animated_zf1072_stand_s'
    def jump(self):
        return NavigationJump('speak_zf1072')


###


class FromMortuaryF2R4ToMortuaryF2R5(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 128, 320)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f2r4'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r5'):
            return 'FromMortuaryF2R4ToMortuaryF2R5_tooltip1' # Пройти в серево-восточную препараторскую
        return 'FromMortuaryF2R4ToMortuaryF2R5_tooltip2' # Пройти в комнату
    def texture(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r5'):
            return 'bg/mortuary/f2/door_f2r4_f2r5_opened.webp'
        return 'bg/mortuary/f2/door_f2r4_f2r5_closed.webp'
    def jump(self):
        return NavigationJump('map_mortuary_f2r5')


class FromMortuaryF2R4ToMortuaryF2R3(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 192, 321)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f2r4'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r3'):
            return 'FromMortuaryF2R4ToMortuaryF2R3_tooltip1' # Пройти в северо-западную приёмную
        return 'FromMortuaryF2R4ToMortuaryF2R3_tooltip2' # Пройти в комнату
    def texture(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r3'):
            return 'bg/mortuary/f2/door_f2r3_f2r4_opened.webp'
        return 'bg/mortuary/f2/door_f2r3_f2r4_closed.webp'
    def jump(self):
        return NavigationJump('map_mortuary_f2r3')


class MortuaryF2R4Shadow(ShadowItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 1489, 1156)
        self.location_id = 'mortuary_f2r4'
    def texture(self):
        return 'bg/mortuary/f2/shadow_f2r4.webp'


class InMortuaryF2R4Zm1664(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zm1664() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f2r4'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zm1664_times() > 0:
            return 'InMortuaryF2R4Zm1664_tooltip1' # Поговорить с трупом «1664»
        return 'InMortuaryF2R4Zm1664_tooltip2' # Поговорить с трупом без челюсти
    def texture(self):
        return 'animated_zm1664_stand_s'
    def jump(self):
        return NavigationJump('speak_zm1664')


###


class FromMortuaryF2R5ToMortuaryF2R6(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 320, 320)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f2r5'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r6'):
            return 'FromMortuaryF2R5ToMortuaryF2R6_tooltip1' # Пройти в восточную препараторскую
        return 'FromMortuaryF2R5ToMortuaryF2R6_tooltip2' # Пройти в комнату
    def texture(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r6'):
            return 'bg/mortuary/f2/door_f2r5_f2r6_opened.webp'
        return 'bg/mortuary/f2/door_f2r5_f2r6_closed.webp'
    def jump(self):
        return NavigationJump('map_mortuary_f2r6')

class FromMortuaryF2R5ToMortuaryF2R4(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 128, 320)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f2r5'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r4'):
            return 'FromMortuaryF2R5ToMortuaryF2R4_tooltip1' # Пройти в восточную препараторскую
        return 'FromMortuaryF2R5ToMortuaryF2R4_tooltip2' # Пройти в комнату
    def texture(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r4'):
            return 'bg/mortuary/f2/door_f2r4_f2r5_opened.webp'
        return 'bg/mortuary/f2/door_f2r4_f2r5_closed.webp'
    def jump(self):
        return NavigationJump('map_mortuary_f2r4')


class MortuaryF2R5Shadow(ShadowItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 1753, 1322)
        self.location_id = 'mortuary_f2r5'
    def texture(self):
        return 'bg/mortuary/f2/shadow_f2r5.webp'


class InMortuaryF2R5Eivene(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_eivene() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f2r5'
    def tooltip(self):
        if self.state_manager.world_manager.get_know_eivene_name():
            return 'InMortuaryF2R5Eivene_tooltip1' # Поговорить с Эи-Вейн
        return 'InMortuaryF2R5Eivene_tooltip2' # Поговорить с хрупкой девушкой
    def texture(self):
        return 'animated_eivene_stand_s'
    def jump(self):
        return NavigationJump('speak_eivene')


class InMortuaryF2R5Zm257(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zm257() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f2r5'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zm257_times() > 0:
            return 'InMortuaryF2R5Zm257_tooltip1' # Поговорить с трупом «257»
        return 'InMortuaryF2R5Zm257_tooltip2' # Поговорить с трупом без челюсти
    def texture(self):
        return 'animated_zm257_stand_s'
    def jump(self):
        return NavigationJump('speak_zm257')


class InMortuaryF2R5Zm506(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zm506() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f2r5'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zm506_times() > 0:
            return 'InMortuaryF2R5Zm506_tooltip1' # Поговорить с трупом «506»
        return 'InMortuaryF2R5Zm506_tooltip2' # Поговорить с трупом без челюсти
    def texture(self):
        return 'animated_zm506_stand_s'
    def jump(self):
        return NavigationJump('speak_zm506')


class InMortuaryF2R5Zm985(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zm985() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f2r5'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zm985_times() > 0:
            return 'InMortuaryF2R5Zm985_tooltip1' # Поговорить с трупом «985»
        return 'InMortuaryF2R5Zm985_tooltip2' # Поговорить с трупом без челюсти
    def texture(self):
        return 'animated_zm985_stand_s'
    def jump(self):
        return NavigationJump('speak_zm985')


###


class FromMortuaryF2R6ToMortuaryF2R7(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 256, 256)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f2r6'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r7'):
            return 'FromMortuaryF2R6ToMortuaryF2R7_tooltip1' # Пройти в юго-восточную препараторскую
        return 'FromMortuaryF2R6ToMortuaryF2R7_tooltip2' # Пройти в комнату
    def texture(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r7'):
            return 'bg/mortuary/f2/door_f2r6_f2r7_opened.webp'
        return 'bg/mortuary/f2/door_f2r6_f2r7_closed.webp'
    def jump(self):
        return NavigationJump('map_mortuary_f2r7')


class FromMortuaryF2R6ToMortuaryF2R5(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 320, 320)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f2r6'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r5'):
            return 'FromMortuaryF2R6ToMortuaryF2R5_tooltip1' # Пройти в серево-восточную препараторскую
        return 'FromMortuaryF2R6ToMortuaryF2R5_tooltip2' # Пройти в комнату
    def texture(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r5'):
            return 'bg/mortuary/f2/door_f2r5_f2r6_opened.webp'
        return 'bg/mortuary/f2/door_f2r5_f2r6_closed.webp'
    def jump(self):
        return NavigationJump('map_mortuary_f2r5')


class MortuaryF2R6Shadow(ShadowItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 1675, 1081)
        self.location_id = 'mortuary_f2r6'
    def texture(self):
        return 'bg/mortuary/f2/shadow_f2r6.webp'


class InMortuaryF2R6Vaxis(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_vaxis() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f2r6'
    def tooltip(self):
        if self.state_manager.world_manager.get_know_vaxis_name():
            return 'InMortuaryF2R6Vaxis_tooltip1' # Поговорить c Ваксисом
        if self.state_manager.world_manager.get_talked_to_vaxis_times() > 0:
            return 'InMortuaryF2R6Vaxis_tooltip2' # Поговорить с фальшивым зомби
        return 'InMortuaryF2R6Vaxis_tooltip3' # Поговорить с трупом
    def texture(self):
        return 'animated_vaxis_stand_s'
    def jump(self):
        return NavigationJump('speak_vaxis')


###


class FromMortuaryF2R7ToMortuaryF3R3(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 115, 196)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f2r7'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f3r1') or \
           self.state_manager.locations_manager.is_visited('mortuary_f3r3'):
            return 'FromMortuaryF2R7ToMortuaryF3R3_tooltip1' # Подняться на третий этаж
        return 'FromMortuaryF2R7ToMortuaryF3R3_tooltip2' # Подняться по лестнице
    def texture(self):
        return 'bg/mortuary/f2/door_f2r7_f3r3_opened.webp'
    def jump(self):
        return NavigationJump('map_mortuary_f3r3')


class FromMortuaryF2R7ToMortuaryF1R4(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 128, 192)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f2r7'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f1r1') or \
           self.state_manager.locations_manager.is_visited('mortuary_f1r4'):
            return 'FromMortuaryF2R7ToMortuaryF1R4_tooltip1' # Спуститься на первый этаж
        return 'FromMortuaryF2R7ToMortuaryF1R4_tooltip2' # Спуститься по лестнице
    def texture(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f1r1') or \
           self.state_manager.locations_manager.is_visited('mortuary_f1r4'):
            return 'bg/mortuary/f2/door_f2r7_f1r4_opened.webp'
        return 'bg/mortuary/f2/door_f2r7_f1r4_closed.webp'
    def jump(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f1r1') or \
           self.state_manager.locations_manager.is_visited('mortuary_f1r4') or \
           self.state_manager.inventory_items_manager.is_own_item('has_mortuary_key'):
            return NavigationJump('map_mortuary_f1r4')
        return NavigationSnack('FromMortuaryF2R7ToMortuaryF1R4_snack1')


class FromMortuaryF2R7ToMortuaryF2R6(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 256, 256)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f2r7'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r6'):
            return 'FromMortuaryF2R7ToMortuaryF2R6_tooltip1' # Пройти в восточную препараторскую
        return 'FromMortuaryF2R7ToMortuaryF2R6_tooltip2' # Пройти в комнату
    def texture(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r6'):
            return 'bg/mortuary/f2/door_f2r6_f2r7_opened.webp'
        return 'bg/mortuary/f2/door_f2r6_f2r7_closed.webp'
    def jump(self):
        return NavigationJump('map_mortuary_f2r6')


class FromMortuaryF2R7ToMortuaryF2R8(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 256, 256)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f2r7'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r8'):
            return 'FromMortuaryF2R7ToMortuaryF2R8_tooltip1' # Пройти в южную препараторскую
        return 'FromMortuaryF2R7ToMortuaryF2R8_tooltip2' # Пройти в комнату
    def texture(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r8'):
            return 'bg/mortuary/f2/door_f2r7_f2r8_opened.webp'
        return 'bg/mortuary/f2/door_f2r7_f2r8_closed.webp'
    def jump(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r8') or \
           self.state_manager.inventory_items_manager.is_own_item('has_mortuary_key'):
            return NavigationJump('map_mortuary_f2r8')
        return NavigationSnack('FromMortuaryF2R7ToMortuaryF2R8_snack1')


class MortuaryF2R7Shadow(ShadowItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 1792, 1267)
        self.location_id = 'mortuary_f2r7'
    def texture(self):
        return 'bg/mortuary/f2/shadow_f2r7.webp'


class InMortuaryF2R7PickCopperEarringClosed(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 133, 121)
    def when(self):
        return not self.state_manager.world_manager.get_looted_InMortuaryF2R7PickCopperEarringClosed() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f2r7'
    def tooltip(self):
        return 'InMortuaryF2R7PickCopperEarringClosed_tooltip1' # Взять серьгу
    def texture(self):
        return 'bg/mortuary/f2/loot_f2r7_copper_earing.webp'
    def jump(self):
        return NavigationSnack('InMortuaryF2R7PickCopperEarringClosed_snack1', texture='InMortuaryF2R7PickCopperEarringClosed_snack1_texture', on_pickup=self._on_pickup)
    def _on_pickup(self):
        self.state_manager.inventory_items_manager.pick_item('has_copper_earring_closed')
        self.state_manager.world_manager.set_looted_InMortuaryF2R7PickCopperEarringClosed(True)


class InMortuaryF2R7PickEmbalm(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 107, 88)
    def when(self):
        return not self.state_manager.world_manager.get_looted_InMortuaryF2R7PickEmbalm() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f2r7'
    def tooltip(self):
        return 'InMortuaryF2R7PickEmbalm_tooltip1' # Взять бальзамирующую жидкость
    def texture(self):
        return 'bg/mortuary/f2/loot_f2r7_elbam.webp'
    def jump(self):
        return NavigationSnack('InMortuaryF2R7PickEmbalm_snack1', texture='InMortuaryF2R7PickEmbalm_snack1_texture', on_pickup=self._on_pickup)
    def _on_pickup(self):
        self.state_manager.inventory_items_manager.pick_item('has_embalm')
        self.state_manager.world_manager.set_looted_InMortuaryF2R7PickEmbalm(True)


###


class FromMortuaryF2R8ToMortuaryF2R1(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 256, 320)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f2r8'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r1'):
            return 'FromMortuaryF2R8ToMortuaryF2R1_tooltip1' # Пройти в юго-западную препараторскую
        return 'FromMortuaryF2R8ToMortuaryF2R1_tooltip2' # Пройти в комнату
    def texture(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r1'):
            return 'bg/mortuary/f2/door_f2r8_f2r1_opened.webp'
        return 'bg/mortuary/f2/door_f2r8_f2r1_closed.webp'
    def jump(self):
        return NavigationJump('map_mortuary_f2r1')


class FromMortuaryF2R8ToMortuaryF2R7(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 256, 256)
    def when(self):
        return self.state_manager.locations_manager.get_location() == 'mortuary_f2r8'
    def tooltip(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r7'):
            return 'FromMortuaryF2R8ToMortuaryF2R7_tooltip1' # Пройти в юго-восточную препараторскую
        return 'FromMortuaryF2R8ToMortuaryF2R7_tooltip2' # Пройти в комнату
    def texture(self):
        if self.state_manager.locations_manager.is_visited('mortuary_f2r7'):
            return 'bg/mortuary/f2/door_f2r7_f2r8_opened.webp'
        return 'bg/mortuary/f2/door_f2r7_f2r8_closed.webp'
    def jump(self):
        return NavigationJump('map_mortuary_f2r7')


class MortuaryF2R8Shadow(ShadowItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y, 1509, 965)
        self.location_id = 'mortuary_f2r8'
    def texture(self):
        return 'bg/mortuary/f2/shadow_f2r8.webp'


class InMortuaryF2R8Zf891(MenuItem):
    def __init__(self, state_manager, x, y):
        super().__init__(state_manager, x, y)
    def when(self):
        return not self.state_manager.world_manager.get_dead_zf891() and \
               self.state_manager.locations_manager.get_location() == 'mortuary_f2r8'
    def tooltip(self):
        if self.state_manager.world_manager.get_talked_to_zf891_times() > 0:
            return 'InMortuaryF2R8Zf891_tooltip1' # Поговорить с трупом «891»
        return 'InMortuaryF2R8Zf891_tooltip2' # Поговорить с трупом без челюсти
    def texture(self):
        return 'animated_zf891_stand_s'
    def jump(self):
        return NavigationJump('speak_zf891')
