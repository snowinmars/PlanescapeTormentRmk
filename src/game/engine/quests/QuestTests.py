import unittest
import pickle

from game.engine.LogicTests import (LogicTests)
from game.engine.quests.Quest import (Quest)


class QuestTests(LogicTests):
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


    def test_reserialize_pickle(self):
        quest = self._create_quest()

        dump = pickle.dumps(quest)
        expected = b"\x80\x05\x95d\x00\x00\x00\x00\x00\x00\x00\x8c'game.engine.characters.characters_store\x94\x8c\x0fCharactersStore\x94\x93\x94)\x81\x94}\x94(\x8c\ncharacters\x94}\x94\x8c\tonce_keys\x94}\x94ub."
        self.assertEqual(dump, expected)

        restored_quest = pickle.loads(dump)
        self._assert_quest(quest, restored_quest)


    def test_reserialize_json(self):
        quest = self._create_quest()

        dump = quest.toJson()
        expected = '{"characters": {}, "once_keys": {}}'
        self.assertEqual(dump, expected)

        restored_quest = InventoryItem.fromJson(dump)
        self._assert_quest(quest, restored_quest)


    def test_set_entry_active_when_all_ok(self):
        quest = self._create_quest()

        self.assertEqual(quest.active_state_id, quest.quest_state_ids[0])
        self.assertFalse(quest.started)
        self.assertFalse(quest.finished)

        quest.set_entry_active(quest.quest_state_ids[1])

        self.assertEqual(quest.active_state_id, quest.quest_state_ids[1])
        self.assertTrue(quest.started)
        self.assertFalse(quest.finished)


    def test_set_entry_active_twice(self):
        quest = self._create_quest()

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
        quest = self._create_quest()
        wrong_quest_state_id = 'wrong_quest_state_id'

        with self.assertRaises(KeyError):
            quest.set_entry_active(wrong_quest_state_id)


    def test_set_entry_done_when_all_ok(self):
        quest = self._create_quest()

        self.assertEqual(quest.active_state_id, quest.quest_state_ids[0])
        self.assertFalse(quest.started)
        self.assertFalse(quest.finished)

        quest.set_entry_done(quest.quest_state_ids[1])

        self.assertEqual(quest.active_state_id, quest.quest_state_ids[1])
        self.assertTrue(quest.started)
        self.assertTrue(quest.finished)


    def test_set_entry_done_twice(self):
        quest = self._create_quest()

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
        quest = self._create_quest()
        wrong_quest_state_id = 'wrong_quest_state_id'

        with self.assertRaises(KeyError):
            quest.set_entry_done(wrong_quest_state_id)


    def _create_quest(self,
        quest_id='quest_id',
        quest_state_ids=None,
        active_state_id=None,
        started=False,
        finished=False,
        postfix=''
    ):
        _quest_id = quest_id + postfix
        _quest_state_id_1 = _quest_id + '_state_1' + postfix
        _quest_state_id_2 = _quest_id + '_state_2' + postfix
        _active_state_id = (active_state_id + postfix) if active_state_id is not None else _quest_state_id_1

        return Quest(
            quest_id=_quest_id,
            quest_state_ids=[ _quest_state_id_1, _quest_state_id_2 ],
            active_state_id=_active_state_id,
            started=started,
            finished=finished
        )
