from game.engine_data.menus.graphics_menu_logic import (GraphicsMenuLogic)


class MortuaryF1RcGraphicsMenuLogic(GraphicsMenuLogic):
    def __init__(self, settings_manager, location_manager):
        super().__init__(settings_manager, location_manager)
        self.party_xpos = 1360
        self.party_ypos = 400


    def to_mortuary_f1r1_action(self):
        self.location_manager.set_location('mortuary_f1r1')
        return 'graphics_menu'


    def to_mortuary_f1r1_tooltip(self):
        v1 = 'Пройти в главный зал'
        v2 = 'Пройти в комнату'
        f1 = self.location_manager.is_visited('mortuary_f1r1')
        return v1 if f1 else v2


    def to_mortuary_f1r2_action(self):
        self.location_manager.set_location('mortuary_f1r2')
        return 'graphics_menu'


    def to_mortuary_f1r2_tooltip(self):
        v1 = 'Пройти в северо-восточную усыпальню'
        v2 = 'Пройти в комнату'
        f1 = self.location_manager.is_visited('mortuary_f1r2')
        return v1 if f1 else v2


    def to_mortuary_f1r3_action(self):
        self.location_manager.set_location('mortuary_f1r3')
        return 'graphics_menu'


    def to_mortuary_f1r3_tooltip(self):
        v1 = 'Пройти в северную усыпальню'
        v2 = 'Пройти в комнату'
        f1 = self.location_manager.is_visited('mortuary_f1r3')
        return v1 if f1 else v2


    def to_mortuary_f1r4_action(self):
        self.location_manager.set_location('mortuary_f1r4')
        return 'graphics_menu'


    def to_mortuary_f1r4_tooltip(self):
        v1 = 'Пройти в юго-западную усыпальню'
        v2 = 'Пройти в комнату'
        f1 = self.location_manager.is_visited('mortuary_f1r4')
        return v1 if f1 else v2


    def giantsk_speak_tooltip(self):
        return 'Поговорить с гиганским скелетом'


    def giantsk_speak_action(self):
        return 'giantsk_speak'
