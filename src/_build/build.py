import os
from pathlib import Path

from _build.entities import entities_ids
from _build.file.read_file import read_file
from _build.file.write_file import write_file
from _build.clean_raw import clean_raw
from _build.parse_clean import parse_clean
from _build.renpy.dialogueProcessor import (DialogueProcessor)
from _build.renpy.dialogueReplacer import (DialogueReplacer)
from _build.renpy.dialogueTransformer import (DialogueTransformer)
from _build.renpy.generate_settings import generate_settings
from _build.c.match_functions import match_functions
from _build.c.match_labels import match_labels
from _build.c.format_python_calls import format_python_calls


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
    processor = DialogueProcessor(transformer)

    transformer.set_replacements(replacer.build_replacements())

    print(f'Processing {len(entities_ids)} files ', end='')

    for entityId in entities_ids:
        print('.', end='', flush=True)
        area = entityId.lower()

        raw = read_file(os.path.join(folder_with_infinity_engine_dialogues, f'{entityId}.D'))
        clean = clean_raw(raw)
        write_file(os.path.join(folder_with_cleaned_infinity_engine_dialogues, f'{entityId}.Dclean'), clean)
        states = parse_clean(clean)

        rpy, logic, tests = processor.serialize_states_plain(
            states=states,
            area=area,
            state_prefix="_s"
        )
        write_file(os.path.join(folder_with_renpy_dialogues, f'{entityId}.rpy'), rpy)
        write_file(os.path.join(folder_with_renpy_dialogues, f'{entityId}_logic.py'), logic)
        write_file(os.path.join(folder_with_renpy_dialogues, f'{entityId}_tests.py'), tests)

    python_settings = generate_settings(replacer.known_settings)
    write_file(os.path.join(folder_with_python_settings, 'generated.py'), python_settings)

    print(' done')
