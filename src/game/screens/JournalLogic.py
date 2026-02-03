class JournalLogic:
    def __init__(self, state_manager):
        self.state_manager = state_manager


    def get_quest_line(self, quest_id):
        return f'quest_line_{quest_id}{{#quest_line_{quest_id}}}'


    def get_quest_state_line(self, choosed_quest_id):
        quest_id = self.state_manager.quests_manager.get_quest(choosed_quest_id).active_state_id
        return f'quest_line_{quest_id}{{#quest_line_{quest_id}}}'


    def get_started_quests(self):
        return self.state_manager.quests_manager.build_started_quests()


    def get_finished_quests(self):
        return self.state_manager.quests_manager.build_finished_quests()


    def get_notes(self):
        return self.state_manager.journal_notes_manager.build_journal()


    def get_beasts(self):
        return self.state_manager.beatiary_manager.build_journal()

