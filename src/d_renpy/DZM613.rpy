init 10 python:
    from dlgs.zm613_logic import Zm613Logic
    zm613Logic = Zm613Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/ZM613.DLG
# ###


label zm613_init:
    return


label zm613_dispose:
    jump show_graphics_menu


# s0 # say6540
label zm613_s0:  # - # IF ~  True()
    SPEAKER 'На лбу этого мертвого работяги при помощи глубоких порезов нанесены цифры 613, но на коже между 1 и 3 виден большой пробел шириной с палец. Приглядевшись, ты с трудом различаешь вырезанную 2.'

    menu:
        'Итак… что тут у нас интересного?' if zm613Logic.r6543_condition():
            # r0 # reply6543
            $ zm613Logic.r6543_action()
            jump zm613_s1

        'Итак… что тут у нас интересного?' if zm613Logic.r6544_condition():
            # r1 # reply6544
            jump zm613_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if zm613Logic.r6545_condition():
            # r2 # reply6545
            jump zm613_s1

        'Использовать на трупе свою способность История костей.' if zm613Logic.r6546_condition():
            # r3 # reply6546
            jump zm613_s2

        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply6547
            jump zm613_dispose

        'Оставить труп в покое.':
            # r5 # reply6548
            jump zm613_dispose


# s1 # say6541
label zm613_s1:  # from 0.0 0.1 0.2
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Оставить труп в покое.':
            # r6 # reply6549
            jump zm613_dispose


# s2 # say6542
label zm613_s2:  # from 0.3
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить труп в покое.':
            # r7 # reply6550
            jump zm613_dispose
