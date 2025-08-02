init 10 python:
    from dlgs.dzm613_logic import Dzm613Logic
    dzm613Logic = Dzm613Logic(renpy.store.global_settings_manager)


# ###
# Original: DLG/DZM613.DLG
# ###


label dzm613_init:
    return


label dzm613_dispose:
    jump show_graphics_menu


# s0 # say6540
label dzm613_s0:  # - # IF ~  True()
    SPEAKER 'На лбу этого мертвого работяги при помощи глубоких порезов нанесены цифры 613, но на коже между 1 и 3 виден большой пробел шириной с палец. Приглядевшись, ты с трудом различаешь вырезанную 2.'

    menu:
        'Итак… что тут у нас интересного?' if dzm613Logic.r6543_condition():
            # r0 # reply6543
            $ dzm613Logic.r6543_action()
            jump dzm613_s1

        'Итак… что тут у нас интересного?' if dzm613Logic.r6544_condition():
            # r1 # reply6544
            jump dzm613_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzm613Logic.r6545_condition():
            # r2 # reply6545
            jump dzm613_s1

        'Использовать на трупе свою способность История костей.' if dzm613Logic.r6546_condition():
            # r3 # reply6546
            jump dzm613_s2

        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply6547
            jump show_graphics_menu

        'Оставить труп в покое.':
            # r5 # reply6548
            jump show_graphics_menu


# s1 # say6541
label dzm613_s1:  # from 0.0 0.1 0.2
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Оставить труп в покое.':
            # r6 # reply6549
            jump show_graphics_menu


# s2 # say6542
label dzm613_s2:  # from 0.3
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить труп в покое.':
            # r7 # reply6550
            jump show_graphics_menu
