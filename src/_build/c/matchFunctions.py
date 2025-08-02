import re
import sys
from pathlib import Path

# Regex patterns for matching function calls and definitions
CALL_PATTERN = re.compile(r'(?:if|\$)(?: not)? (.*?)Logic\.(.*?)\(')
DEF_PATTERN = re.compile(r'def (.*?)\(self')


def extract_used_functions(file_list):
    used_functions = set()
    for file_path in file_list:
        try:
            content = file_path.read_text(encoding='utf-8')
        except Exception as e:
            print(f"Error reading {file_path}: {e}", file=sys.stderr)
            continue
        matches = CALL_PATTERN.findall(content)
        for base, func_name in matches:
            if not func_name.startswith('__'):
                identifier = f"{base.replace('_', '')}Logic.{func_name}".lower()
                used_functions.add(identifier)
    return used_functions


def extract_declared_functions(logic_file_list):
    declared_functions = set()
    for file_path in logic_file_list:
        base_name = file_path.name
        if base_name.endswith('_logic.py'):
            base = base_name[:-len('_logic.py')]
        else:
            continue

        try:
            content = file_path.read_text(encoding='utf-8')
        except Exception as e:
            print(f"Error reading {file_path}: {e}", file=sys.stderr)
            continue

        matches = DEF_PATTERN.findall(content)
        for func_name in matches:
            if not func_name.startswith('__'):
                identifier = f"{base.replace('_', '')}Logic.{func_name}".lower()
                declared_functions.add(identifier)
    return declared_functions


def matchFunctions(rpy_files, logic_files):
    used_functions = extract_used_functions(rpy_files)
    declared_functions = extract_declared_functions(logic_files)

    declared_but_not_used = declared_functions - used_functions
    used_but_not_declared = used_functions - declared_functions

    if len(declared_but_not_used) == 0:
        print("Good: all declared function are used")
    else:
        print(f"Sad...\n Declared but not used ({len(declared_but_not_used)} items):")
        for item in sorted(declared_but_not_used):
            print(f"  {item}")

    if len(used_but_not_declared) == 0:
        print("Good: all used function are declared")
    else:
        print(f"BAD!\n Used but not declared ({len(used_but_not_declared)} items):")
        for item in sorted(used_but_not_declared):
            print(f"  {item}")


if __name__ == '__main__':
    root_dir = sys.argv[1] if len(sys.argv) > 1 else '.'
    main(root_dir)