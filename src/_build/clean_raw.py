skips = ['//', 'BEGIN ~', '^NПРИМЕЧАНИЕ']
knowns = ['IF ~', 'SAY #', 'END', '~ THEN BEGIN']

def clean_raw(input_text):
    lines = [line.strip() if line.strip() != '' else line for line in input_text.splitlines()]
    result = []
    i = 0
    n = len(lines)

    while i < n:
        line = lines[i]

        line = line.replace('~ JOURNAL', 'JOURNAL')

        # Preserve empty line if next line is a known pattern
        if line == '':
            if i + 1 < n and lines[i + 1] != '' and any(lines[i + 1].startswith(k) for k in knowns):
                result.append(line)
                i += 1
                continue

        # Skip lines matching skip patterns
        if any(line.startswith(s) for s in skips):
            i += 1
            continue

        # Block starting with 'IF WEIGHT' until '~ THEN BEGIN' is a start condition block
        if line.startswith('IF WEIGHT'):
            builder = ''
            while i < n and not lines[i].startswith('~ THEN BEGIN'):
                builder += f' {lines[i]}'
                i += 1
            if i < n:
                result.append(builder.strip())
                continue
            else:
                break

        # Append '~ GOTO' to previous line
        if line.startswith('~ GOTO'):
            if result:
                result[-1] = f'{result[-1]} {line}'
            else:
                result.append(line)
            i += 1
            continue

        # Handle known patterns and merge other lines
        if any(line.startswith(k) for k in knowns):
            result.append(line)
        else:
            if result:
                result[-1] = f'{result[-1]} {line}'
            else:
                result.append(line)

        i += 1

    # Fix SAY lines with unclosed comments
    fixed_result = []
    for line in result:
        if line.startswith('SAY #') and '/*' in line and '*/' not in line:
            line = f'{line}*/'
        fixed_result.append(line)

    return '\n'.join(fixed_result).strip() + '\n'
