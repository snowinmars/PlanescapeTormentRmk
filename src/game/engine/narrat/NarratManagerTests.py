import unittest

from game.engine.LogicTests           import (LogicTests)
from game.engine.narrat.NarratManager import (NarratManager)
from game.engine.narrat.NarratStore   import (NarratStore)


class NarratManagerTests(LogicTests):
    def test_ctor(self):
        self.assertIsNotNone(self.narrat_manager)
        self.assertIsNotNone(self.narrat_manager._log_events_manager)
        self.assertIsNotNone(self.narrat_manager._narrat_store)
        self.assertIsNotNone(self.narrat_manager._narrat_store.last_history_id)
        self.assertIsNotNone(self.narrat_manager._narrat_store.last_menu_items_id)
        self.assertEqual    (len(self.narrat_manager._narrat_store.history), 0)
        self.assertIsNone   (self.narrat_manager._narrat_store.current_line)
        self.assertEqual    (len(self.narrat_manager._narrat_store.current_menu_items), 0)
        self.assertIsNotNone(self.narrat_manager._narrat_store.history_entry_limit)


    def test_get_last_history_id(self):
        value = 7
        self.narrat_manager._narrat_store.last_history_id = value
        self.assertEqual(self.narrat_manager.get_last_history_id(), value)


    def test_get_last_menu_items_id(self):
        value = 7
        self.narrat_manager._narrat_store.last_menu_items_id = value
        self.assertEqual(self.narrat_manager.get_last_menu_items_id(), value)


    def test_add_history_entry_when_all_ok(self):
        who                   = 'who'
        who_color             = '#ff0000'
        what                  = 'what'
        is_br                 = True
        is_change             = True
        is_scars              = True
        is_nameless           = True
        is_npc                = True
        is_nr                 = True
        last_history_id_delta = 1
        history_length_delta  = 1

        last_history_id_before = self.narrat_manager.get_last_history_id()
        history_length_before  = len(self.narrat_manager._narrat_store.history)

        self.narrat_manager.add_history_entry(
            who         = who        ,
            who_color   = who_color  ,
            what        = what       ,
            is_br       = is_br      ,
            is_change   = is_change  ,
            is_scars    = is_scars   ,
            is_nameless = is_nameless,
            is_npc      = is_npc     ,
            is_nr       = is_nr
        )

        last_history_id_after = self.narrat_manager.get_last_history_id()
        history_length_after  = len(self.narrat_manager._narrat_store.history)

        self.assertEqual(last_history_id_before + last_history_id_delta, last_history_id_after)
        self.assertEqual(history_length_before  + history_length_delta , history_length_after)

        last_history_item = self.narrat_manager._narrat_store.history[-1]
        self.assertEqual(last_history_item['who']        , who)
        self.assertEqual(last_history_item['who_color']  , who_color)
        self.assertEqual(last_history_item['what']       , what)
        self.assertEqual(last_history_item['is_br']      , is_br)
        self.assertEqual(last_history_item['is_change']  , is_change)
        self.assertEqual(last_history_item['is_scars']   , is_scars)
        self.assertEqual(last_history_item['is_nameless'], is_nameless)
        self.assertEqual(last_history_item['is_npc']     , is_npc)
        self.assertEqual(last_history_item['is_nr']      , is_nr)


    def test_add_history_entry_when_overflow(self):
        who_1                    = 'who_1'
        who_color                = '#ff0000'
        what_1                   = 'what_1'
        who_2                    = 'who_2'
        who_color                = '#00ff00'
        what_2                   = 'what_2'
        who_3                    = 'who_3'
        who_color                = '#0000ff'
        what_3                   = 'what_3'
        last_history_id_delta_01 = 1
        last_history_id_delta_12 = 2
        last_history_id_delta_23 = 3
        history_length_delta_01  = 1
        history_length_delta_12  = 2
        history_length_delta_23  = 2

        narrat_manager = NarratManager(self.logger)
        narrat_manager.set_store(NarratStore())

        narrat_manager._narrat_store.history_entry_limit = 2

        last_history_id_before = narrat_manager.get_last_history_id()
        history_length_before = len(narrat_manager.get_history())

        #

        narrat_manager.add_history_entry(who_1, who_color, what_1)

        last_history_id_after_1 = narrat_manager.get_last_history_id()
        history_length_after_1 = len(narrat_manager.get_history())

        self.assertEqual(last_history_id_before + last_history_id_delta_01, last_history_id_after_1)
        self.assertEqual(history_length_before  + history_length_delta_01 , history_length_after_1)

        last_history_item = narrat_manager.get_history()[-1]
        self.assertEqual(last_history_item['who']      , who_1)
        self.assertEqual(last_history_item['who_color'], who_color)
        self.assertEqual(last_history_item['what']     , what_1)

        #

        narrat_manager.add_history_entry(who_2, who_color, what_2)

        last_history_id_after_2 = narrat_manager.get_last_history_id()
        history_length_after_2 = len(narrat_manager.get_history())

        self.assertEqual(last_history_id_before + last_history_id_delta_12, last_history_id_after_2)
        self.assertEqual(history_length_before  + history_length_delta_12 , history_length_after_2)

        last_history_item = narrat_manager.get_history()[-1]
        self.assertEqual(last_history_item['who']      , who_2)
        self.assertEqual(last_history_item['who_color'], who_color)
        self.assertEqual(last_history_item['what']     , what_2)

        #

        narrat_manager.add_history_entry(who_3, who_color, what_3)

        last_history_id_after_3 = narrat_manager.get_last_history_id()
        history_length_after_3 = len(narrat_manager.get_history())

        self.assertEqual(last_history_id_before + last_history_id_delta_23, last_history_id_after_3)
        self.assertEqual(history_length_before  + history_length_delta_23 , history_length_after_3)

        last_history_item = narrat_manager.get_history()[-1]
        self.assertEqual(last_history_item['who']      , who_3)
        self.assertEqual(last_history_item['who_color'], who_color)
        self.assertEqual(last_history_item['what']     , what_3)


    def test_report_change(self):
        change_id           = 'change_id'
        change_kwargs_key   = 'change_kwargs_key'
        change_kwargs_value = 'change_kwargs_value'
        change_kwargs       = { change_kwargs_key: change_kwargs_value }

        last_history_id_before = self.narrat_manager.get_last_history_id()
        history_length_before = len(self.narrat_manager.get_history())

        self.narrat_manager.report_change(change_id, change_kwargs)

        last_history_id_after = self.narrat_manager.get_last_history_id()
        history_length_after = len(self.narrat_manager.get_history())

        last_history_item = self.narrat_manager.get_history()[-1]
        self.assertEqual(last_history_item['who'], change_id)
        self.assertTrue(len(last_history_item['who_color']) > 0)
        self.assertEqual(last_history_item['what'][change_kwargs_key], change_kwargs_value)
        self.assertFalse(last_history_item['is_br'])
        self.assertTrue (last_history_item['is_change'])
        self.assertFalse(last_history_item['is_scars'])
        self.assertFalse(last_history_item['is_nameless'])
        self.assertFalse(last_history_item['is_npc'])
        self.assertFalse(last_history_item['is_nr'])


    def test_get_history(self):
        who                  = 'who'
        who_color            = '#ff0000'
        what                 = 'what'
        history_length_delta = 3

        history_length_before = len(self.narrat_manager.get_history())

        for _ in range(0, history_length_delta):
            self.narrat_manager.add_history_entry(who, who_color, what)

        history_length_after = len(self.narrat_manager.get_history())

        self.assertEqual(history_length_before + history_length_delta, history_length_after)


    def test_clear_history(self):
        who                  = 'who'
        who_color            = '#ff0000'
        what                 = 'what'
        history_length_delta = 3

        history_length_before = len(self.narrat_manager.get_history())

        for _ in range(0, history_length_delta):
            self.narrat_manager.add_history_entry(who, who_color, what)

        history_length_after = len(self.narrat_manager.get_history())

        self.assertEqual(history_length_before + history_length_delta, history_length_after)

        self.narrat_manager.clear_history()

        history_length_after_clear = len(self.narrat_manager.get_history())

        self.assertEqual(history_length_after_clear, 0)


    def test_get_current_line(self):
        who       = 'who'
        who_color = '#ff0000'
        what      = 'what'

        self.assertIsNone(self.narrat_manager.get_current_line())

        self.narrat_manager.update_current_dialogue(
            who       = who      ,
            who_color = who_color,
            what      = what
        )

        self.assertIsNotNone(self.narrat_manager.get_current_line())


    def test_get_current_menu_items(self):
        items = ['item_1', 'item_2']
        items_length_delta = len(items)

        items_length_before = len(self.narrat_manager.get_current_menu_items())

        self.narrat_manager.update_menu_items(items)

        items_length_after = len(self.narrat_manager.get_current_menu_items())

        self.assertEqual(items_length_before + items_length_delta, items_length_after)


    def test_update_current_dialogue(self):
        who         = 'who'
        who_color   = '#ff0000'
        what        = 'what'
        is_br       = True
        is_change   = True
        is_scars    = True
        is_nameless = True
        is_npc      = True
        is_nr       = True

        self.narrat_manager.update_current_dialogue(
            who         = who        ,
            who_color   = who_color  ,
            what        = what       ,
            is_br       = is_br      ,
            is_change   = is_change  ,
            is_scars    = is_scars   ,
            is_nameless = is_nameless,
            is_npc      = is_npc     ,
            is_nr       = is_nr
        )

        last_current_line = self.narrat_manager.get_current_line()

        self.assertIsNotNone(last_current_line)
        self.assertEqual(last_current_line['who']        , who)
        self.assertEqual(last_current_line['who_color']  , who_color)
        self.assertEqual(last_current_line['what']       , what)
        self.assertEqual(last_current_line['is_br']      , is_br)
        self.assertEqual(last_current_line['is_change']  , is_change)
        self.assertEqual(last_current_line['is_scars']   , is_scars)
        self.assertEqual(last_current_line['is_nameless'], is_nameless)
        self.assertEqual(last_current_line['is_npc']     , is_npc)
        self.assertEqual(last_current_line['is_nr']      , is_nr)


    def test_update_menu_items_when_all_ok(self):
        items                    = ['item_1', 'item_2']
        items_length_delta       = len(items)
        last_menu_items_id_delta = 1

        items_length_before       = len(self.narrat_manager.get_current_menu_items())
        last_menu_items_id_before = self.narrat_manager.get_last_menu_items_id()

        self.narrat_manager.update_menu_items(items)

        items_length_after       = len(self.narrat_manager.get_current_menu_items())
        last_menu_items_id_after = self.narrat_manager.get_last_menu_items_id()

        self.assertEqual(items_length_before       + items_length_delta      , items_length_after)
        self.assertEqual(last_menu_items_id_before + last_menu_items_id_delta, last_menu_items_id_after)


    def test_update_menu_items_when_items_are_none(self):
        items                         = ['item_1', 'item_2']
        items_length_delta            = len(items)
        last_menu_items_id_delta      = 1
        last_menu_items_id_delta_none = 2

        items_length_before       = len(self.narrat_manager.get_current_menu_items())
        last_menu_items_id_before = self.narrat_manager.get_last_menu_items_id()

        self.narrat_manager.update_menu_items(items)

        items_length_after       = len(self.narrat_manager.get_current_menu_items())
        last_menu_items_id_after = self.narrat_manager.get_last_menu_items_id()

        self.assertEqual(items_length_before       + items_length_delta      , items_length_after)
        self.assertEqual(last_menu_items_id_before + last_menu_items_id_delta, last_menu_items_id_after)

        self.narrat_manager.update_menu_items(None)

        items_length_after_none       = len(self.narrat_manager.get_current_menu_items())
        last_menu_items_id_after_none = self.narrat_manager.get_last_menu_items_id()

        self.assertEqual(items_length_before, 0)
        self.assertEqual(last_menu_items_id_before + last_menu_items_id_delta_none, last_menu_items_id_after_none)


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

        history_length_before     = len(self.narrat_manager.get_history())
        items_length_before       = len(self.narrat_manager.get_current_menu_items())
        last_menu_items_id_before = self.narrat_manager.get_last_menu_items_id()

        self.narrat_manager.add_history_entry(who, who_color, what)
        self.narrat_manager.update_menu_items(items)

        history_length_after     = len(self.narrat_manager.get_history())
        items_length_after       = len(self.narrat_manager.get_current_menu_items())
        last_menu_items_id_after = self.narrat_manager.get_last_menu_items_id()

        self.assertEqual(history_length_before     + history_length_delta    , history_length_after)
        self.assertEqual(items_length_before       + items_length_delta      , items_length_after)
        self.assertEqual(last_menu_items_id_before + last_menu_items_id_delta, last_menu_items_id_after)

        self.narrat_manager.add_menu_choice(choice_text)

        history_length_after_update     = len(self.narrat_manager.get_history())
        items_length_after_update       = len(self.narrat_manager.get_current_menu_items())
        last_menu_items_id_after_update = self.narrat_manager.get_last_menu_items_id()

        self.assertEqual(history_length_before     + history_length_delta_update    , history_length_after_update)
        self.assertEqual(items_length_before       + items_length_delta_update      , items_length_after_update)
        self.assertEqual(last_menu_items_id_before + last_menu_items_id_delta_update, last_menu_items_id_after_update)

        last_history_item = self.narrat_manager.get_history()[-1]
        self.assertEqual(last_history_item['who'] , 'protagonist_character_name')
        self.assertTrue (len(last_history_item['who_color']) > 0)
        self.assertEqual(last_history_item['what'], 'choice_text')
        self.assertFalse(last_history_item['is_br'])
        self.assertFalse(last_history_item['is_change'])
        self.assertFalse(last_history_item['is_scars'])
        self.assertTrue (last_history_item['is_nameless'])
        self.assertFalse(last_history_item['is_npc'])
        self.assertFalse(last_history_item['is_nr'])


    def test_add_br_when_ok(self):
        history_length_delta = 1

        history_length_before = len(self.narrat_manager.get_history())

        self.narrat_manager.add_br()

        history_length_after = len(self.narrat_manager.get_history())

        self.assertEqual(history_length_before + history_length_delta, history_length_after)

        last_history_item = self.narrat_manager.get_history()[-1]
        self.assertEqual(last_history_item['who'] , 'nr')
        self.assertTrue (len(last_history_item['who_color']) > 0)
        self.assertEqual(last_history_item['what'], '')
        self.assertTrue (last_history_item['is_br'])
        self.assertFalse(last_history_item['is_change'])
        self.assertFalse(last_history_item['is_scars'])
        self.assertFalse(last_history_item['is_nameless'])
        self.assertFalse(last_history_item['is_npc'])
        self.assertFalse(last_history_item['is_nr'])


    def test_add_br_twice(self):
        history_length_delta = 1

        history_length_before = len(self.narrat_manager.get_history())

        self.narrat_manager.add_br()
        self.narrat_manager.add_br()

        history_length_after = len(self.narrat_manager.get_history())

        self.assertEqual(history_length_before + history_length_delta, history_length_after)

        last_history_item = self.narrat_manager.get_history()[-1]
        self.assertEqual(last_history_item['who'] , 'nr')
        self.assertTrue (len(last_history_item['who_color']) > 0)
        self.assertEqual(last_history_item['what'], '')
        self.assertTrue (last_history_item['is_br'])
        self.assertFalse(last_history_item['is_change'])
        self.assertFalse(last_history_item['is_scars'])
        self.assertFalse(last_history_item['is_nameless'])
        self.assertFalse(last_history_item['is_npc'])
        self.assertFalse(last_history_item['is_nr'])
