import json


from game.engine.quests.Quest import (Quest)


class QuestsStore():
    def __init__(self):
        self.quests = {}
        self.quest_state_id_index = {}


    def __getstate__(self):
        return {
            'quests': self.quests,
            'quest_state_id_index': self.quest_state_id_index
        }


    def __setstate__(self, state):
        self.quests = state['quests']
        self.quest_state_id_index = state['quest_state_id_index']


    def toJson(self, indent=None):
        state = self.__getstate__()
        state['quests'] = dict(map(lambda x: (
            x[0],
            x[1].__getstate__()
        ), state['quests'].items()))
        return json.dumps(
            state,
            ensure_ascii=False,
            indent=indent
        )


    @classmethod
    def fromJson(cls, json_str):
        data = json.loads(json_str)
        obj = cls()
        data['quests'] = dict(map(lambda x: (
            x[0],
            Quest(
                x[1]['quest_id'],
                x[1]['quest_state_ids'],
                x[1]['active_state_id'],
                x[1]['started'],
                x[1]['finished']
            )), data['quests'].items()))
        obj.__setstate__(data)
        return obj
