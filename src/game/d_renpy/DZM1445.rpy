init 10 python:
    from dlgs.dzm1445_logic import Dzm1445Logic
    dzm1445Logic = Dzm1445Logic(renpy.store.global_settings_manager)


# ###
# Original: DLG/DZM1445.DLG
# ###


label dzm1445_init:
    return


label dzm1445_dispose:
    jump show_graphics_menu


# s0 # say46756
label dzm1445_s0:  # - # IF ~  True()
    SPEAKER 'Тело этого трупа сплошь покрыто пятнами, его уши, кончик носа и некоторые пальцы сгнили напрочь… скорее всего, мужчина стал жертвой какой-то ужасной болезни. На лбу у него вытатуирован номер 1445, а его губы крепко сшиты.'

    menu:
        'Итак… что тут у нас интересного?' if dzm1445Logic.r46757_condition():
            # r0 # reply46757
            $ dzm1445Logic.r46757_action()
            jump dzm1445_s1

        'Итак… что тут у нас интересного?' if dzm1445Logic.r46760_condition():
            # r1 # reply46760
            jump dzm1445_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzm1445Logic.r46761_condition():
            # r2 # reply46761
            jump dzm1445_s1

        'Использовать на трупе свою способность История костей.' if dzm1445Logic.r46762_condition():
            # r3 # reply46762
            jump dzm1445_s2

        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply46765
            jump show_graphics_menu

        'Оставить труп в покое.':
            # r5 # reply46766
            jump show_graphics_menu


# s1 # say46758
label dzm1445_s1:  # from 0.0 0.1 0.2
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Оставить труп в покое.':
            # r6 # reply46759
            jump show_graphics_menu


# s2 # say46763
label dzm1445_s2:  # from 0.3
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить труп в покое.':
            # r7 # reply46764
            jump show_graphics_menu
