class MortuaryF1LootLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def get_where_party_stands(self):
        current_location = self.state_manager.locations_manager.get_location()

        if current_location == 'mortuary_f1r1':
            return { 'x': 1200, 'y': 2300 }
        if current_location == 'mortuary_f1r2':
            return { 'x': 590, 'y': 1300 }
        if current_location == 'mortuary_f1r3':
            return { 'x': 3200, 'y': 700 }
        if current_location == 'mortuary_f1r4':
            return { 'x': 3700, 'y': 2000 }
        if current_location == 'mortuary_f1rc':
            return { 'x': 2250, 'y': 1750 }
        raise KeyError(f'current_location {current_location} is out of range')
