from game.engine_data.menus.menu_items import (
    NavigationDirective,
    MenuItem,
    GoToLocationMenuItem,
    ContainerMenuItem,
    ZombieMenuItem,
)


class FromMortuaryF2R1ToMortuaryF2R2(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return self.gsm.get_has_intro_key()
    def tooltip(self):
        if self.gsm.locations_manager.is_visited('mortuary_f2r2'):
            return 'Пройти в западную комнату'
        return 'Пройти в комнату'
    def jump(self):
        if self.gsm.locations_manager.is_visited('mortuary_f2r2'):
           return NavigationDirective(
                'graphics_menu',
                lambda: self.gsm.locations_manager.set_location('mortuary_f2r2')
            )
        return NavigationDirective(
            'morte2_speak',
            lambda: self.gsm.locations_manager.set_location('mortuary_f2r2')
        )


class FromMortuaryF2R1ToMortuaryF2R8(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return self.gsm.get_has_intro_key()
    def tooltip(self):
        if self.gsm.locations_manager.is_visited('mortuary_f2r8'):
            return 'Пройти в южную комнату'
        return 'Пройти в комнату'
    def jump(self):
        if self.gsm.locations_manager.is_visited('mortuary_f2r8') or \
           self.gsm.get_has_mortuary_key():
            return NavigationDirective(
                'graphics_menu',
                lambda: self.gsm.locations_manager.set_location('mortuary_f2r8')
            )
        return NavigationDirective(
            'from_mortuary_f2r1_to_mortuary_f2r8_closed',
        )


class FromMortuaryF2R1ToMortuaryF3R1(MenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return self.gsm.get_has_intro_key()
    def texture(self):
        return 'images/icons/mortuary_f2r1_door_f3r1.png'
    def tooltip(self):
        if self.gsm.locations_manager.is_visited('mortuary_f3r1') or \
           self.gsm.locations_manager.is_visited('mortuary_f3r3'):
            return 'Подняться на третий этаж'
        return 'Подняться по лестнице'
    def jump(self):
        if self.gsm.get_has_mortuary_key() or \
           self.gsm.locations_manager.is_visited('mortuary_f3r1') or \
           self.gsm.locations_manager.is_visited('mortuary_f3r3'):
            return NavigationDirective(
                'graphics_menu',
                lambda: self.gsm.locations_manager.set_location('mortuary_f3r1')
            )
        return NavigationDirective(
            'from_mortuary_f2r1_to_mortuary_f3r1_closed',
        )


class FromMortuaryF2R1ToMortuaryF1R1(GoToLocationMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return self.gsm.get_has_intro_key()
    def tooltip(self):
        if self.gsm.locations_manager.is_visited('mortuary_f1r1') or \
           self.gsm.locations_manager.is_visited('mortuary_f1r4'):
            return 'Спуститься на третий этаж'
        return 'Спуститься по лестнице'
    def jump(self):
        if self.gsm.get_has_mortuary_key() or \
           self.gsm.locations_manager.is_visited('mortuary_f1r1') or \
           self.gsm.locations_manager.is_visited('mortuary_f1r4'):
            return NavigationDirective(
                'graphics_menu',
                lambda: self.gsm.locations_manager.set_location('mortuary_f1r1')
            )
        return NavigationDirective(
            'from_mortuary_f2r1_to_mortuary_f2r1_closed',
        )


class InMortuaryF2R1PickScalpel(ContainerMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_has_scalpel()
    def tooltip(self):
        return 'Обыскать'
    def jump(self):
        return NavigationDirective(
            'mortuary_f2r1_loot_scalpel',
        )


class InMortuaryF2R1Zm569(ZombieMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_dead_zm569()
    def tooltip(self):
        if self.gsm.get_talked_to_zm569_times() > 0:
            return 'Поговорить с трупом «569»'
        return 'Поговорить с ходячим плешивым трупом'
    def jump(self):
        return NavigationDirective(
            'zm569_speak',
        )


class InMortuaryF2R1Zm825(ZombieMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_dead_zm825()
    def tooltip(self):
        if self.gsm.get_talked_to_zm825_times() > 0:
            return 'Поговорить с трупом «825»'
        return 'Поговорить с ходячим трупом повешенного'
    def jump(self):
        return NavigationDirective(
            'zm825_speak',
        )


class InMortuaryF2R1Zm782(ZombieMenuItem):
    def __init__(self, gsm, x, y):
        super().__init__(gsm, x, y)
    def when(self):
        return not self.gsm.get_dead_zm782()
    def tooltip(self):
        if self.gsm.get_talked_to_zm782_times() > 0:
            return 'Поговорить с трупом «782»'
        return 'Поговорить с ходячим трупом, полным ненависти'
    def jump(self):
        return NavigationDirective(
            'zm782_speak',
        )
