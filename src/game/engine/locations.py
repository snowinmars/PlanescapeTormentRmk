import logging

devlog = logging.getLogger('log')


class LocationBuilder:
    def __init__(self):
        self.mappings = {}

    def register(self, internal_id, location_ids) -> 'LocationBuilder':
        if internal_id in self.mappings:
            raise ValueError(f"Internal ID {internal_id} already exists")
        self.mappings[internal_id] = location_ids.copy()
        return self

    def build_reverse_mappings(self):
        return {
            location_id: internal_id
            for internal_id, location_ids in self.mappings.items()
            for location_id in location_ids
        }


class LocationManager:
    def __init__(self, event_manager):
        self.current_location_id = None
        self.current_internal_location_id = None
        self.visited_locations = []
        self.visited_internal_locations = []
        self.event_manager = event_manager

    def register(self, mappings, reverse_mappings):
        self._mappings = mappings
        self._reverse_mappings = reverse_mappings

    def set_location(self, location_id):
        line = f'set location_id = {location_id}'
        devlog.debug(line)
        self.event_manager.write_event(line)
        self.current_location_id = location_id
        self.current_internal_location_id = self.get_internal_id(location_id)

        if not self.is_visited_location(location_id):
            line = f'remember {location_id} as visited'
            devlog.debug(line)
            self.event_manager.write_event(line)
            self.visited_locations.append(location_id)

        if not self.is_visited_internal_location(self.current_internal_location_id):
            self.visited_internal_locations.append(self.current_internal_location_id)

    def get_location(self):
        return self.current_location_id

    def get_internal_location(self):
        return self.current_internal_location_id

    def is_visited_location(self, location_id):
        return location_id in self.visited_locations

    def is_visited_internal_location(self, internal_location_id):
        return internal_location_id in self.visited_internal_locations

    # def get_location_ids(self, internal_id: str) -> List[str]:
    #     if internal_id not in self._mappings:
    #         raise ValueError(f"Unknown internal ID: {internal_id}")
    #     return self._mappings[internal_id].copy()

    def get_internal_id(self, location_id):
        if location_id not in self._reverse_mappings:
            raise ValueError(f"Unknown location ID: {location_id}")
        return self._reverse_mappings[location_id]

    # def get_all_internal_ids(self) -> List[str]:
    #     return list(self._mappings.keys())

    # def get_all_location_ids(self) -> List[str]:
    #     return list(self._reverse_mappings.keys())
