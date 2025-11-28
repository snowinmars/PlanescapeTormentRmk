import re

NUMBER_QUOTE_PATTERN = re.compile(r'[^\d][\d]+»\.$')
TRANSLATION_POSTFIX_PATTERN = re.compile(r'\{#.*?\}$')
known_npc = [
    'the_nameless_one',
    'morte_unknown',
    'morte',
    'annah_unknown',
    'annah',
    'ignus_unknown',
    'ignus',
    'grace_unknown',
    'grace',
    'dakkon_unknown',
    'dakkon',
    'nordom_unknown',
    'nordom',
    'vhail_unknown',
    'vhail',
    'scars',
    'death_names',
    'dhall',
    'dhall_unknown',
    'bei',
    'asonje',
    'eivene_unknown',
    'eivene',
    'vaxis_unknown',
    'vaxis',
    'xach_unknown',
    'xach',
    'deionarra_unknown',
    'deionarra',
    'dust',
    'dustfem',
    's42',
    's748',
    's863',
    's996',
    's1221',
    'zm79',
    'zm199',
    'zm257',
    'zm310',
    'zm396',
    'zm463',
    'zm475',
    'zm506',
    'zm569',
    'zm613',
    'zm732',
    'zm782',
    'zm825',
    'zm965',
    'zm985',
    'zm1041',
    'zm1094',
    'zm1146',
    'zm1201',
    'zm1445',
    'zm1508',
    'zm1664',
    'zf114',
    'zf444',
    'zf594',
    'zf626',
    'zf679',
    'zf832',
    'zf891',
    'zf916',
    'zf1072',
    'zf1096',
    'zf1148',
    'snowinmars',
]

def search_syntax(rpy_files):
    errors = []
    warnings = []

    for rpy_file in rpy_files:
        is_tl_file = '/tl/' in str(rpy_file.path)
        if is_tl_file:
            continue # TODO [snow]: create custom rules per language

        if 'SPEAKER' in rpy_file.content:
            errors.append(f'Rpy file has "SPEAKER" in {rpy_file.path}')

        if '?.».' in rpy_file.content:
            warnings.append(f'Change "?.»." to "?..»" in {rpy_file.path}')

        if '!.».' in rpy_file.content:
            warnings.append(f'Change "!.»." to "!..»" in {rpy_file.path}')

        if '...' in rpy_file.content:
            warnings.append(f'Change "..." to "…" in {rpy_file.path}')

        dialogue_warnings = check_dialogue_rules(rpy_file.content)
        if dialogue_warnings:
            for dialogue_warning in dialogue_warnings:
                warnings.append(dialogue_warning)

    return errors, warnings


def check_dialogue_rules_for_narrator(line):
    words = line.split()
    rest = ' '.join(words[1:])
    clear_line = rest[1:-1] if len(rest) >= 2 else rest
    clear_line = TRANSLATION_POSTFIX_PATTERN.sub('', clear_line)

    startsWith0171 = clear_line.startswith('«')
    endsWth0187 = clear_line.endswith('»')
    endsWthNumber0187 = NUMBER_QUOTE_PATTERN.search(clear_line)
    endsWth0187Dot = clear_line.endswith('».')
    endsWithDot = clear_line.endswith('.')
    endsWithDots = clear_line.endswith('…')
    endsWithEx = clear_line.endswith('!')
    endsWithExDots = clear_line.endswith('!..')
    endsWithQue = clear_line.endswith('?')
    endsWithQueDots = clear_line.endswith('?..')

    wrong = [
        startsWith0171,
        endsWth0187,
        endsWth0187Dot and not endsWthNumber0187,
    ]

    right = [
        endsWithDot,
        endsWithDots,
        endsWithEx,
        endsWithExDots,
        endsWithQue,
        endsWithQueDots,
    ]

    return not any(wrong) and any(right)


def check_dialogue_rules_for_npc(line):
    words = line.split()
    npc = words[0]
    if npc not in known_npc:
        return True
    rest = ' '.join(words[1:])
    clear_line = rest[1:-1] if len(rest) >= 2 else rest
    clear_line = TRANSLATION_POSTFIX_PATTERN.sub('', clear_line)

    startsWith0171 = clear_line.startswith('«')
    endsWth0187 = clear_line.endswith('»')
    endsWth0187Dot = clear_line.endswith('».')
    endsWithEx0187 = clear_line.endswith('!»')
    endsWithQuo0187 = clear_line.endswith('?»')
    endsWithExDots0187 = clear_line.endswith('!..»')
    endsWithQuoDots0187 = clear_line.endswith('?..»')
    endsWithDots = clear_line.endswith('…')
    endsWithEx = clear_line.endswith('!')
    endsWithExDots = clear_line.endswith('!..')
    endsWithQue = clear_line.endswith('?')
    endsWithQueDots = clear_line.endswith('?..')
    endsWthDot0187 = clear_line.endswith('.»')

    wrong = [
        not startsWith0171,
        not (endsWth0187 or endsWth0187Dot or endsWithEx0187 or
             endsWithQuo0187 or endsWithExDots0187 or endsWithQuoDots0187),
        endsWithDots,
        endsWithEx,
        endsWithExDots,
        endsWithQue,
        endsWithQueDots,
        (not endsWithExDots0187 and not endsWithQuoDots0187) and endsWthDot0187
    ]

    right = [
        startsWith0171,
        endsWth0187,
        endsWth0187Dot,
        endsWithEx0187,
        endsWithQuo0187,
        endsWithExDots0187,
        endsWithQuoDots0187,
    ]

    return not any(wrong) and any(right)


def check_dialogue_rules(text):
    warnings = []
    for line in text.split('\n'):
        clear_line = line.strip()
        if not clear_line:
            continue

        may_be_interesting = line.endswith('\'')
        if not may_be_interesting:
            continue

        if "snowinmars '" in clear_line:
            continue

        if "nr '" in clear_line:
            if not check_dialogue_rules_for_narrator(clear_line):
                warnings.append(clear_line)
        else:
            if not check_dialogue_rules_for_npc(clear_line):
                warnings.append(clear_line)

    return warnings
