class MortuaryF2LootLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def scalpel(self):
        self.state_manager.inventory_manager.pick_item('has_scalpel')


    def embalm(self):
        self.state_manager.inventory_manager.pick_item('has_embalm')


    def copper_earring_closed(self):
        self.state_manager.inventory_manager.pick_item('has_copper_earring_closed')


    def get_where_party_stands(self):
        current_location = self.state_manager.locations_manager.get_location()

        if current_location == 'mortuary_f2r1':
            return { 'x': 1650, 'y': 2222 }
        if current_location == 'mortuary_f2r2':
            return { 'x':  400, 'y': 2000 }
        if current_location == 'mortuary_f2r3':
            return { 'x':  690, 'y': 1130 }
        if current_location == 'mortuary_f2r4':
            return { 'x': 1680, 'y':  550 }
        if current_location == 'mortuary_f2r5':
            return { 'x': 3000, 'y':  630 }
        if current_location == 'mortuary_f2r6':
            return { 'x': 3920, 'y': 1400 }
        if current_location == 'mortuary_f2r7':
            return { 'x': 3650, 'y': 2300 }
        if current_location == 'mortuary_f2r8':
            return { 'x': 2630, 'y': 2800 }
        raise KeyError(f'current_location {current_location} is out of range')
