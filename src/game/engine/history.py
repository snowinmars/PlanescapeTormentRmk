import time


class HistoryManager:
    def __init__(self, max_entries=100):
        self.max_entries = max_entries
        self.lines = []

    def write_line(self, who, what):
        at = time.strftime("[%H:%M]")
        entry = ({"at": at, "who": who, "what": what})

        self.lines.append(entry)

        if len(self.lines) > self.max_entries:
            self.lines.pop(0)

    def get_lines(self):
        return self.lines[::-1]  # Return newest first

    def clear(self):
        self.lines = []
