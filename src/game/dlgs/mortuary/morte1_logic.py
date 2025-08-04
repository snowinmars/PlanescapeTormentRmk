class Morte1Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def morte1_init(self):
        self.settings_manager.location_manager.set_location('mortuary_f2r1')
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.inc_talked_to_morte_times()


    def kill_morte(self):
        self.settings_manager.set_dead_morte(True)


    def r39793_action(self):
        self.settings_manager.set_morte_value(1)


    def r39824_action(self):
        self.settings_manager.character_manager.modify_property_once('protagonist', 'good', 1, 'globalgood_morte_1')


    def r39829_action(self):
        # ShowFirstTimeHelp()
        self.settings_manager.set_has_scalpel(True)


    def r39852_action(self):
        self.settings_manager.set_in_party_morte(True)


    def r39856_action(self):
        self.settings_manager.set_in_party_morte(True)


    def r39859_action(self):
        self.settings_manager.set_in_party_morte(True)


    def s24_action(self):
        self.settings_manager.set_has_intro_key(True)
