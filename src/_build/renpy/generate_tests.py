import re
from _build.renpy.templates import (
    rpy_header_template,
    logic_header_template,
    test_header_template,
    multiline_test_case_template,
)
from _build.renpy.patterns import (all_patterns)


def generate_tests(logic, target_npc):
    functions = _parse_function(logic)
    tests = [_generate_tests_for_function(func_name, body, target_npc) for func_name, body in functions]
    return '\n'.join(tests)


def _parse_function(logic):
    functions = []
    current_function = None
    current_body = []
    in_function = False
    base_indent = 0

    for line in logic.splitlines():
        stripped = line.strip()

        empty = not stripped
        commented = stripped.startswith('#')
        if empty or commented:
            continue

        if stripped.startswith('def '):
            if current_function:
                functions.append((current_function, '\n'.join(current_body)))
                current_body = []

            # Extract function name
            func_name = stripped.split('(')[0].split()[1]

            if func_name == '__init__':
                continue

            current_function = func_name
            in_function = True
            base_indent = len(line) - len(stripped.lstrip())
            continue

        if in_function:
            current_indent = len(line) - len(stripped.lstrip())

            # Check if we're still in the same function
            if current_indent > base_indent:
                # Remove base indentation
                current_body.append(stripped)
            else:
                # Function ended
                if current_function:
                    functions.append((current_function, '\n'.join(current_body)))
                current_function = None
                current_body = []
                in_function = False

    # Add last function if exists
    if current_function:
        functions.append((current_function, '\n'.join(current_body)))

    return functions


def _is_one_liner_function(body):
    lines = [line.strip() for line in body.split('\n')
                if line.strip() and not line.strip().startswith('#')]
    return len(lines) == 1


get_boolean_condition_pattern = re.compile(r'^get_(.*?)\(\)$')
not_get_boolean_condition_pattern = re.compile(r'^not get_(.*?)\(\)$')
get_integer_eq_condition_pattern = re.compile(r'^get_(.*?)\(\) == (\d+)$')
get_integer_neq_condition_pattern = re.compile(r'^get_(.*?)\(\) != (\d+)$')
get_integer_gt_condition_pattern = re.compile(r'^get_(.*?)\(\) > (\d+)$')
get_integer_lt_condition_pattern = re.compile(r'^get_(.*?)\(\) < (\d+)$')
get_character_property_gt_condition_pattern = re.compile(r"^character_manager\.get_property\('(.*?)', '(.*?)'\) > (\d+)$")
get_character_property_lt_condition_pattern = re.compile(r"^character_manager\.get_property\('(.*?)', '(.*?)'\) < (\d+)$")
is_visited_internal_condition_pattern = re.compile(r"^location_manager\.is_visited_internal\('(.*?)'\)$")
not_is_visited_internal_condition_pattern = re.compile(r"^not location_manager\.is_visited_internal\('(.*?)'\)$")
count_in_party_eq_zero_condition_pattern = re.compile(r"^count_in_party\(\) == 0$")
count_in_party_gt_zero_condition_pattern = re.compile(r"^count_in_party\(\) > 0$")
current_health_eq_max_health_condition_pattern = re.compile(r"^character_manager\.get_property\(\'protagonist\', \'current_health\'\) == character_manager.get_property\(\'protagonist\', \'max_health\'\)$")
current_health_gt_max_health_condition_pattern = re.compile(r"^character_manager\.get_property\(\'protagonist\', \'current_health\'\) > character_manager.get_property\(\'protagonist\', \'max_health\'\) / 2$")
current_health_lt_max_health_condition_pattern = re.compile(r"^character_manager\.get_property\(\'protagonist\', \'current_health\'\) <= character_manager.get_property\(\'protagonist\', \'max_health\'\) / 2$")

set_boolean_action_pattern = re.compile(r'^set_(.*?)\((True|False)\)$')
set_integer_action_pattern = re.compile(r'^set_(.*?)\((\d+)\)$')
inc_once_integer_action_pattern = re.compile(r'^inc_once_(.*?)\((\d*)\)$')
dec_once_integer_action_pattern = re.compile(r'^dec_once_(.*?)\((\d*)\)$')
inc_integer_action_pattern = re.compile(r'^inc_(.*?)\((\d*)\)$')
dec_integer_action_pattern = re.compile(r'^dec_(.*?)\((\d*)\)$')
modify_property_once_action_pattern = re.compile(r'^character_manager\.modify_property_once\(\'(.*?)\', \'(.*?)\', ([-\d]+), \'(.*?)\'\)$')
modify_property_action_pattern = re.compile(r'^character_manager\.modify_property\(\'(.*?)\', \'(.*?)\', ([-\d]+)\)$')
set_property_action_pattern = re.compile(r'^character_manager\.set_property\(\'(.*?)\', \'(.*?)\', \'(.*?)\'\)$')
gain_experience_action_pattern = re.compile(r'^gain_experience\(\'(.*?)\', (\d+)\)$')
update_journal_action_pattern = re.compile(r'^journal_manager\.update_journal\(\'(\d+)\'\)$')
full_heal_action_pattern = re.compile(r'^character_manager\.full_heal\(\'(.*?)\'\)$')
set_location_action_pattern = re.compile(r'^location_manager\.set_location\(\'(.*?)\'\)$')


def _build_test_actions_parts(operation):
    if set_boolean_action_pattern.match(operation):
        match = set_boolean_action_pattern.search(operation)
        setting = match.group(1)
        value = match.group(2)
        inverted_value = 'True' if value == 'False' else 'False'
        return f"""
""", f"""
        self.assert{inverted_value}(self.settings_manager.get_{setting}())
""", f"""
        self.assert{value}(self.settings_manager.get_{setting}())
""", f"""
        self.assert{value}(self.settings_manager.get_{setting}())
"""

    if set_integer_action_pattern.match(operation):
        match = set_integer_action_pattern.search(operation)
        setting = match.group(1)
        value = match.group(2)
        other_value = '0' if value == '1' else '1'
        return f"""
        {setting}_before = {other_value}
        {setting}_after = {value}
        {setting}_after_once = {value}
""", f"""
        self.assertEqual(self.settings_manager.get_{setting}(), {setting}_before)
""", f"""
        self.assertEqual(self.settings_manager.get_{setting}(), {setting}_after)
""", f"""
        self.assertEqual(self.settings_manager.get_{setting}(), {setting}_after_once)
"""

    if inc_once_integer_action_pattern.match(operation):
        match = inc_once_integer_action_pattern.search(operation)
        setting = match.group(1)
        delta = match.group(2)
        return f"""
        {setting}_before = 0
        {setting}_after = {delta}
        {setting}_after_once = {delta}
""", f"""
        self.assertEqual(self.settings_manager.get_{setting}(), {setting}_before)
""", f"""
        self.assertEqual(self.settings_manager.get_{setting}(), {setting}_after)
""", f"""
        self.assertEqual(self.settings_manager.get_{setting}(), {setting}_after_once)
"""

    if dec_once_integer_action_pattern.match(operation):
        match = dec_once_integer_action_pattern.search(operation)
        setting = match.group(1)
        value = match.group(2)
        delta = '1' if value == '' else value
        return f"""
        {setting}_before = 0
        {setting}_after = -{delta}
        {setting}_after_once = -{delta}
""", f"""
        self.assertEqual(self.settings_manager.get_{setting}(), {setting}_before)
""", f"""
        self.assertEqual(self.settings_manager.get_{setting}(), {setting}_after)
""", f"""
        self.assertEqual(self.settings_manager.get_{setting}(), {setting}_after_once)
"""

    if inc_integer_action_pattern.match(operation):
        match = inc_integer_action_pattern.search(operation)
        setting = match.group(1)
        value = match.group(2)
        delta = '1' if value == '' else value
        return f"""
        {setting}_before = 0
        {setting}_after = {delta}
        {setting}_after_once = 2 * {delta}
""", f"""
        self.assertEqual(self.settings_manager.get_{setting}(), {setting}_before)
""", f"""
        self.assertEqual(self.settings_manager.get_{setting}(), {setting}_after)
""", f"""
        self.assertEqual(self.settings_manager.get_{setting}(), {setting}_after_once)
"""

    if dec_integer_action_pattern.match(operation):
        match = dec_integer_action_pattern.search(operation)
        setting = match.group(1)
        value = match.group(2)
        delta = '1' if value == '' else value
        return f"""
        {setting}_before = 0
        {setting}_after = -{delta}
        {setting}_after_once = -2 * {delta}
""", f"""
        self.assertEqual(self.settings_manager.get_{setting}(), {setting}_before)
""", f"""
        self.assertEqual(self.settings_manager.get_{setting}(), {setting}_after)
""", f"""
        self.assertEqual(self.settings_manager.get_{setting}(), {setting}_after_once)
"""

    if modify_property_once_action_pattern.match(operation):
        match = modify_property_once_action_pattern.search(operation)
        who = match.group(1)
        prop = match.group(2)
        delta = match.group(3)
        key = match.group(4)
        return f"""
        who_{prop} = 'protagonist'
        prop_{prop} = '{prop}'
        delta_{prop} = {delta}
""", f"""
        {prop}_before = self.settings_manager.character_manager.get_property(who_{prop}, prop_{prop})
""", f"""
        {prop}_after = self.settings_manager.character_manager.get_property(who_{prop}, prop_{prop})
        self.assertEqual({prop}_before + delta_{prop}, {prop}_after)
""", f"""
        {prop}_after_once = self.settings_manager.character_manager.get_property(who_{prop}, prop_{prop})
        self.assertEqual({prop}_after, {prop}_after_once)
"""

    if modify_property_action_pattern.match(operation):
        match = modify_property_action_pattern.search(operation)
        who = match.group(1)
        prop = match.group(2)
        delta = match.group(3)
        return f"""
        who_{prop} = 'protagonist'
        prop_{prop} = '{prop}'
        delta_{prop} = {delta}
""", f"""
        {prop}_before = self.settings_manager.character_manager.get_property(who_{prop}, prop_{prop})
""", f"""
        {prop}_after = self.settings_manager.character_manager.get_property(who_{prop}, prop_{prop})
        self.assertEqual({prop}_before + delta_{prop}, {prop}_after)
""", f"""
        {prop}_after_once = self.settings_manager.character_manager.get_property(who_{prop}, prop_{prop})
        self.assertEqual({prop}_after + delta_{prop}, {prop}_after_once)
"""

    if set_property_action_pattern.match(operation):
        match = set_property_action_pattern.search(operation)
        who = match.group(1)
        prop = match.group(2)
        delta = match.group(3)
        return f"""
        who_{prop} = 'protagonist'
        prop_{prop} = '{prop}'
        delta_{prop} = {delta}
""", f"""
        {prop}_before = self.settings_manager.character_manager.get_property(who_{prop}, prop_{prop})
""", f"""
        {prop}_after = self.settings_manager.character_manager.get_property(who_{prop}, prop_{prop})
        self.assertEqual({prop}_before + delta_{prop}, {prop}_after)
""", f"""
        {prop}_after_once = self.settings_manager.character_manager.get_property(who_{prop}, prop_{prop})
        self.assertEqual({prop}_after + delta_{prop}, {prop}_after_once)
"""

    if gain_experience_action_pattern.match(operation):
        match = gain_experience_action_pattern.search(operation)
        who = match.group(1)
        delta = match.group(2)
        return f"""
        who_experience = 'protagonist'
        prop_experience = 'experience'
        delta_experience = {delta}
""", f"""
        experience_before = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
""", f"""
        experience_after = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_before + delta_experience, experience_after)
""", f"""
        experience_after_once = self.settings_manager.character_manager.get_property(who_experience, prop_experience)
        self.assertEqual(experience_after + delta_experience, experience_after_once)
"""

    if update_journal_action_pattern.match(operation):
        match = update_journal_action_pattern.search(operation)
        value = match.group(1)
        return f"""
        note_id = '{value}'
""", f"""
        self.assertFalse(self.settings_manager.journal_manager.has_journal_note(note_id))
""", f"""
        self.assertTrue(self.settings_manager.journal_manager.has_journal_note(note_id))
""", f"""
        self.assertTrue(self.settings_manager.journal_manager.has_journal_note(note_id))
"""

    if full_heal_action_pattern.match(operation):
        match = full_heal_action_pattern.search(operation)
        who = match.group(1)
        return f"""
        who = 'protagonist'
        prop_max_health = 'max_health'
        prop_current_health = 'current_health'
        delta_max_health = 1
""", f"""
        max_health_before = self.settings_manager.character_manager.get_property(who, prop_max_health)
        self.settings_manager.character_manager.set_property(who, prop_current_health, max_health_before / 2)
        current_health_before = self.settings_manager.character_manager.get_property(who, prop_current_health)
        self.assertNotEqual(max_health_before, current_health_before)
""", f"""
        max_health_after = self.settings_manager.character_manager.get_property(who, prop_max_health)
        current_health_after = self.settings_manager.character_manager.get_property(who, prop_current_health)
        self.assertEqual(max_health_before + delta_max_health, max_health_after)
        self.assertEqual(max_health_after, current_health_after)
""", f"""
        max_health_after_once = self.settings_manager.character_manager.get_property(who, prop_max_health)
        current_health_after_once = self.settings_manager.character_manager.get_property(who, prop_current_health)
        self.assertEqual(max_health_after + delta_max_health, max_health_after_once)
        self.assertEqual(max_health_after_once, current_health_after_once)
"""

    if set_location_action_pattern.match(operation):
        match = set_location_action_pattern.search(operation)
        value = match.group(1)
        return f"""
        location = '{value}'
""", f"""
        self.assertNotEqual(self.settings_manager.location_manager.get_location(), location)
""", f"""
        self.assertEqual(self.settings_manager.location_manager.get_location(), location)
""", f"""
        self.assertEqual(self.settings_manager.location_manager.get_location(), location)
"""

    return 'unknown', '', '', ''


def _build_test_conditions_parts(operation):
    if current_health_eq_max_health_condition_pattern.match(operation):
        match = current_health_eq_max_health_condition_pattern.search(operation)
        return f"""
        max_health_before = 24
        current_health_before = 12
        max_health_after = 24
        current_health_after = 24
""", f"""
        self.settings_manager.character_manager.set_property('protagonist', 'max_health', max_health_before)
        self.settings_manager.character_manager.set_property('protagonist', 'current_health', current_health_before)
""", f"""
        self.settings_manager.character_manager.set_property('protagonist', 'max_health', max_health_after)
        self.settings_manager.character_manager.set_property('protagonist', 'current_health', current_health_after)
"""

    if current_health_gt_max_health_condition_pattern.match(operation):
        match = current_health_gt_max_health_condition_pattern.search(operation)
        return f"""
        max_health_before = 24
        current_health_before = 8
        max_health_after = 24
        current_health_after = 16
""", f"""
        self.settings_manager.character_manager.set_property('protagonist', 'max_health', max_health_before)
        self.settings_manager.character_manager.set_property('protagonist', 'current_health', current_health_before)
""", f"""
        self.settings_manager.character_manager.set_property('protagonist', 'max_health', max_health_after)
        self.settings_manager.character_manager.set_property('protagonist', 'current_health', current_health_after)
"""

    if current_health_lt_max_health_condition_pattern.match(operation):
        match = current_health_lt_max_health_condition_pattern.search(operation)
        return f"""
        max_health_before = 24
        current_health_before = 16
        max_health_after = 24
        current_health_after = 8
""", f"""
        self.settings_manager.character_manager.set_property('protagonist', 'max_health', max_health_before)
        self.settings_manager.character_manager.set_property('protagonist', 'current_health', current_health_before)
""", f"""
        self.settings_manager.character_manager.set_property('protagonist', 'max_health', max_health_after)
        self.settings_manager.character_manager.set_property('protagonist', 'current_health', current_health_after)
"""

    if get_boolean_condition_pattern.match(operation):
        match = get_boolean_condition_pattern.search(operation)
        setting = match.group(1)
        return f"""
""", f"""
        self.settings_manager.set_{setting}(False)
""", f"""
        self.settings_manager.set_{setting}(True)
"""

    if not_get_boolean_condition_pattern.match(operation):
        match = not_get_boolean_condition_pattern.search(operation)
        setting = match.group(1)
        return f"""
""", f"""
        self.settings_manager.set_{setting}(True)
""", f"""
        self.settings_manager.set_{setting}(False)
"""

    if get_integer_eq_condition_pattern.match(operation):
        match = get_integer_eq_condition_pattern.search(operation)
        setting = match.group(1)
        value = match.group(2)
        not_value = '1' if value == '0' else '0'
        return f"""
""", f"""
        self.settings_manager.set_{setting}({not_value})
""", f"""
        self.settings_manager.set_{setting}({value})
"""

    if get_integer_neq_condition_pattern.match(operation):
        match = get_integer_neq_condition_pattern.search(operation)
        setting = match.group(1)
        value = match.group(2)
        not_value = '1' if value == '0' else '0'
        return f"""
""", f"""
        self.settings_manager.set_{setting}({value})
""", f"""
        self.settings_manager.set_{setting}({not_value})
"""

    if get_integer_gt_condition_pattern.match(operation):
        match = get_integer_gt_condition_pattern.search(operation)
        setting = match.group(1)
        value = match.group(2)
        not_value = '1' if value == '0' else '0'
        return f"""
""", f"""
        self.settings_manager.set_{setting}({not_value})
""", f"""
        self.settings_manager.set_{setting}({value})
"""

    if get_integer_lt_condition_pattern.match(operation):
        match = get_integer_lt_condition_pattern.search(operation)
        setting = match.group(1)
        value = match.group(2)
        not_value = '1' if value == '0' else '0'
        return f"""
""", f"""
        self.settings_manager.set_{setting}({value})
""", f"""
        self.settings_manager.set_{setting}({not_value})
"""

    if get_character_property_gt_condition_pattern.match(operation):
        match = get_character_property_gt_condition_pattern.search(operation)
        # who = match.group(1)
        setting = match.group(2)
        value = match.group(3)
        return f"""
        who_{setting} = 'protagonist'
        prop_{setting} = '{setting}'
        delta_{setting} = {value}
""", f"""
        self.settings_manager.character_manager.set_property(who_{setting}, prop_{setting}, delta_{setting})
""", f"""
        self.settings_manager.character_manager.set_property(who_{setting}, prop_{setting}, delta_{setting} + 1)
"""

    if get_character_property_lt_condition_pattern.match(operation):
        match = get_character_property_lt_condition_pattern.search(operation)
        # who = match.group(1)
        setting = match.group(2)
        value = match.group(3)
        return f"""
        who_{setting} = 'protagonist'
        prop_{setting} = '{setting}'
        delta_{setting} = {value}
""", f"""
        self.settings_manager.character_manager.set_property(who_{setting}, prop_{setting}, delta_{setting})
""", f"""
        self.settings_manager.character_manager.set_property(who_{setting}, prop_{setting}, delta_{setting} - 1)
"""

    if is_visited_internal_condition_pattern.match(operation):
        match = is_visited_internal_condition_pattern.search(operation)
        value = match.group(1)
        return f"""
        location = {value}
""", f"""
        self.assertFalse(self.settings_manager.location_manager.is_visited(location))
""", f"""
        self.settings_manager.location_manager.set_location(location)
        self.assertTrue(self.settings_manager.location_manager.is_visited(location))
"""

    if not_is_visited_internal_condition_pattern.match(operation):
        match = not_is_visited_internal_condition_pattern.search(operation)
        value = match.group(1)
        return f"""
        location = {value}
""", f"""
        self.assertTrue(self.settings_manager.location_manager.is_visited(location))
""", f"""
        self.settings_manager.location_manager.set_location(location)
        self.assertFalse(self.settings_manager.location_manager.is_visited(location))
"""

    if count_in_party_eq_zero_condition_pattern.match(operation):
        match = count_in_party_eq_zero_condition_pattern.search(operation)
        return f"""
""", f"""
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_in_party_annah(False)
        self.settings_manager.set_in_party_ignus(False)
        self.settings_manager.set_in_party_grace(False)
        self.settings_manager.set_in_party_dakkon(False)
        self.settings_manager.set_in_party_nordom(False)
        self.settings_manager.set_in_party_vhail(False)
""", f"""
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_in_party_annah(False)
        self.settings_manager.set_in_party_ignus(False)
        self.settings_manager.set_in_party_grace(False)
        self.settings_manager.set_in_party_dakkon(False)
        self.settings_manager.set_in_party_nordom(False)
        self.settings_manager.set_in_party_vhail(False)
"""

    if count_in_party_gt_zero_condition_pattern.match(operation):
        match = count_in_party_gt_zero_condition_pattern.search(operation)
        return f"""
""", f"""
        self.settings_manager.set_in_party_morte(False)
        self.settings_manager.set_in_party_annah(False)
        self.settings_manager.set_in_party_ignus(False)
        self.settings_manager.set_in_party_grace(False)
        self.settings_manager.set_in_party_dakkon(False)
        self.settings_manager.set_in_party_nordom(False)
        self.settings_manager.set_in_party_vhail(False)
""", f"""
        self.settings_manager.set_in_party_morte(True)
        self.settings_manager.set_in_party_annah(False)
        self.settings_manager.set_in_party_ignus(False)
        self.settings_manager.set_in_party_grace(False)
        self.settings_manager.set_in_party_dakkon(False)
        self.settings_manager.set_in_party_nordom(False)
        self.settings_manager.set_in_party_vhail(False)
"""

    return 'unknown', '', ''


def _guess_multiline_actions(func_name, body, target_npc):
    operations = [
        line.replace('self.settings_manager.', '').strip()
        for line in body.splitlines()
        if line and not line.strip().startswith('#')
    ]

    preconf_builder = '    '
    before_builder = '    '
    after_builder = '    '
    after_once_builder = '    '

    for operation in operations:
        preconf, before, after, after_once = _build_test_actions_parts(operation)
        if len(preconf.strip()) > 0:
            preconf_builder += f'\n        {preconf.strip()}'
        before_builder += f'\n        {before.strip()}'
        after_builder += f'\n        {after.strip()}'
        after_once_builder += f'\n        {after_once.strip()}'

        if preconf == 'unknown':
            print(f"Failed to match action operation '{operation}'")
            context = {'f': func_name, 'l': target_npc.capitalize()}
            return multiline_test_case_template.format(**context)

    result_builder = _render_action_test(func_name, preconf_builder.strip(), before_builder.strip(), after_builder.strip(), after_once_builder.strip())
    return result_builder


def _guess_multiline_conditions(func_name, body, target_npc):
    operations = [
        line.replace('and \\', '').replace('self.settings_manager.', '').strip()
        for line in body.replace('return ', '').splitlines()
        if line and not line.strip().startswith('#')
    ]

    preconf_builder = '    '
    before_builder = '    '
    after_builder = '    '

    for operation in operations:
        preconf, before, after = _build_test_conditions_parts(operation)
        if len(preconf.strip()) > 0:
            preconf_builder += f'\n        {preconf.strip()}'
        before_builder += f'\n        {before.strip()}'
        after_builder += f'\n        {after.strip()}'

        if preconf == 'unknown':
            print(f"Failed to match condition operation '{operation}'")
            context = {'f': func_name, 'l': target_npc.capitalize()}
            return multiline_test_case_template.format(**context)

    result_builder = _render_condition_test(func_name, preconf_builder.strip(), before_builder.strip(), after_builder.strip())
    return result_builder


def _render_action_test(func_name, preconf_builder, before_builder, after_builder, after_once_builder):
    is_one_liner = len(preconf_builder) == 0 and \
                   len(before_builder) == 0 and \
                   len(after_builder) == 0 and \
                   len(after_once_builder) == 0

    if is_one_liner:
        return f'''
    def test_{func_name}(self):
        self.logic.{func_name}()
'''

    no_preconf = len(preconf_builder) == 0 and \
                 len(before_builder) > 0 and \
                 len(after_builder) > 0 and \
                 len(after_once_builder) > 0

    if no_preconf:
        return f'''
    def test_{func_name}(self):
        {before_builder}

        self.logic.{func_name}()

        {after_builder}

        self.logic.{func_name}()

        {after_once_builder}
'''

    return f'''
    def test_{func_name}(self):
        {preconf_builder}

        {before_builder}

        self.logic.{func_name}()

        {after_builder}

        self.logic.{func_name}()

        {after_once_builder}
'''


def _render_condition_test(func_name, preconf_builder, before_builder, after_builder):
    no_preconf = len(preconf_builder) == 0 and \
                 len(before_builder) > 0 and \
                 len(after_builder) > 0

    if no_preconf:
        return f'''
    def test_{func_name}(self):
        {before_builder}
        self.assertFalse(self.logic.{func_name}())

        {after_builder}
        self.assertTrue(self.logic.{func_name}())
'''

    return f'''
    def test_{func_name}(self):
        {preconf_builder}

        {before_builder}
        self.assertFalse(self.logic.{func_name}())

        {after_builder}
        self.assertTrue(self.logic.{func_name}())
'''


def _generate_tests_for_function(func_name, body, target_npc):
    context = {'f': func_name, 'l': target_npc.capitalize()}

    if not _is_one_liner_function(body):
        is_action = func_name.endswith('_action') or func_name.endswith('_init')
        is_condition = func_name.endswith('_condition')
        if is_action:
            return _guess_multiline_actions(func_name, body, target_npc)
        if is_condition:
            return _guess_multiline_conditions(func_name, body, target_npc)
        print(f"\nFailed to build multiline test for {target_npc} function:\n    '{func_name}():\n    {body}'")
        return multiline_test_case_template.format(**context)

    # Extract the actual code line (ignore comments)
    code_line = next((line for line in body.split('\n')
                    if line.strip() and not line.strip().startswith('#')), '')

    # Try to match against templates
    for pattern in all_patterns:
        match = pattern.pattern.match(code_line)

        if match:
            for key, extractor in pattern.extractors.items():
                context[key] = extractor(match)
            return pattern.template.format(**context)

    # Fallback to multiline template if no match
    print(f"\nFailed to build singleline test for {target_npc} function:\n    '{func_name}():\n    {body}'")
    return multiline_test_case_template.format(**context)
