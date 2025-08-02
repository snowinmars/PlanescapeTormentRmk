init python:
    def _r6587_action(gsm):
        gsm.gcm.modify_property('protagonist', 'law', -1)
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


# ###
# Original:  DLG/DZM475.DLG
# ###


label dzm475_init:
    return


label dzm475_dispose:
    jump show_graphics_menu


# s0 # say6584
label dzm475_s0:  # from - # IF ~  True()
    SPEAKER 'Немного помятая голова этого мертвеца стянута многочисленными тонкими металлическими лентами, скрепленными прямо на черепе. На проржавевшей табличке над его левым глазом выбит номер 475. Его рот намертво закрыт; от него несет бальзамирующей жидкостью.'

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
            jump show_graphics_menu
        'Оставить труп в покое.':
            # r5 # reply6592
            jump show_graphics_menu


# s1 # say6585
label dzm475_s1:  # from 0.0 0.1 0.2
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Оставить труп в покое.':
            # r6 # reply6593
            jump show_graphics_menu


# s2 # say6586
label dzm475_s2:  # from 0.3
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить труп в покое.':
            # r7 # reply6594
            jump show_graphics_menu
