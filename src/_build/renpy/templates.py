rpy_header_template = """
init 10 python:
    from game.dlgs.{npc}_logic import {Npc}Logic
    {npc}Logic = {Npc}Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/{NPC}.DLG
# ###


label start_{npc}_talk_first:
    call {npc}_init
    jump todo
label start_{npc}_talk:
    call {npc}_init
    jump todo
label start_{npc}_kill_first:
    call {npc}_init
    jump {npc}_kill_first
label start_{npc}_kill:
    call {npc}_init
    jump {npc}_kill
label {npc}_init:
    $ {npc}Logic.{npc}_init()
    scene bg LOCATION
    show {npc}_img default at center_left_down
    return
label {npc}_dispose:
    hide {npc}_img
    jump graphics_menu
"""

rpy_footer_template = """
label {npc}_kill:
    nr 'Todo.'

    menu:
        'Уйти.':
            jump {npc}_dispose
        'Убить.':
            jump {npc}_killed


label {npc}_killed:
    $ {npc}Logic.kill_{npc}()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr '{npc}s.'
    nr 'Who is {npc}?'
    nr '{npc} is dead, baby, {npc} is dead.'
    jump {npc}_dispose


label {npc}_kill_first:
    nr 'Todo.'

    menu:
        'Уйти.':
            jump {npc}_dispose
        'Убить.':
            jump {npc}_killed_first


label {npc}_killed_first:
    $ {npc}Logic.kill_{npc}()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr '{npc}s.'
    nr 'Who is {npc}?'
    nr '{npc} is dead, baby, {npc} is dead.'
    jump {npc}_dispose
"""


logic_header_template = """
class {Npc}Logic:
    def __init__(self, settings_manager):
        self.settings_manager = settings_manager


    def {npc}_init(self):
        self.settings_manager.location_manager.set_location('LOCATION')
        self.settings_manager.inc_talked_to_{npc}_times()


    def kill_{npc}(self):
        self.settings_manager.set_dead_{npc}(True)\n\n
"""


test_header_template = """
import unittest


from game.engine.tests import (LogicTest)
from game.dlgs.{npc}_logic import {Npc}Logic


class {Npc}LogicTest(LogicTest):
    def setUp(self):
        super({Npc}LogicTest, self).setUp()
        self.logic = {Npc}Logic(self.settings_manager)


    def test_ctor(self):
        self.assertIsNotNone(self.logic.settings_manager)


    def test_methods_are_bound(self):
        self.target_class = {Npc}Logic
        self._methods_are_bound()\n
"""


test_footer_template = """
if __name__ == '__main__':
    unittest.main() # pragma: no cover
"""


multiline_test_case_template = """
    def test_{f}(self):
        # TODO [snowinmars]: write the test
        self.logic.{f}()
"""
