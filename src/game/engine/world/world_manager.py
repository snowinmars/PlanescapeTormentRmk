class WorldManager:
    def __init__(self, log_events_manager):
        self._log_events_manager = log_events_manager
        self._world_store = None


    def set_store(self, world_store):
        self._world_store = world_store


    def register(self, setting_id, default_value):
        self._world_store.registry[setting_id] = default_value

        def getter():
            return self._world_store.registry[setting_id]
        def setter(value):
            self._log(f'set {setting_id} = {value}')
            self._world_store.registry[setting_id] = value
        def inc(delta = 1):
            before = self._world_store.registry[setting_id]
            after = self._world_store.registry[setting_id] + delta
            self._log(f"increment '{setting_id}' = {before} + {delta} = {after}")
            self._world_store.registry[setting_id] = after
        def dec(delta = 1):
            before = self._world_store.registry[setting_id]
            after = self._world_store.registry[setting_id] - delta
            self._log(f"dec '{setting_id}' = {before} - {delta} = {after}")
            self._world_store.registry[setting_id] = after
        def inc_once(key, delta = 1):
            if key in self._world_store.once_keys:
                self._log(f"already incremented '{setting_id}' with '{key}'")
                return
            before = self._world_store.registry[setting_id]
            after = self._world_store.registry[setting_id] + delta
            self._log(f"increment with '{key}' '{setting_id}' = '{before}' + '{delta}' = '{after}'")
            self._world_store.registry[setting_id] = after
            self._world_store.once_keys.append(key)
        def dec_once(key, delta = 1):
            if key in self._world_store.once_keys:
                self._log(f"already decremented '{setting_id}' with '{key}'")
                return
            before = self._world_store.registry[setting_id]
            after = self._world_store.registry[setting_id] - delta
            self._log(f"decrement with '{key}' '{setting_id}' = '{before}' - '{delta}' = '{after}'")
            self._world_store.registry[setting_id] = after
            self._world_store.once_keys.append(key)

        setattr(self, f'get_{setting_id}', getter)
        setattr(self, f'set_{setting_id}', setter)
        setattr(self, f'inc_{setting_id}', inc)
        setattr(self, f'dec_{setting_id}', dec)
        setattr(self, f'inc_once_{setting_id}', inc_once)
        setattr(self, f'dec_once_{setting_id}', dec_once)

        return self


    def get_setting_value(self, setting_id):
        if setting_id not in self._world_store.registry:
            raise KeyError(f"Setting '{setting_id}' was not found in the registry")
        return self._world_store.registry[setting_id]


    def _log(self, line):
        self._log_events_manager.write_log_event(line)
