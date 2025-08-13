from game.engine_data.menus.graphics_menu_logic import (GraphicsMenuLogic)


class MortuaryF3R4GraphicsMenuLogic(GraphicsMenuLogic):
    def __init__(self, settings_manager, location_manager):
        super().__init__(settings_manager, location_manager)
        self.party_xpos = 800
        self.party_ypos = 800


    def to_mortuary_f3r3_action(self):
        self.location_manager.set_location('mortuary_f3r3')
        return 'graphics_menu'


    def to_mortuary_f3r3_tooltip(self):
        return 'Пройти западнее'


    def to_mortuary_f3r1_action(self):
        self.location_manager.set_location('mortuary_f3r1')
        return 'graphics_menu'


    def to_mortuary_f3r1_tooltip(self):
        return 'Пройти восточнее'


    def to_prybar_action(self):
        return 'walk_mortuary_f3r4_pick_prybar'


    def to_prybar_tooltip(self):
        return 'Взять ломик'


    def to_dustman_request_action(self):
        return 'walk_mortuary_f3r4_pick_dustman_request'


    def to_dustman_request_tooltip(self):
        return 'Взять бумагу'


    def to_needle_action(self):
        return 'walk_mortuary_f3r4_pick_needle'


    def to_needle_tooltip(self):
        return 'Взять иголку'


    def to_garbage_action(self):
        return 'walk_mortuary_f3r4_pick_garbage'


    def to_garbage_tooltip(self):
        return 'Взять мусор'


    def dustfem_kill_tooltip(self):
        v1 = 'Атаковать тленную'
        v2 = 'Атаковать человека'
        f1 = self.settings_manager.get_talked_to_dustfem_times() > 0
        return v1 if f1 else v2


    def dustfem_kill_action(self):
        v1 = 'start_dustfem_kill'
        v2 = 'start_dustfem_kill_first'
        f1 = self.settings_manager.get_talked_to_dustfem_times() > 0
        return v1 if f1 else v2

    def dustfem_speak_tooltip(self):
        v1 = 'Поговорить с тленной'
        v2 = 'Поговорить с человеком'
        f1 = self.settings_manager.get_talked_to_dustfem_times() > 0
        return v1 if f1 else v2


    def dustfem_speak_action(self):
        v1 = 'start_dustfem_talk'
        v2 = 'start_dustfem_talk_first'
        f1 = self.settings_manager.get_talked_to_dustfem_times() > 0
        return v1 if f1 else v2


    def s42_kill_tooltip(self):
        v1 = 'Атаковать скелет «42»'
        v2 = 'Атаковать скелет в комбинезоне'
        f1 = self.settings_manager.get_talked_to_s42_times() > 0
        return v1 if f1 else v2


    def s42_kill_action(self):
        return 'start_s42_kill'


    def s42_speak_tooltip(self):
        v1 = 'Поговорить cо скелетом «42»'
        v2 = 'Поговорить со скелетом в комбинезоне'
        f1 = self.settings_manager.get_talked_to_s42_times() > 0
        return v1 if f1 else v2


    def s42_speak_action(self):
        return 'start_s42_talk'


    def zf832_kill_tooltip(self):
        v1 = 'Атаковать труп «832»'
        v2 = 'Атаковать красивый труп'
        f1 = self.settings_manager.get_talked_to_zf832_times() > 0
        return v1 if f1 else v2


    def zf832_kill_action(self):
        return 'start_zf832_kill'


    def zf832_speak_tooltip(self):
        v1 = 'Поговорить c трупом «832»'
        v2 = 'Поговорить с красивым трупом'
        f1 = self.settings_manager.get_talked_to_zf832_times() > 0
        return v1 if f1 else v2


    def zf832_speak_action(self):
        return 'start_zf832_talk'


    def zm613_kill_tooltip(self):
        v1 = 'Атаковать труп «613»'
        v2 = 'Атаковать изрезанный труп'
        f1 = self.settings_manager.get_talked_to_zm613_times() > 0
        return v1 if f1 else v2


    def zm613_kill_action(self):
        return 'start_zm613_kill'


    def zm613_speak_tooltip(self):
        v1 = 'Поговорить cо трупом «613»'
        v2 = 'Поговорить с изрезанным трупом'
        f1 = self.settings_manager.get_talked_to_zm613_times() > 0
        return v1 if f1 else v2


    def zm613_speak_action(self):
        return 'start_zm613_talk'


    def zm79_kill_tooltip(self):
        v1 = 'Атаковать труп «79»'
        v2 = 'Атаковать труп почти без головы'
        f1 = self.settings_manager.get_talked_to_zm79_times() > 0
        return v1 if f1 else v2


    def zm79_kill_action(self):
        return 'start_zm79_kill'


    def zm79_speak_tooltip(self):
        v1 = 'Поговорить cо трупом «79»'
        v2 = 'Поговорить с трупом почти без головы'
        f1 = self.settings_manager.get_talked_to_zm79_times() > 0
        return v1 if f1 else v2


    def zm79_speak_action(self):
        return 'start_zm79_talk'


    def zf679_kill_tooltip(self):
        v1 = 'Атаковать труп «679»'
        v2 = 'Атаковать древний труп'
        f1 = self.settings_manager.get_talked_to_zf679_times() > 0
        return v1 if f1 else v2


    def zf679_kill_action(self):
        return 'start_zf679_kill'


    def zf679_speak_tooltip(self):
        v1 = 'Поговорить cо трупом «679»'
        v2 = 'Поговорить с древним трупом'
        f1 = self.settings_manager.get_talked_to_zf679_times() > 0
        return v1 if f1 else v2


    def zf679_speak_action(self):
        return 'start_zf679_talk'


    def s1221_kill_tooltip(self):
        v1 = 'Атаковать скелет «1221»'
        v2 = 'Атаковать вонючий скелет'
        f1 = self.settings_manager.get_talked_to_s1221_times() > 0
        return v1 if f1 else v2


    def s1221_kill_action(self):
        return 'start_s1221_kill'


    def s1221_speak_tooltip(self):
        v1 = 'Поговорить cо скелетом «1221»'
        v2 = 'Поговорить с вонючим скелетом'
        f1 = self.settings_manager.get_talked_to_s1221_times() > 0
        return v1 if f1 else v2


    def s1221_speak_action(self):
        return 'start_s1221_talk'