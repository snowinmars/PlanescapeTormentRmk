from game.engine_data.menus.graphics_menu_logic import (GraphicsMenuLogic)


class MortuaryF2R2GraphicsMenuLogic(GraphicsMenuLogic):
    def __init__(self, settings_manager, location_manager):
        super().__init__(settings_manager, location_manager)
        self.party_xpos = 510
        self.party_ypos = 880


    def to_mortuary_f2r1_action(self):
        self.location_manager.set_location('mortuary_f2r1')
        return 'graphics_menu'


    def to_mortuary_f2r1_tooltip(self):
        v1 = 'Пройти в юго-западную препараторскую'
        v2 = 'Пройти в комнату'
        f1 = self.location_manager.is_visited('mortuary_f2r1')
        return v1 if f1 else v2


    def to_mortuary_f2r3_action(self):
        l = 'mortuary_f2r3'
        v1 = 'graphics_menu'
        v2 = 'start_morte2_talk_dhall'
        f1 = self.location_manager.is_visited(l)
        if f1:
            self.location_manager.set_location(l)
            return v1
        self.location_manager.set_location(l)
        return v2


    def to_mortuary_f2r3_tooltip(self):
        v1 = 'Пройти в юго-западную препараторскую'
        v2 = 'Пройти в комнату'
        f1 = self.location_manager.is_visited('mortuary_f2r3')
        return v1 if f1 else v2


    def zm965_kill_tooltip(self):
        v1 = 'Атаковать труп «965»'
        v2 = 'Атаковать бродящий труп'
        f1 = self.settings_manager.get_talked_to_zm965_times() > 0
        return v1 if f1 else v2


    def zm965_kill_action(self):
        return 'start_zm965_kill'


    def zm965_speak_tooltip(self):
        v1 = 'Поговорить c трупом «965»'
        v2 = 'Поговорить с бродящим трупом'
        f1 = self.settings_manager.get_talked_to_zm965_times() > 0
        return v1 if f1 else v2


    def zm965_speak_action(self):
        v1 = 'start_zm965_talk'
        v2 = 'start_zm965_talk_first'
        f1 = self.settings_manager.get_talked_to_zf594_times() > 0
        return v1 if f1 else v2


    def zf594_kill_tooltip(self):
        v1 = 'Атаковать труп «594»'
        v2 = 'Атаковать неуклюжий труп'
        f1 = self.settings_manager.get_talked_to_zf594_times() > 0
        return v1 if f1 else v2


    def zf594_kill_action(self):
        return 'start_zf594_kill'


    def zf594_speak_tooltip(self):
        v1 = 'Поговорить c трупом «594»'
        v2 = 'Поговорить с неуклюжим трупом'
        f1 = self.settings_manager.get_talked_to_zf594_times() > 0
        return v1 if f1 else v2


    def zf594_speak_action(self):
        return 'start_zf594_talk'


    def zf626_kill_tooltip(self):
        v1 = 'Атаковать труп «626»'
        v2 = 'Атаковать разбитый труп'
        f1 = self.settings_manager.get_talked_to_zf626_times() > 0
        return v1 if f1 else v2


    def zf626_kill_action(self):
        return 'start_zf626_kill'


    def zf626_speak_tooltip(self):
        v1 = 'Поговорить c трупом «626»'
        v2 = 'Поговорить с разбитым трупом'
        f1 = self.settings_manager.get_talked_to_zf626_times() > 0
        return v1 if f1 else v2


    def zf626_speak_action(self):
        return 'start_zf626_talk'
