import json

from game.engine.journal.journal_note import (JournalNote)


class JournalStore():
    def __init__(self):
        self.notes = {}


    def __getstate__(self):
        return {
            'notes': self.notes,
        }


    def __setstate__(self, state):
        self.notes = state['notes']


    def toJson(self, indent=None):
        state = self.__getstate__()
        state['notes'] = dict(map(lambda x: (
            x[0],
            x[1].__getstate__()
        ), state['notes'].items()))
        return json.dumps(
            state,
            ensure_ascii=False,
            indent=indent
        )


    @classmethod
    def fromJson(cls, json_str):
        data = json.loads(json_str)
        obj = cls()
        data['notes'] = dict(map(lambda x: (
            x[0],
            JournalNote(
                x[1]['id'],
                x[1]['content'],
                x[1]['found']
            )), data['notes'].items()))
        obj.__setstate__(data)
        return obj
