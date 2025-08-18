import os
import re
from pathlib import Path

from _build.entities import entities_ids
from _build.file.read_file import read_file
from _build.file.write_file import write_file
from _build.clean_raw import clean_raw
from _build.ie2renpy.ie2abstract import (ie2abstract)
from _build.ie2renpy.abstract2renpy import (abstract2renpy)
from _build.renpy.dialogueReplacer import (DialogueReplacer)
from _build.renpy.dialogueTransformer import (DialogueTransformer)
from _build.renpy.generate_settings import generate_settings
from _build.restore_dialogue_tree import (restore_dialogue_tree)

cwd = os.getcwd()

folder_with_infinity_engine_dialogues = os.path.normpath(os.path.join(cwd, 'd_raw'))
folder_with_cleaned_infinity_engine_dialogues = os.path.normpath(os.path.join(cwd, 'd_clean'))
folder_with_renpy_dialogues = os.path.normpath(os.path.join(cwd, 'd_renpy'))
folder_with_game = os.path.normpath(os.path.join(cwd, 'game'))
folder_with_python_settings = os.path.join(folder_with_game, 'engine_data', 'settings')


def build():
    print('Warming up')
    replacer = DialogueReplacer()
    transformer = DialogueTransformer()

    transformer.set_replacements(replacer.build_replacements())

    print(f'Processing {len(entities_ids)} files ', end='')
    warnings = []

    for entityId in entities_ids:
        print('.', end='', flush=True)
        area = entityId.lower()

        raw = read_file(os.path.join(folder_with_infinity_engine_dialogues, f'{entityId}.D'))
        clean = clean_raw(raw)
        write_file(os.path.join(folder_with_cleaned_infinity_engine_dialogues, f'{entityId}.Dclean'), clean)
        states = ie2abstract(clean)

        rpy, logic, tests = abstract2renpy(
            states=states,
            area=area,
            state_prefix="_s",
            dialogue_transformer=transformer,
            warnings=warnings
        )
        write_file(os.path.join(folder_with_renpy_dialogues, f'{entityId}.rpy'), rpy)
        write_file(os.path.join(folder_with_renpy_dialogues, f'{entityId}_logic.py'), logic)
        write_file(os.path.join(folder_with_renpy_dialogues, f'{entityId}_tests.py'), tests)

    print('|', end='', flush=True)

    python_settings = generate_settings(replacer.known_settings)
    write_file(os.path.join(folder_with_python_settings, 'generated.py'), python_settings)

    print('|', end='', flush=True)

    rpy_files = restore_dialogue_tree(folder_with_renpy_dialogues)

    for rpy_file in rpy_files:
        print('.', end='', flush=True)
        write_file(rpy_file.path, rpy_file.content)

    if len(warnings) > 0:
        print()
        print()
        print('===')
        for warning in warnings:
            print(warning)
