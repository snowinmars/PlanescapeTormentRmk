class WalkingF1Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def walk_to_mortuaryf1r1_visit(self):
        self.settings_manager.location_manager.set_location('mortuary_f1r1')
