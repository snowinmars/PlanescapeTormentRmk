import logging
import time

from game.engine.journal.journal_note import (JournalNote)


class JournalManager:
    def __init__(self, log_events_manager):
        self._log_events_manager = log_events_manager
        self._journal_store = None
        self._on_update_journal = []
        self._report_change_callback = None


    def set_store(self, journal_store):
        self._journal_store = journal_store


    def register_report_change_callback(self, report_change_callback):
        self._report_change_callback = report_change_callback


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
        found_note = self.get(note_id)
        found_note.found = True
        found_note.found_at = time.time()

        self._report_change_callback(
            'journal_manager_update_journal',
            {
                'note_id': note_id
            }
        )

        for callback in self._on_update_journal:
            callback()


    def build_journal(self):
        return list(map(
            lambda x: x[1],
            filter(
                lambda x: x[1].found,
                sorted(
                    self._journal_store.notes.items(),
                    key=lambda x: x[1].found_at,
                    reverse=True
                )
            )
        ))


    def _log(self, line):
        self._log_events_manager.write_log_event(line)


    def __getstate__(self):
        return {
        }


    def __setstate__(self, state): # TODO [snow]: is it ok?
        self._on_update_journal = []
        return
