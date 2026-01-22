import os
import time
import unittest
from pathlib import Path

from _build.c.dataclasses import (GameFile)
from _build.c.check_boolean_are_not_integers import check_boolean_are_not_integers
from _build.c.format_python_calls import format_python_calls
from _build.c.match_functions import match_functions
from _build.c.match_labels import match_labels
from _build.c.search_syntax import search_syntax



class CTests(unittest.TestCase):
    @classmethod
    def setUpClass(self):
        started_at = time.time()
        cwd = os.getcwd()
        in_docker = cwd == '/app'
        folder_with_game = os.path.normpath(cwd)
        print(f'C found in {folder_with_game}')
        self.rpy_files, self.logic_files, self.raw_files, self.dialog_replacer = find_files(folder_with_game)
        print(f'''
C report:
-  {len(self.rpy_files)} rpys
-  {len(self.logic_files)} logics
-  {len(self.raw_files)} raw
-  {"1" if len(self.dialog_replacer.content) > 0 else "0"} dialog_replacer
-  CTests.setUpClass() took {round(time.time() - started_at)} seconds to warm up
        ''')
        if self.rpy_files == 0:
            raise Exception('Raw files were not found. Something is really broken')
        if self.logic_files == 0:
            raise Exception('Raw files were not found. Something is really broken')
        if self.raw_files == 0:
            raise Exception('Raw files were not found. Something is really broken')


    def test_c(self):
        errors = []
        warnings = []

        def run_test(test_func, *args):
            started_at = time.time()
            test_errors, test_warnings = test_func(*args)
            for test_error in test_errors:
                errors.append(test_error)
            for test_warning in test_warnings:
                warnings.append(test_warning)
            print(f"- {len(test_errors)}/{len(test_warnings)} (errors/warnings): completed {test_func.__name__} in {round(time.time() - started_at, 2)} sec")

        run_test(search_syntax, self.rpy_files)
        run_test(match_labels, self.rpy_files)
        run_test(match_functions, self.rpy_files, self.logic_files)
        run_test(format_python_calls, self.rpy_files)
        run_test(check_boolean_are_not_integers, self.raw_files, self.dialog_replacer)

        print_results(errors, warnings)


def print_results(errors, warnings):
    if len(errors) == 0 and len(warnings) == 0:
        print('  Ok')
        return

    if len(errors) > 0:
        e = '\n - '.join(errors)
        print(f'\nERRORS:\n - {e}')

    if len(warnings) > 0:
        w = '\n - '.join(warnings)
        print(f'\n Warnings:\n - {w}')


def find_files(root_dir):
    root_path = Path(root_dir)

    rpys = root_path.rglob('./game/**/*.rpy')
    rpy_files = []
    for rpy_file in rpys:
        if 'd_renpy' not in rpy_file.parts and \
            'tl' not in rpy_file.parts:
            rpy_files.append(GameFile(
                path=rpy_file,
                name=rpy_file.name,
                content=rpy_file.read_text(encoding='utf-8')
            ))

    logics = root_path.rglob('./game/**/*_logic.py')
    logic_files = []
    for logic_file in logics:
        if 'd_renpy' not in logic_file.parts:
            logic_files.append(GameFile(
                path=logic_file,
                name=logic_file.name,
                content=logic_file.read_text(encoding='utf-8')
            ))

    dialog_replacer_path = list(root_path.rglob('dialogueReplacer.py'))[0]
    dialog_replacer = GameFile(
        path=dialog_replacer_path,
        name=dialog_replacer_path.name,
        content=dialog_replacer_path.read_text(encoding='utf-8')
    )

    raw = root_path.rglob('./sources/russian/d_raw/*.D')
    raw_files = []
    for raw_file in raw:
        raw_files.append(GameFile(
            path=raw_file,
            name=raw_file.name,
            content=raw_file.read_text(encoding='utf-8')
        ))

    return rpy_files, logic_files, raw_files, dialog_replacer
