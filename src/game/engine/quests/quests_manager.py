import logging


from game.engine.quests.Quest import (Quest)


class QuestsManager:
    def __init__(self, log_events_manager):
        self._log_events_manager = log_events_manager
        self._quests_store = None
        self._report_change_callback = None


    def set_store(self, quest_store):
        self._quests_store = quest_store


    def register_report_change_callback(self, report_change_callback):
        self._report_change_callback = report_change_callback


    def create_quest(self, quest_id, quest_state_ids):
        quest = Quest(
            quest_id,
            quest_state_ids
        )

        self._quests_store.quests[quest_id] = quest
        for state_id in quest_state_ids:
            if state_id in self._quests_store.quest_state_id_index:
                raise KeyError(f'state_id {state_id} already registrated for quest {self._quests_store.quest_state_id_index[state_id]}')
            self._quests_store.quest_state_id_index[state_id] = quest.quest_id


    def build_started_quests(self):
        return list(map(
            lambda x: x[1],
            filter(
                lambda x: x[1].started,
                self._quests_store.quests.items()
            )
        ))


    def build_finished_quests(self):
        return list(map(
            lambda x: x[1],
            filter(
                lambda x: x[1].finished,
                self._quests_store.quests.items()
            )
        ))


    def get_quest(self, quest_id):
        return self._quests_store.quests[quest_id]


    def get_quest_entry(self, quest_state_id):
        quest_id = self._quests_store.quest_state_id_index[quest_state_id]
        return self.get_quest(quest_id)


    def set_entry_active(self, quest_state_id):
        quest = self.get_quest_entry(quest_state_id)
        something_changed = quest.set_entry_active(quest_state_id)
        if something_changed:
            self._report_change_callback(
                'quest_manager_set_entry_active',
                {
                    'quest_id': quest.quest_id,
                    'quest_state_id': quest_state_id
                }
            )


    def set_entry_done(self, quest_state_id):
        quest = self.get_quest_entry(quest_state_id)
        something_changed = quest.set_entry_done(quest_state_id)
        if something_changed:
            self._report_change_callback(
                'quest_manager_set_entry_done',
                {
                    'quest_id': quest.quest_id,
                    'quest_state_id': quest_state_id
                }
            )
