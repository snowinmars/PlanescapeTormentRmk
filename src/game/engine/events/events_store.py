from collections import deque


class EventsStore():
    def __init__(self, max_entries = 100):
        self.events = deque(maxlen=max_entries)


    def __getstate__(self):
        return {
            'events': self.events,
        }


    def __setstate__(self, state):
        self.events = deque(maxlen=max_entries)
        for event in state['events']:
            self.events.append(event)
