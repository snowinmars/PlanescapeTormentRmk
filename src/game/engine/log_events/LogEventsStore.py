import json
from collections import deque

from game.engine.log_events.LogEvent import (LogEvent)


class LogEventsStore():
    def __init__(self, max_entries=100):
        self.log_events = deque(maxlen=max_entries)
        self.max_entries = max_entries


    def __getstate__(self):
        return {
            'log_events': self.log_events,
            'max_entries': self.max_entries
        }


    def __setstate__(self, state):
        self.max_entries = state['max_entries']
        self.log_events = deque(state['log_events'], maxlen=self.max_entries)


    def toJson(self, indent=None):
        state = self.__getstate__()
        state['log_events'] = list(map(lambda x:
            x.__getstate__()
        , state['log_events']))
        return json.dumps(
            state,
            ensure_ascii=False,
            indent=indent
        )


    @classmethod
    def fromJson(cls, json_str):
        data = json.loads(json_str)
        obj = cls()
        data['log_events'] = deque(map(lambda x:
            LogEvent(
                x['timestamp'],
                x['category'],
                x['text']
            ), data['log_events']))
        obj.__setstate__(data)
        return obj
