import json
from collections import deque

from game.engine.events.event import (Event)


class EventsStore():
    def __init__(self, max_entries=100):
        self.events = deque(maxlen=max_entries)
        self.max_entries = max_entries


    def __getstate__(self):
        return {
            'events': self.events,
            'max_entries': self.max_entries
        }


    def __setstate__(self, state):
        self.max_entries = state['max_entries']
        self.events = deque(state['events'], maxlen=self.max_entries)


    def toJson(self, indent=None):
        state = self.__getstate__()
        state['events'] = list(map(lambda x:
            x.__getstate__()
        , state['events']))
        return json.dumps(
            state,
            ensure_ascii=False,
            indent=indent
        )


    @classmethod
    def fromJson(cls, json_str):
        data = json.loads(json_str)
        obj = cls()
        data['events'] = deque(map(lambda x:
            Event(
                x['timestamp'],
                x['category'],
                x['text']
            ), data['events']))
        obj.__setstate__(data)
        return obj
