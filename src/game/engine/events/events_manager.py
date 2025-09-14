import time
from collections import deque
from dataclasses import dataclass


@dataclass(frozen=True)
class Event:
    timestamp: str
    category: str
    text: str


class EventsManager:
    def __init__(self, logger, max_entries = 100):
        self._events = deque(maxlen=max_entries)
        self.logger = logger


    def write_event(self, event_text, event_category = "general"):
        self._events.append(Event(
            timestamp = time.strftime("[%H:%M]"),
            category = event_category,
            text = event_text
        ))
        self.logger.debug(event_text)


    def ping(self):
        self.write_event('(-_-(-_(-_(-_-)_-)-_-)_-)')


    def get_events(self, event_category = None):
        if event_category:
            return list([e for e in self._events if e.category == event_category])

        return list(self._events)


    def clear(self):
        self._events.clear()
