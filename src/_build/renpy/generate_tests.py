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


def _generate_tests_for_function(func_name, body, target_npc):
    context = {'f': func_name, 'l': target_npc.capitalize()}

    if not _is_one_liner_function(body):
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
    return multiline_test_case_template.format(**context)
