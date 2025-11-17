class JournalStore():
    def __init__(self):
        self.notes = {}
        self.on_update_journal = []


    def __getstate__(self):
        return {
            'notes': self.notes,
            # TODO [snow]: how to restore on_update_journal ?
        }


    def __setstate__(self, state):
        self.notes = state['notes']
        # TODO [snow]: how to restore on_update_journal ?
