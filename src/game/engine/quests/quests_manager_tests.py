import unittest

from game.engine.tests import (LogicTest)
from game.engine.quests.Quest import (Quest)


class LogEventsManagerTest(LogicTest):
    def test_ctor(self):
        self.assertIsNotNone(self.quests_manager)
        self.assertIsNotNone(self.quests_manager._log_events_manager)
        self.assertIsNotNone(self.quests_manager._quests_store)
        self.assertIsNotNone(self.quests_manager._quests_store.quests)
        self.assertIsNotNone(self.quests_manager._quests_store.quest_state_id_index)
        self.assertIsNotNone(self.quests_manager._report_change_callback)


    def test_create_quest_when_all_ok(self):
        quests_length_delta = 1
        quest_state_id_index_length_delta = 2
        quest = self._create_quest('quest')

        quests_length_before = len(self.quests_manager._quests_store.quests)
        quest_state_id_index_length_before = len(self.quests_manager._quests_store.quest_state_id_index)

        self.quests_manager.create_quest(
            quest.quest_id,
            [
                quest.quest_state_ids[0],
                quest.quest_state_ids[1],
            ]
        )

        quests_length_after = len(self.quests_manager._quests_store.quests)
        quest_state_id_index_length_after = len(self.quests_manager._quests_store.quest_state_id_index)

        self.assertEqual(quests_length_before + quests_length_delta, quests_length_after)
        self.assertEqual(quest_state_id_index_length_before + quest_state_id_index_length_delta, quest_state_id_index_length_after)


    def test_create_quest_when_register_twice(self):
        quest = self._create_quest('quest')

        self.quests_manager.create_quest(
            quest.quest_id,
            [
                quest.quest_state_ids[0],
                quest.quest_state_ids[1],
            ]
        )

        with self.assertRaises(KeyError):
            self.quests_manager.create_quest(
                quest.quest_id,
                [
                    quest.quest_state_ids[0],
                    quest.quest_state_ids[1],
                ]
            )


    def test_create_quest_when_quest_state_ids_already_exists(self):
        quest_a = self._create_quest('quest_a')
        quest_b = self._create_quest('quest_b')

        self.quests_manager.create_quest(
            quest_a.quest_id,
            [
                quest_a.quest_state_ids[0],
                quest_a.quest_state_ids[1],
            ]
        )

        with self.assertRaises(KeyError):
            self.quests_manager.create_quest(
                quest_b.quest_id,
                [
                    quest_b.quest_state_ids[0],
                    quest_a.quest_state_ids[1],
                ]
            )


    def test_get_quest_entry_when_all_ok(self):
        quest = self._create_quest('quest')

        quests = self.quests_manager.build_started_quests()
        quests_length_before = len(quests)

        self.quests_manager.create_quest(
            quest.quest_id,
            [
                quest.quest_state_ids[0],
                quest.quest_state_ids[1],
            ]
        )

        quest = self.quests_manager.get_quest_entry(quest.quest_state_ids[0])
        self.assertIsNotNone(quest)
        quest = self.quests_manager.get_quest_entry(quest.quest_state_ids[1])
        self.assertIsNotNone(quest)


    def test_get_quest_entry_when_not_found(self):
        quest = self._create_quest('quest')
        wrong_quest_state_id = 'wrong_quest_state_id'

        quests = self.quests_manager.build_started_quests()
        quests_length_before = len(quests)

        self.quests_manager.create_quest(
            quest.quest_id,
            [
                quest.quest_state_ids[0],
                quest.quest_state_ids[1],
            ]
        )

        with self.assertRaises(KeyError):
            self.quests_manager.get_quest_entry(wrong_quest_state_id)


    def test_set_entry_active(self):
        quest = self._create_quest('quest')
        wrong_quest_state_id = 'wrong_quest_state_id'

        quests = self.quests_manager.build_started_quests()
        quests_length_before = len(quests)

        self.quests_manager.create_quest(
            quest.quest_id,
            [
                quest.quest_state_ids[0],
                quest.quest_state_ids[1],
            ]
        )

        self.assertFalse(quest.started)
        self.assertEqual(quest.active_state_id, quest.quest_state_ids[0])

        self.quests_manager.set_entry_active(quest.quest_state_ids[1])
        quest = self.quests_manager.get_quest(quest.quest_id)

        self.assertTrue(quest.started)
        self.assertEqual(quest.active_state_id, quest.quest_state_ids[1])


    def test_set_entry_active_twice(self):
        quest = self._create_quest('quest')
        wrong_quest_state_id = 'wrong_quest_state_id'

        quests = self.quests_manager.build_started_quests()
        quests_length_before = len(quests)

        self.quests_manager.create_quest(
            quest.quest_id,
            [
                quest.quest_state_ids[0],
                quest.quest_state_ids[1],
            ]
        )

        self.assertFalse(quest.started)
        self.assertEqual(quest.active_state_id, quest.quest_state_ids[0])

        self.quests_manager.set_entry_active(quest.quest_state_ids[1])
        quest = self.quests_manager.get_quest(quest.quest_id)

        self.assertTrue(quest.started)
        self.assertEqual(quest.active_state_id, quest.quest_state_ids[1])

        self.quests_manager.set_entry_active(quest.quest_state_ids[1])
        quest = self.quests_manager.get_quest(quest.quest_id)

        self.assertTrue(quest.started)
        self.assertEqual(quest.active_state_id, quest.quest_state_ids[1])


    def test_set_entry_done(self):
        quest = self._create_quest('quest')
        wrong_quest_state_id = 'wrong_quest_state_id'

        quests = self.quests_manager.build_started_quests()
        quests_length_before = len(quests)

        self.quests_manager.create_quest(
            quest.quest_id,
            [
                quest.quest_state_ids[0],
                quest.quest_state_ids[1],
            ]
        )

        self.assertFalse(quest.started)
        self.assertEqual(quest.active_state_id, quest.quest_state_ids[0])

        self.quests_manager.set_entry_done(quest.quest_state_ids[1])
        quest = self.quests_manager.get_quest(quest.quest_id)

        self.assertTrue(quest.started)
        self.assertTrue(quest.finished)
        self.assertEqual(quest.active_state_id, quest.quest_state_ids[1])


    def test_set_entry_done_twice(self):
        quest = self._create_quest('quest')
        wrong_quest_state_id = 'wrong_quest_state_id'

        quests = self.quests_manager.build_started_quests()
        quests_length_before = len(quests)

        self.quests_manager.create_quest(
            quest.quest_id,
            [
                quest.quest_state_ids[0],
                quest.quest_state_ids[1],
            ]
        )

        self.assertFalse(quest.started)
        self.assertEqual(quest.active_state_id, quest.quest_state_ids[0])

        self.quests_manager.set_entry_done(quest.quest_state_ids[1])
        quest = self.quests_manager.get_quest(quest.quest_id)

        self.assertTrue(quest.started)
        self.assertTrue(quest.finished)
        self.assertEqual(quest.active_state_id, quest.quest_state_ids[1])

        self.quests_manager.set_entry_done(quest.quest_state_ids[1])
        quest = self.quests_manager.get_quest(quest.quest_id)

        self.assertTrue(quest.started)
        self.assertTrue(quest.finished)
        self.assertEqual(quest.active_state_id, quest.quest_state_ids[1])


    def test_build_started_quests_when_nothing_started(self):
        self.state_manager.push_story()

        quest_a = self._create_quest('quest_a')
        quest_b = self._create_quest('quest_b')

        quests = self.quests_manager.build_started_quests()
        quests_length_before = len(quests)

        self.quests_manager.create_quest(
            quest_a.quest_id,
            [
                quest_a.quest_state_ids[0],
                quest_a.quest_state_ids[1],
            ]
        )
        self.quests_manager.create_quest(
            quest_b.quest_id,
            [
                quest_b.quest_state_ids[0],
                quest_b.quest_state_ids[1],
            ]
        )

        quests = self.quests_manager.build_started_quests()
        quests_length_after_nothing_active = len(quests)

        self.assertEqual(quests_length_before, quests_length_after_nothing_active)


    def test_build_started_quests_when_one_started(self):
        self.state_manager.push_story()

        quest_a = self._create_quest('quest_a')
        quest_b = self._create_quest('quest_b')
        quests_length_delta = 1

        quests = self.quests_manager.build_started_quests()
        quests_length_before = len(quests)

        self.quests_manager.create_quest(
            quest_a.quest_id,
            [
                quest_a.quest_state_ids[0],
                quest_a.quest_state_ids[1],
            ]
        )
        self.quests_manager.create_quest(
            quest_b.quest_id,
            [
                quest_b.quest_state_ids[0],
                quest_b.quest_state_ids[1],
            ]
        )

        self.quests_manager.set_entry_active(quest_b.quest_state_ids[0])

        quests = self.quests_manager.build_started_quests()
        quests_length_after = len(quests)
        self.assertEqual(quests_length_before + quests_length_delta, quests_length_after)


    def test_build_started_quests_when_two_started(self):
        self.state_manager.push_story()

        quest_a = self._create_quest('quest_a')
        quest_b = self._create_quest('quest_b')
        quests_length_delta = 2

        quests = self.quests_manager.build_started_quests()
        quests_length_before = len(quests)

        self.quests_manager.create_quest(
            quest_a.quest_id,
            [
                quest_a.quest_state_ids[0],
                quest_a.quest_state_ids[1],
            ]
        )
        self.quests_manager.create_quest(
            quest_b.quest_id,
            [
                quest_b.quest_state_ids[0],
                quest_b.quest_state_ids[1],
            ]
        )

        self.quests_manager.set_entry_active(quest_b.quest_state_ids[1])
        self.quests_manager.set_entry_active(quest_a.quest_state_ids[1])

        quests = self.quests_manager.build_started_quests()
        quests_length_after = len(quests)

        self.assertEqual(quests_length_before + quests_length_delta, quests_length_after)







    def test_build_finished_quests_when_nothing_started(self):
        self.state_manager.push_story()

        quest_a = self._create_quest('quest_a')
        quest_b = self._create_quest('quest_b')

        quests = self.quests_manager.build_finished_quests()
        quests_length_before = len(quests)

        self.quests_manager.create_quest(
            quest_a.quest_id,
            [
                quest_a.quest_state_ids[0],
                quest_a.quest_state_ids[1],
            ]
        )
        self.quests_manager.create_quest(
            quest_b.quest_id,
            [
                quest_b.quest_state_ids[0],
                quest_b.quest_state_ids[1],
            ]
        )

        quests = self.quests_manager.build_finished_quests()
        quests_length_after_nothing_active = len(quests)

        self.assertEqual(quests_length_before, quests_length_after_nothing_active)


    def test_build_finished_quests_when_one_started(self):
        self.state_manager.push_story()

        quest_a = self._create_quest('quest_a')
        quest_b = self._create_quest('quest_b')
        quests_length_delta = 1

        quests = self.quests_manager.build_finished_quests()
        quests_length_before = len(quests)

        self.quests_manager.create_quest(
            quest_a.quest_id,
            [
                quest_a.quest_state_ids[0],
                quest_a.quest_state_ids[1],
            ]
        )
        self.quests_manager.create_quest(
            quest_b.quest_id,
            [
                quest_b.quest_state_ids[0],
                quest_b.quest_state_ids[1],
            ]
        )

        self.quests_manager.set_entry_done(quest_b.quest_state_ids[0])

        quests = self.quests_manager.build_finished_quests()
        quests_length_after = len(quests)
        self.assertEqual(quests_length_before + quests_length_delta, quests_length_after)


    def test_build_finished_quests_when_two_started(self):
        self.state_manager.push_story()

        quest_a = self._create_quest('quest_a')
        quest_b = self._create_quest('quest_b')
        quests_length_delta = 2

        quests = self.quests_manager.build_finished_quests()
        quests_length_before = len(quests)

        self.quests_manager.create_quest(
            quest_a.quest_id,
            [
                quest_a.quest_state_ids[0],
                quest_a.quest_state_ids[1],
            ]
        )
        self.quests_manager.create_quest(
            quest_b.quest_id,
            [
                quest_b.quest_state_ids[0],
                quest_b.quest_state_ids[1],
            ]
        )

        self.quests_manager.set_entry_done(quest_b.quest_state_ids[1])
        self.quests_manager.set_entry_done(quest_a.quest_state_ids[1])

        quests = self.quests_manager.build_finished_quests()
        quests_length_after = len(quests)

        self.assertEqual(quests_length_before + quests_length_delta, quests_length_after)


    def _create_quest(self, id):
        return Quest(
            f'{id}_id',
            [ f'{id}_state_id_1', f'{id}_state_id_2' ]
        )


if __name__ == '__main__':
    unittest.main() # pragma: no cover
