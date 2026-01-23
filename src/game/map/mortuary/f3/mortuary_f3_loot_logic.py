class MortuaryF3LootLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def mortuary_key(self):
        self.state_manager.inventory_manager.pick_item('has_mortuary_key')


    def mortuary_task_list(self):
        self.state_manager.inventory_manager.pick_item('has_mortuary_task_list')


    def prybar(self):
        self.state_manager.inventory_manager.pick_item('has_prybar')


    def dustman_request(self):
        self.state_manager.inventory_manager.pick_item('has_dustman_request'),


    def needle(self):
        self.state_manager.inventory_manager.pick_item('has_needle')


    def garbage(self):
        self.state_manager.world_manager.set_has_garbage(True)


    def get_where_party_stands(self):
        current_location = self.state_manager.locations_manager.get_location()

        if current_location == 'mortuary_f3r1':
            return { 'x': 440, 'y': 1575 }
        if current_location == 'mortuary_f3r2':
            return { 'x': 1710, 'y': 500 }
        if current_location == 'mortuary_f3r3':
            return { 'x': 3200, 'y': 1400 }
        if current_location == 'mortuary_f3r4':
            return { 'x': 1945, 'y': 2350 }
        if current_location == 'mortuary_f3rc':
            return { 'x': 2600, 'y': 820 }
        raise KeyError(f'current_location {current_location} is out of range')
