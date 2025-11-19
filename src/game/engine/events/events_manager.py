import time

from game.engine.events.event import (Event)


class EventsManager:
    def __init__(self, logger):
        self.logger = logger
        self._events_store = None


    def set_store(self, events_store):
        self._events_store = events_store


    def write_event(self, event_text, event_category = "general"):
        self._events_store.events.append(Event(
            time.strftime("[%H:%M]"),
            event_category,
            event_text
        ))
        self.logger.debug(event_text)


    def ping(self):
        self.write_event('(-_-(-_(-_(-_-)_-)-_-)_-)')


    def get_events(self, event_category = None):
        if event_category:
            return list([e for e in self._events_store.events if e.category == event_category])

        return list(self._events_store.events)


    def clear(self):
        self._events_store.events.clear()
