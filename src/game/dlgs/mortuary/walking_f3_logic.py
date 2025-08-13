class WalkingF3Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def walk_to_mortuaryf3r2_visit(self):
        self.settings_manager.location_manager.set_location('mortuary_f3r2')


    def walk_to_mortuary_f3r3_visit(self):
        self.settings_manager.location_manager.set_location('mortuary_f3r3')


    def walk_to_mortuaryf3r4_visit(self):
        self.settings_manager.location_manager.set_location('mortuary_f3r4')


    def walk_to_mortuary_f3r1_visit(self):
        self.settings_manager.location_manager.set_location('mortuary_f3r1')


    def walk_mortuary_f3r4_pick_prybar(self):
        self.settings_manager.set_has_prybar(True)


    def walk_mortuary_f3r4_pick_dustman_request(self):
        self.settings_manager.set_has_dustman_request(True)


    def walk_mortuary_f3r4_pick_needle(self):
        self.settings_manager.set_has_needle(True)


    def walk_mortuary_f3r4_pick_mortuary_key(self):
        self.settings_manager.set_has_mortuary_key(True)


    def walk_mortuary_f3r4_pick_mortuary_task_list(self):
        self.settings_manager.set_has_mortuary_task_list(True)

    def walk_mortuary_f3r4_pick_garbage(self):
        self.settings_manager.set_has_garbage(True)
