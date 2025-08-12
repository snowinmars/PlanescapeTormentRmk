from game.engine_data.menus.graphics_menu_logic import (GraphicsMenuLogic)


class MortuaryF1R2GraphicsMenuLogic(GraphicsMenuLogic):
    def __init__(self, settings_manager, location_manager):
        super().__init__(settings_manager, location_manager)
        self.party_xpos = 1360
        self.party_ypos = 400


    def to_mortuary_f1rc_action(self):
        self.location_manager.set_location('mortuary_f1rc')
        return 'graphics_menu'


    def to_mortuary_f1rc_tooltip(self):
        v1 = 'Пройти в центральную усыпальню'
        v2 = 'Пройти в комнату'
        f1 = self.location_manager.is_visited('mortuary_f1rc')
        return v1 if f1 else v2


    def to_mortuary_f1r3_action(self):
        self.location_manager.set_location('mortuary_f1r3')
        return 'graphics_menu'


    def to_mortuary_f1r3_tooltip(self):
        v1 = 'Пройти в северную усыпальню'
        v2 = 'Пройти в комнату'
        f1 = self.location_manager.is_visited('mortuary_f1r3')
        return v1 if f1 else v2


    def to_mortuary_f1r1_action(self):
        self.location_manager.set_location('mortuary_f1r1')
        return 'graphics_menu'


    def to_mortuary_f1r1_tooltip(self):
        v1 = 'Пройти в главный зал'
        v2 = 'Пройти в комнату'
        f1 = self.location_manager.is_visited('mortuary_f1r1')
        return v1 if f1 else v2


    def deionarra_speak_tooltip(self):
        v1 = 'Поговорить с Дейонаррой'
        v2 = 'Подойти к человеку'
        f1 = self.settings_manager.get_talked_to_deionarra_times() > 0
        return v1 if f1 else v2


    def deionarra_speak_action(self):
        v1 = 'start_deions_talk'
        v2 = 'start_deions_talk_first'
        f1 = self.settings_manager.get_talked_to_deionarra_times() > 0
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
