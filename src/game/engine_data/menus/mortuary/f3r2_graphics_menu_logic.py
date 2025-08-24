from game.engine_data.menus.graphics_menu_logic import (GraphicsMenuLogic)


class MortuaryF3R2GraphicsMenuLogic(GraphicsMenuLogic):
    def __init__(self, settings_manager, location_manager):
        super().__init__(settings_manager, location_manager)
        self.party_xpos = 800
        self.party_ypos = 400


    def to_mortuary_f3r3_action(self):
        self.location_manager.set_location('mortuary_f3r3')
        return 'graphics_menu'


    def to_mortuary_f3r3_tooltip(self):
        return 'walk_to_mortuary_f3r3_visit'


    def to_mortuary_f3r1_action(self):
        self.location_manager.set_location('mortuary_f3r1')
        return 'walk_to_mortuary_f3r1_visit'


    def to_mortuary_f3r1_tooltip(self):
        return 'Пройти восточнее'


    def has_no_garbage(self):
        return not self.settings_manager.get_has_garbage()


    def to_pick_garbage_action(self):
        return 'walk_mortuary_f3r4_pick_garbage'


    def to_pick_garbage_tooltip(self):
        return 'Взять мусор'


    def has_no_mortuary_task_list(self):
        return not self.settings_manager.get_has_mortuary_task_list()


    def to_pick_mortuary_task_list_action(self):
        return 'walk_mortuary_f3r4_pick_mortuary_task_list'


    def to_pick_mortuary_task_list_tooltip(self):
        return 'Взять бумагу'


    def has_no_needle(self):
        return not self.settings_manager.get_has_needle()


    def to_pick_needle_action(self):
        return 'walk_mortuary_f3r4_pick_needle'


    def to_pick_needle_tooltip(self):
        return 'Взять иголку'


    def dust_speak_tooltip(self):
        v1 = 'Поговорить с тленным'
        v2 = 'Поговорить с человеком'
        f1 = self.settings_manager.get_talked_to_dust_times() > 0
        return v1 if f1 else v2


    def dust_speak_action(self):
        return 'dust_speak'
