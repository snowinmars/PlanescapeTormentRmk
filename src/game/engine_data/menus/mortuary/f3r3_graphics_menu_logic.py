from game.engine_data.menus.graphics_menu_logic import (GraphicsMenuLogic)


class MortuaryF3R3GraphicsMenuLogic(GraphicsMenuLogic):
    def __init__(self, settings_manager, location_manager):
        super().__init__(settings_manager, location_manager)
        self.party_xpos = 1500
        self.party_ypos = 650


    def to_mortuary_f2r7_action(self):
        self.location_manager.set_location('mortuary_f2r7')
        return 'graphics_menu'


    def to_mortuary_f2r7_tooltip(self):
        v1 = 'Спуститься на второй этаж'
        v2 = 'Спуститься по лестнице'
        f1 = self.location_manager.is_visited('mortuary_f2r7')
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


    def s748_speak_tooltip(self):
        v1 = 'Поговорить cо скелетом «748»'
        v2 = 'Поговорить со скелетом со вставной челюстью'
        f1 = self.settings_manager.get_talked_to_s748_times() > 0
        return v1 if f1 else v2


    def s748_speak_action(self):
        return 's748_speak'


    def s996_speak_tooltip(self):
        v1 = 'Поговорить cо скелетом «996»'
        v2 = 'Поговорить со скелетом со словом на лбу'
        f1 = self.settings_manager.get_talked_to_s996_times() > 0
        return v1 if f1 else v2


    def s996_speak_action(self):
        return 's996_speak'


    def zm475_speak_tooltip(self):
        v1 = 'Поговорить cо трупом «475»'
        v2 = 'Поговорить с проржавевшим трупом'
        f1 = self.settings_manager.get_talked_to_zm475_times() > 0
        return v1 if f1 else v2


    def zm475_speak_action(self):
        return 'zm475_speak'


    def zm310_speak_tooltip(self):
        v1 = 'Поговорить cо трупом «310»'
        v2 = 'Поговорить с безжизненным трупом'
        f1 = self.settings_manager.get_talked_to_zm310_times() > 0
        return v1 if f1 else v2


    def zm310_speak_action(self):
        return 'zm310_speak'
