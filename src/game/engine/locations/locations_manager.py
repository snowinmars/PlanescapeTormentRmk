import logging


# Internal is InfinityEngine: AR0202
# External is Renpy: mortuary_f2r1
class LocationsManager:
    def __init__(self, log_events_manager):
        self._log_events_manager = log_events_manager
        self._locations_store = None


    def set_store(self, locations_store):
        self._locations_store = locations_store


    def register(self, internal, externals):
        internal_already_registrated = internal in self._locations_store.i2e_mapping
        if internal_already_registrated:
            raise KeyError(f"Internal location id '{internal}' already registered")

        for external in externals:
            external_already_registrated = external in self._locations_store.e2i_mapping
            if external_already_registrated:
                raise ValueError(f"External location id '{external}' already mapped to '{self._locations_store.e2i_mapping[external]}'")

        self._locations_store.i2e_mapping[internal] = externals.copy()
        for external in externals:
            self._locations_store.e2i_mapping[external] = internal
            self._log(f"Register external '{external}' to internal '{internal}'")

        return self


    def set_location(self, external):
        external_was_not_registrated = external not in self._locations_store.e2i_mapping
        if external_was_not_registrated:
            raise KeyError(f"External location id '{external}' was not registered")

        internal = self._locations_store.e2i_mapping[external]
        # TODO [snow]: seems impossible because of register checks
        # internal_was_not_registrated = internal not in self._locations_store.i2e_mapping
        # if internal_was_not_registrated:
        #         raise ValueError(f"Internal location id '{internal}' was not registrated to '{external}'")

        self._locations_store.current_external = external
        self._locations_store.current_internal = internal

        if external not in self._locations_store.visited_externals:
            self._locations_store.visited_externals.append(external)
        if internal not in self._locations_store.visited_internals:
            self._locations_store.visited_internals.append(internal)

        self._log(f"Set location '{external}' as part of '{internal}'")


    def get_location(self):  # get_current_external
        return self._locations_store.current_external


    def get_current_internal(self):
        return self._locations_store.current_internal


    def is_visited(self, location_id):
        return self.is_visited_external(location_id) or self.is_visited_internal(location_id)


    def is_visited_external(self, external):
        return external in self._locations_store.visited_externals


    def is_visited_internal(self, internal_internal_id):
        return internal_internal_id in self._locations_store.visited_internals


    def _log(self, line):
        self._log_events_manager.write_log_event(line)
