init python:
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
    def _r45000_action(gsm):
        gsm.set_ur_1201(True)
    def _r45001_action(gsm):
        gsm.set_1201_note_quest(2)
        gsm.set_lr_1201(True)
    def _r45002_action(gsm):
        gsm.set_lr_1201(True)
        gsm.set_1201_note_quest(0)
    def _r45003_action(gsm):
        gsm.set_ll_1201(True)
        gsm.set_1201_note_quest(0)
    def _r45004_action(gsm):
        gsm.set_ul_1201(True)
        gsm.set_1201_note_quest(0)
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
    def _r45023_action(gsm):
        gsm.inc_exp_custom('party', 250)
    def _r45025_action(gsm):
        gsm.set_has_tearring(True)
        gsm.set_has_1201_note(False)

init python:
    def _r45000_condition(gsm):
        return not gsm.get_ur_1201()
    def _r45001_condition(gsm):
        return not gsm.get_lr_1201() \
               and gsm.get_1201_note_quest() == 1
    def _r45002_condition(gsm):
        return not gsm.get_lr_1201() \
               and gsm.get_1201_note_quest() != 1
    def _r45003_condition(gsm):
        return not gsm.get_ll_1201()
    def _r45004_condition(gsm):
        return not gsm.get_ul_1201() \
               and gsm.get_1201_note_quest() != 2
    def _r45005_condition(gsm):
        return not gsm.get_ul_1201() \
               and gsm.get_1201_note_quest() == 2


init 10 python:
    gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DN1201.DLG
# ###

label start_n1201_note_talk:
    jump dn1201_s0
label dn1201_init:
    return
label dn1201_dispose:
    jump show_graphics_menu


# s0 # say44993
label dn1201_s0:  # from 1.6 3.0
    call dn1201_init
    teller 'На этой вонючей записке под текстом изображена странная диаграмма. Кажется, она указывает, что тебе следует загнуть уголки записки к центру. На каждом из уголков есть ряд странных отметок: одна отметка в верхнем правом, две — в нижнем правом, три — в нижнем левом и ни одной в верхнем левом.'

    menu:
        'Загнуть верхний правый уголок.':
            # r0 # reply44994
            $ _r44994_action(gsm)
            jump dn1201_s1
        'Загнуть нижний правый уголок.':
            # r1 # reply44995
            $ _r44995_action(gsm)
            jump dn1201_s1
        'Загнуть нижний левый уголок.':
            # r2 # reply44996
            $ _r44996_action(gsm)
            jump dn1201_s1
        'Загнуть верхний левый уголок.':
            # r3 # reply44997
            $ _r44997_action(gsm)
            jump dn1201_s1
        'Оставить записку в покое.':
            # r4 # reply44998
            $ _r44998_action(gsm)
            jump dn1201_dispose


# s1 # say44999
label dn1201_s1:  # from 0.0 0.1 0.2 0.3 1.0 1.1 1.2 1.3 1.4
    teller 'Ты загибаешь уголок таким образом, чтобы он касался центра.'

    menu:
        'Загнуть верхний правый уголок.' if _r45000_condition(gsm):
            # r5 # reply45000
            $ _r45000_action(gsm)
            jump dn1201_s1
        'Загнуть нижний правый уголок.' if _r45001_condition(gsm):
            # r6 # reply45001
            $ _r45001_action(gsm)
            jump dn1201_s1
        'Загнуть нижний правый уголок.' if _r45002_condition(gsm):
            # r7 # reply45002
            $ _r45002_action(gsm)
            jump dn1201_s1
        'Загнуть нижний левый уголок.' if _r45003_condition(gsm):
            # r8 # reply45003
            $ _r45003_action(gsm)
            jump dn1201_s1
        'Загнуть верхний левый уголок.' if _r45004_condition(gsm):
            # r9 # reply45004
            $ _r45004_action(gsm)
            jump dn1201_s1
        'Загнуть верхний левый уголок.' if _r45005_condition(gsm):
            # r10 # reply45005
            jump dn1201_s2
        'Разложить записку, начать заново.':
            # r11 # reply45006
            $ _r45006_action(gsm)
            jump dn1201_s0
        'Разложить записку, оставить ее в покое.':
            # r12 # reply45008
            $ _r45008_action(gsm)
            jump dn1201_dispose


# s2 # say45015
label dn1201_s2:  # from 1.5
    teller 'Как только ты загибаешь верхний левый уголок, ты видишь, что верхний правый уголок разгибается сам по себе, возвращаясь в прежнее положение.'

    menu:
        'Снова загнуть правый верхний уголок.':
            # r13 # reply45016
            jump dn1201_s4
        'Загнуть нижний правый уголок.':
            # r14 # reply45017
            $ _r45017_action(gsm)
            jump dn1201_s3
        'Разложить записку, оставить ее в покое.':
            # r15 # reply45018
            $ _r45018_action(gsm)
            jump dn1201_dispose


# s3 # say45019
label dn1201_s3:  # from 2.1
    teller 'Как только ты загибаешь нижний левый уголок, на мгновение он остается в таком положении, но затем другие уголки разгибаются. Ничего не происходит.'

    menu:
        'Снова осмотреть записку.':
            # r16 # reply45020
            jump dn1201_s0
        'Отложить записку.':
            # r17 # reply45021
            jump dn1201_dispose


# s4 # say45022
label dn1201_s4:  # from 2.0
    teller 'Как только ты снова загибаешь верхний правый уголок, нижний левый уголок повторяет то же действие. Теперь все уголки касаются центра. Какое-то время ты наблюдаешь за тем, как уголки бумаги поднимаются, превращая записку в небольшую четырехугольную бумажную пирамидку.'

    menu:
        'Разогнуть пирамидку.':
            # r18 # reply45023
            $ _r45023_action(gsm)
            jump dn1201_s5


# s5 # say45024
label dn1201_s5:  # from 4.0
    teller 'Ты отгибаешь стороны пирамидки, и бумага превращается в пыль. Внутри находится треугольная серьга. Она блестит и играет на свету.'

    menu:
        'Взять треугольную серьгу…':
            # r19 # reply45025
            $ _r45025_action(gsm)
            jump dn1201_dispose
