from collections import deque


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
