init python:
    def _r6485_action(gsm):
        gsm.dec_law()
        gsm.set_zombie_chaotic(True)


init python:
    def _r6485_condition(gsm):
        return not gsm.get_zombie_chaotic()
    def _r6488_condition(gsm):
        return gsm.get_zombie_chaotic()
    def _r6489_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r6490_condition(gsm):
        return gsm.get_can_speak_with_dead()


init 10 python:
    gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DZM463.DLG
# Starts:    dzm463_s0
# ###


label dzm463_init:
    $ gsm.set_location('mortuary1')
    $ gsm.set_meet_dzm463(True)
    scene bg mortuary1
    show dzm463_img default at center_left_down
    return


label dzm463_dispose:
    hide dzm463_img
    jump show_graphics_menu


# s0 # say6484
label dzm463_s0:  # from -
    call dzm463_init
    teller 'Неуклюжий труп смотрит на тебя пустым взглядом. На его лбу вырезан номер «463», а его губы крепко зашиты. От тела исходит легкий запах формальдегида.'

    menu:
        'Итак… что тут у нас интересного?' if _r6485_condition(gsm):
            # r0 # reply6485
            $ _r6485_action(gsm)
            jump dzm463_s1
        'Итак… что тут у нас интересного?' if _r6488_condition(gsm):
            # r1 # reply6488
            jump dzm463_s1
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r6489_condition(gsm):
            # r2 # reply6489
            jump dzm463_s1
        'Использовать на трупе свою способность История костей.' if _r6490_condition(gsm):
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
    teller 'Труп продолжает пялиться на тебя.'

    menu:
        'Использовать на трупе свою способность История костей.' if _r6490_condition(gsm):
            # r3 # reply6490
            jump dzm463_s2
        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply6491
            jump dzm463_dispose
        'Оставить труп в покое.':
            # r6 # reply6493
            jump dzm463_dispose


# s2 # say6487
label dzm463_s2:  # from 0.3
    teller 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r6489_condition(gsm):
            # r2 # reply6489
            jump dzm463_s1
        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply6491
            jump dzm463_dispose
        'Оставить труп в покое.':
            # r7 # reply6494
            jump dzm463_dispose