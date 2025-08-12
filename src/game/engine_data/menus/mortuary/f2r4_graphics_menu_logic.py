from game.engine_data.menus.graphics_menu_logic import (GraphicsMenuLogic)


class MortuaryF2R4GraphicsMenuLogic(GraphicsMenuLogic):
    def __init__(self, settings_manager, location_manager):
        super().__init__(settings_manager, location_manager)
        self.party_xpos = 500
        self.party_ypos = 390


    def to_mortuary_f2r5_action(self):
        self.location_manager.set_location('mortuary_f2r5')
        return 'graphics_menu'


    def to_mortuary_f2r5_tooltip(self):
        v1 = 'Пройти в серево-восточную препараторскую'
        v2 = 'Пройти в комнату'
        f1 = self.location_manager.is_visited('mortuary_f2r5')
        return v1 if f1 else v2


    def to_mortuary_f2r3_action(self):
        self.location_manager.set_location('mortuary_f2r3')
        return 'graphics_menu'


    def to_mortuary_f2r3_tooltip(self):
        v1 = 'Пройти в северо-западную приёмную'
        v2 = 'Пройти в комнату'
        f1 = self.location_manager.is_visited('mortuary_f2r3')
        return v1 if f1 else v2


    def zm1664_kill_tooltip(self):
        v1 = 'Атаковать труп «1664»'
        v2 = 'Атаковать труп без челюсти'
        f1 = self.settings_manager.get_talked_to_zm1664_times() > 0
        return v1 if f1 else v2


    def zm1664_kill_action(self):
        return 'start_zm1664_kill'


    def zm1664_speak_tooltip(self):
        v1 = 'Поговорить c трупом «1664»'
        v2 = 'Поговорить с трупом без челюсти'
        f1 = self.settings_manager.get_talked_to_zm1664_times() > 0
        return v1 if f1 else v2


    def zm1664_speak_action(self):
        return 'start_zm1664_talk'


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
