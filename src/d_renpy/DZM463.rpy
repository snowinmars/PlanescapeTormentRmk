init 10 python:
    from game.dlgs.zm463_logic import Zm463Logic
    zm463Logic = Zm463Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/ZM463.DLG
# ###


label start_zm463_talk_first:
    call zm463_init
    jump todo
label start_zm463_talk:
    call zm463_init
    jump todo
label start_zm463_kill_first:
    call zm463_init
    jump zm463_kill_first
label start_zm463_kill:
    call zm463_init
    jump zm463_kill
label zm463_init:
    $ zm463Logic.zm463_init()
    scene bg LOCATION
    show zm463_img default at center_left_down
    return
label zm463_dispose:
    hide zm463_img
    jump show_graphics_menu


# s0 # say6484
label zm463_s0:  # - # IF ~  True()
    SPEAKER 'Неуклюжий труп смотрит на тебя пустым взглядом. На его лбу вырезан номер «463», а его губы крепко зашиты. От тела исходит легкий запах формальдегида.'

    menu:
        '«Итак… что тут у нас интересного?»' if zm463Logic.r6485_condition():
            # r0 # reply6485
            $ zm463Logic.r6485_action()
            jump zm463_s1

        '«Итак… что тут у нас интересного?»' if zm463Logic.r6488_condition():
            # r1 # reply6488
            jump zm463_s1

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».' if zm463Logic.r6489_condition():
            # r2 # reply6489
            jump zm463_s1

        'Использовать на трупе свою способность «История костей».' if zm463Logic.r6490_condition():
            # r3 # reply6490
            jump zm463_s2

        '«Было приятно с тобой поболтать. Прощай».':
            # r4 # reply6491
            jump zm463_dispose

        'Оставить труп в покое.':
            # r5 # reply6492
            jump zm463_dispose


# s1 # say6486
label zm463_s1:  # from 0.0 0.1 0.2
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Оставить труп в покое.':
            # r6 # reply6493
            jump zm463_dispose


# s2 # say6487
label zm463_s2:  # from 0.3
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить труп в покое.':
            # r7 # reply6494
            jump zm463_dispose


label zm463_kill:
    nr 'Todo.'

    menu:
        'Уйти.':
            jump zm463_dispose
        'Убить.':
            jump zm463_killed


label zm463_killed:
    $ zm463Logic.kill_zm463()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'zm463s.'
    nr 'Who is zm463?'
    nr 'zm463 is dead, baby, zm463 is dead.'
    jump zm463_dispose


label zm463_kill_first:
    nr 'Todo.'

    menu:
        'Уйти.':
            jump zm463_dispose
        'Убить.':
            jump zm463_killed_first


label zm463_killed_first:
    $ zm463Logic.kill_zm463()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'zm463s.'
    nr 'Who is zm463?'
    nr 'zm463 is dead, baby, zm463 is dead.'
    jump zm463_dispose
