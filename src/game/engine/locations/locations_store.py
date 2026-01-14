import json


class LocationsStore():
    def __init__(self):
        self.i2e_mapping = {}
        self.e2i_mapping = {}
        self.current_external = None
        self.current_internal = None
        self.previous_external = None
        self.previous_internal = None
        self.visited_externals = []
        self.visited_internals = []


    def __getstate__(self):
        return {
            'i2e_mapping': self.i2e_mapping,
            'e2i_mapping': self.e2i_mapping,
            'current_external': self.current_external,
            'current_internal': self.current_internal,
            'previous_external': self.previous_external,
            'previous_internal': self.previous_internal,
            'visited_externals': self.visited_externals,
            'visited_internals': self.visited_internals,
        }


    def __setstate__(self, state):
        self.i2e_mapping = state['i2e_mapping']
        self.e2i_mapping = state['e2i_mapping']
        self.current_external = state['current_external']
        self.current_internal = state['current_internal']
        self.previous_external = state['previous_external']
        self.previous_internal = state['previous_internal']
        self.visited_externals = state['visited_externals']
        self.visited_internals = state['visited_internals']


    def toJson(self, indent=None):
        return json.dumps(
            self.__getstate__(),
            ensure_ascii=False,
            indent=indent
        )


    @classmethod
    def fromJson(cls, json_str):
        data = json.loads(json_str)
        obj = cls()
        obj.__setstate__(data)
        return obj
