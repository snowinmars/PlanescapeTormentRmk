rpy_header_template = """
init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.{npc}_logic import {Npc}Logic
    {npc}Logic = {Npc}Logic(runtime.global_state_manager)


# ###
# Original:  DLG/{area}.DLG
# ###
""".strip()

rpy_footer_template = """
""".strip()

logic_header_template = """
class {Npc}Logic:
    def __init__(self, state_manager):
        self.state_manager = state_manager
""".strip()

test_header_template = """
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.{npc}_logic import {Npc}Logic


class {Npc}LogicTest(LogicTest):
    def setUp(self):
        super({Npc}LogicTest, self).setUp()
        self.logic = {Npc}Logic(self.state_manager)
""".strip()

test_footer_template = """
if __name__ == '__main__':
    unittest.main() # pragma: no cover
""".strip()

multiline_test_case_template = """
    def test_{f}(self):
        # TODO [snowinmars]: write the test
        self.logic.{f}()
""".strip()

label_template = '''
# s{sid} # say{ssid}
label {tnpc}{pfx}{sid}: # {fp}{fc}
'''.strip()

logic_action_update_journal_template = """
def j{sid}_action(self):
    self.state_manager.journal_manager.update_journal('{jid}') #$% .register('{jid}', '{jb}') %$#
""".strip()

execute_state_update_journal_template = """
$ {tnpc}Logic.j{sid}_action()
""".strip()

execute_state_logic_action_template = """
$ {tnpc}Logic.s{sid}_action()
""".strip()

execute_state_logic_condition_template = """
if {tnpc}Logic.s{sid}_condition():
""".strip()

logic_response_condition_template = """
def r{aid}_condition(self):
    {ac}
""".strip()

logic_state_action_template = """
def s{sid}_action(self):
    {a}
""".strip()

logic_state_condition_template = """
def s{sid}_condition(self):
    {c}
""".strip()

menu_option_with_condition_template = """
'{ab}' if {tnpc}Logic.r{aid}_condition():
    # a{grc} # r{aid}
""".strip()

logic_response_action_template = """
def r{aid}_action(self):
    {a}
""".strip()

execute_response_logic_action_template = """
$ {tnpc}Logic.r{aid}_action()
""".strip()

menu_option_template = """
'{ab}':
    # a{grc} # r{aid}
""".strip()

jump_extern_template = """
jump {onpc}_s{tsid}  # EXTERN
""".strip()

jump_dispose_template = """
jump {tnpc}_dispose
""".strip()

jump_template = """
jump {tnpc}_s{tsid}
""".strip()


render_action_test_one_liner_template = """
def test_{fn}(self):
    self.logic.{fn}()
""".strip()
render_action_test_no_preconf_template = """
def test_{fn}(self):
{bb}

    self.logic.{fn}()

{ab}

    self.logic.{fn}()

{aob}
""".strip()
render_action_test_preconf_template = """
def test_{fn}(self):
{pb}

{bb}

    self.logic.{fn}()

{ab}

    self.logic.{fn}()

{aob}
""".strip()



render_condition_test_no_preconf_template = """
def test_{fn}(self):
{bb}

    self.assertFalse(self.logic.{fn}())

{ab}

    self.assertTrue(self.logic.{fn}())
""".strip()
render_condition_test_preconf_template = """
def test_{fn}(self):
{pb}

{bb}

    self.assertFalse(self.logic.{fn}())

{ab}

    self.assertTrue(self.logic.{fn}())
""".strip()


set_boolean_action_pattern_preconf = """
self.state_manager.set_{s}({iv})
""".strip()
set_boolean_action_pattern_before = """
self.assert{iv}(self.state_manager.get_{s}())
""".strip()
set_boolean_action_pattern_after = """
self.assert{v}(self.state_manager.get_{s}())
""".strip()
set_boolean_action_pattern_after_once = """
self.assert{v}(self.state_manager.get_{s}())
""".strip()
set_integer_action_pattern_preconf = """
{s}_before = {ov}
{s}_after = {v}
{s}_after_once = {v}
self.state_manager.set_{s}({s}_before)
""".strip()
set_integer_action_pattern_before = """
self.assertEqual(self.state_manager.get_{s}(), {s}_before)
""".strip()
set_integer_action_pattern_after = """
self.assertEqual(self.state_manager.get_{s}(), {s}_after)
""".strip()
set_integer_action_pattern_after_once = """
self.assertEqual(self.state_manager.get_{s}(), {s}_after_once)
""".strip()
inc_once_integer_action_pattern_preconf = """
{s}_before = 0
{s}_after = {d}
{s}_after_once = {d}
self.state_manager.set_{s}({s}_before)
""".strip()
inc_once_integer_action_pattern_before = """
self.assertEqual(self.state_manager.get_{s}(), {s}_before)
""".strip()
inc_once_integer_action_pattern_after = """
self.assertEqual(self.state_manager.get_{s}(), {s}_after)
""".strip()
inc_once_integer_action_pattern_after_once = """
self.assertEqual(self.state_manager.get_{s}(), {s}_after_once)
""".strip()
dec_once_integer_action_pattern_preconf = """
{s}_before = 0
{s}_after = -{d}
{s}_after_once = -{d}
self.state_manager.set_{s}({s}_before)
""".strip()
dec_once_integer_action_pattern_before = """
self.assertEqual(self.state_manager.get_{s}(), {s}_before)
""".strip()
dec_once_integer_action_pattern_after = """
self.assertEqual(self.state_manager.get_{s}(), {s}_after)
""".strip()
dec_once_integer_action_pattern_after_once = """
self.assertEqual(self.state_manager.get_{s}(), {s}_after_once)
""".strip()
inc_integer_action_pattern_preconf = """
{s}_before = 0
{s}_after = {d}
{s}_after_once = 2 * {d}
self.state_manager.set_{s}({s}_before)
""".strip()
inc_integer_action_pattern_before = """
self.assertEqual(self.state_manager.get_{s}(), {s}_before)
""".strip()
inc_integer_action_pattern_after = """
self.assertEqual(self.state_manager.get_{s}(), {s}_after)
""".strip()
inc_integer_action_pattern_after_once = """
self.assertEqual(self.state_manager.get_{s}(), {s}_after_once)
""".strip()
dec_integer_action_pattern_preconf = """
{s}_before = 0
{s}_after = -{d}
{s}_after_once = -2 * {d}
self.state_manager.set_{s}({s}_before)
""".strip()
dec_integer_action_pattern_before = """
self.assertEqual(self.state_manager.get_{s}(), {s}_before)
""".strip()
dec_integer_action_pattern_after = """
self.assertEqual(self.state_manager.get_{s}(), {s}_after)
""".strip()
dec_integer_action_pattern_after_once = """
self.assertEqual(self.state_manager.get_{s}(), {s}_after_once)
""".strip()
modify_property_once_action_pattern_preconf = """
who_{p} = '{w}'
prop_{p} = '{p}'
delta_{p} = {d}
""".strip()
modify_property_once_action_pattern_before = """
{p}_before = self.state_manager.characters_manager.get_property(who_{p}, prop_{p})
""".strip()
modify_property_once_action_pattern_after = """
{p}_after = self.state_manager.characters_manager.get_property(who_{p}, prop_{p})
self.assertEqual({p}_before + delta_{p}, {p}_after)
""".strip()
modify_property_once_action_pattern_after_once = """
{p}_after_once = self.state_manager.characters_manager.get_property(who_{p}, prop_{p})
self.assertEqual({p}_after, {p}_after_once)
""".strip()
modify_property_action_pattern_preconf = """
who_{p} = '{w}'
prop_{p} = '{p}'
delta_{p} = {d}
""".strip()
modify_property_action_pattern_before = """
{p}_before = self.state_manager.characters_manager.get_property(who_{p}, prop_{p})
""".strip()
modify_property_action_pattern_after = """
{p}_after = self.state_manager.characters_manager.get_property(who_{p}, prop_{p})
self.assertEqual({p}_before + delta_{p}, {p}_after)
""".strip()
modify_property_action_pattern_after_once = """
{p}_after_once = self.state_manager.characters_manager.get_property(who_{p}, prop_{p})
self.assertEqual({p}_after + delta_{p}, {p}_after_once)
""".strip()
set_property_action_pattern_preconf = """
who_{p} = '{w}'
prop_{p} = '{p}'
delta_{p} = {d}
""".strip()
set_property_action_pattern_before = """
{p}_before = self.state_manager.characters_manager.get_property(who_{p}, prop_{p})
""".strip()
set_property_action_pattern_after = """
{p}_after = self.state_manager.characters_manager.get_property(who_{p}, prop_{p})
self.assertEqual({p}_before + delta_{p}, {p}_after)
""".strip()
set_property_action_pattern_after_once = """
{p}_after_once = self.state_manager.characters_manager.get_property(who_{p}, prop_{p})
self.assertEqual({p}_after + delta_{p}, {p}_after_once)
""".strip()
gain_experience_action_pattern_preconf = """
who_experience = '{w}'
prop_experience = 'experience'
delta_experience = {d}
""".strip()
gain_experience_action_pattern_before = """
experience_before = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
""".strip()
gain_experience_action_pattern_after = """
experience_after = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
self.assertEqual(experience_before + delta_experience, experience_after)
""".strip()
gain_experience_action_pattern_after_once = """
experience_after_once = self.state_manager.characters_manager.get_property(who_experience, prop_experience)
self.assertEqual(experience_after + delta_experience, experience_after_once)
""".strip()
update_journal_action_pattern_preconf = """
note_id = '{v}'
""".strip()
update_journal_action_pattern_before = """
self.assertFalse(self.state_manager.journal_manager.has_journal_note(note_id))
""".strip()
update_journal_action_pattern_after = """
self.assertTrue(self.state_manager.journal_manager.has_journal_note(note_id))
""".strip()
update_journal_action_pattern_after_once = """
self.assertTrue(self.state_manager.journal_manager.has_journal_note(note_id))
""".strip()
full_heal_action_pattern_preconf = """
who = '{w}'
prop_max_health = 'max_health'
prop_current_health = 'current_health'
delta_max_health = 1
""".strip()
full_heal_action_pattern_before = """
max_health_before = self.state_manager.characters_manager.get_property(who, prop_max_health)
self.state_manager.characters_manager.set_property(who, prop_current_health, max_health_before / 2)
current_health_before = self.state_manager.characters_manager.get_property(who, prop_current_health)
self.assertNotEqual(max_health_before, current_health_before)
""".strip()
full_heal_action_pattern_after = """
max_health_after = self.state_manager.characters_manager.get_property(who, prop_max_health)
current_health_after = self.state_manager.characters_manager.get_property(who, prop_current_health)
self.assertEqual(max_health_before + delta_max_health, max_health_after)
self.assertEqual(max_health_after, current_health_after)
""".strip()
full_heal_action_pattern_after_once = """
max_health_after_once = self.state_manager.characters_manager.get_property(who, prop_max_health)
current_health_after_once = self.state_manager.characters_manager.get_property(who, prop_current_health)
self.assertEqual(max_health_after + delta_max_health, max_health_after_once)
self.assertEqual(max_health_after_once, current_health_after_once)
""".strip()
set_location_action_pattern_preconf = """
location_{v} = '{v}' # {v}
""".strip()
set_location_action_pattern_before = """
self.assertNotEqual(self.state_manager.locations_manager.get_location(), location_{v})
""".strip()
set_location_action_pattern_after = """
self.assertEqual(self.state_manager.locations_manager.get_location(), location_{v})
""".strip()
set_location_action_pattern_after_once = """
self.assertEqual(self.state_manager.locations_manager.get_location(), location_{v})
""".strip()
current_health_eq_max_health_condition_pattern_preconf = """
max_health_before = 24
current_health_before = 12
max_health_after = 24
current_health_after = 24
""".strip()
current_health_eq_max_health_condition_pattern_before = """
self.state_manager.characters_manager.set_property('protagonist', 'max_health', max_health_before)
self.state_manager.characters_manager.set_property('protagonist', 'current_health', current_health_before)
""".strip()
current_health_eq_max_health_condition_pattern_after = """
self.state_manager.characters_manager.set_property('protagonist', 'max_health', max_health_after)
self.state_manager.characters_manager.set_property('protagonist', 'current_health', current_health_after)
""".strip()
current_health_gt_max_health_condition_pattern_preconf = """
max_health_before = 24
current_health_before = 8
max_health_after = 24
current_health_after = 16
""".strip()
current_health_gt_max_health_condition_pattern_before = """
self.state_manager.characters_manager.set_property('protagonist', 'max_health', max_health_before)
self.state_manager.characters_manager.set_property('protagonist', 'current_health', current_health_before)
""".strip()
current_health_gt_max_health_condition_pattern_after = """
self.state_manager.characters_manager.set_property('protagonist', 'max_health', max_health_after)
self.state_manager.characters_manager.set_property('protagonist', 'current_health', current_health_after)
""".strip()
current_health_lt_max_health_condition_pattern_preconf = """
max_health_before = 24
current_health_before = 16
max_health_after = 24
current_health_after = 8
""".strip()
current_health_lt_max_health_condition_pattern_before = """
self.state_manager.characters_manager.set_property('protagonist', 'max_health', max_health_before)
self.state_manager.characters_manager.set_property('protagonist', 'current_health', current_health_before)
""".strip()
current_health_lt_max_health_condition_pattern_after = """
self.state_manager.characters_manager.set_property('protagonist', 'max_health', max_health_after)
self.state_manager.characters_manager.set_property('protagonist', 'current_health', current_health_after)
""".strip()
get_boolean_condition_pattern_preconf = """
""".strip()
get_boolean_condition_pattern_before = """
self.state_manager.set_{s}(False)
""".strip()
get_boolean_condition_pattern_after = """
self.state_manager.set_{s}(True)
""".strip()
not_get_boolean_condition_pattern_preconf = """
""".strip()
not_get_boolean_condition_pattern_before = """
self.state_manager.set_{s}(True)
""".strip()
not_get_boolean_condition_pattern_after = """
self.state_manager.set_{s}(False)
""".strip()
get_integer_eq_condition_pattern_preconf = """
""".strip()
get_integer_eq_condition_pattern_before = """
self.state_manager.set_{s}({nv})
""".strip()
get_integer_eq_condition_pattern_after = """
self.state_manager.set_{s}({v})
""".strip()
get_integer_neq_condition_pattern_preconf = """
""".strip()
get_integer_neq_condition_pattern_before = """
self.state_manager.set_{s}({v})
""".strip()
get_integer_neq_condition_pattern_after = """
self.state_manager.set_{s}({nv})
""".strip()
get_integer_gt_condition_pattern_preconf = """
""".strip()
get_integer_gt_condition_pattern_before = """
self.state_manager.set_{s}({nv})
""".strip()
get_integer_gt_condition_pattern_after = """
self.state_manager.set_{s}({v})
""".strip()
get_integer_lt_condition_pattern_preconf = """
""".strip()
get_integer_lt_condition_pattern_before = """
self.state_manager.set_{s}({v})
""".strip()
get_integer_lt_condition_pattern_after = """
self.state_manager.set_{s}({nv})
""".strip()
get_character_property_gt_condition_pattern_preconf = """
who_{s} = '{w}'
prop_{s} = '{s}'
delta_{s} = {v}
""".strip()
get_character_property_gt_condition_pattern_before = """
self.state_manager.characters_manager.set_property(who_{s}, prop_{s}, delta_{s})
""".strip()
get_character_property_gt_condition_pattern_after = """
self.state_manager.characters_manager.set_property(who_{s}, prop_{s}, delta_{s} + 1)
""".strip()
get_character_property_lt_condition_pattern_preconf = """
who_{s} = '{w}'
prop_{s} = '{s}'
delta_{s} = {v}
""".strip()
get_character_property_lt_condition_pattern_before = """
self.state_manager.characters_manager.set_property(who_{s}, prop_{s}, delta_{s})
""".strip()
get_character_property_lt_condition_pattern_after = """
self.state_manager.characters_manager.set_property(who_{s}, prop_{s}, delta_{s} - 1)
""".strip()
is_visited_internal_condition_pattern_preconf = """
location_{v} = '{v}' # {v}
""".strip()
is_visited_internal_condition_pattern_before = """
self.assertFalse(self.state_manager.locations_manager.is_visited(location_{v}))
""".strip()
is_visited_internal_condition_pattern_after = """
self.state_manager.locations_manager.set_location(location_{v})
self.assertTrue(self.state_manager.locations_manager.is_visited(location_{v}))
""".strip()
not_is_visited_internal_condition_pattern_preconf = """
location_{v} = '{v}' # {v}
""".strip()
not_is_visited_internal_condition_pattern_before = """
self.state_manager.locations_manager.set_location(location_{v})
self.assertTrue(self.state_manager.locations_manager.is_visited(location_{v}))
""".strip()
not_is_visited_internal_condition_pattern_after = """
self.state_manager.locations_manager._current_external = None
self.state_manager.locations_manager._current_internal = None
self.state_manager.locations_manager._visited_externals = set()
self.state_manager.locations_manager._visited_internals = set()
self.assertFalse(self.state_manager.locations_manager.is_visited(location_{v}))
""".strip()
count_in_party_eq_zero_condition_pattern_preconf = """
""".strip()
count_in_party_eq_zero_condition_pattern_before = """
self.state_manager.set_in_party_morte(True)
self.state_manager.set_in_party_annah(False)
self.state_manager.set_in_party_ignus(False)
self.state_manager.set_in_party_grace(False)
self.state_manager.set_in_party_dakkon(False)
self.state_manager.set_in_party_nordom(False)
self.state_manager.set_in_party_vhail(False)
""".strip()
count_in_party_eq_zero_condition_pattern_after = """
self.state_manager.set_in_party_morte(False)
self.state_manager.set_in_party_annah(False)
self.state_manager.set_in_party_ignus(False)
self.state_manager.set_in_party_grace(False)
self.state_manager.set_in_party_dakkon(False)
self.state_manager.set_in_party_nordom(False)
self.state_manager.set_in_party_vhail(False)
""".strip()
count_in_party_gt_zero_condition_pattern_preconf = """
""".strip()
count_in_party_gt_zero_condition_pattern_before = """
self.state_manager.set_in_party_morte(False)
self.state_manager.set_in_party_annah(False)
self.state_manager.set_in_party_ignus(False)
self.state_manager.set_in_party_grace(False)
self.state_manager.set_in_party_dakkon(False)
self.state_manager.set_in_party_nordom(False)
self.state_manager.set_in_party_vhail(False)
""".strip()
count_in_party_gt_zero_condition_pattern_after = """
self.state_manager.set_in_party_morte(True)
self.state_manager.set_in_party_annah(False)
self.state_manager.set_in_party_ignus(False)
self.state_manager.set_in_party_grace(False)
self.state_manager.set_in_party_dakkon(False)
self.state_manager.set_in_party_nordom(False)
self.state_manager.set_in_party_vhail(False)
""".strip()
