import json


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
