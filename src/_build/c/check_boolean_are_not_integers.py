import re

class Setting:
    def __init__(self, name, dialog_replacer_type):
        self.name = name
        self.dialog_replacer_type = dialog_replacer_type  # 'boolean' or 'integer'
        self.values = set()


def check_boolean_are_not_integers(raw_files, dialog_replacer):
    errors = []
    warnings = []

    settings = parse_dialog_replacer(dialog_replacer)

    if len(settings) < 10:
        warnings.append(f'Why are there {len(settings)} settings found in dialog_replacer?')

    for var_name, value in parse_raw_files(raw_files):
        if var_name in settings:
            settings[var_name].values.add(value)

    for setting in settings.values():
        if not setting.values:
            warnings.append(f'Variable not used: {setting.name} {setting.dialog_replacer_type}')
            continue

        actual_type = 'boolean' if all(v in {0, 1} for v in setting.values) else 'integer'

        # if actual_type == 'boolean':
        #     boolean_vars.append(setting.name)
        # else:
        #     integer_vars.append(setting.name)

        if setting.dialog_replacer_type != actual_type:
            errors.append(f"'Change {setting.dialog_replacer_type}' -> '{actual_type}' for '{setting.name}' values are {sorted(setting.values)}")

    return errors, warnings


boolean_pattern = re.compile(r"self\.boolean\('(.*?)',")
integer_pattern = re.compile(r"self\.integer\('(.*?)',")


def parse_dialog_replacer(dialog_replacer):
    settings = {}

    for line in dialog_replacer.content.split('\n'):
        boolean_match = boolean_pattern.search(line)
        integer_match = integer_pattern.search(line)

        if boolean_match is not None:
            name = boolean_match.group(1)
            settings[name] = Setting(name, 'boolean')

        if integer_match is not None:
            name = integer_match.group(1)
            settings[name] = Setting(name, 'integer')

    return settings


pattern = re.compile(r'!?\s*(?:SetGlobal|Global(?:GT|LT)?|IncrementGlobalOnceEx|IncrementGlobalOnce|IncrementGlobalEx|IncrementGlobal)\("(.*?)",".*?",(-?\d+)\)')


def parse_raw_files(raw_files):
    for raw_file in raw_files:
        for line in raw_file.content.split('\n'):
            if match := pattern.search(line):
                var_name = match.group(1)
                value = int(match.group(2))

                int_for_sure = 'IncrementGlobalOnceEx' in line or \
                               'IncrementGlobalOnce' in line or \
                               'IncrementGlobalEx' in line or \
                               'IncrementGlobal' in line or \
                               line.startswith('GlobalGT') and line.endswith('1)')
                if int_for_sure:
                    value = 5

                yield var_name, value
