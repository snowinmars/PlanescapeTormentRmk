init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm613_logic import Zm613Logic
    zm613Logic = Zm613Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM613.DLG
# ###


# s0 # say6540
label zm613_s0: # - # IF ~  True()
    nr 'На лбу этого мертвого работяги при помощи глубоких порезов нанесены цифры'
    zm613 '«613»'
    nr ', но на коже между'
    zm613 '«1»'
    nr 'И'
    zm613 '«3»'
    nr 'Виден большой пробел шириной с палец. Приглядевшись, ты с трудом различаешь вырезанную'
    zm613 '«2».'

    menu:
        '«Итак… что тут у нас интересного?»' if zm613Logic.r6543_condition():
            # a0 # r6543
            $ zm613Logic.r6543_action()
            jump zm613_s1

        '«Итак… что тут у нас интересного?»' if zm613Logic.r6544_condition():
            # a1 # r6544
            jump zm613_s1

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».' if zm613Logic.r6545_condition():
            # a2 # r6545
            jump zm613_s1

        'Использовать на трупе свою способность «История костей».' if zm613Logic.r6546_condition():
            # a3 # r6546
            jump zm613_s2

        '«Было приятно с тобой поболтать. Прощай».':
            # a4 # r6547
            jump zm613_dispose

        'Оставить труп в покое.':
            # a5 # r6548
            jump zm613_dispose


# s1 # say6541
label zm613_s1: # from 0.0 0.1 0.2
    nr 'Труп продолжает пялиться на тебя.'

    menu:
        'Оставить труп в покое.':
            # a6 # r6549
            jump zm613_dispose


# s2 # say6542
label zm613_s2: # from 0.3
    nr 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить труп в покое.':
            # a7 # r6550
            jump zm613_dispose
