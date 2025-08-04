init 10 python:
    from game.dlgs.n1201_logic import N1201Logic
    n1201Logic = N1201Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/N1201.DLG
# ###


label start_n1201_talk_first:
    call n1201_init
    jump todo
label start_n1201_talk:
    call n1201_init
    jump todo
label start_n1201_kill_first:
    call n1201_init
    jump n1201_kill_first
label start_n1201_kill:
    call n1201_init
    jump n1201_kill
label n1201_init:
    $ n1201Logic.n1201_init()
    scene bg LOCATION
    show n1201_img default at center_left_down
    return
label n1201_dispose:
    hide n1201_img
    jump show_graphics_menu


# s0 # say44993
label n1201_s0:  # from 1.6 3.0 # IF ~  True()
    SPEAKER 'На этой вонючей записке под текстом изображена странная диаграмма. Кажется, она указывает, что тебе следует загнуть уголки записки к центру. На каждом из уголков есть ряд странных отметок: одна отметка в верхнем правом, две — в нижнем правом, три — в нижнем левом и ни одной в верхнем левом.'

    menu:
        'Загнуть верхний правый уголок.':
            # r0 # reply44994
            $ n1201Logic.r44994_action()
            jump n1201_s1

        'Загнуть нижний правый уголок.':
            # r1 # reply44995
            $ n1201Logic.r44995_action()
            jump n1201_s1

        'Загнуть нижний левый уголок.':
            # r2 # reply44996
            $ n1201Logic.r44996_action()
            jump n1201_s1

        'Загнуть верхний левый уголок.':
            # r3 # reply44997
            $ n1201Logic.r44997_action()
            jump n1201_s1

        'Оставить записку в покое.':
            # r4 # reply44998
            $ n1201Logic.r44998_action()
            jump n1201_dispose


# s1 # say44999
label n1201_s1:  # from 0.0 0.1 0.2 0.3 1.0 1.1 1.2 1.3 1.4
    SPEAKER 'Ты загибаешь уголок таким образом, чтобы он касался центра.'

    menu:
        'Загнуть верхний правый уголок.' if n1201Logic.r45000_condition():
            # r5 # reply45000
            $ n1201Logic.r45000_action()
            jump n1201_s1

        'Загнуть нижний правый уголок.' if n1201Logic.r45001_condition():
            # r6 # reply45001
            $ n1201Logic.r45001_action()
            jump n1201_s1

        'Загнуть нижний правый уголок.' if n1201Logic.r45002_condition():
            # r7 # reply45002
            $ n1201Logic.r45002_action()
            jump n1201_s1

        'Загнуть нижний левый уголок.' if n1201Logic.r45003_condition():
            # r8 # reply45003
            $ n1201Logic.r45003_action()
            jump n1201_s1

        'Загнуть верхний левый уголок.' if n1201Logic.r45004_condition():
            # r9 # reply45004
            $ n1201Logic.r45004_action()
            jump n1201_s1

        'Загнуть верхний левый уголок.' if n1201Logic.r45005_condition():
            # r10 # reply45005
            jump n1201_s2

        'Разложить записку, начать заново.':
            # r11 # reply45006
            $ n1201Logic.r45006_action()
            jump n1201_s0

        'Разложить записку, оставить ее в покое.':
            # r12 # reply45008
            $ n1201Logic.r45008_action()
            jump n1201_dispose


# s2 # say45015
label n1201_s2:  # from 1.5
    SPEAKER 'Как только ты загибаешь верхний левый уголок, ты видишь, что верхний правый уголок разгибается сам по себе, возвращаясь в прежнее положение.'

    menu:
        'Снова загнуть правый верхний уголок.':
            # r13 # reply45016
            jump n1201_s4

        'Загнуть нижний правый уголок.':
            # r14 # reply45017
            $ n1201Logic.r45017_action()
            jump n1201_s3

        'Разложить записку, оставить ее в покое.':
            # r15 # reply45018
            $ n1201Logic.r45018_action()
            jump n1201_dispose


# s3 # say45019
label n1201_s3:  # from 2.1
    SPEAKER 'Как только ты загибаешь нижний левый уголок, на мгновение он остается в таком положении, но затем другие уголки разгибаются. Ничего не происходит.'

    menu:
        'Снова осмотреть записку.':
            # r16 # reply45020
            jump n1201_s0

        'Отложить записку.':
            # r17 # reply45021
            jump n1201_dispose


# s4 # say45022
label n1201_s4:  # from 2.0
    SPEAKER 'Как только ты снова загибаешь верхний правый уголок, нижний левый уголок повторяет то же действие. Теперь все уголки касаются центра. Какое-то время ты наблюдаешь за тем, как уголки бумаги поднимаются, превращая записку в небольшую четырехугольную бумажную пирамидку.'

    menu:
        'Разогнуть пирамидку.':
            # r18 # reply45023
            $ n1201Logic.r45023_action()
            jump n1201_s5


# s5 # say45024
label n1201_s5:  # from 4.0
    SPEAKER 'Ты отгибаешь стороны пирамидки, и бумага превращается в пыль. Внутри находится треугольная серьга. Она блестит и играет на свету.'

    menu:
        'Взять треугольную серьгу…':
            # r19 # reply45025
            $ n1201Logic.r45025_action()
            jump n1201_dispose


label n1201_kill:
    nr 'todo'

    menu:
        'Уйти.':
            jump n1201_dispose
        'Убить.':
            jump n1201_killed


label n1201_killed:
    $ n1201Logic.kill_n1201()
    nr 'Whose motorcycle is this?'
    nr 'It's a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'n1201's.'
    nr 'Who is n1201?'
    nr 'n1201 is dead, baby, n1201 is dead.'
    jump n1201_dispose


label n1201_kill_first:
    nr 'todo'

    menu:
        'Уйти.':
            jump n1201_dispose
        'Убить.':
            jump n1201_killed_first


label n1201_killed_first:
    $ n1201Logic.kill_n1201()
    nr 'Whose motorcycle is this?'
    nr 'It's a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'n1201's.'
    nr 'Who is n1201?'
    nr 'n1201 is dead, baby, n1201 is dead.'
    jump n1201_dispose
