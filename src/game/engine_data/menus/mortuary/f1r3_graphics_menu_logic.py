from game.engine_data.menus.graphics_menu_logic import (GraphicsMenuLogic)


class MortuaryF1R3GraphicsMenuLogic(GraphicsMenuLogic):
    def __init__(self, settings_manager, location_manager):
        super().__init__(settings_manager, location_manager)
        self.party_xpos = 1360
        self.party_ypos = 400


    def to_mortuary_f1r2_action(self):
        self.location_manager.set_location('mortuary_f1r2')
        return 'graphics_menu'


    def to_mortuary_f1r2_tooltip(self):
        v1 = 'Пройти в северо-восточную усыпальню'
        v2 = 'Пройти в комнату'
        f1 = self.location_manager.is_visited('mortuary_f1r2')
        return v1 if f1 else v2


    def to_mortuary_f1r4_action(self):
        self.location_manager.set_location('mortuary_f1r4')
        return 'graphics_menu'


    def to_mortuary_f1r4_tooltip(self):
        v1 = 'Пройти в юго-западную усыпальню'
        v2 = 'Пройти в комнату'
        f1 = self.location_manager.is_visited('mortuary_f1r4')
        return v1 if f1 else v2


    def to_mortuary_f1rc_action(self):
        self.location_manager.set_location('mortuary_f1rc')
        return 'graphics_menu'


    def to_mortuary_f1rc_tooltip(self):
        v1 = 'Пройти в центральную усыпальню'
        v2 = 'Пройти в комнату'
        f1 = self.location_manager.is_visited('mortuary_f1rc')
        return v1 if f1 else v2


    def zf114_speak_tooltip(self):
        v1 = 'Поговорить с трупом «114»'
        v2 = 'Поговорить с ходячим трупом повешенного'
        f1 = self.settings_manager.get_talked_to_zf114_times() > 0
        return v1 if f1 else v2


    def zf114_speak_action(self):
        return 'zf114_speak'


    def zm1041_speak_tooltip(self):
        v1 = 'Поговорить с трупом «1041»'
        v2 = 'Поговорить с ходячим трупом повешенного'
        f1 = self.settings_manager.get_talked_to_zm1041_times() > 0
        return v1 if f1 else v2


    def zm1041_speak_action(self):
        return 'zm1041_speak'


    def xach_speak_tooltip(self):
        v1 = 'Поговорить с трупом «331»'
        v2 = 'Поговорить со слепым трупом'
        v3 = 'Поговорить с Захарией'
        f1 = self.settings_manager.get_talked_to_xach_times() > 0
        f2 = self.settings_manager.get_know_xachariah_name()
        if f2:
            return v3
        return v1 if f1 else v2


    def xach_speak_action(self):
        return 'xach_speak'
