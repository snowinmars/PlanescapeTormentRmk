from game.engine_data.menus.graphics_menu_logic import (GraphicsMenuLogic)


class MortuaryF2R7GraphicsMenuLogic(GraphicsMenuLogic):
    def __init__(self, settings_manager, location_manager):
        super().__init__(settings_manager, location_manager)
        self.party_xpos = 1380
        self.party_ypos = 500


    def has_no_embalm(self):
        return not self.settings_manager.get_has_embalm()


    def to_pick_embalm_action(self):
        self.location_manager.set_location('mortuary_f2r7')
        return 'walk_mortuary_f2r7_pick_embalm'


    def to_pick_embalm_tooltip(self):
        return 'Взять бальзамирующую жидкость'


    def has_no_copper_earring_closed(self):
        return not self.settings_manager.get_has_copper_earring_closed()


    def to_pick_copper_earring_closed_action(self):
        self.location_manager.set_location('mortuary_f2r7')
        return 'walk_mortuary_f2r7_pick_copper_earring_closed'


    def to_pick_copper_earring_closed_tooltip(self):
        return 'Взять серьгу'


    def to_mortuary_f2r8_action(self):
        l = 'mortuary_f2r8'
        v1 = 'graphics_menu'
        v2 = 'walk_to_mortuaryf2r8_closed'
        f1 = self.location_manager.is_visited('mortuary_f2r8') or \
             self.settings_manager.get_has_mortuary_key()
        if f1:
            self.location_manager.set_location(l)
            return v1
        return v2


    def to_mortuary_f2r8_tooltip(self):
        v1 = 'Пройти в южную препараторскую'
        v2 = 'Пройти в комнату'
        f1 = self.location_manager.is_visited('mortuary_f2r8')
        return v1 if f1 else v2


    def to_mortuary_f2r6_action(self):
        self.location_manager.set_location('mortuary_f2r6')
        return 'graphics_menu'


    def to_mortuary_f2r6_tooltip(self):
        v1 = 'Пройти в восточную препараторскую'
        v2 = 'Пройти в комнату'
        f1 = self.location_manager.is_visited('mortuary_f2r6')
        return v1 if f1 else v2


    def to_mortuary_f3r6_action(self):
        self.location_manager.set_location('mortuary_f3r6')
        return 'graphics_menu'


    def to_mortuary_f3r6_tooltip(self):
        v1 = 'Подняться на третий этаж'
        v2 = 'Подняться по лестнице'
        f1 = self.location_manager.is_visited('mortuary_f3r6') or \
             self.location_manager.is_visited('mortuary_f3r1')
        return v1 if f1 else v2


    def to_mortuary_f1r4_action(self):
        l = 'mortuary_f1r4'
        v1 = 'graphics_menu'
        v2 = 'walk_to_mortuaryf1r4_closed'
        f1 = self.location_manager.is_visited('mortuary_f1r1') or \
             self.location_manager.is_visited(l) or \
             self.settings_manager.get_has_mortuary_key()
        if f1:
            self.location_manager.set_location(l)
            return v1
        return v2


    def to_mortuary_f1r4_tooltip(self):
        v1 = 'Спуститься на первый этаж'
        v2 = 'Спуститься по лестнице'
        f1 = self.location_manager.is_visited('mortuary_f1r1') or \
             self.location_manager.is_visited('mortuary_f1r4')
        return v1 if f1 else v2


    def morte_kill_tooltip(self):
        return 'Убить Морта'


    def morte_kill_action(self):
        return 'start_morte2_kill'


    def morte_speak_tooltip(self):
        v1 = 'Поговорить с Мортом'
        v2 = 'Пригласить Морта в группу'
        f1 = self.settings_manager.get_in_party_morte()
        return v1 if f1 else v2


    def morte_speak_action(self):
        v1 = 'start_morte1_talk'
        v2 = 'start_morte1_invite'
        f1 = self.settings_manager.get_in_party_morte()
        return v1 if f1 else v2
