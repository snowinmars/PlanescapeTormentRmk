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


    def eivene_speak_tooltip(self):
        v1 = 'Поговорить с Эи-Вейн'
        v2 = 'Поговорить с хрупкой девушкой'
        f1 = self.settings_manager.get_know_eivene_name()
        return v1 if f1 else v2


    def eivene_speak_action(self):
        return 'eivene_speak'


    def zm257_speak_tooltip(self):
        v1 = 'Поговорить c трупом «1664»'
        v2 = 'Поговорить с трупом без челюсти'
        f1 = self.settings_manager.get_talked_to_zm257_times() > 0
        return v1 if f1 else v2


    def zm257_speak_action(self):
        return 'zm257_speak'


    def zm506_speak_tooltip(self):
        v1 = 'Поговорить c трупом «1664»'
        v2 = 'Поговорить с трупом без челюсти'
        f1 = self.settings_manager.get_talked_to_zm506_times() > 0
        return v1 if f1 else v2


    def zm506_speak_action(self):
        return 'zm506_speak'


    def zm985_speak_tooltip(self):
        v1 = 'Поговорить c трупом «1664»'
        v2 = 'Поговорить с трупом без челюсти'
        f1 = self.settings_manager.get_talked_to_zm985_times() > 0
        return v1 if f1 else v2


    def zm985_speak_action(self):
        return 'zm985_speak'
