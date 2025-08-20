import re
from _build.renpy.patterns import (all_patterns)
from _build.renpy.templates import (
    rpy_header_template,
    logic_header_template,
    test_header_template,
    multiline_test_case_template,
    render_action_test_one_liner_template,
    render_action_test_no_preconf_template,
    render_action_test_preconf_template,
    render_condition_test_no_preconf_template,
    render_condition_test_preconf_template,
    set_boolean_action_pattern_preconf,
    set_boolean_action_pattern_before,
    set_boolean_action_pattern_after,
    set_boolean_action_pattern_after_once,
    set_integer_action_pattern_preconf,
    set_integer_action_pattern_before,
    set_integer_action_pattern_after,
    set_integer_action_pattern_after_once,
    inc_once_integer_action_pattern_preconf,
    inc_once_integer_action_pattern_before,
    inc_once_integer_action_pattern_after,
    inc_once_integer_action_pattern_after_once,
    dec_once_integer_action_pattern_preconf,
    dec_once_integer_action_pattern_before,
    dec_once_integer_action_pattern_after,
    dec_once_integer_action_pattern_after_once,
    inc_integer_action_pattern_preconf,
    inc_integer_action_pattern_before,
    inc_integer_action_pattern_after,
    inc_integer_action_pattern_after_once,
    dec_integer_action_pattern_preconf,
    dec_integer_action_pattern_before,
    dec_integer_action_pattern_after,
    dec_integer_action_pattern_after_once,
    modify_property_once_action_pattern_preconf,
    modify_property_once_action_pattern_before,
    modify_property_once_action_pattern_after,
    modify_property_once_action_pattern_after_once,
    modify_property_action_pattern_preconf,
    modify_property_action_pattern_before,
    modify_property_action_pattern_after,
    modify_property_action_pattern_after_once,
    set_property_action_pattern_preconf,
    set_property_action_pattern_before,
    set_property_action_pattern_after,
    set_property_action_pattern_after_once,
    gain_experience_action_pattern_preconf,
    gain_experience_action_pattern_before,
    gain_experience_action_pattern_after,
    gain_experience_action_pattern_after_once,
    update_journal_action_pattern_preconf,
    update_journal_action_pattern_before,
    update_journal_action_pattern_after,
    update_journal_action_pattern_after_once,
    full_heal_action_pattern_preconf,
    full_heal_action_pattern_before,
    full_heal_action_pattern_after,
    full_heal_action_pattern_after_once,
    set_location_action_pattern_preconf,
    set_location_action_pattern_before,
    set_location_action_pattern_after,
    set_location_action_pattern_after_once,
    current_health_eq_max_health_condition_pattern_preconf,
    current_health_eq_max_health_condition_pattern_before,
    current_health_eq_max_health_condition_pattern_after,
    current_health_gt_max_health_condition_pattern_preconf,
    current_health_gt_max_health_condition_pattern_before,
    current_health_gt_max_health_condition_pattern_after,
    current_health_lt_max_health_condition_pattern_preconf,
    current_health_lt_max_health_condition_pattern_before,
    current_health_lt_max_health_condition_pattern_after,
    get_boolean_condition_pattern_preconf,
    get_boolean_condition_pattern_before,
    get_boolean_condition_pattern_after,
    not_get_boolean_condition_pattern_preconf,
    not_get_boolean_condition_pattern_before,
    not_get_boolean_condition_pattern_after,
    get_integer_eq_condition_pattern_preconf,
    get_integer_eq_condition_pattern_before,
    get_integer_eq_condition_pattern_after,
    get_integer_neq_condition_pattern_preconf,
    get_integer_neq_condition_pattern_before,
    get_integer_neq_condition_pattern_after,
    get_integer_gt_condition_pattern_preconf,
    get_integer_gt_condition_pattern_before,
    get_integer_gt_condition_pattern_after,
    get_integer_lt_condition_pattern_preconf,
    get_integer_lt_condition_pattern_before,
    get_integer_lt_condition_pattern_after,
    get_character_property_gt_condition_pattern_preconf,
    get_character_property_gt_condition_pattern_before,
    get_character_property_gt_condition_pattern_after,
    get_character_property_lt_condition_pattern_preconf,
    get_character_property_lt_condition_pattern_before,
    get_character_property_lt_condition_pattern_after,
    is_visited_internal_condition_pattern_preconf,
    is_visited_internal_condition_pattern_before,
    is_visited_internal_condition_pattern_after,
    not_is_visited_internal_condition_pattern_preconf,
    not_is_visited_internal_condition_pattern_before,
    not_is_visited_internal_condition_pattern_after,
    count_in_party_eq_zero_condition_pattern_preconf,
    count_in_party_eq_zero_condition_pattern_before,
    count_in_party_eq_zero_condition_pattern_after,
    count_in_party_gt_zero_condition_pattern_preconf,
    count_in_party_gt_zero_condition_pattern_before,
    count_in_party_gt_zero_condition_pattern_after,
)


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


def generate_tests(logic, target_npc, warnings):
    functions = _parse_function(logic)
    tests = [_generate_tests_for_function(func_name, body, target_npc, warnings) for func_name, body in functions]

    return '\n\n\n'.join(tests).strip()


def _render_with_shift(buffer, value, shift):
    if not value:
        return buffer

    spaces = ' ' * shift
    for line in value.splitlines(True):
        if len(line.strip()) == 0:
            buffer.append('\n')
        else:
            buffer.append(spaces + line)

    return buffer


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
        returned = stripped == 'return'
        if empty or commented or returned:
            continue

        if stripped.startswith('def '):
            if current_function:
                functions.append((current_function, '\n'.join(current_body)))
                current_body = []

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
    lines = [
        line
        for line in split_foo(body)
        if not ignored_operation(line)
    ]

    return len(lines) == 1


def _build_test_actions_parts(operation):
    if set_boolean_action_pattern.match(operation):
        match = set_boolean_action_pattern.search(operation)
        setting = match.group(1)
        value = match.group(2)
        inverted_value = 'True' if value == 'False' else 'False'
        return set_boolean_action_pattern_preconf.format(iv=inverted_value, s=setting), \
               set_boolean_action_pattern_before.format(iv=inverted_value, s=setting), \
               set_boolean_action_pattern_after.format(v=value, s=setting), \
               set_boolean_action_pattern_after_once.format(v=value, s=setting)
    if set_integer_action_pattern.match(operation):
        match = set_integer_action_pattern.search(operation)
        setting = match.group(1)
        value = match.group(2)
        other_value = '0' if value == '1' else '1'
        return set_integer_action_pattern_preconf.format(s=setting, ov=other_value, v=value), \
               set_integer_action_pattern_before.format(s=setting), \
               set_integer_action_pattern_after.format(s=setting), \
               set_integer_action_pattern_after_once.format(s=setting)
    if inc_once_integer_action_pattern.match(operation):
        match = inc_once_integer_action_pattern.search(operation)
        setting = match.group(1)
        delta = match.group(2)
        return inc_once_integer_action_pattern_preconf.format(s=setting, d=delta), \
               inc_once_integer_action_pattern_before.format(s=setting), \
               inc_once_integer_action_pattern_after.format(s=setting), \
               inc_once_integer_action_pattern_after_once.format(s=setting)
    if dec_once_integer_action_pattern.match(operation):
        match = dec_once_integer_action_pattern.search(operation)
        setting = match.group(1)
        value = match.group(2)
        delta = '1' if value == '' else value
        return dec_once_integer_action_pattern_preconf.format(s=setting, d=delta), \
               dec_once_integer_action_pattern_before.format(s=setting), \
               dec_once_integer_action_pattern_after.format(s=setting), \
               dec_once_integer_action_pattern_after_once.format(s=setting)
    if inc_integer_action_pattern.match(operation):
        match = inc_integer_action_pattern.search(operation)
        setting = match.group(1)
        value = match.group(2)
        delta = '1' if value == '' else value
        return inc_integer_action_pattern_preconf.format(s=setting, d=delta), \
               inc_integer_action_pattern_before.format(s=setting), \
               inc_integer_action_pattern_after.format(s=setting), \
               inc_integer_action_pattern_after_once.format(s=setting)
    if dec_integer_action_pattern.match(operation):
        match = dec_integer_action_pattern.search(operation)
        setting = match.group(1)
        value = match.group(2)
        delta = '1' if value == '' else value
        return dec_integer_action_pattern_preconf.format(s=setting, d=delta), \
               dec_integer_action_pattern_before.format(s=setting), \
               dec_integer_action_pattern_after.format(s=setting), \
               dec_integer_action_pattern_after_once.format(s=setting)
    if modify_property_once_action_pattern.match(operation):
        match = modify_property_once_action_pattern.search(operation)
        who = match.group(1)
        who = 'protagonist' if who == 'party' else who
        prop = match.group(2)
        delta = match.group(3)
        key = match.group(4)
        return modify_property_once_action_pattern_preconf.format(w=who, p=prop, d=delta), \
               modify_property_once_action_pattern_before.format(p=prop), \
               modify_property_once_action_pattern_after.format(p=prop), \
               modify_property_once_action_pattern_after_once.format(p=prop)
    if modify_property_action_pattern.match(operation):
        match = modify_property_action_pattern.search(operation)
        who = match.group(1)
        who = 'protagonist' if who == 'party' else who
        prop = match.group(2)
        delta = match.group(3)
        return modify_property_action_pattern_preconf.format(w=who, p=prop, d=delta), \
               modify_property_action_pattern_before.format(p=prop), \
               modify_property_action_pattern_after.format(p=prop), \
               modify_property_action_pattern_after_once.format(p=prop)
    if set_property_action_pattern.match(operation):
        match = set_property_action_pattern.search(operation)
        who = match.group(1)
        who = 'protagonist' if who == 'party' else who
        prop = match.group(2)
        delta = match.group(3)
        return set_property_action_pattern_preconf.format(w=who, p=prop, d=delta), \
               set_property_action_pattern_before.format(p=prop), \
               set_property_action_pattern_after.format(p=prop), \
               set_property_action_pattern_after_once.format(p=prop)
    if gain_experience_action_pattern.match(operation):
        match = gain_experience_action_pattern.search(operation)
        who = match.group(1)
        who = 'protagonist' if who == 'party' else who
        delta = match.group(2)
        return gain_experience_action_pattern_preconf.format(w=who, d=delta), \
               gain_experience_action_pattern_before, \
               gain_experience_action_pattern_after, \
               gain_experience_action_pattern_after_once
    if update_journal_action_pattern.match(operation):
        match = update_journal_action_pattern.search(operation)
        value = match.group(1)
        return update_journal_action_pattern_preconf.format(v=value), \
               update_journal_action_pattern_before, \
               update_journal_action_pattern_after, \
               update_journal_action_pattern_after_once
    if full_heal_action_pattern.match(operation):
        match = full_heal_action_pattern.search(operation)
        who = match.group(1)
        who = 'protagonist' if who == 'party' else who
        return full_heal_action_pattern_preconf.format(w=who), \
               full_heal_action_pattern_before, \
               full_heal_action_pattern_after, \
               full_heal_action_pattern_after_once
    if set_location_action_pattern.match(operation):
        match = set_location_action_pattern.search(operation)
        value = match.group(1)
        return set_location_action_pattern_preconf.format(v=value), \
               set_location_action_pattern_before, \
               set_location_action_pattern_after, \
               set_location_action_pattern_after_once

    return 'unknown', '', '', ''


def _build_test_conditions_parts(operation):
    if current_health_eq_max_health_condition_pattern.match(operation):
        match = current_health_eq_max_health_condition_pattern.search(operation)
        return current_health_eq_max_health_condition_pattern_preconf, \
               current_health_eq_max_health_condition_pattern_before, \
               current_health_eq_max_health_condition_pattern_after
    if current_health_gt_max_health_condition_pattern.match(operation):
        match = current_health_gt_max_health_condition_pattern.search(operation)
        return current_health_gt_max_health_condition_pattern_preconf, \
               current_health_gt_max_health_condition_pattern_before, \
               current_health_gt_max_health_condition_pattern_after
    if current_health_lt_max_health_condition_pattern.match(operation):
        match = current_health_lt_max_health_condition_pattern.search(operation)
        return current_health_lt_max_health_condition_pattern_preconf, \
               current_health_lt_max_health_condition_pattern_before, \
               current_health_lt_max_health_condition_pattern_after
    if get_boolean_condition_pattern.match(operation):
        match = get_boolean_condition_pattern.search(operation)
        setting = match.group(1)
        return get_boolean_condition_pattern_preconf, \
               get_boolean_condition_pattern_before.format(s=setting), \
               get_boolean_condition_pattern_after.format(s=setting)
    if not_get_boolean_condition_pattern.match(operation):
        match = not_get_boolean_condition_pattern.search(operation)
        setting = match.group(1)
        return not_get_boolean_condition_pattern_preconf, \
               not_get_boolean_condition_pattern_before.format(s=setting), \
               not_get_boolean_condition_pattern_after.format(s=setting)
    if get_integer_eq_condition_pattern.match(operation):
        match = get_integer_eq_condition_pattern.search(operation)
        setting = match.group(1)
        value = match.group(2)
        not_value = '1' if value == '0' else '0'
        return get_integer_eq_condition_pattern_preconf, \
               get_integer_eq_condition_pattern_before.format(s=setting, nv=not_value), \
               get_integer_eq_condition_pattern_after.format(s=setting, v=value)
    if get_integer_neq_condition_pattern.match(operation):
        match = get_integer_neq_condition_pattern.search(operation)
        setting = match.group(1)
        value = match.group(2)
        not_value = '1' if value == '0' else '0'
        return get_integer_neq_condition_pattern_preconf, \
               get_integer_neq_condition_pattern_before.format(s=setting, v=value), \
               get_integer_neq_condition_pattern_after.format(s=setting, nv=not_value)
    if get_integer_gt_condition_pattern.match(operation):
        match = get_integer_gt_condition_pattern.search(operation)
        setting = match.group(1)
        value = match.group(2)
        not_value = '1' if value == '0' else '0'
        return get_integer_gt_condition_pattern_preconf, \
               get_integer_gt_condition_pattern_before.format(s=setting, nv=not_value), \
               get_integer_gt_condition_pattern_after.format(s=setting, v=value)
    if get_integer_lt_condition_pattern.match(operation):
        match = get_integer_lt_condition_pattern.search(operation)
        setting = match.group(1)
        value = match.group(2)
        not_value = '1' if value == '0' else '0'
        return get_integer_lt_condition_pattern_preconf, \
               get_integer_lt_condition_pattern_before.format(s=setting, v=value), \
               get_integer_lt_condition_pattern_after.format(s=setting, nv=not_value)
    if get_character_property_gt_condition_pattern.match(operation):
        match = get_character_property_gt_condition_pattern.search(operation)
        who = match.group(1)
        who = 'protagonist' if who == 'party' else who
        setting = match.group(2)
        value = match.group(3)
        return get_character_property_gt_condition_pattern_preconf.format(s=setting, w=who, v=value), \
               get_character_property_gt_condition_pattern_before.format(s=setting), \
               get_character_property_gt_condition_pattern_after.format(s=setting)
    if get_character_property_lt_condition_pattern.match(operation):
        match = get_character_property_lt_condition_pattern.search(operation)
        who = match.group(1)
        who = 'protagonist' if who == 'party' else who
        setting = match.group(2)
        value = match.group(3)
        return get_character_property_lt_condition_pattern_preconf.format(s=setting, w=who, v=value), \
               get_character_property_lt_condition_pattern_before.format(s=setting), \
               get_character_property_lt_condition_pattern_after.format(s=setting)
    if is_visited_internal_condition_pattern.match(operation):
        match = is_visited_internal_condition_pattern.search(operation)
        value = match.group(1)
        return is_visited_internal_condition_pattern_preconf.format(v=value), \
               is_visited_internal_condition_pattern_before, \
               is_visited_internal_condition_pattern_after
    if not_is_visited_internal_condition_pattern.match(operation):
        match = not_is_visited_internal_condition_pattern.search(operation)
        value = match.group(1)
        return not_is_visited_internal_condition_pattern_preconf.format(v=value), \
               not_is_visited_internal_condition_pattern_before, \
               not_is_visited_internal_condition_pattern_after
    if count_in_party_eq_zero_condition_pattern.match(operation):
        match = count_in_party_eq_zero_condition_pattern.search(operation)
        return count_in_party_eq_zero_condition_pattern_preconf, \
               count_in_party_eq_zero_condition_pattern_before, \
               count_in_party_eq_zero_condition_pattern_after
    if count_in_party_gt_zero_condition_pattern.match(operation):
        match = count_in_party_gt_zero_condition_pattern.search(operation)
        return count_in_party_gt_zero_condition_pattern_preconf, \
               count_in_party_gt_zero_condition_pattern_before, \
               count_in_party_gt_zero_condition_pattern_after

    return 'unknown', '', ''


def split_foo(x):
    r = []
    for i in x.replace('#$%', '\n#$%').replace('%$#', '%$#\n').splitlines():
        if len(i.strip()) > 0:
            r.append(i.strip())
    return r


def ignored_operation(x):
    return x.startswith('#$%') and x.endswith('%$#')


def _guess_multiline_actions(func_name, body, target_npc, warnings):
    operations = [
        line.replace('self.settings_manager.', '').strip()
        for line in split_foo(body)
        if line and not ignored_operation(line)
    ]

    preconf_builder = []
    before_builder = []
    after_builder = []
    after_once_builder = []

    for operation in operations:
        if operation == 'inc_choke_dustman()inc_choke()set_dead_dust(True)':
            print(body)

        preconf, before, after, after_once = _build_test_actions_parts(operation)
        if len(preconf) > 0:
            _render_with_shift(
                preconf_builder,
                preconf,
                4
            )
            preconf_builder.append('\n')
        _render_with_shift(
            before_builder,
            before,
            4
        )
        before_builder.append('\n')
        _render_with_shift(
            after_builder,
            after,
            4
        )
        after_builder.append('\n')
        _render_with_shift(
            after_once_builder,
            after_once,
            4
        )
        after_once_builder.append('\n')

        if preconf == 'unknown':
            warnings.append(f"Failed to match action operation '{operation}'")
            context = {'f': func_name, 'l': target_npc.capitalize()}
            return multiline_test_case_template.format(**context)

    return _render_action_test(func_name, ''.join(preconf_builder).rstrip(), ''.join(before_builder).rstrip(), ''.join(after_builder).rstrip(), ''.join(after_once_builder).rstrip())


def _guess_multiline_conditions(func_name, body, target_npc, warnings):
    operations = [
        line.replace('and \\', '').replace('self.settings_manager.', '').strip()
        for line in split_foo(body.replace('return ', ''))
        if line and not ignored_operation(line)
    ]

    preconf_builder = []
    before_builder = []
    after_builder = []

    for operation in operations:
        preconf, before, after = _build_test_conditions_parts(operation)

        if len(preconf) > 0:
            _render_with_shift(
                preconf_builder,
                preconf,
                4
            )
            preconf_builder.append('\n')
        _render_with_shift(
            before_builder,
            before,
            4
        )
        before_builder.append('\n')
        _render_with_shift(
            after_builder,
            after,
            4
        )
        after_builder.append('\n')

        if preconf == 'unknown':
            warnings.append(f"Failed to match condition operation '{operation}'")
            context = {'f': func_name, 'l': target_npc.capitalize()}
            return multiline_test_case_template.format(**context)

    return _render_condition_test(func_name, ''.join(preconf_builder).rstrip(), ''.join(before_builder).rstrip(), ''.join(after_builder).rstrip())


def _render_action_test(func_name, preconf_builder, before_builder, after_builder, after_once_builder):
    is_one_liner = len(preconf_builder) == 0 and \
                   len(before_builder) == 0 and \
                   len(after_builder) == 0 and \
                   len(after_once_builder) == 0
    builder = []
    if is_one_liner:
        _render_with_shift(
            builder,
            render_action_test_one_liner_template.format(fn=func_name),
            4
        )
        return ''.join(builder)

    no_preconf = len(preconf_builder) == 0 and \
                 len(before_builder) > 0 and \
                 len(after_builder) > 0 and \
                 len(after_once_builder) > 0
    if no_preconf:
        _render_with_shift(
            builder,
            render_action_test_no_preconf_template.format(fn=func_name, bb=before_builder, ab=after_builder, aob=after_once_builder),
            4
        )
        return ''.join(builder)
    _render_with_shift(
        builder,
        render_action_test_preconf_template.format(fn=func_name, pb=preconf_builder, bb=before_builder, ab=after_builder, aob=after_once_builder),
        4
    )
    return ''.join(builder)


def _render_condition_test(func_name, preconf_builder, before_builder, after_builder):
    no_preconf = len(preconf_builder) == 0 and \
                 len(before_builder) > 0 and \
                 len(after_builder) > 0
    builder = []
    if no_preconf:
        _render_with_shift(
            builder,
            render_condition_test_no_preconf_template.format(fn=func_name, bb=before_builder, ab=after_builder),
            4
        )
        return ''.join(builder)
    _render_with_shift(
        builder,
        render_condition_test_preconf_template.format(fn=func_name, pb=preconf_builder, bb=before_builder, ab=after_builder),
        4
    )
    return ''.join(builder)


def _generate_tests_for_function(func_name, body, target_npc, warnings):
    context = {'f': func_name, 'l': target_npc.capitalize()}

    if not _is_one_liner_function(body):
        is_action = func_name.endswith('_action') or func_name.endswith('_init')
        is_condition = func_name.endswith('_condition')
        if is_action:
            return _guess_multiline_actions(func_name, body, target_npc, warnings)
        if is_condition:
            return _guess_multiline_conditions(func_name, body, target_npc, warnings)
        warnings.append(f"Failed to build multiline test for {target_npc} function:\n    '{func_name}'(): '{body}'")
        builder = []
        _render_with_shift(
            builder,
            multiline_test_case_template.format(**context),
            4
        )
        return ''.join(builder)

    # Extract the actual code line (ignore comments)
    code_line = next((
        line
        for line in split_foo(body)
        if not ignored_operation(line)
    ), '')

    # Try to match against templates
    for pattern in all_patterns:
        match = pattern.pattern.match(code_line)

        if match:
            for key, extractor in pattern.extractors.items():
                context[key] = extractor(match)
            builder = []
            _render_with_shift(
                builder,
                pattern.template.format(**context),
                4
            )
            return ''.join(builder)

    # Fallback to multiline template if no match
    warnings.append(f"Failed to build singleline test for {target_npc} function:\n    def '{func_name}'(self): '{body}'")
    builder = []
    _render_with_shift(
        builder,
        multiline_test_case_template.format(**context),
        4
    )
    return ''.join(builder)
