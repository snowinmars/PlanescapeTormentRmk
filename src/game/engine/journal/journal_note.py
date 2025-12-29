import json


class JournalNote:
    def __init__(self, id, content, found):
        self.id = id
        self.content = content
        self.found = found
        self.found_at = 0


    def __getstate__(self):
        return {
            'id': self.id,
            'content': self.content,
            'found': self.found,
            'found_at': self.found_at
        }


    def __setstate__(self, state):
        self.id = state['id']
        self.content = state['content']
        self.found = state['found']
        self.found_at = state['found_at']


    def toJson(self, indent=None):
        return json.dumps(
            self.__getstate__(),
            ensure_ascii=False,
            indent=indent
        )


    @classmethod
    def fromJson(cls, json_str):
        data = json.loads(json_str)
        obj = cls()
        obj.__setstate__(data)
        return obj
