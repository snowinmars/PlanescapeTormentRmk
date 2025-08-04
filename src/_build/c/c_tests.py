import os
import unittest
from pathlib import Path

from _build.c.dataclasses import (GameFile)
from _build.c.check_boolean_are_not_integers import check_boolean_are_not_integers
from _build.c.format_python_calls import format_python_calls
from _build.c.match_functions import match_functions
from _build.c.match_labels import match_labels
from _build.c.search_speaker import search_speaker


class CTests(unittest.TestCase):
    @classmethod
    def setUpClass(self):
        cwd = os.getcwd()
        in_docker = cwd == '/app'
        relative_path = '.' if in_docker else '../game'
        folder_with_game = os.path.normpath(os.path.join(cwd, relative_path))
        self.rpy_files, self.logic_files, self.raw_files, self.dialog_processor = find_files(folder_with_game)
        print(f'C found in {folder_with_game}\n -  {len(self.rpy_files)} rpys\n -  {len(self.logic_files)} logics\n -  {len(self.raw_files)} raw\n -  1 dialog_processor')


    def test_search_speaker(self):
        errors, warnings = search_speaker(self.rpy_files)
        print_results(errors, warnings)


    def test_match_labels(self):
        errors, warnings = match_labels(self.rpy_files)
        print_results(errors, warnings)


    def test_match_functions(self):
        errors, warnings = match_functions(self.rpy_files, self.logic_files)
        print_results(errors, warnings)


    def test_format_python_calls(self):
        errors, warnings = format_python_calls(self.rpy_files)
        print_results(errors, warnings)


    def test_check_boolean_are_not_integers(self):
        errors, warnings = check_boolean_are_not_integers(self.raw_files, self.dialog_processor)
        print_results(errors, warnings)


def print_results(errors, warnings):
    if len(errors) > 0:
        string_errors = '\n - '.join(errors)
        print(f'\nERRORS:\n - {string_errors}')
    if len(warnings) > 0:
        string_warnings = '\n - '.join(warnings)
        print(f'\nWarnings:\n - {string_warnings}')


def find_files(root_dir):
    root_path = Path(root_dir)

    rpys = root_path.rglob('*.rpy')
    rpy_files = []
    for rpy_file in rpys:
        if 'd_renpy' not in rpy_file.parts:
            rpy_files.append(GameFile(
                path=rpy_file,
                name=rpy_file.name,
                content=rpy_file.read_text(encoding='utf-8')
            ))

    logics = root_path.rglob('*_logic.py')
    logic_files = []
    for logic_file in logics:
        if 'd_renpy' not in logic_file.parts:
            logic_files.append(GameFile(
                path=logic_file,
                name=logic_file.name,
                content=logic_file.read_text(encoding='utf-8')
            ))

    dialog_processor_path = list(root_path.rglob('dialogueProcessor.py'))[0]
    dialog_processor = GameFile(
        path=dialog_processor_path,
        name=dialog_processor_path.name,
        content=dialog_processor_path.read_text(encoding='utf-8')
    )

    raw = root_path.rglob('*.D')
    raw_files = []
    for raw_file in raw:
        raw_files.append(GameFile(
            path=raw_file,
            name=raw_file.name,
            content=raw_file.read_text(encoding='utf-8')
        ))

    return rpy_files, logic_files, raw_files, dialog_processor
