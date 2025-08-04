init 10 python:
    from game.dlgs.zm1445_logic import Zm1445Logic
    zm1445Logic = Zm1445Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/ZM1445.DLG
# ###


label start_zm1445_talk_first:
    call zm1445_init
    jump todo
label start_zm1445_talk:
    call zm1445_init
    jump todo
label start_zm1445_kill_first:
    call zm1445_init
    jump zm1445_kill_first
label start_zm1445_kill:
    call zm1445_init
    jump zm1445_kill
label zm1445_init:
    $ zm1445Logic.zm1445_init()
    scene bg LOCATION
    show zm1445_img default at center_left_down
    return
label zm1445_dispose:
    hide zm1445_img
    jump show_graphics_menu


# s0 # say46756
label zm1445_s0:  # - # IF ~  True()
    SPEAKER 'Тело этого трупа сплошь покрыто пятнами, его уши, кончик носа и некоторые пальцы сгнили напрочь… скорее всего, мужчина стал жертвой какой-то ужасной болезни. На лбу у него вытатуирован номер «1445», а его губы крепко сшиты.'

    menu:
        '«Итак… что тут у нас интересного?»' if zm1445Logic.r46757_condition():
            # r0 # reply46757
            $ zm1445Logic.r46757_action()
            jump zm1445_s1

        '«Итак… что тут у нас интересного?»' if zm1445Logic.r46760_condition():
            # r1 # reply46760
            jump zm1445_s1

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».' if zm1445Logic.r46761_condition():
            # r2 # reply46761
            jump zm1445_s1

        'Использовать на трупе свою способность «История костей».' if zm1445Logic.r46762_condition():
            # r3 # reply46762
            jump zm1445_s2

        '«Было приятно с тобой поболтать. Прощай».':
            # r4 # reply46765
            jump zm1445_dispose

        'Оставить труп в покое.':
            # r5 # reply46766
            jump zm1445_dispose


# s1 # say46758
label zm1445_s1:  # from 0.0 0.1 0.2
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Оставить труп в покое.':
            # r6 # reply46759
            jump zm1445_dispose


# s2 # say46763
label zm1445_s2:  # from 0.3
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить труп в покое.':
            # r7 # reply46764
            jump zm1445_dispose


label zm1445_kill:
    nr 'todo'

    menu:
        'Уйти.':
            jump zm1445_dispose
        'Убить.':
            jump zm1445_killed


label zm1445_killed:
    $ zm1445Logic.kill_zm1445()
    nr 'Whose motorcycle is this?'
    nr 'It's a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'zm1445's.'
    nr 'Who is zm1445?'
    nr 'zm1445 is dead, baby, zm1445 is dead.'
    jump zm1445_dispose


label zm1445_kill_first:
    nr 'todo'

    menu:
        'Уйти.':
            jump zm1445_dispose
        'Убить.':
            jump zm1445_killed_first


label zm1445_killed_first:
    $ zm1445Logic.kill_zm1445()
    nr 'Whose motorcycle is this?'
    nr 'It's a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'zm1445's.'
    nr 'Who is zm1445?'
    nr 'zm1445 is dead, baby, zm1445 is dead.'
    jump zm1445_dispose
