init 10 python:
    from dlgs.dzm463_logic import Dzm463Logic
    dzm463Logic = Dzm463Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZM463.DLG
# ###


label dzm463_init:
    return


label dzm463_dispose:
    jump show_graphics_menu


# s0 # say6484
label dzm463_s0:  # - # IF ~  True()
    SPEAKER 'Неуклюжий труп смотрит на тебя пустым взглядом. На его лбу вырезан номер 463, а его губы крепко зашиты. От тела исходит легкий запах формальдегида.'

    menu:
        'Итак… что тут у нас интересного?' if dzm463Logic.r6485_condition():
            # r0 # reply6485
            $ dzm463Logic.r6485_action()
            jump dzm463_s1

        'Итак… что тут у нас интересного?' if dzm463Logic.r6488_condition():
            # r1 # reply6488
            jump dzm463_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzm463Logic.r6489_condition():
            # r2 # reply6489
            jump dzm463_s1

        'Использовать на трупе свою способность История костей.' if dzm463Logic.r6490_condition():
            # r3 # reply6490
            jump dzm463_s2

        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply6491
            jump dzm463_dispose

        'Оставить труп в покое.':
            # r5 # reply6492
            jump dzm463_dispose


# s1 # say6486
label dzm463_s1:  # from 0.0 0.1 0.2
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Оставить труп в покое.':
            # r6 # reply6493
            jump dzm463_dispose


# s2 # say6487
label dzm463_s2:  # from 0.3
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить труп в покое.':
            # r7 # reply6494
            jump dzm463_dispose
