init python:
    def _r6587_action(gsm):
        gsm.dec_law()
        gsm.set_zombie_chaotic(True)


init python:
    def _r6587_condition(gsm):
        return not gsm.get_zombie_chaotic()
    def _r6588_condition(gsm):
        return gsm.get_zombie_chaotic()
    def _r6589_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r6590_condition(gsm):
        return gsm.get_can_speak_with_dead()


init 10 python:
    gsm = renpy.store.global_settings_manager
    glm = renpy.store.global_location_manager


# ###
# Original:  DLG/DZM475.DLG
# ###


label start_dzm475_talk:
    call dzm475_init
    jump dzm475_s0
label start_dzm475_kill:
    call dzm475_init
    jump dzm475_kill
label dzm475_init:
    $ glm.set_location('mortuary_f2r1')
    $ gsm.set_meet_dzm475(True)
    scene bg mortuary1
    show dzm475_img default at center_left_down
    return
label dzm475_dispose:
    hide dzm475_img
    jump show_graphics_menu


# s0 # say6584
label dzm475_s0:  # from - # IF ~  True()
    teller 'Немного помятая голова этого мертвеца стянута многочисленными тонкими металлическими лентами, скрепленными прямо на черепе.'
    teller 'На проржавевшей табличке над его левым глазом выбит номер «475». Его рот намертво закрыт; от него несет бальзамирующей жидкостью.'

    menu:
        'Итак… что тут у нас интересного?' if _r6587_condition(gsm):
            # r0 # reply6587
            $ _r6587_action(gsm)
            jump dzm475_s1
        'Итак… что тут у нас интересного?' if _r6588_condition(gsm):
            # r1 # reply6588
            jump dzm475_s1
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r6589_condition(gsm):
            # r2 # reply6589
            jump dzm475_s1
        'Использовать на трупе свою способность История костей.' if _r6590_condition(gsm):
            # r3 # reply6590
            jump dzm475_s2
        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply6591
            jump dzm475_dispose
        'Оставить труп в покое.':
            # r5 # reply6592
            jump dzm475_dispose


# s1 # say6585
label dzm475_s1:  # from 0.0 0.1 0.2
    teller 'Труп продолжает пялиться на тебя.'

    menu:
        'Использовать на трупе свою способность История костей.' if _r6590_condition(gsm):
            # r3 # reply6590
            jump dzm475_s2
        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply6591
            jump dzm475_dispose
        'Оставить труп в покое.':
            # r6 # reply6593
            jump dzm475_dispose


# s2 # say6586
label dzm475_s2:  # from 0.3
    teller 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r6589_condition(gsm):
            # r2 # reply6589
            jump dzm475_s1
        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply6591
            jump dzm475_dispose
        'Оставить труп в покое.':
            # r7 # reply6594
            jump dzm475_dispose
