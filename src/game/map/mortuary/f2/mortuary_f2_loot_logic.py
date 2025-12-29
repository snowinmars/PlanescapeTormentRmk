class MortuaryF2LootLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def scalpel(self):
        self.state_manager.world_manager.set_has_scalpel(True)


    def embalm(self):
        self.state_manager.world_manager.set_has_embalm(True)


    def copper_earring_closed(self):
        self.state_manager.world_manager.set_has_copper_earring_closed(True)


    def get_where_party_stands(self, state_manager):
        current_location = state_manager.locations_manager.get_location()

        if current_location == 'mortuary_f2r1':
            return { 'x': 2264, 'y': 2375 }
        if current_location == 'mortuary_f2r2':
            return { 'x': 1300, 'y': 2135 }
        if current_location == 'mortuary_f2r3':
            return { 'x': 1319, 'y': 1214 }
        if current_location == 'mortuary_f2r4':
            return { 'x': 2396, 'y': 577 }
        if current_location == 'mortuary_f2r5':
            return { 'x': 3656, 'y': 582 }
        if current_location == 'mortuary_f2r6':
            return { 'x': 4440, 'y': 1300 }
        if current_location == 'mortuary_f2r7':
            return { 'x': 4450, 'y': 2300 }
        if current_location == 'mortuary_f2r8':
            return { 'x': 3300, 'y': 2800 }
