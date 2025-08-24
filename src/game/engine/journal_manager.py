from dataclasses import dataclass
import logging
import renpy


devlog = logging.getLogger('log')


@dataclass
class Note:
    id: str
    content: str
    found: bool


class JournalManager:
    def __init__(self, event_manager):
        self._event_manager = event_manager
        self._notes = {}


    def register(self, note_id, content, found=False):
        if note_id in self._notes:
            raise KeyError(f"Note '{note_id}' already registrated")

        self._notes[note_id] = Note(
            id=note_id,
            content=content,
            found=found
        )

        return self


    def get(self, note_id):
        if note_id not in self._notes:
            raise KeyError(f"Note '{note_id}' was not registrated")

        return self._notes.get(note_id)


    def has_journal_note(self, note_id):
        return self.get(note_id).found


    def update_journal(self, note_id):
        self._log(f"Updated my journal with note '{note_id}'")
        self.get(note_id).found = True
        renpy.exports.sound.play(renpy.store.audio.update_journal)


    def build_journal(self):
        return filter(lambda x: x.found, self._notes.items())


    def _log(self, line):
        devlog.debug(line)
        self._event_manager.write_event(line)
