import time

from game.engine.log_events.LogEvent import (LogEvent)


class LogEventsManager:
    def __init__(self, logger):
        self.logger = logger
        self._log_events_store = None


    def set_store(self, log_events_store):
        self._log_events_store = log_events_store


    def write_log_event(self, log_event_text, log_event_category = "general"):
        self._log_events_store.log_events.append(LogEvent(
            time.strftime("[%H:%M]"),
            log_event_category,
            log_event_text
        ))
        self.logger.debug(log_event_text)


    def ping(self):
        self.write_log_event('(-_-(-_(-_(-_-)_-)-_-)_-)')


    def get_log_events(self, log_event_category = None):
        if log_event_category:
            return list([e for e in self._log_events_store.log_events if e.category == log_event_category])

        return list(self._log_events_store.log_events)


    def clear(self):
        self._log_events_store.log_events.clear()
