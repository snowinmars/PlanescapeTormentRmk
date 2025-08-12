from game.engine_data.menus.graphics_menu_logic import (GraphicsMenuLogic)


class MortuaryF3R1GraphicsMenuLogic(GraphicsMenuLogic):
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
