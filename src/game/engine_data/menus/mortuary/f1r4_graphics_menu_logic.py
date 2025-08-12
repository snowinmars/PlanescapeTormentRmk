from game.engine_data.menus.graphics_menu_logic import (GraphicsMenuLogic)


class MortuaryF1R4GraphicsMenuLogic(GraphicsMenuLogic):
    def __init__(self, settings_manager, location_manager):
        super().__init__(settings_manager, location_manager)
        self.party_xpos = 1360
        self.party_ypos = 400


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


    def to_mortuary_f1rc_action(self):
        self.location_manager.set_location('mortuary_f1rc')
        return 'graphics_menu'


    def to_mortuary_f1rc_tooltip(self):
        v1 = 'Пройти в центральную усыпальню'
        v2 = 'Пройти в комнату'
        f1 = self.location_manager.is_visited('mortuary_f1rc')
        return v1 if f1 else v2


    def to_mortuary_f2r7_action(self):
        self.location_manager.set_location('mortuary_f2r7')
        return 'graphics_menu'


    def to_mortuary_f2r7_tooltip(self):
        v1 = 'Подняться на второй этаж'
        v2 = 'Подняться по лестнице'
        f1 = self.location_manager.is_visited('mortuary_f2r7')
        return v1 if f1 else v2


    def zm732_kill_tooltip(self):
        v1 = 'Атаковать труп «732»'
        v2 = 'Атаковать ходячий труп повешенного'
        f1 = self.settings_manager.get_talked_to_zm732_times() > 0
        return v1 if f1 else v2


    def zm732_kill_action(self):
        return 'start_zm732_kill'


    def zm732_speak_tooltip(self):
        v1 = 'Поговорить с трупом «732»'
        v2 = 'Поговорить с ходячим трупом повешенного'
        f1 = self.settings_manager.get_talked_to_zm732_times() > 0
        return v1 if f1 else v2


    def zm732_speak_action(self):
        return 'start_zm732_talk'


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
