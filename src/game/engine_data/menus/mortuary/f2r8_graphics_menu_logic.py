from game.engine_data.menus.graphics_menu_logic import (GraphicsMenuLogic)


class MortuaryF2R8GraphicsMenuLogic(GraphicsMenuLogic):
    def __init__(self, settings_manager, location_manager):
        super().__init__(settings_manager, location_manager)
        self.party_xpos = 1360
        self.party_ypos = 220


    def to_mortuary_f2r7_action(self):
        self.location_manager.set_location('mortuary_f2r7')
        return 'graphics_menu'


    def to_mortuary_f2r7_tooltip(self):
        v1 = 'Пройти в юго-восточную препараторскую'
        v2 = 'Пройти в комнату'
        f1 = self.location_manager.is_visited('mortuary_f2r7')
        return v1 if f1 else v2


    def to_mortuary_f2r1_action(self):
        self.location_manager.set_location('mortuary_f2r1')
        return 'graphics_menu'


    def to_mortuary_f2r1_tooltip(self):
        v1 = 'Пройти в юго-западную препараторскую'
        v2 = 'Пройти в комнату'
        f1 = self.location_manager.is_visited('mortuary_f2r1')
        return v1 if f1 else v2


    def zf891_kill_tooltip(self):
        v1 = 'Атаковать труп «891»'
        v2 = 'Атаковать отвратительный труп'
        f1 = self.settings_manager.get_talked_to_zf891_times() > 0
        return v1 if f1 else v2


    def zf891_kill_action(self):
        return 'start_zf891_kill'


    def zf891_speak_tooltip(self):
        v1 = 'Поговорить c трупом «891»'
        v2 = 'Поговорить с отвратительным трупом'
        f1 = self.settings_manager.get_talked_to_zf891_times() > 0
        return v1 if f1 else v2


    def zf891_speak_action(self):
        return 'start_zf891_talk'


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
