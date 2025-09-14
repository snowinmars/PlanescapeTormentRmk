init 10 python:
    from game.dlgs.mortuary_zombies.zm463_logic import Zm463Logic
    zm463Logic = Zm463Logic(renpy.store.global_state_manager)


# ###
# Original:  DLG/DZM463.DLG
# ###


# s0 # say6484
label zm463_s0: # - # IF ~  True()
    nr 'Неуклюжий труп смотрит на тебя пустым взглядом. На его лбу вырезан номер «463», а его губы крепко зашиты. От тела исходит легкий запах формальдегида.'

    menu:
        '«Итак… что тут у нас интересного?»' if zm463Logic.r6485_condition():
            # a0 # r6485
            $ zm463Logic.r6485_action()
            jump zm463_s1

        '«Итак… что тут у нас интересного?»' if zm463Logic.r6488_condition():
            # a1 # r6488
            jump zm463_s1

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».' if zm463Logic.r6489_condition():
            # a2 # r6489
            jump zm463_s1

        'Использовать на трупе свою способность «История костей».' if zm463Logic.r6490_condition():
            # a3 # r6490
            jump zm463_s2

        '«Было приятно с тобой поболтать. Прощай».':
            # a4 # r6491
            jump zm463_dispose

        'Оставить труп в покое.':
            # a5 # r6492
            jump zm463_dispose


# s1 # say6486
label zm463_s1: # from 0.0 0.1 0.2
    nr 'Труп продолжает пялиться на тебя.'

    menu:
        'Оставить труп в покое.':
            # a6 # r6493
            jump zm463_dispose


# s2 # say6487
label zm463_s2: # from 0.3
    nr 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить труп в покое.':
            # a7 # r6494
            jump zm463_dispose
