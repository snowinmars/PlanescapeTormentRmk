from game.engine_data.menus.graphics_menu_logic import (GraphicsMenuLogic)


class MortuaryF2R3GraphicsMenuLogic(GraphicsMenuLogic):
    def __init__(self, settings_manager, location_manager):
        super().__init__(settings_manager, location_manager)
        self.party_xpos = 510
        self.party_ypos = 880


    def to_mortuary_f2r4_action(self):
        self.location_manager.set_location('mortuary_f2r4')
        return 'graphics_menu'


    def to_mortuary_f2r4_tooltip(self):
        v1 = 'Пройти в северную препараторскую'
        v2 = 'Пройти в комнату'
        f1 = self.location_manager.is_visited('mortuary_f2r4')
        return v1 if f1 else v2


    def to_mortuary_f2r2_action(self):
        self.location_manager.set_location('mortuary_f2r2')
        return 'graphics_menu'


    def to_mortuary_f2r2_tooltip(self):
        v1 = 'Пройти в западную препараторскую'
        v2 = 'Пройти в комнату'
        f1 = self.location_manager.is_visited('mortuary_f2r2')
        return v1 if f1 else v2


    def dhall_kill_tooltip(self):
        v1 = 'Убить Дхалла'
        v2 = 'Убить существо около большой книги'
        f1 = self.settings_manager.get_talked_to_dhall_times() > 0
        return v1 if f1 else v2


    def dhall_kill_action(self):
        v1 = 'start_dhall_kill'
        v2 = 'start_dhall_kill_first'
        f1 = self.settings_manager.get_talked_to_dhall_times() > 0
        return v1 if f1 else v2


    def dhall_speak_tooltip(self):
        v1 = 'Поговорить с Дхаллом'
        v2 = 'Подойти к существу около большой книги'
        v3 = 'Поговорить с существом около большой книги'
        f1 = self.settings_manager.get_know_dhall_name()
        f2 = self.settings_manager.get_talked_to_dhall_times() > 0
        if f1:
            return v1
        return v3 if f2 else v2


    def dhall_speak_action(self):
        v1 = 'start_dhall_talk'
        v2 = 'start_dhall_talk_first'
        f1 = self.settings_manager.get_talked_to_dhall_times() > 0
        return v1 if f1 else v2


    def zm396_kill_tooltip(self):
        v1 = 'Атаковать труп «396»'
        v2 = 'Атаковать труп медбрата'
        f1 = self.settings_manager.get_talked_to_zm1201_times() > 0
        return v1 if f1 else v2


    def zm396_kill_action(self):
        return 'start_zm396_kill'


    def zm396_speak_tooltip(self):
        v1 = 'Поговорить c трупом «396»'
        v2 = 'Поговорить с трупом медбрата'
        f1 = self.settings_manager.get_talked_to_zm396_times() > 0
        return v1 if f1 else v2


    def zm396_speak_action(self):
        v1 = 'start_zm396_talk'
        v2 = 'start_zm396_talk_first'
        f1 = self.settings_manager.get_talked_to_zm1201_times() > 0
        return v1 if f1 else v2


    def zm1201_kill_tooltip(self):
        v1 = 'Атаковать труп «1201»'
        v2 = 'Атаковать труп с чернильницей'
        f1 = self.settings_manager.get_talked_to_zm1201_times() > 0
        return v1 if f1 else v2


    def zm1201_kill_action(self):
        return 'start_zm1201_kill'


    def zm1201_speak_tooltip(self):
        v1 = 'Поговорить c трупом «1201»'
        v2 = 'Поговорить с трупом с чернильницей'
        f1 = self.settings_manager.get_talked_to_zm1201_times() > 0
        return v1 if f1 else v2


    def zm1201_speak_action(self):
        return 'start_zm1201_talk'


    def zf1096_kill_tooltip(self):
        v1 = 'Атаковать труп «1096»'
        v2 = 'Атаковать труп с косой на шее'
        f1 = self.settings_manager.get_talked_to_zf1096_times() > 0
        return v1 if f1 else v2


    def zf1096_kill_action(self):
        return 'start_zf1096_kill'


    def zf1096_speak_tooltip(self):
        v1 = 'Поговорить c трупом «1096»'
        v2 = 'Поговорить с трупом с косой на шее'
        f1 = self.settings_manager.get_talked_to_zf1096_times() > 0
        return v1 if f1 else v2


    def zf1096_speak_action(self):
        return 'start_zf1096_talk'


    def zf1072_kill_tooltip(self):
        v1 = 'Атаковать труп «1072»'
        v2 = 'Атаковать труп без челюсти'
        f1 = self.settings_manager.get_talked_to_zf1072_times() > 0
        return v1 if f1 else v2


    def zf1072_kill_action(self):
        return 'start_zf1072_kill'


    def zf1072_speak_tooltip(self):
        v1 = 'Поговорить c трупом «1072»'
        v2 = 'Поговорить с трупом без челюсти'
        f1 = self.settings_manager.get_talked_to_zf1072_times() > 0
        return v1 if f1 else v2


    def zf1072_speak_action(self):
        return 'start_zf1072_talk'
