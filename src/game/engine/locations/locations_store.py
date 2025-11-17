class LocationsStore():
    def __init__(self):
        self.i2e_mapping = {}
        self.e2i_mapping = {}
        self.current_external = None
        self.current_internal = None
        self.visited_externals = set()
        self.visited_internals = set()


    def __getstate__(self):
        return {
            'i2e_mapping': self.i2e_mapping,
            'e2i_mapping': self.e2i_mapping,
            'current_external': self.current_external,
            'current_internal': self.current_internal,
            'visited_externals': self.visited_externals,
            'visited_internals': self.visited_internals,
        }


    def __setstate__(self, state):
        self.i2e_mapping = state['i2e_mapping']
        self.e2i_mapping = state['e2i_mapping']
        self.current_external = state['current_external']
        self.current_internal = state['current_internal']
        self.visited_externals = state['visited_externals']
        self.visited_internals = state['visited_internals']
