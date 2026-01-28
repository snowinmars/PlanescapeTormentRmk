import unittest

from game.engine.tests import (LogicTest)
from game.engine.quests.Quest import (Quest)


class QuestTest(LogicTest):
    def test_ctor(self):
        quest_id = 'quest_id'
        quest_state_ids = [ 'quest_state_id_1', 'quest_state_id_2' ]
        active_state_id = 'quest_state_id_1'
        started = True
        finished = True

        quest = Quest(
            quest_id=quest_id,
            quest_state_ids=quest_state_ids,
            active_state_id=active_state_id,
            started=started,
            finished=finished
        )

        self.assertIsNotNone(quest)

        self.assertEqual(quest.quest_id, quest_id)
        self.assertEqual(quest.quest_state_ids[0], quest_state_ids[0])
        self.assertEqual(quest.quest_state_ids[1], quest_state_ids[1])
        self.assertEqual(quest.active_state_id, active_state_id)
        self.assertEqual(quest.started, started)
        self.assertEqual(quest.finished, finished)


    def test_set_entry_active_when_all_ok(self):
        quest = self._create_quest('quest')

        self.assertEqual(quest.active_state_id, quest.quest_state_ids[0])
        self.assertFalse(quest.started)
        self.assertFalse(quest.finished)

        quest.set_entry_active(quest.quest_state_ids[1])

        self.assertEqual(quest.active_state_id, quest.quest_state_ids[1])
        self.assertTrue(quest.started)
        self.assertFalse(quest.finished)


    def test_set_entry_active_twice(self):
        quest = self._create_quest('quest')

        self.assertEqual(quest.active_state_id, quest.quest_state_ids[0])
        self.assertFalse(quest.started)
        self.assertFalse(quest.finished)

        something_changed = quest.set_entry_active(quest.quest_state_ids[1])

        self.assertTrue(something_changed)
        self.assertEqual(quest.active_state_id, quest.quest_state_ids[1])
        self.assertTrue(quest.started)
        self.assertFalse(quest.finished)

        something_changed = quest.set_entry_active(quest.quest_state_ids[1])

        self.assertFalse(something_changed)
        self.assertEqual(quest.active_state_id, quest.quest_state_ids[1])
        self.assertTrue(quest.started)
        self.assertFalse(quest.finished)


    def test_set_entry_active_when_quest_state_id_not_found(self):
        quest = self._create_quest('quest')
        wrong_quest_state_id = 'wrong_quest_state_id'

        with self.assertRaises(KeyError):
            quest.set_entry_active(wrong_quest_state_id)


    def test_set_entry_done_when_all_ok(self):
        quest = self._create_quest('quest')

        self.assertEqual(quest.active_state_id, quest.quest_state_ids[0])
        self.assertFalse(quest.started)
        self.assertFalse(quest.finished)

        quest.set_entry_done(quest.quest_state_ids[1])

        self.assertEqual(quest.active_state_id, quest.quest_state_ids[1])
        self.assertTrue(quest.started)
        self.assertTrue(quest.finished)


    def test_set_entry_done_twice(self):
        quest = self._create_quest('quest')

        self.assertEqual(quest.active_state_id, quest.quest_state_ids[0])
        self.assertFalse(quest.started)
        self.assertFalse(quest.finished)

        something_changed = quest.set_entry_done(quest.quest_state_ids[1])

        self.assertTrue(something_changed)
        self.assertEqual(quest.active_state_id, quest.quest_state_ids[1])
        self.assertTrue(quest.started)
        self.assertTrue(quest.finished)

        something_changed = quest.set_entry_done(quest.quest_state_ids[1])

        self.assertFalse(something_changed)
        self.assertEqual(quest.active_state_id, quest.quest_state_ids[1])
        self.assertTrue(quest.started)
        self.assertTrue(quest.finished)


    def test_set_entry_done_when_quest_state_id_not_found(self):
        quest = self._create_quest('quest')
        wrong_quest_state_id = 'wrong_quest_state_id'

        with self.assertRaises(KeyError):
            quest.set_entry_done(wrong_quest_state_id)


    def _create_quest(self, id):
        return Quest(
            f'{id}_id',
            [ f'{id}_state_id_1', f'{id}_state_id_2' ]
        )
