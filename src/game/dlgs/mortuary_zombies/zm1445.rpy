init 10 python:
    from game.dlgs.mortuary_zombies.zm1445_logic import Zm1445Logic
    zm1445Logic = Zm1445Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZM1445.DLG
# ###


label zm1445_s0_ctor: # - # IF ~  True()
    scene bg DISABLED
    show zm1445_img default at center_left_down
    jump zm1445_s0


label zm1445_dispose:
    hide zm1445_img
    jump graphics_menu


# s0 # say46756
label zm1445_s0: # - # IF ~  True()
    nr 'Тело этого трупа сплошь покрыто пятнами, его уши, кончик носа и некоторые пальцы сгнили напрочь… скорее всего, мужчина стал жертвой какой-то ужасной болезни.'
    nr 'На лбу у него вытатуирован номер «1445», а его губы крепко сшиты.'

    menu:
        '«Итак… что тут у нас интересного?»' if zm1445Logic.r46757_condition():
            # a0 # r46757
            $ zm1445Logic.r46757_action()
            jump zm1445_s1

        '«Итак… что тут у нас интересного?»' if zm1445Logic.r46760_condition():
            # a1 # r46760
            jump zm1445_s1

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».' if zm1445Logic.r46761_condition():
            # a2 # r46761
            jump zm1445_s1

        'Использовать на трупе свою способность «История костей».' if zm1445Logic.r46762_condition():
            # a3 # r46762
            jump zm1445_s2

        '«Было приятно с тобой поболтать. Прощай».':
            # a4 # r46765
            jump zm1445_dispose

        'Оставить труп в покое.':
            # a5 # r46766
            jump zm1445_dispose


# s1 # say46758
label zm1445_s1: # from 0.0 0.1 0.2
    nr 'Труп продолжает пялиться на тебя.'

    menu:
        'Оставить труп в покое.':
            # a6 # r46759
            jump zm1445_dispose


# s2 # say46763
label zm1445_s2: # from 0.3
    nr 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить труп в покое.':
            # a7 # r46764
            jump zm1445_dispose
