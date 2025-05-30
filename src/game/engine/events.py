import time

class EventManager:
    def __init__(self, max_entries=100):
        self.max_entries = max_entries
        self.events = []

    def write_event(self, event_text, event_category="general"):
        timestamp = time.strftime("[%H:%M]")
        entry = (timestamp, event_category, event_text)

        self.events.append(entry)

        if len(self.events) > self.max_entries:
            self.events.pop(0)

    def get_events(self, category_filter=None):
        if not category_filter:
            return self.events[::-1]  # Return newest first
        return [e for e in self.events[::-1] if e[1] == category_filter]

    def clear(self):
        self.events = []
