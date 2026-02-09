import unittest

from game.engine.LogicTests import (LogicTests)
from game.screens.JournalLogic import (JournalLogic)
from game.engine.quests.Quest import (Quest)


class JournalLogicTests(LogicTests):
    def setUp(self):
        super(JournalLogicTests, self).setUp()
        self.logic = JournalLogic(self.state_manager)


    def test_get_quest_line(self):
        quest_id = 'quest_id'
        line = self.logic.get_quest_line(quest_id)
        self.assertTrue(len(line) > len(quest_id))


    def test_get_quest_state_line(self):
        quest = self._create_quest('quest')
        self.quests_manager.create_quest(
            quest.quest_id,
            [
                quest.quest_state_ids[0],
                quest.quest_state_ids[1]
            ]
        )

        line = self.logic.get_quest_state_line(quest.quest_id)
        self.assertTrue(len(line) > len(quest.quest_id))


    def test_get_started_quests(self):
        self.assertIsNotNone(self.logic.get_started_quests())


    def test_get_finished_quests(self):
        self.assertIsNotNone(self.logic.get_finished_quests())


    def test_get_notes(self):
        self.assertIsNotNone(self.logic.get_notes())


    # def test_get_beasts(self):
    #     self.assertIsNotNone(self.get_beasts())


    def _create_quest(self, id):
        return Quest(
            f'{id}_id',
            [ f'{id}_state_id_1', f'{id}_state_id_2' ]
        )
