import json

from game.engine.characters.Character import (Character)


class CharactersStore():
    def __init__(self):
        self.characters = {}
        self.once_keys = {}


    def __getstate__(self):
        return {
            'characters': self.characters,
            'once_keys': self.once_keys,
        }


    def __setstate__(self, state):
        self.characters = state['characters']
        self.once_keys = state['once_keys']


    def toJson(self, indent=None):
        state = self.__getstate__()
        state['characters'] = dict(map(lambda x: (
            x[0],
            x[1].__getstate__()
        ), state['characters'].items()))
        return json.dumps(
            state,
            ensure_ascii=False,
            indent=indent
        )


    @classmethod
    def fromJson(cls, json_str):
        data = json.loads(json_str)
        obj = cls()
        data['characters'] = dict(map(lambda x: (
            x[0],
            Character(
                x[1]['name'],
                x[1]['current_class'],
                x[1]['race'],
                x[1]['sex'],
                x[1]['max_health'],
                x[1]['current_health'],
                x[1]['ac'],
                x[1]['good'],
                x[1]['law'],
                x[1]['lore'],
                x[1]['experience'],
                x[1]['strength'],
                x[1]['dexterity'],
                x[1]['intelligence'],
                x[1]['constitution'],
                x[1]['wisdom'],
                x[1]['charisma'],
                x[1]['looks_like']
            )), data['characters'].items()))
        obj.__setstate__(data)
        return obj
