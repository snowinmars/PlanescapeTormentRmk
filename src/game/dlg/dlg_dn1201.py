import renpy
from engine.dialog import (DialogStateBuilder)
from engine.transforms import (
    center_left,
    center_right,
    center_left_down,
    center_right_down
)

###
def _init(gsm):
    return
def _dispose():
    return
###
###
def _r44994_action(gsm):
    gsm.set_ur_1201(True)
    gsm.set_1201_note_quest(1)
def _r44995_action(gsm):
    gsm.set_lr_1201(True)
def _r44996_action(gsm):
    gsm.set_ll_1201(True)
def _r44997_action(gsm):
    gsm.set_ul_1201(True)
def _r44998_action(gsm):
    gsm.set_ur_1201(False)
    gsm.set_lr_1201(False)
    gsm.set_ll_1201(False)
    gsm.set_ul_1201(False)
    gsm.set_1201_note_quest(0)
    _dispose()
def _r45000_condition(gsm):
    return not gsm.get_ur_1201()
def _r45000_action(gsm):
    gsm.set_ur_1201(True)
def _r45001_condition(gsm):
    return not gsm.get_lr_1201() \
           and gsm.get_1201_note_quest() == 1
def _r45001_action(gsm):
    gsm.set_1201_note_quest(2)
    gsm.set_lr_1201(True)
def _r45002_condition(gsm):
    return not gsm.get_lr_1201() \
           and gsm.get_1201_note_quest() != 1
def _r45002_action(gsm):
    gsm.set_lr_1201(True)
    gsm.set_1201_note_quest(0)
def _r45003_condition(gsm):
    return not gsm.get_ll_1201()
def _r45003_action(gsm):
    gsm.set_ll_1201(True)
    gsm.set_1201_note_quest(0)
def _r45004_condition(gsm):
    return not gsm.get_ul_1201() \
           and gsm.get_1201_note_quest() != 2
def _r45004_action(gsm):
    gsm.set_ul_1201(True)
    gsm.set_1201_note_quest(0)
def _r45005_condition(gsm):
    return not gsm.get_ul_1201() \
           and gsm.get_1201_note_quest() == 2
def _r45006_action(gsm):
    gsm.set_ur_1201(False)
    gsm.set_lr_1201(False)
    gsm.set_ll_1201(False)
    gsm.set_ul_1201(False)
    gsm.set_1201_note_quest(0)
def _r45008_action(gsm):
    gsm.set_ur_1201(False)
    gsm.set_lr_1201(False)
    gsm.set_ll_1201(False)
    gsm.set_ul_1201(False)
    gsm.set_1201_note_quest(0)
    _dispose()
def _r45017_action(gsm):
    gsm.set_ur_1201(False)
    gsm.set_lr_1201(False)
    gsm.set_ll_1201(False)
    gsm.set_ul_1201(False)
    gsm.set_1201_note_quest(0)
def _r45018_action(gsm):
    gsm.set_ur_1201(False)
    gsm.set_lr_1201(False)
    gsm.set_ll_1201(False)
    gsm.set_ul_1201(False)
    gsm.set_1201_note_quest(0)
    _dispose()
def _r45025_action(gsm):
    gsm.set_has_1201_note(False)
    gsm.set_tearring(True)
    _dispose()
###

# DLG/DN1201.DLG
def dlg_dn1201(manager):
    teller        = renpy.store.characters['teller']
    gsm           = renpy.store.global_settings_manager
    EXIT          = -1

    # Starts: DN1201.D_s0
    DialogStateBuilder().state('DN1201.D_s0', '# from 1.6 3.0') \
        .with_npc_lines() \
            .line(teller, "На этой вонючей записке под текстом изображена странная диаграмма. Кажется, она указывает, что тебе следует загнуть уголки записки к центру.", 's0', 'say44993').with_action(lambda: _init(gsm)) \
            .line(teller, "На каждом из уголков есть ряд странных отметок: одна отметка в верхнем правом, две — в нижнем правом, три — в нижнем левом и ни одной в верхнем левом.", 's0', 'say44993') \
        .with_responses() \
            .response("Загнуть верхний правый уголок.", 'DN1201.D_s1', 'r0', 'reply44994').with_action(lambda: _r44994_action(gsm)) \
            .response("Загнуть нижний правый уголок.", 'DN1201.D_s1', 'r1', 'reply44995').with_action(lambda: _r44995_action(gsm)) \
            .response("Загнуть нижний левый уголок.", 'DN1201.D_s1', 'r2', 'reply44996').with_action(lambda: _r44996_action(gsm)) \
            .response("Загнуть верхний левый уголок.", 'DN1201.D_s1', 'r3', 'reply44997').with_action(lambda: _r44997_action(gsm)) \
            .response("Оставить записку в покое.", EXIT, 'r4', 'reply44998').with_action(lambda: _r44998_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DN1201.D_s1', '# from 0.0 0.1 0.2 0.3 1.0 1.1 1.2 1.3 1.4') \
        .with_npc_lines() \
            .line(teller, "Ты загибаешь уголок таким образом, чтобы он касался центра.", 's1', 'say44999') \
        .with_responses() \
            .response("Загнуть верхний правый уголок.", 'DN1201.D_s1', 'r5', 'reply45000').with_condition(lambda: _r45000_condition(gsm)).with_action(lambda: _r45000_action(gsm)) \
            .response("Загнуть нижний правый уголок.", 'DN1201.D_s1', 'r6', 'reply45001').with_condition(lambda: _r45001_condition(gsm)).with_action(lambda: _r45001_action(gsm)) \
            .response("Загнуть нижний правый уголок.", 'DN1201.D_s1', 'r7', 'reply45002').with_condition(lambda: _r45002_condition(gsm)).with_action(lambda: _r45002_action(gsm)) \
            .response("Загнуть нижний левый уголок.", 'DN1201.D_s1', 'r8', 'reply45003').with_condition(lambda: _r45003_condition(gsm)).with_action(lambda: _r45003_action(gsm)) \
            .response("Загнуть верхний левый уголок.", 'DN1201.D_s1', 'r9', 'reply45004').with_condition(lambda: _r45004_condition(gsm)).with_action(lambda: _r45004_action(gsm)) \
            .response("Загнуть верхний левый уголок.", 'DN1201.D_s2', 'r10', 'reply45005').with_condition(lambda: _r45005_condition(gsm)) \
            .response("Разложить записку, начать заново.", 'DN1201.D_s0', 'r11', 'reply45006').with_action(lambda: _r45006_action(gsm)) \
            .response("Разложить записку, оставить ее в покое.", EXIT, 'r12', 'reply45008').with_action(lambda: _r45008_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DN1201.D_s2', '# from 1.5') \
        .with_npc_lines() \
            .line(teller, "Как только ты загибаешь верхний левый уголок, ты видишь, что верхний правый уголок разгибается сам по себе, возвращаясь в прежнее положение.", 's2', 'say45015') \
        .with_responses() \
            .response("Снова загнуть правый верхний уголок.", 'DN1201.D_s4', 'r13', 'reply45016') \
            .response("Загнуть нижний правый уголок.", 'DN1201.D_s3', 'r14', 'reply45017').with_action(lambda: _r45017_action(gsm)) \
            .response("Разложить записку, оставить ее в покое.", EXIT, 'r15', 'reply45018').with_action(lambda: _r45018_action(gsm)) \
        .push(manager)

    DialogStateBuilder().state('DN1201.D_s3', '# from 2.1') \
        .with_npc_lines() \
            .line(teller, "Как только ты загибаешь нижний левый уголок, на мгновение он остается в таком положении, но затем другие уголки разгибаются. Ничего не происходит.", 's3', 'say45019') \
        .with_responses() \
            .response("Снова осмотреть записку.", 'DN1201.D_s0', 'r16', 'reply45020') \
            .response("Отложить записку.", EXIT, 'r17', 'reply45021').with_action(lambda: _dispose()) \
        .push(manager)

    DialogStateBuilder().state('DN1201.D_s4', '# from 2.0') \
        .with_npc_lines() \
            .line(teller, "Как только ты снова загибаешь верхний правый уголок, нижний левый уголок повторяет то же действие.", 's4', 'say45022') \
            .line(teller, "Теперь все уголки касаются центра. Какое-то время ты наблюдаешь за тем, как уголки бумаги поднимаются, превращая записку в небольшую четырехугольную бумажную пирамидку.", 's4', 'say45022') \
        .with_responses() \
            .response("Разогнуть пирамидку.", 'DN1201.D_s5', 'r18', 'reply45023') \
        .push(manager)

    DialogStateBuilder().state('DN1201.D_s5', '# from 4.0') \
        .with_npc_lines() \
            .line(teller, "Ты отгибаешь стороны пирамидки, и бумага превращается в пыль. Внутри находится треугольная серьга. Она блестит и играет на свету.", 's5', 'say45024') \
        .with_responses() \
            .response("Взять треугольную серьгу…", EXIT, 'r19', 'reply45025').with_action(lambda: _r45025_action(gsm)) \
        .push(manager)
