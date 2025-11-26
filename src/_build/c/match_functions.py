import re
import sys

# Regex patterns for matching function calls and definitions
CALL_PATTERN = re.compile(r'(?:if|\$)(?: not)? ([^\s]*?)Logic\.(.*?)\(')
DEF_PATTERN = re.compile(r'def (.*?)\(self(.*)')


def extract_used_functions(rpy_files):
    used_functions = set()
    for rpy_file in rpy_files:
        matches = CALL_PATTERN.findall(rpy_file.content)
        for base, func_name in matches:
            private_func = func_name.startswith('__')
            if private_func:
                continue

            identifier = f"{base.replace('_', '')}Logic.{func_name}".lower()
            used_functions.add(identifier)
    return used_functions


def extract_declared_functions(logic_files):
    declared_functions = set()
    for logic_file in logic_files:
        base_name = logic_file.name
        if not base_name.endswith('_logic.py'):
            continue
        base = base_name[:-len('_logic.py')]

        matches = DEF_PATTERN.findall(logic_file.content)
        for func_name, tail in matches:
            private_func = func_name.startswith('__')
            known_unused_func = tail.endswith('unused')
            if private_func or known_unused_func:
                continue

            identifier = f"{base.replace('_', '')}Logic.{func_name}".lower()
            declared_functions.add(identifier)
    return declared_functions


def match_functions(rpy_files, logic_files):
    errors = []
    warnings = []
    used_functions = extract_used_functions(rpy_files)
    declared_functions = extract_declared_functions(logic_files)

    declared_but_not_used = declared_functions - used_functions
    used_but_not_declared = used_functions - declared_functions

    if len(used_but_not_declared) != 0:
        for item in sorted(used_but_not_declared, key=_sort_used_declared):
            errors.append(f"Used but not declared: {item}")

    if len(declared_but_not_used) != 0:
        for item in sorted(declared_but_not_used, key=_sort_used_declared):
            warnings.append(f"Declared but not used {item}")

    return errors, warnings


def _sort_used_declared(line):
    if line.endswith('_action'):
        return (1, line)
    elif line.endswith('_condition'):
        return (2, line)
    else:
        return (0, line)
