init python:
    def _r46757_action(gsm):
        gsm.dec_law('law')
        gsm.set_zombie_chaotic(True)


init python:
    def _r46757_condition(gsm):
        return not gsm.get_zombie_chaotic()
    def _r46760_condition(gsm):
        return gsm.get_zombie_chaotic()
    def _r46761_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r46762_condition(gsm):
        return gsm.get_can_speak_with_dead()


define gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DZM1445.DLG
# Starts:    dzm1445_s0
# ###


label dzm1445_init:
    $ gsm.set_location('mortuary1')
    $ gsm.set_meet_dzm1445(True)
    scene bg mortuary1
    show dzm1445_img default at center_left_down
    return


label dzm1445_dispose:
    hide dzm1445_img
    jump show_graphics_menu


# s0 # say46756
label dzm1445_s0:  # from - # IF ~  True()~ THEN BEGIN 0 // from:
    call dzm1445_init
    teller 'Тело этого трупа сплошь покрыто пятнами, его уши, кончик носа и некоторые пальцы сгнили напрочь… скорее всего, мужчина стал жертвой какой-то ужасной болезни.'
    teller 'На лбу у него вытатуирован номер «1445», а его губы крепко сшиты.'

    menu:
        'Итак… что тут у нас интересного?' if _r46757_condition(gsm):
            # r0 # reply46757
            $ _r46757_action(gsm)
            jump dzm1445_s1
        'Итак… что тут у нас интересного?' if _r46760_condition(gsm):
            # r1 # reply46760
            jump dzm1445_s1
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r46761_condition(gsm):
            # r2 # reply46761
            jump dzm1445_s1
        'Использовать на трупе свою способность История костей.' if _r46762_condition(gsm):
            # r3 # reply46762
            jump dzm1445_s2
        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply46765
            jump dzm1508_img
        'Оставить труп в покое.':
            # r5 # reply46766
            jump dzm1508_img


# s1 # say46758
label dzm1445_s1:  # from 0.0 0.1 0.2
    teller 'Труп продолжает пялиться на тебя.'

    menu:
        'Использовать на трупе свою способность История костей.' if _r46762_condition(gsm):
            # r3 # reply46762
            jump dzm1445_s2
        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply46765
            jump dzm1508_img
        'Оставить труп в покое.':
            # r6 # reply46759
            jump dzm1508_img


# s2 # say46763
label dzm1445_s2:  # from 0.3
    teller 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r46761_condition(gsm):
            # r2 # reply46761
            jump dzm1445_s1
        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply46765
            jump dzm1508_img
        'Оставить труп в покое.':
            # r7 # reply46764
            jump dzm1508_img
