import re
import os
from pathlib import Path

cwd = os.getcwd()

IGNORED_FILES = [
    'introduction.rpy',
    'dhall_feather.rpy',
    'ddeathon.rpy'
]


# TODO [snow]: this is a copy
file_name_map = {
    # ./sources/lang/d_renpy : ./game/tl/lang/dlgs
    'soego.rpy'       : 'dsoego.rpy',
    'n1201.rpy'       : 'dn1201.rpy',
    'giantsk.rpy'     : 'dgiantsk.rpy',
    'copearc.rpy'     : 'copearc.rpy',
    'annah.rpy'       : 'dannah.rpy',
    'dakkon.rpy'      : 'ddakkon.rpy',
    'ddeathon.rpy'    : 'ddeathon.rpy',
    'deionarra.rpy'   : 'ddeions.rpy',
    'dhall.rpy'       : 'ddhall.rpy',
    'dust.rpy'        : 'ddust.rpy',
    'dustfem.rpy'     : 'ddustfem.rpy',
    'eivene.rpy'      : 'deivene.rpy',
    'grace.rpy'       : 'dgrace.rpy',
    'ignus.rpy'       : 'dignus.rpy',
    'morte.rpy'       : 'dmorte.rpy',
    'morte1.rpy'      : 'dmorte1.rpy',
    'morte2.rpy'      : 'dmorte2.rpy',
    'nordom.rpy'      : 'dnordom.rpy',
    's1221.rpy'       : 'ds1221.rpy',
    's42.rpy'         : 'ds42.rpy',
    's748.rpy'        : 'ds748.rpy',
    's863.rpy'        : 'ds863.rpy',
    's996.rpy'        : 'ds996.rpy',
    'vaxis.rpy'       : 'dvaxis.rpy',
    'vhail.rpy'       : 'dvhail.rpy',
    'xach.rpy'        : 'dxach.rpy',
    'zf1072.rpy'      : 'dzf1072.rpy',
    'zf1096.rpy'      : 'dzf1096.rpy',
    'zf114.rpy'       : 'dzf114.rpy',
    'zf1148.rpy'      : 'dzf1148.rpy',
    'zf444.rpy'       : 'dzf444.rpy',
    'zf594.rpy'       : 'dzf594.rpy',
    'zf626.rpy'       : 'dzf626.rpy',
    'zf679.rpy'       : 'dzf679.rpy',
    'zf832.rpy'       : 'dzf832.rpy',
    'zf891.rpy'       : 'dzf891.rpy',
    'zf916.rpy'       : 'dzf916.rpy',
    'zm1041.rpy'      : 'dzm1041.rpy',
    'zm1094.rpy'      : 'dzm1094.rpy',
    'zm1146.rpy'      : 'dzm1146.rpy',
    'zm1201.rpy'      : 'dzm1201.rpy',
    'zm1445.rpy'      : 'dzm1445.rpy',
    'zm1508.rpy'      : 'dzm1508.rpy',
    'zm1664.rpy'      : 'dzm1664.rpy',
    'zm199.rpy'       : 'dzm199.rpy',
    'zm257.rpy'       : 'dzm257.rpy',
    'zm310.rpy'       : 'dzm310.rpy',
    'zm396.rpy'       : 'dzm396.rpy',
    'zm463.rpy'       : 'dzm463.rpy',
    'zm475.rpy'       : 'dzm475.rpy',
    'zm506.rpy'       : 'dzm506.rpy',
    'zm569.rpy'       : 'dzm569.rpy',
    'zm613.rpy'       : 'dzm613.rpy',
    'zm732.rpy'       : 'dzm732.rpy',
    'zm782.rpy'       : 'dzm782.rpy',
    'zm79.rpy'        : 'dzm79.rpy',
    'zm825.rpy'       : 'dzm825.rpy',
    'zm965.rpy'       : 'dzm965.rpy',
    'zm985.rpy'       : 'dzm985.rpy',
}


def update_translations(lang):
    folder_with_renpy_dialogues = os.path.normpath(os.path.join(cwd, f'sources/{lang}/d_renpy'))
    folder_with_translations = os.path.normpath(os.path.join(cwd, f'game/tl/{lang}/dlgs'))

    english_content = {}
    eng_files = {}
    for eng_file in Path(folder_with_renpy_dialogues).glob("**/*.rpy"):
        if eng_file.name in IGNORED_FILES:
            continue
        with open(eng_file, 'r', encoding='utf-8') as f:
            english_content[eng_file.name] = _parse_english_file(f.read())
            eng_files[eng_file.name] = eng_file

    for trans_file in Path(folder_with_translations).glob("**/*.rpy"):
        if trans_file.name in IGNORED_FILES:
            continue

        _process_translation_file(trans_file, english_content)


def _parse_english_file(english_content):
    labels_content = {}

    lines = english_content.split('\n')
    lines_len = len(lines)
    i = 0

    while i < lines_len:
        line = lines[i].strip()

        label_match = re.match(r'label\s+([a-zA-Z0-9_]+):', line)
        if label_match:
            label_name = label_match.group(1)
            label_content = []

            i += 1
            while i < lines_len:
                current_line = lines[i]
                current_stripped = current_line.strip()

                if (current_stripped.startswith('label ') or
                    current_stripped.startswith('menu:') or
                    current_stripped.startswith('jump ')): # or (current_stripped and not current_stripped.startswith('#') and not current_stripped.startswith('"') and ' "' not in current_line)
                    break

                if label_content or current_stripped:
                    label_content.append(current_line)

                i += 1

            if len(label_content) > 0:
                labels_content[label_name] = '\n'.join(label_content)
            continue

        i += 1

    return labels_content


def _process_translation_file(trans_file, english_content):
    with open(trans_file, 'r', encoding='utf-8') as f:
        content = f.read()

    new_content = []
    lines = content.split('\n')
    i = 0

    while i < len(lines):
        line = lines[i]

        trans_label_match = re.search(r'translate\s+english\s+([a-zA-Z0-9_]+)_[a-f0-9]+:', line)
        if trans_label_match:
            base_label = trans_label_match.group(1)  # deionarra_s75 из deionarra_s75_e514245c

            new_content.append(line)
            i += 1

            eng_content = _find_english_content(base_label, english_content)

            if eng_content:
                eng_dialogue = _parse_english_dialogue(eng_content)
                eng_index = 0

                while i < len(lines) and not lines[i].startswith('translate english'):
                    current_line = lines[i]

                    # Если это строка с пустым переводом (new ""), заменяем её
                    if _is_empty_dialogue_line(current_line) and eng_index < len(eng_dialogue):
                        char_name = _extract_character_name(current_line)
                        eng_text = eng_dialogue[eng_index]

                        if char_name:
                            # Для строк диалога: deionarra "" → deionarra "English text"
                            new_content.append(f'    {char_name} "{eng_text}"')
                        else:
                            # Для других случаев оставляем как есть
                            new_content.append(current_line)

                        eng_index += 1
                    else:
                        # Все остальные строки добавляем без изменений
                        new_content.append(current_line)

                    i += 1

                # Если остались неперенесенные английские реплики, добавляем их в конец блока
                while eng_index < len(eng_dialogue):
                    eng_text = eng_dialogue[eng_index]
                    # Добавляем как generic строку (можно настроить под конкретный формат)
                    new_content.append(f'    # AUTO_INSERTED: "{eng_text}"')
                    eng_index += 1

                continue
            else:
                print(f"Предупреждение: не найден контент для метки {base_label}")
                # Пропускаем весь блок до следующего translate
                while i < len(lines) and not lines[i].startswith('translate english'):
                    new_content.append(lines[i])
                    i += 1
                continue

        new_content.append(line)
        i += 1

    with open(trans_file, 'w', encoding='utf-8') as f:
        f.write('\n'.join(new_content))


def _find_english_content(base_label, english_content):
    for filename, labels_dict in english_content.items():
        if base_label in labels_dict:
            return labels_dict[base_label]

    # Пробуем найти похожие метки (на случай небольших расхождений)
    for filename, labels_dict in english_content.items():
        for label_name, content in labels_dict.items():
            if label_name.startswith(base_label + '_') or base_label.startswith(label_name + '_'):
                return content

    return None


def _parse_english_dialogue(eng_content):
    dialogue_lines = []
    lines = eng_content.split('\n')

    for line in lines:
        line = line.strip()
        if not line or line.startswith('#'):
            continue

        # Ищем строки диалога: character "text"
        dialogue_match = re.search(r'^([a-zA-Z_]+)\s+[\'"]([^\'"]*?)[\'"]', line)
        if dialogue_match:
            dialogue_text = dialogue_match.group(2)
            if dialogue_text.strip():
                dialogue_lines.append(dialogue_text)

    return dialogue_lines


def _is_empty_dialogue_line(line):
    line = line.strip()
    # Проверяем шаблоны: character "" или new ""
    return (re.match(r'^[a-zA-Z_]+\s+""', line) or
            re.match(r'^new\s+""', line) or
            re.match(r'^old\s+""', line))


def _extract_character_name(line):
    line = line.strip()

    # Для строк вида: deionarra ""
    char_match = re.match(r'^([a-zA-Z_]+)\s+""', line)
    if char_match:
        return char_match.group(1)

    # Для строк вида: "text"
    generic_match = re.match(r'^""', line)
    if generic_match:
        return None

    return None
