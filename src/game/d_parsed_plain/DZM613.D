init python:
    def _r6543_action(gsm):
        gsm.dec_law()
        gsm.set_zombie_chaotic(True)


init python:
    def _r6543_condition(gsm):
        return not gsm.get_zombie_chaotic()
    def _r6544_condition(gsm):
        return gsm.get_zombie_chaotic()
    def _r6545_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r6546_condition(gsm):
        return gsm.get_can_speak_with_dead()


init 10 python:
    gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DZM613.DLG
# ###


label dzm613_init:
    return


label dzm613_dispose:
    jump show_graphics_menu


# s0 # say6540
label dzm613_s0:  # from - # IF ~  True()
    SPEAKER 'На лбу этого мертвого работяги при помощи глубоких порезов нанесены цифры 613, но на коже между 1 и 3 виден большой пробел шириной с палец. Приглядевшись, ты с трудом различаешь вырезанную 2.'

    menu:
        'Итак… что тут у нас интересного?' if _r6543_condition(gsm):
            # r0 # reply6543
            $ _r6543_action(gsm)
            jump dzm613_s1
        'Итак… что тут у нас интересного?' if _r6544_condition(gsm):
            # r1 # reply6544
            jump dzm613_s1
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r6545_condition(gsm):
            # r2 # reply6545
            jump dzm613_s1
        'Использовать на трупе свою способность История костей.' if _r6546_condition(gsm):
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
