from game.engine_data.menus.graphics_menu_logic import (GraphicsMenuLogic)


class MortuaryF2R5GraphicsMenuLogic(GraphicsMenuLogic):
    def __init__(self, settings_manager, location_manager):
        super().__init__(settings_manager, location_manager)
        self.party_xpos = 500
        self.party_ypos = 390


    def to_mortuary_f2r6_action(self):
        self.location_manager.set_location('mortuary_f2r6')
        return 'graphics_menu'


    def to_mortuary_f2r6_tooltip(self):
        v1 = 'Пройти в восточную препараторскую'
        v2 = 'Пройти в комнату'
        f1 = self.location_manager.is_visited('mortuary_f2r6')
        return v1 if f1 else v2


    def to_mortuary_f2r4_action(self):
        self.location_manager.set_location('mortuary_f2r4')
        return 'graphics_menu'


    def to_mortuary_f2r4_tooltip(self):
        v1 = 'Пройти в северную приёмную'
        v2 = 'Пройти в комнату'
        f1 = self.location_manager.is_visited('mortuary_f2r4')
        return v1 if f1 else v2


    def eivene_kill_tooltip(self):
        v1 = 'Атаковать Эи-Вейн'
        v2 = 'Атаковать хрупкую девушку'
        f1 = self.settings_manager.get_know_eivene_name()
        return v1 if f1 else v2


    def eivene_kill_action(self):
        v1 = 'start_eivene_kill'
        v2 = 'start_eivene_kill_first'
        f1 = self.settings_manager.get_know_eivene_name()
        return v1 if f1 else v2


    def eivene_speak_tooltip(self):
        v1 = 'Поговорить с Эи-Вейн'
        v2 = 'Поговорить с хрупкой девушкой'
        f1 = self.settings_manager.get_know_eivene_name()
        return v1 if f1 else v2


    def eivene_speak_action(self):
        v1 = 'start_eivene_talk'
        v2 = 'start_eivene_talk_first'
        f1 = self.settings_manager.get_know_eivene_name()
        return v1 if f1 else v2


    def zm257_kill_tooltip(self):
        v1 = 'Атаковать труп «1664»'
        v2 = 'Атаковать труп без челюсти'
        f1 = self.settings_manager.get_talked_to_zm257_times() > 0
        return v1 if f1 else v2


    def zm257_kill_action(self):
        return 'start_zm257_kill'


    def zm257_speak_tooltip(self):
        v1 = 'Поговорить c трупом «1664»'
        v2 = 'Поговорить с трупом без челюсти'
        f1 = self.settings_manager.get_talked_to_zm257_times() > 0
        return v1 if f1 else v2


    def zm257_speak_action(self):
        return 'start_zm257_talk'


    def zm506_kill_tooltip(self):
        v1 = 'Атаковать труп «1664»'
        v2 = 'Атаковать труп без челюсти'
        f1 = self.settings_manager.get_talked_to_zm506_times() > 0
        return v1 if f1 else v2


    def zm506_kill_action(self):
        return 'start_zm506_kill'


    def zm506_speak_tooltip(self):
        v1 = 'Поговорить c трупом «1664»'
        v2 = 'Поговорить с трупом без челюсти'
        f1 = self.settings_manager.get_talked_to_zm506_times() > 0
        return v1 if f1 else v2


    def zm506_speak_action(self):
        return 'start_zm506_talk'


    def zm985_kill_tooltip(self):
        v1 = 'Атаковать труп «1664»'
        v2 = 'Атаковать труп без челюсти'
        f1 = self.settings_manager.get_talked_to_zm985_times() > 0
        return v1 if f1 else v2


    def zm985_kill_action(self):
        return 'start_zm985_kill'


    def zm985_speak_tooltip(self):
        v1 = 'Поговорить c трупом «1664»'
        v2 = 'Поговорить с трупом без челюсти'
        f1 = self.settings_manager.get_talked_to_zm985_times() > 0
        return v1 if f1 else v2


    def zm985_speak_action(self):
        return 'start_zm985_talk'


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
