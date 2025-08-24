from game.engine_data.menus.graphics_menu_logic import (GraphicsMenuLogic)


class MortuaryF1R1GraphicsMenuLogic(GraphicsMenuLogic):
    def __init__(self, settings_manager, location_manager):
        super().__init__(settings_manager, location_manager)
        self.party_xpos = 900
        self.party_ypos = 300


    def to_mortuary_f2r1_action(self):
        self.location_manager.set_location('mortuary_f2r1')
        return 'graphics_menu'


    def to_mortuary_f2r1_tooltip(self):
        v1 = 'Подняться на второй этаж'
        v2 = 'Подняться по лестнице'
        f1 = self.location_manager.is_visited('mortuary_f2r1')
        return v1 if f1 else v2


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


    def soego_speak_tooltip(self):
        v1 = 'Поговорить с Соего'
        v2 = 'Подойти к человеку'
        f1 = self.settings_manager.get_talked_to_soego_times() > 0
        return v1 if f1 else v2


    def soego_speak_action(self):
        return 'soego_speak'
