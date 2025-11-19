class JournalStore():
    def __init__(self):
        self.notes = {}


    def __getstate__(self):
        return {
            'notes': self.notes,
        }


    def __setstate__(self, state):
        self.notes = state['notes']
