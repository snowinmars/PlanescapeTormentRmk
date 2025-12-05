import re
import os
from typing import Dict, List, Tuple, Optional
from dataclasses import dataclass
from pathlib import Path

cwd = os.getcwd()

IGNORED_FILES = [
    'introduction.rpy',
    'dhall_feather.rpy',
    'ddeathon.rpy'
]



FILE_MAPPING = {
    "COPEARC": "inventory/copearc",
    "DDEIONS": "deionarra",
    "DDHALL": "mortuary/dhall",
    "DDUST": "mortuary/dust",
    "DDUSTFEM": "mortuary/dustfem",
    "DEIVENE": "mortuary/eivene",
    "DGIANTSK": "mortuary/giantsk",
    "DMORTE": "mortuary/morte",
    "DMORTE1": "mortuary/morte1",
    "DMORTE2": "mortuary/morte2",
    "DN1201": "inventory/n1201",
    "DS42": "mortuary_zombies/s42",
    "DS748": "mortuary_zombies/s748",
    "DS863": "mortuary_zombies/s863",
    "DS996": "mortuary_zombies/s996",
    "DS1221": "mortuary_zombies/s1221",
    "DSOEGO": "soego",
    "DVAXIS": "mortuary/vaxis",
    "DXACH": "mortuary/xach",
    "DZF114": "mortuary_zombies/zf114",
    "DZF444": "mortuary_zombies/zf444",
    "DZF594": "mortuary_zombies/zf594",
    "DZF626": "mortuary_zombies/zf626",
    "DZF679": "mortuary_zombies/zf679",
    "DZF832": "mortuary_zombies/zf832",
    "DZF891": "mortuary_zombies/zf891",
    "DZF916": "mortuary_zombies/zf916",
    "DZF1072": "mortuary_zombies/zf1072",
    "DZF1096": "mortuary_zombies/zf1096",
    "DZF1148": "mortuary_zombies/zf1148",
    "DZM79": "mortuary_zombies/zm79",
    "DZM199": "mortuary_zombies/zm199",
    "DZM257": "mortuary_zombies/zm257",
    "DZM310": "mortuary_zombies/zm310",
    "DZM396": "mortuary_zombies/zm396",
    "DZM463": "mortuary_zombies/zm463",
    "DZM475": "mortuary_zombies/zm475",
    "DZM506": "mortuary_zombies/zm506",
    "DZM569": "mortuary_zombies/zm569",
    "DZM613": "mortuary_zombies/zm613",
    "DZM732": "mortuary_zombies/zm732",
    "DZM782": "mortuary_zombies/zm782",
    "DZM825": "mortuary_zombies/zm825",
    "DZM965": "mortuary_zombies/zm965",
    "DZM985": "mortuary_zombies/zm985",
    "DZM1041": "mortuary_zombies/zm1041",
    "DZM1094": "mortuary_zombies/zm1094",
    "DZM1146": "mortuary_zombies/zm1146",
    "DZM1201": "mortuary_zombies/zm1201",
    "DZM1445": "mortuary_zombies/zm1445",
    "DZM1508": "mortuary_zombies/zm1508",
    "DZM1664": "mortuary_zombies/zm1664"
}


@dataclass
class TranslatableLine:
    id: str
    text: str
    line_type: str  # 'narrative' или 'menu'
    line_number: int
    label: Optional[str] = None


def update_translations(lang: str):
    cwd = os.getcwd()
    folder_with_renpy_dialogues = os.path.normpath(os.path.join(cwd, f'sources/{lang}/d_renpy'))
    folder_with_translations = os.path.normpath(os.path.join(cwd, f'game/tl/{lang}/dlgs'))

    automator = TranslationAutomator()

    eng_files = set(Path(folder_with_renpy_dialogues).glob("**/*.rpy"))
    print(f"Найдено {len(eng_files)} исходных файлов")

    trans_files = set(Path(folder_with_translations).glob("**/*.rpy"))
    print(f"Найдено {len(trans_files)} файлов переводов")

    base_trans_path = Path(folder_with_translations)
    file_pairs = FileMatcher.find_matching_files(eng_files, trans_files, base_trans_path)
    print(f"Сопоставлено {len(file_pairs)} пар файлов")

    for eng_file, trans_file in file_pairs:
        automator.automate_translation(str(eng_file), str(trans_file))

    print("Обновление переводов завершено!")


class RpyParser:
    def __init__(self):
        self.NARRATIVE_PATTERN = re.compile(r'^\s*(?:\w+\s+)?[\'\"](.*?)\{\#(.*?)\}[\'\"]')
        self.MENU_PATTERN = re.compile(r'^\s*[\'\"](.*?)\{\#(.*?)\}[\'\"]')
        self.LABEL_PATTERN = re.compile(r'^label\s+(\w+):')


    def parse_file(self, file_path):
        translatable_lines = {}
        current_label = None

        with open(file_path, 'r', encoding='utf-8') as file:
            lines = file.readlines()

            for line_num, line in enumerate(lines, 1):
                line = line.rstrip()

                label_match = self.LABEL_PATTERN.match(line)
                if label_match:
                    current_label = label_match.group(1)
                    continue

                narrative_match = self.NARRATIVE_PATTERN.match(line)
                if narrative_match:
                    text, line_id = narrative_match.groups()
                    translatable_lines[line_id] = TranslatableLine(
                        id=line_id,
                        text=text.strip(),
                        line_type='narrative',
                        line_number=line_num,
                        label=current_label
                    )

                if 'menu:' in line or any(item in line for item in ["'", '"']):
                    menu_match = self.MENU_PATTERN.search(line)
                    if menu_match and '{#' in line:
                        text, line_id = menu_match.groups()
                        # if ' if ' not in line:
                        translatable_lines[line_id] = TranslatableLine(
                            id=line_id,
                            text=text.strip(),
                            line_type='menu',
                            line_number=line_num,
                            label=current_label
                        )

        return translatable_lines

class TranslationFileProcessor:
    def __init__(self):
        self.TRANSLATE_BLOCK_PATTERN = re.compile(r'^translate\s+\w+\s+(\w+):')
        self.STRINGS_SECTION_PATTERN = re.compile(r'^translate\s+\w+\s+strings:')
        self.NARRATIVE_LINE_PATTERN = re.compile(r'^\s*(?:\w+\s+)?[\'\"](.*?)[\'\"]')
        self.OLD_NEW_PATTERN = re.compile(r'^\s*(old|new)\s+[\'\"](.*?)[\'\"]')


    def read_translation_file(self, file_path):
        if not os.path.exists(file_path):
            return {}, []

        with open(file_path, 'r', encoding='utf-8') as file:
            lines = file.readlines()

        translations = {}
        current_id = None
        in_strings_section = False

        for i, line in enumerate(lines):
            line = line.strip()
            if line.startswith('#'):
                continue

            if self.STRINGS_SECTION_PATTERN.match(line):
                in_strings_section = True
                continue
            elif line.startswith('translate') and not line.endswith('strings:'):
                in_strings_section = False

            if '{#' in line: # '# game/' in line and
                id_match = re.search(r'\{\#(.*?)\}', line)
                if id_match:
                    current_id = id_match.group(1)
            elif not in_strings_section and current_id and line.strip().startswith(('nr', '# nr')):
                narrative_match = self.NARRATIVE_LINE_PATTERN.match(line.lstrip('#').strip())
                if narrative_match and line.strip().endswith('""'):
                    translations[current_id] = line
                    current_id = None
            elif in_strings_section and current_id:
                if 'new ""' in line:
                    translations[current_id] = line
                    current_id = None

        return translations, lines


    def update_translation_file(self, file_path, translations, original_lines):
        with open(file_path, 'r', encoding='utf-8') as file:
            lines = file.readlines()

        updated_lines = []
        current_id = None
        in_strings_section = False
        skip_next_empty = False

        for i, line in enumerate(lines):
            original_line = line.rstrip()
            updated_line = original_line

            if self.STRINGS_SECTION_PATTERN.match(original_line):
                in_strings_section = True
            elif original_line.startswith('translate') and not original_line.endswith('strings:'):
                in_strings_section = False

            id_match = re.search(r'\{\#(.*?)\}', original_line)
            if id_match:
                current_id = id_match.group(1)
                skip_next_empty = False

            if not in_strings_section and current_id and original_line.strip().endswith('""'):
                if current_id in original_lines and not skip_next_empty:
                    english_text = original_lines[current_id].text
                    english_text = english_text.replace('"', '\\"')
                    updated_line = f'    nr "{english_text}{{#{current_id}}}"'
                    skip_next_empty = True
                current_id = None

            elif in_strings_section and current_id and 'new ""' in original_line:
                if current_id in original_lines:
                    english_text = original_lines[current_id].text
                    english_text = english_text.replace('"', '\\"')
                    updated_line = f'    new "{english_text}{{#{current_id}}}"'
                current_id = None

            updated_lines.append(updated_line + '\n')

        with open(file_path, 'w', encoding='utf-8') as file:
            file.writelines(updated_lines)


class TranslationAutomator:
    def __init__(self):
        self.parser = RpyParser()
        self.processor = TranslationFileProcessor()

    def automate_translation(self, english_rpy_path, target_tl_path):
        original_lines = self.parser.parse_file(english_rpy_path)
        existing_translations, tl_lines = self.processor.read_translation_file(target_tl_path)
        self.processor.update_translation_file(target_tl_path, existing_translations, original_lines)


class FileMatcher:
    @staticmethod
    def find_matching_files(eng_files, trans_files, base_trans_path):
        matches = []

        trans_dict = {}
        for trans_file in trans_files:
            try:
                rel_path = str(trans_file.relative_to(base_trans_path).with_suffix('')).replace('\\', '/')
                trans_dict[rel_path] = trans_file
            except ValueError:
                rel_path = str(trans_file.with_suffix('')).replace('\\', '/')
                trans_dict[rel_path] = trans_file

        for eng_file in eng_files:
            eng_name = eng_file.stem

            if eng_name in FILE_MAPPING:
                target_rel_path = FILE_MAPPING[eng_name]

                if target_rel_path in trans_dict:
                    matches.append((eng_file, trans_dict[target_rel_path]))
                else:
                    print(f"Предупреждение: Не найден файл перевода для {eng_name} -> {target_rel_path}")
            else:
                print(f"Предупреждение: Нет сопоставления для файла {eng_name}")

        return matches
