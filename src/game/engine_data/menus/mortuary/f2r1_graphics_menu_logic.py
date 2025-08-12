from game.engine_data.menus.graphics_menu_logic import (GraphicsMenuLogic)


class MortuaryF2R1GraphicsMenuLogic(GraphicsMenuLogic):
    def __init__(self, settings_manager, location_manager):
        super().__init__(settings_manager, location_manager)
        self.party_xpos = 1360
        self.party_ypos = 400


    def see_doors(self):
        return self.settings_manager.get_has_intro_key()


    def has_no_scalpel(self):
        return not self.settings_manager.get_has_scalpel()


    def to_pick_scalpel_action(self):
        self.location_manager.set_location('mortuary_f2r1')
        return 'walk_mortuary_f2r1_pick_scalpel'


    def to_pick_scalpel_tooltip(self):
        return 'Взять скальпель'


    def to_mortuary_f2r2_action(self):
        l = 'mortuary_f2r2'
        v1 = 'graphics_menu'
        v2 = 'start_morte2_talk_first'
        f1 = self.location_manager.is_visited(l)
        if f1:
            self.location_manager.set_location(l)
            return v1
        self.location_manager.set_location(l)
        return v2


    def to_mortuary_f2r2_tooltip(self):
        v1 = 'Пройти в западную комнату'
        v2 = 'Пройти в комнату'
        f1 = self.location_manager.is_visited('mortuary_f2r2')
        return v1 if f1 else v2


    def to_mortuary_f2r8_action(self):
        l = 'mortuary_f2r8'
        v1 = 'graphics_menu'
        v2 = 'walk_to_mortuaryf2r8_closed'
        f1 = self.location_manager.is_visited(l) or \
             self.settings_manager.get_has_mortuary_key()
        if f1:
            self.location_manager.set_location(l)
            return v1
        return v2


    def to_mortuary_f2r8_tooltip(self):
        v1 = 'Пройти в южную комнату'
        v2 = 'Пройти в комнату'
        f1 = self.location_manager.is_visited('mortuary_f2r8')
        return v1 if f1 else v2


    def to_mortuary_f3r1_action(self):
        l = 'mortuary_f3r1'
        v1 = 'graphics_menu'
        v2 = 'walk_to_mortuaryf3r1_closed'
        f1 = self.location_manager.is_visited('mortuary_f3r6') or \
             self.location_manager.is_visited(l) or \
             self.settings_manager.get_has_mortuary_key()
        if f1:
            self.location_manager.set_location(l)
            return v1
        return v2


    def to_mortuary_f3r1_tooltip(self):
        v1 = 'Подняться на третий этаж'
        v2 = 'Подняться по лестнице'
        f1 = self.location_manager.is_visited('mortuary_f3r6') or \
             self.location_manager.is_visited('mortuary_f3r1')
        return v1 if f1 else v2


    def to_mortuary_f1r1_action(self):
        l = 'mortuary_f1r1'
        v1 = 'graphics_menu'
        v2 = 'walk_to_mortuaryf1r1_closed'
        f1 = self.location_manager.is_visited('mortuary_f1r4') or \
             self.location_manager.is_visited(l) or \
             self.settings_manager.get_has_mortuary_key()
        if f1:
            self.location_manager.set_location(l)
            return v1
        return v2


    def to_mortuary_f1r1_tooltip(self):
        v1 = 'Спуститься на первый этаж'
        v2 = 'Спуститься по лестнице'
        f1 = self.location_manager.is_visited('mortuary_f1r1') or \
             self.location_manager.is_visited('mortuary_f1r4')
        return v1 if f1 else v2


    def zm569_kill_tooltip(self):
        v1 = 'Атаковать труп «569»'
        v2 = 'Атаковать плешивый ходячий труп'
        f1 = self.settings_manager.get_talked_to_zm569_times() > 0
        return v1 if f1 else v2


    def zm569_kill_action(self):
        return 'start_zm569_kill'


    def zm569_speak_tooltip(self):
        v1 = 'Поговорить c трупом «569»'
        v2 = 'Поговорить с ходячим плешивым трупом'
        f1 = self.settings_manager.get_talked_to_zm569_times() > 0
        return v1 if f1 else v2


    def zm569_speak_action(self):
        return 'start_zm569_talk'


    def zm825_kill_tooltip(self):
        v1 = 'Атаковать труп «825»'
        v2 = 'Атаковать ходячий труп повешенного'
        f1 = self.settings_manager.get_talked_to_zm825_times() > 0
        return v1 if f1 else v2


    def zm825_kill_action(self):
        return 'start_zm825_kill'


    def zm825_speak_tooltip(self):
        v1 = 'Поговорить c трупом «825»'
        v2 = 'Поговорить с ходячим трупом повешенного'
        f1 = self.settings_manager.get_talked_to_zm825_times() > 0
        return v1 if f1 else v2


    def zm825_speak_action(self):
        return 'start_zm825_talk'


    def zm782_kill_tooltip(self):
        v1 = 'Атаковать труп «782»'
        v2 = 'Атаковать ходячий труп, полный ненависти'
        f1 = self.settings_manager.get_talked_to_zm782_times() > 0
        return v1 if f1 else v2


    def zm782_kill_action(self):
        return 'start_zm782_kill'


    def zm782_speak_tooltip(self):
        v1 = 'Поговорить c трупом «782»'
        v2 = 'Поговорить с ходячим трупом, полным ненависти'
        f1 = self.settings_manager.get_talked_to_zm782_times() > 0
        return v1 if f1 else v2


    def zm782_speak_action(self):
        return 'start_zm782_talk'


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
