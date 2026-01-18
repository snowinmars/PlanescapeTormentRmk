class Quest:
    def __init__(self, quest_id, quest_state_ids, active_state_id=None, started=False, finished=False):
        self.quest_id = quest_id
        self.quest_state_ids = quest_state_ids
        self.active_state_id = active_state_id or quest_state_ids[0]
        self.started = started
        self.finished = finished


    def __getstate__(self):
        return {
            'quest_id': self.quest_id,
            'quest_state_ids': self.quest_state_ids,
            'active_state_id': self.active_state_id,
            'started': self.started,
            'finished': self.finished
        }


    def __setstate__(self, state):
        self.quest_id = state['quest_id']
        self.quest_state_ids = state['quest_state_ids']
        self.active_state_id = state['active_state_id']
        self.started = state['started']
        self.finished = state['finished']


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


    def set_entry_active(self, quest_state_id):
        if quest_state_id not in self.quest_state_ids:
            raise KeyError(f'quest_state_id {quest_state_id} is not in quest_id {quest_id} states')
        something_changed = self.active_state_id != quest_state_id or self.started != True
        self.active_state_id = quest_state_id
        self.started = True
        return something_changed


    def set_entry_done(self, quest_state_id):
        something_changed = self.set_entry_active(quest_state_id)
        something_changed = something_changed or self.finished != False
        self.finished = False
        return something_changed