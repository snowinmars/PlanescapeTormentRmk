import logging

from game.engine.journal.journal_note import (JournalNote)


class JournalManager:
    def __init__(self, events_manager):
        self._events_manager = events_manager
        self._journal_store = None
        self._on_update_journal = []


    def set_store(self, journal_store):
        self._journal_store = journal_store


    def register_on_update_journal(self, callback):
        self._on_update_journal.append(callback)


    def register(self, note_id, content, found=False):
        if note_id in self._journal_store.notes:
            raise KeyError(f"Note '{note_id}' already registrated")

        self._journal_store.notes[note_id] = JournalNote(note_id, content, found)

        return self


    def get(self, note_id):
        if note_id not in self._journal_store.notes:
            raise KeyError(f"Note '{note_id}' was not registrated")

        return self._journal_store.notes.get(note_id)


    def found_journal_note(self, note_id):
        return self.get(note_id).found


    def update_journal(self, note_id):
        self._log(f"Updated my journal with note '{note_id}'")
        self.get(note_id).found = True

        for callback in self._on_update_journal:
            callback()


    def build_journal(self):
        return map(lambda x: x[1], filter(lambda x: x[1].found, self._journal_store.notes.items()))


    def _log(self, line):
        self._events_manager.write_event(line)
