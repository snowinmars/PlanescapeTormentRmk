import unittest

from game.engine.LogicTests import (LogicTests)
from game.screens.NarratLogic import (NarratLogic)


class NarratLogicTests(LogicTests):
    def setUp(self):
        super(NarratLogicTests, self).setUp()
        self.logic = NarratLogic(self.state_manager)


    def test_exit_dialogue(self):
        history_length_delta = 1

        history_length_before = len(self.logic.state_manager.narrat_manager.get_history())

        self.logic.exit_dialogue()

        history_length_after = len(self.logic.state_manager.narrat_manager.get_history())

        self.assertEqual(history_length_before + history_length_delta, history_length_after)

        last_history_item = self.logic.state_manager.narrat_manager.get_history()[-1]
        self.assertEqual(last_history_item['who'] , 'nr')
        self.assertTrue (len(last_history_item['who_color']) > 0)
        self.assertEqual(last_history_item['what'], '')
        self.assertTrue (last_history_item['is_br'])
        self.assertFalse(last_history_item['is_change'])
        self.assertFalse(last_history_item['is_scars'])
        self.assertFalse(last_history_item['is_nameless'])
        self.assertFalse(last_history_item['is_npc'])
        self.assertFalse(last_history_item['is_nr'])


    def test_actual_history(self):
        who                  = 'who'
        who_color            = '#ff0000'
        what                 = 'what'
        history_length_delta = 2

        history_length_before = len(self.logic.actual_history())

        self.logic.state_manager.narrat_manager.add_history_entry(who, who_color, what)
        self.logic.state_manager.narrat_manager.add_history_entry(who, who_color, what)

        history_length_after = len(self.logic.actual_history())

        self.assertEqual(history_length_before + history_length_delta, history_length_after)

        self.narrat_manager.update_current_dialogue(
            who       = who      ,
            who_color = who_color,
            what      = what
        )

        history_length_after_update = len(self.logic.actual_history())

        self.assertEqual(history_length_before + history_length_delta - 1, history_length_after_update) # not the last history line, because in dialogue lat history line is the current_line


    def test_get_current_line(self):
        who       = 'who'
        who_color = '#ff0000'
        what      = 'what'

        self.assertIsNone(self.logic.get_current_line())

        self.logic.state_manager.narrat_manager.update_current_dialogue(
            who       = who      ,
            who_color = who_color,
            what      = what
        )

        self.assertIsNotNone(self.logic.get_current_line())


    def test_get_current_menu_items(self):
        items = ['item_1', 'item_2']
        items_length_delta = len(items)

        items_length_before = len(self.logic.get_current_menu_items())

        self.logic.state_manager.narrat_manager.update_menu_items(items)

        items_length_after = len(self.logic.get_current_menu_items())

        self.assertEqual(items_length_before + items_length_delta, items_length_after)


    def test_add_menu_choice(self):
        who                             = 'who'
        who_color                       = '#ff0000'
        what                            = 'what'
        choice_text                     = 'choice_text'
        items                           = ['item_1', 'item_2']
        items_length_delta              = len(items)
        items_length_delta_update       = 0
        history_length_delta            = 1
        history_length_delta_update     = 2
        last_menu_items_id_delta        = 1
        last_menu_items_id_delta_update = 2

        history_length_before     = len(self.logic.state_manager.narrat_manager.get_history())
        items_length_before       = len(self.logic.state_manager.narrat_manager.get_current_menu_items())
        last_menu_items_id_before = self.logic.state_manager.narrat_manager.get_last_menu_items_id()

        self.logic.state_manager.narrat_manager.add_history_entry(who, who_color, what)
        self.logic.state_manager.narrat_manager.update_menu_items(items)

        history_length_after     = len(self.logic.state_manager.narrat_manager.get_history())
        items_length_after       = len(self.logic.state_manager.narrat_manager.get_current_menu_items())
        last_menu_items_id_after = self.logic.state_manager.narrat_manager.get_last_menu_items_id()

        self.assertEqual(history_length_before     + history_length_delta    , history_length_after)
        self.assertEqual(items_length_before       + items_length_delta      , items_length_after)
        self.assertEqual(last_menu_items_id_before + last_menu_items_id_delta, last_menu_items_id_after)

        self.logic.add_menu_choice(choice_text)

        history_length_after_update     = len(self.logic.state_manager.narrat_manager.get_history())
        items_length_after_update       = len(self.logic.state_manager.narrat_manager.get_current_menu_items())
        last_menu_items_id_after_update = self.logic.state_manager.narrat_manager.get_last_menu_items_id()

        self.assertEqual(history_length_before     + history_length_delta_update    , history_length_after_update)
        self.assertEqual(items_length_before       + items_length_delta_update      , items_length_after_update)
        self.assertEqual(last_menu_items_id_before + last_menu_items_id_delta_update, last_menu_items_id_after_update)

        last_history_item = self.logic.state_manager.narrat_manager.get_history()[-1]
        self.assertEqual(last_history_item['who'] , 'protagonist_character_name')
        self.assertTrue (len(last_history_item['who_color']) > 0)
        self.assertEqual(last_history_item['what'], 'choice_text')
        self.assertFalse(last_history_item['is_br'])
        self.assertFalse(last_history_item['is_change'])
        self.assertFalse(last_history_item['is_scars'])
        self.assertTrue (last_history_item['is_nameless'])
        self.assertFalse(last_history_item['is_npc'])
        self.assertFalse(last_history_item['is_nr'])


    def test_get_last_history_id(self):
        value = 7
        self.logic.state_manager.narrat_manager._narrat_store.last_history_id = value
        self.assertEqual(self.logic.get_last_history_id(), value)


    def test_get_last_menu_items_id(self):
        value = 7
        self.logic.state_manager.narrat_manager._narrat_store.last_menu_items_id = value
        self.assertEqual(self.logic.get_last_menu_items_id(), value)
