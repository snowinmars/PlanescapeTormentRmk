import json


class Event:
    def __init__(self, timestamp, category, text):
        self.timestamp = timestamp
        self.category = category
        self.text = text


    def __getstate__(self):
        return {
            'timestamp': self.timestamp,
            'category': self.category,
            'text': self.text
        }


    def __setstate__(self, state):
        self.timestamp = state['timestamp']
        self.category = state['category']
        self.text = state['text']


    def toJson(self):
        return json.dumps(
            self.__getstate__(),
            ensure_ascii=False
        )


    @classmethod
    def fromJson(cls, json_str):
        data = json.loads(json_str)
        obj = cls()
        obj.__setstate__(data)
        return obj
