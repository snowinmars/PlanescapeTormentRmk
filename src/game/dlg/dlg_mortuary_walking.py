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

    DialogStateBuilder().state('mortuary_walking_1_8_closed', '# from -') \
        .with_npc_lines() \
            .line(teller, "Дверь не поддаётся.", '-', '-') \
        .push(manager)

    DialogStateBuilder().state('mortuary_walking_1_up_closed', '# from -') \
        .with_npc_lines() \
            .line(teller, "Дверь не поддаётся.", '-', '-') \
        .push(manager)

    DialogStateBuilder().state('mortuary_walking_1_down_closed', '# from -') \
        .with_npc_lines() \
            .line(teller, "Дверь не поддаётся.", '-', '-') \
        .push(manager)

    DialogStateBuilder().state('mortuary_walking_1_visit', '# from -').with_action(lambda: _visit_mortuary(gsm, '1')).push(manager)
    DialogStateBuilder().state('mortuary_walking_2_visit', '# from -').with_action(lambda: _visit_mortuary(gsm, '2')).push(manager)
    DialogStateBuilder().state('mortuary_walking_3_visit', '# from -').with_action(lambda: _visit_mortuary(gsm, '3')).push(manager)
    DialogStateBuilder().state('mortuary_walking_4_visit', '# from -').with_action(lambda: _visit_mortuary(gsm, '4')).push(manager)
    DialogStateBuilder().state('mortuary_walking_5_visit', '# from -').with_action(lambda: _visit_mortuary(gsm, '5')).push(manager)
    DialogStateBuilder().state('mortuary_walking_6_visit', '# from -').with_action(lambda: _visit_mortuary(gsm, '6')).push(manager)
    DialogStateBuilder().state('mortuary_walking_7_visit', '# from -').with_action(lambda: _visit_mortuary(gsm, '7')).push(manager)
    DialogStateBuilder().state('dmorte_one_mortuary_go_8_up', '# from -').with_action(lambda: _visit_mortuary(gsm, '11')).push(manager)
