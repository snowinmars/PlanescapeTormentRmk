class JournalNote:
    def __init__(self, id, content, found):
        self.id = id
        self.content = content
        self.found = found


    def __getstate__(self):
        return {
            'id': self.id,
            'content': self.content,
            'found': self.found
        }


    def __setstate__(self, state):
        self.id = state['id']
        self.content = state['content']
        self.found = state['found']
