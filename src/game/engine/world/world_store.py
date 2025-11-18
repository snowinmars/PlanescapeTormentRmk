class WorldStore():
    def __init__(self):
        self.once_keys = []
        self.registry = {}


    def __getstate__(self):
        return {
            'once_keys': self.once_keys,
            'registry': self.registry,
        }


    def __setstate__(self, state):
        self.once_keys = state['once_keys']
        self.registry = state['registry']
