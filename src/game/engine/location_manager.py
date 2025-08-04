import logging


devlog = logging.getLogger('log')


# Internal is InfinityEngine: AR0202
# External is Renpy: mortuary_f2r1
class LocationManager:
    def __init__(self, event_manager):
        self._event_manager = event_manager

        self._i2e_mapping = {}
        self._e2i_mapping = {}

        self._current_external = None
        self._current_internal = None
        self._visited_externals = set()
        self._visited_internals = set()


    def register(self, internal, externals):
        internal_already_registrated = internal in self._i2e_mapping
        if internal_already_registrated:
            raise KeyError(f"Internal location id '{internal}' already registered")

        for external in externals:
            external_already_registrated = external in self._e2i_mapping
            if external_already_registrated:
                raise ValueError(f"External location id '{external}' already mapped to '{self._e2i_mapping[external]}'")

        self._i2e_mapping[internal] = externals.copy()
        for external in externals:
            self._e2i_mapping[external] = internal

        return self


    def set_location(self, external):
        external_was_not_registrated = external not in self._e2i_mapping
        if external_was_not_registrated:
            raise KeyError(f"External location id '{external}' was not registered")

        internal = self._e2i_mapping[external]
        # TODO [snow]: seems impossible because of register checks
        # internal_was_not_registrated = internal not in self._i2e_mapping
        # if internal_was_not_registrated:
        #         raise ValueError(f"Internal location id '{internal}' was not registrated to '{external}'")

        self._current_external = external
        self._current_internal = internal

        self._visited_externals.add(external)
        self._visited_internals.add(internal)

        self._log(f"Set location '{external}' as part of '{internal}'")


    def get_location(self):  # get_current_external
        return self._current_external


    def get_current_internal(self):
        return self._current_internal


    def is_visited(self, external):  # is_visited_external
        return external in self._visited_externals


    def is_visited_internal(self, internal_internal_id):
        return internal_internal_id in self._visited_internals


    def _log(self, line):
        devlog.debug(line)
        self._event_manager.write_event(line)
