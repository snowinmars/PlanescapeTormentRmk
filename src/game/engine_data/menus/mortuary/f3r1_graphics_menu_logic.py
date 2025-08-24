from game.engine_data.menus.graphics_menu_logic import (GraphicsMenuLogic)


class MortuaryF3R1GraphicsMenuLogic(GraphicsMenuLogic):
    def __init__(self, settings_manager, location_manager):
        super().__init__(settings_manager, location_manager)
        self.party_xpos = 500
        self.party_ypos = 800


    def to_mortuary_f2r1_action(self):
        self.location_manager.set_location('mortuary_f2r1')
        return 'graphics_menu'


    def to_mortuary_f2r1_tooltip(self):
        v1 = 'Спуститься на второй этаж'
        v2 = 'Спуститься по лестнице'
        f1 = self.location_manager.is_visited('mortuary_f2r1')
        return v1 if f1 else v2


    def to_mortuary_f3r2_action(self):
        self.location_manager.set_location('mortuary_f3r2')
        return 'graphics_menu'


    def to_mortuary_f3r2_tooltip(self):
        return 'Пройти севернее'


    def to_mortuary_f3r4_action(self):
        self.location_manager.set_location('mortuary_f3r4')
        return 'graphics_menu'


    def to_mortuary_f3r4_tooltip(self):
        return 'Пройти южнее'


    def to_pick_mortuary_key_action(self):
        return 'walk_mortuary_f3r4_pick_mortuary_key'


    def to_pick_mortuary_key_tooltip(self):
        return 'Взять ключ'


    def s863_speak_tooltip(self):
        v1 = 'Поговорить c трупом «863»'
        v2 = 'Поговорить со скелетом ветерана'
        f1 = self.settings_manager.get_talked_to_s863_times() > 0
        return v1 if f1 else v2


    def s863_speak_action(self):
        return 's863_speak'


    def zm1146_speak_tooltip(self):
        v1 = 'Поговорить c трупом «1146»'
        v2 = 'Поговорить с ходячим плешивым трупом'
        f1 = self.settings_manager.get_talked_to_zm1146_times() > 0
        return v1 if f1 else v2


    def zm1146_speak_action(self):
        return 'zm1146_speak'


    def zf1148_speak_tooltip(self):
        v1 = 'Поговорить c трупом «1148»'
        v2 = 'Поговорить с татуированным трупом'
        f1 = self.settings_manager.get_talked_to_zf1148_times() > 0
        return v1 if f1 else v2


    def zf1148_speak_action(self):
        return 'zf1148_speak'
