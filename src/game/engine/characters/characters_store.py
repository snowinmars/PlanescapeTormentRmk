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
