class WalkingF2Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def walk_to_mortuaryf2r1_visit(self):
        self.settings_manager.location_manager.set_location('mortuary_f2r1')


    def walk_to_mortuaryf2r2_visit(self):
        self.settings_manager.location_manager.set_location('mortuary_f2r2')


    def walk_to_mortuaryf2r2_scene(self):
        self.settings_manager.location_manager.set_location('mortuary_f2r2')


    def walk_to_mortuaryf2r3_visit(self):
        self.settings_manager.location_manager.set_location('mortuary_f2r3')


    def walk_to_mortuaryf2r3_scene(self):
        self.settings_manager.location_manager.set_location('mortuary_f2r3')


    def walk_to_mortuaryf2r4_visit(self):
        self.settings_manager.location_manager.set_location('mortuary_f2r4')


    def walk_to_mortuaryf2r5_visit(self):
        self.settings_manager.location_manager.set_location('mortuary_f2r5')


    def walk_to_mortuaryf2r6_visit(self):
        self.settings_manager.location_manager.set_location('mortuary_f2r6')


    def walk_to_mortuaryf2r7_visit(self):
        self.settings_manager.location_manager.set_location('mortuary_f2r7')


    def walk_to_mortuaryf2r8_visit(self):
        self.settings_manager.location_manager.set_location('mortuary_f2r8')


    def pick_scalpel(self):
        self.settings_manager.set_has_scalpel(True)


    def walk_mortuary_f2r7_pick_embalm(self):
        self.settings_manager.set_has_embalm(True)


    def walk_mortuary_f2r7_pick_copper_earring_closed(self):
        self.settings_manager.set_has_copper_earring_closed(True)
