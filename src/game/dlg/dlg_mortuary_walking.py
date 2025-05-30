import renpy
from engine.dialog import (DialogStateBuilder)

###
def _visit_mortuary(gsm, i):
    gsm.set_location(f'mortuary{i}')
    renpy.exports.show(f'bg mortuary{i}')
###
###
###

def dlg_mortuary_walking(manager):
    teller        = renpy.store.characters['teller']
    gsm           = renpy.store.global_settings_manager
    EXIT          = -1

    DialogStateBuilder().state('mortuary_walking_s1', '# from -') \
        .with_npc_lines() \
            .line(teller, "Дверь не поддаётся.", '-', '-') \
        .push(manager)

    DialogStateBuilder().state('mortuary_walking_s2', '# from -') \
        .with_npc_lines() \
            .line(teller, "Дверь не поддаётся.", '-', '-') \
        .push(manager)

    DialogStateBuilder().state('mortuary_walking_s3', '# from -') \
        .with_npc_lines() \
            .line(teller, "Дверь не поддаётся.", '-', '-') \
        .push(manager)

    DialogStateBuilder().state('mortuary_walking_s4', '# from -').with_action(lambda: _visit_mortuary(gsm, '1')).push(manager)
    DialogStateBuilder().state('mortuary_walking_s5', '# from -').with_action(lambda: _visit_mortuary(gsm, '2')).push(manager)
    DialogStateBuilder().state('mortuary_walking_s6', '# from -').with_action(lambda: _visit_mortuary(gsm, '3')).push(manager)
