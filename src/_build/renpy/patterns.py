import re
from dataclasses import dataclass


@dataclass
class PatternConfig:
    pattern: str
    template: str
    extractors: {}


action_set_location_pattern = PatternConfig(
    pattern=re.compile(r"self\.settings_manager\.location_manager\.set_location\((.*?)\)$"),
    template="""
def test_{f}(self):
    location = '{v}'

    self._step_into_location_action(
        location,
        self.logic.{f}
    )
""".strip(), extractors={'v': lambda m: m.group(1)})


action_set_true_pattern = PatternConfig(
    pattern=re.compile(r"self\.settings_manager\.set_(.*?)\(True\)$"),
    template="""
def test_{f}(self):
    self._false_then_true_action(
        self.settings_manager.get_{s},
        self.logic.{f}
    )
""".strip(), extractors={'s': lambda m: m.group(1)})


action_set_false_pattern = PatternConfig(
    pattern=re.compile(r"self\.settings_manager\.set_(.*?)\(False\)$"),
    template="""
def test_{f}(self):
    self.settings_manager.set_{s}(True)
    self._true_then_false_action(
        self.settings_manager.get_{s},
        self.logic.{f}
    )
""".strip(), extractors={'s': lambda m: m.group(1)})


action_gain_experience_pattern = PatternConfig(
    pattern=re.compile(r"self\.settings_manager\.gain_experience\('party', (.*?)\)"),
    template="""
def test_{f}(self):
    who = 'protagonist'
    prop = 'experience'
    delta = {v}

    self._change_prop(
        lambda: self.settings_manager.character_manager.get_property(who, prop),
        delta,
        self.logic.{f}
    )
""".strip(), extractors={'v': lambda m: m.group(1)})


action_modify_property_once_pattern = PatternConfig(
    pattern=re.compile(r"self\.settings_manager\.character_manager\.modify_property_once\('protagonist', (.*?), (.*?), .*?\)$"),
    template="""
def test_{f}(self):
    who = 'protagonist'
    prop = {p}
    delta = {v}

    self._change_prop_once(
        lambda: self.settings_manager.character_manager.get_property(who, prop),
        delta,
        self.logic.{f}
    )
""".strip(), extractors={'p': lambda m: m.group(1), 'v': lambda m: m.group(2)})


action_modify_property_pattern = PatternConfig(
    pattern=re.compile(r"self\.settings_manager\.character_manager\.modify_property\('protagonist', (.*?), (.*?)\)$"),
    template="""
def test_{f}(self):
    who = 'protagonist'
    prop = {p}
    delta = {v}

    self._change_prop(
        lambda: self.settings_manager.character_manager.get_property(who, prop),
        delta,
        self.logic.{f}
    )
""".strip(), extractors={'p': lambda m: m.group(1), 'v': lambda m: m.group(2)})


action_set_property_pattern = PatternConfig(
    pattern=re.compile(r"self\.settings_manager\.character_manager\.set_property\('protagonist', (.*?), (.*?)\)$"),
    template="""
def test_{f}(self):
    who = 'protagonist'
    prop = {p}
    delta = {v}

    self._change_prop(
        lambda: self.settings_manager.character_manager.get_property(who, prop),
        delta,
        self.logic.{f}
    )
""".strip(), extractors={'p': lambda m: m.group(1), 'v': lambda m: m.group(2)})


action_update_journal_pattern = PatternConfig(
    pattern=re.compile(r"self\.settings_manager\.journal_manager\.update_journal\((.*?)\)$"),
    template="""
def test_{f}(self):
    note_id = {v}

    self._pickup_journal_note_action(
        note_id,
        self.logic.{f}
    )
""".strip(), extractors={'v': lambda m: m.group(1)})


action_set_x_pattern = PatternConfig(
    pattern=re.compile(r"self.settings_manager.set_(.*?)\((.*?)\)$"),
    template="""
def test_{f}(self):
    self.settings_manager.set_{s}({nv})
    self._integer_equals_action(
        self.settings_manager.get_{s},
        {v},
        self.logic.{f}
    )
""".strip(), extractors={'s': lambda m: m.group(1), 'v': lambda m: int(m.group(2)), 'nv': lambda m: int(m.group(2)) + 1})


action_inc_pattern = PatternConfig(
    pattern=re.compile(r"self\.settings_manager\.inc_(.*?)\(.*\)$"),
    template="""
def test_{f}(self):
    self._integer_inc_action(
        self.settings_manager.get_{s},
        1,
        self.logic.{f}
    )
""".strip(), extractors={'s': lambda m: m.group(1)})


action_inc_once_pattern = PatternConfig(
    pattern=re.compile(r"self\.settings_manager\.inc_once_(.*?)\(.*\)$"),
    template="""
def test_{f}(self):
    self._integer_inc_once_action(
        self.settings_manager.get_{s},
        1,
        self.logic.{f}
    )
""".strip(), extractors={'s': lambda m: m.group(1)})


action_dec_pattern = PatternConfig(
    pattern=re.compile(r"self\.settings_manager\.dec_(.*?)\((.*)?\)$"),
    template="""
def test_{f}(self):
    self._integer_dec_action(
        self.settings_manager.get_{s},
        {v},
        self.logic.{f}
    )
""".strip(), extractors={'s': lambda m: m.group(1), 'v': lambda m: int(m.group(2)) if m.group(2) else '1'})


action_dec_once_pattern = PatternConfig(
    pattern=re.compile(r"self\.settings_manager\.dec_once_(.*?)\(.*\)$"),
    template="""
def test_{f}(self):
    self._integer_dec_once_action(
        self.settings_manager.get_{s},
        {v},
        self.logic.{f}
    )
""".strip(), extractors={'s': lambda m: m.group(1), 'v': lambda m: int(m.group(2)) if m.group(2) else '1'})


condition_get_x_pattern = PatternConfig(
    pattern=re.compile(r"return self\.settings_manager\.get_(.*?)\(\)$"),
    template="""
def test_{f}(self):
    self._boolean_straight_condition(
        lambda x: self.settings_manager.set_{s}(x),
        self.logic.{f}
    )
""".strip(), extractors={'s': lambda m: m.group(1)})


condition_not_get_x_pattern = PatternConfig(
    pattern=re.compile(r"return not self\.settings_manager\.get_(.*?)\(\)$"),
    template="""
def test_{f}(self):
    self._boolean_invert_condition(
        lambda x: self.settings_manager.set_{s}(x),
        self.logic.{f}
    )
""".strip(), extractors={'s': lambda m: m.group(1)})


condition_get_prop_lt_pattern = PatternConfig(
    pattern=re.compile(r"return self\.settings_manager\.character_manager\.get_property\('protagonist', (.*?)\) < (.*?)$"),
    template="""
def test_{f}(self):
    who = 'protagonist'
    prop = {p}
    value = {v}

    self._prop_compare_lt_condition(
        who,
        prop,
        value,
        self.logic.{f}
    )
""".strip(), extractors={'p': lambda m: m.group(1), 'v': lambda m: m.group(2)})


condition_get_prop_gt_pattern = PatternConfig(
    pattern=re.compile(r"return self\.settings_manager\.character_manager\.get_property\('protagonist', (.*?)\) > (.*?)$"),
    template="""
def test_{f}(self):
    who = 'protagonist'
    prop = {p}
    value = {v}

    self._prop_compare_gt_condition(
        who,
        prop,
        value,
        self.logic.{f}
    )
""".strip(), extractors={'p': lambda m: m.group(1), 'v': lambda m: m.group(2)})


condition_get_prop_eq_pattern = PatternConfig(
    pattern=re.compile(r"return self\.settings_manager\.character_manager\.get_property\('protagonist', (.*?)\) == (.*?)$"),
    template="""
def test_{f}(self):
    who = 'protagonist'
    prop = {p}
    value = {v}

    self._prop_compare_eq_condition(
        who,
        prop,
        value,
        self.logic.{f}
    )
""".strip(), extractors={'p': lambda m: m.group(1), 'v': lambda m: m.group(2)})


condition_get_prop_neq_pattern = PatternConfig(
    pattern=re.compile(r"return self\.settings_manager\.character_manager\.get_property\('protagonist', (.*?)\) != (.*?)$"),
    template="""
def test_{f}(self):
    who = 'protagonist'
    prop = {p}
    value = {v}

    self._prop_compare_neq_condition(
        who,
        prop,
        value,
        self.logic.{f}
    )
""".strip(), extractors={'p': lambda m: m.group(1), 'v': lambda m: m.group(2)})


condition_get_x_gt_pattern = PatternConfig(
    pattern=re.compile(r"return self\.settings_manager\.get_(.*?)\(\) > (.*?)$"),
    template="""
def test_{f}(self):
    self._integer_gt_condition(
        lambda x: self.settings_manager.set_{s}(x),
        {v},
        self.logic.{f}
    )
""".strip(), extractors={'s': lambda m: m.group(1), 'v': lambda m: m.group(2)})


condition_get_x_lt_pattern = PatternConfig(
    pattern=re.compile(r"return self\.settings_manager\.get_(.*?)\(\) < (.*?)$"),
    template="""
def test_{f}(self):
    self._integer_lt_condition(
        lambda x: self.settings_manager.set_{s}(x),
        {v},
        self.logic.{f}
    )
""".strip(), extractors={'s': lambda m: m.group(1), 'v': lambda m: m.group(2)})


condition_get_x_eq_pattern = PatternConfig(
    pattern=re.compile(r"return self\.settings_manager\.get_(.*?)\(\) == (.*?)$"),
    template="""
def test_{f}(self):
    self._integer_equal_condition(
        lambda x: self.settings_manager.set_{s}(x),
        {v},
        self.logic.{f}
    )
""".strip(), extractors={'s': lambda m: m.group(1), 'v': lambda m: m.group(2)})


condition_get_x_neq_pattern = PatternConfig(
    pattern=re.compile(r"return self\.settings_manager\.get_(.*?)\(\) != (.*?)$"),
    template="""
def test_{f}(self):
    self._integer_not_equal_condition(
        lambda x: self.settings_manager.set_{s}(x),
        {v},
        self.logic.{f}
    )
""".strip(), extractors={'s': lambda m: m.group(1), 'v': lambda m: m.group(2)})


condition_is_visited_external_location_condition_pattern = PatternConfig(
    pattern=re.compile(r"return self\.settings_manager\.location_manager\.is_visited_internal\((.*?)\)$"),
    template="""
def test_{f}(self):
    self._is_visited_external_location_condition(
        {v}, # {v}
        self.logic.{f}
    )
""".strip(), extractors={'v': lambda m: m.group(1)})


condition_not_is_visited_external_location_condition_pattern = PatternConfig(
    pattern=re.compile(r"return not self\.settings_manager\.location_manager\.is_visited_internal\((.*?)\)$"),
    template="""
def test_{f}(self):
    self._not_is_visited_external_location_condition(
        {v}, # {v}
        self.logic.{f}
    )
""".strip(), extractors={'v': lambda m: m.group(1)})


all_patterns = [
    action_set_location_pattern,
    action_set_true_pattern,
    action_set_false_pattern,
    action_gain_experience_pattern,
    action_modify_property_once_pattern,
    action_modify_property_pattern,
    action_set_property_pattern,
    action_update_journal_pattern,
    action_set_x_pattern,
    action_inc_once_pattern,
    action_dec_once_pattern,
    action_inc_pattern,
    action_dec_pattern,
    condition_not_get_x_pattern,
    condition_get_x_pattern,
    condition_get_prop_lt_pattern,
    condition_get_prop_gt_pattern,
    condition_get_prop_eq_pattern,
    condition_get_prop_neq_pattern,
    condition_get_x_lt_pattern,
    condition_get_x_gt_pattern,
    condition_get_x_eq_pattern,
    condition_get_x_neq_pattern,
    condition_not_is_visited_external_location_condition_pattern,
    condition_is_visited_external_location_condition_pattern,
]
