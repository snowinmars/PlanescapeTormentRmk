from game.engine_data.menus.graphics_menu_logic import (GraphicsMenuLogic)


class MortuaryF2R6GraphicsMenuLogic(GraphicsMenuLogic):
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


    def to_mortuary_f2r5_action(self):
        self.location_manager.set_location('mortuary_f2r5')
        return 'graphics_menu'


    def to_mortuary_f2r5_tooltip(self):
        v1 = 'Пройти в серево-восточную препараторскую'
        v2 = 'Пройти в комнату'
        f1 = self.location_manager.is_visited('mortuary_f2r5')
        return v1 if f1 else v2


    def vaxis_speak_tooltip(self):
        v1 = 'Поговорить c Ваксисом'
        v2 = 'Поговорить с фальшивым зомби'
        v3 = 'Поговорить с трупом'
        f1 = self.settings_manager.get_know_vaxis_name()
        f2 = self.settings_manager.get_talked_to_vaxis_times() > 0
        if f1:
            return v1
        return v2 if f2 else v3


    def vaxis_speak_action(self):
        return 'vaxis_speak'
