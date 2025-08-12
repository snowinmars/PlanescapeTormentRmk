init 10 python:
    from game.dlgs.zm475_logic import Zm475Logic
    zm475Logic = Zm475Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/ZM475.DLG
# ###


label start_zm475_talk_first:
    call zm475_init
    jump todo
label start_zm475_talk:
    call zm475_init
    jump todo
label start_zm475_kill_first:
    call zm475_init
    jump zm475_kill_first
label start_zm475_kill:
    call zm475_init
    jump zm475_kill
label zm475_init:
    $ zm475Logic.zm475_init()
    scene bg LOCATION
    show zm475_img default at center_left_down
    return
label zm475_dispose:
    hide zm475_img
    jump graphics_menu


# s0 # say6584
label zm475_s0:  # - # IF ~  True()
    SPEAKER 'Немного помятая голова этого мертвеца стянута многочисленными тонкими металлическими лентами, скрепленными прямо на черепе. На проржавевшей табличке над его левым глазом выбит номер «475». Его рот намертво закрыт; от него несет бальзамирующей жидкостью.'

    menu:
        '«Итак… что тут у нас интересного?»' if zm475Logic.r6587_condition():
            # r0 # reply6587
            $ zm475Logic.r6587_action()
            jump zm475_s1

        '«Итак… что тут у нас интересного?»' if zm475Logic.r6588_condition():
            # r1 # reply6588
            jump zm475_s1

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».' if zm475Logic.r6589_condition():
            # r2 # reply6589
            jump zm475_s1

        'Использовать на трупе свою способность «История костей».' if zm475Logic.r6590_condition():
            # r3 # reply6590
            jump zm475_s2

        '«Было приятно с тобой поболтать. Прощай».':
            # r4 # reply6591
            jump zm475_dispose

        'Оставить труп в покое.':
            # r5 # reply6592
            jump zm475_dispose


# s1 # say6585
label zm475_s1:  # from 0.0 0.1 0.2
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Оставить труп в покое.':
            # r6 # reply6593
            jump zm475_dispose


# s2 # say6586
label zm475_s2:  # from 0.3
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить труп в покое.':
            # r7 # reply6594
            jump zm475_dispose


label zm475_kill:
    nr 'Todo.'

    menu:
        'Уйти.':
            jump zm475_dispose
        'Убить.':
            jump zm475_killed


label zm475_killed:
    $ zm475Logic.kill_zm475()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'zm475s.'
    nr 'Who is zm475?'
    nr 'zm475 is dead, baby, zm475 is dead.'
    jump zm475_dispose


label zm475_kill_first:
    nr 'Todo.'

    menu:
        'Уйти.':
            jump zm475_dispose
        'Убить.':
            jump zm475_killed_first


label zm475_killed_first:
    $ zm475Logic.kill_zm475()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'zm475s.'
    nr 'Who is zm475?'
    nr 'zm475 is dead, baby, zm475 is dead.'
    jump zm475_dispose
