init python:
    def _r34976_action(gsm):
        gsm.dec_law()
        gsm.set_zombie_chaotic(True)


init python:
    def _r34976_condition(gsm):
        return not gsm.get_zombie_chaotic()
    def _r34979_condition(gsm):
        return gsm.get_zombie_chaotic()
    def _r34980_condition(gsm):
        return gsm.get_vaxis_exposed()
    def _r34981_condition(gsm):
        return gsm.get_can_speak_with_dead()


init 10 python:
    gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DZM199.DLG
# ###


label start_dzm199_talk:
    call dzm199_init
    jump dzm199_s0
label start_dzm199_kill:
    call dzm199_init
    jump dzm199_kill
label dzm199_init:
    $ gsm.set_location('mortuary1')
    $ gsm.set_meet_dzm199(True)
    scene bg mortuary1
    show dzm199_img default at center_left_down
    return
label dzm199_dispose:
    hide dzm199_img
    jump show_graphics_menu


# s0 # say34975
label dzm199_s0:  # from -
    teller 'От этого оживленного трупа несет обугленным мясом и горелой одеждой. По правому боку тянутся довольно свежие следы от ожогов. Возможно, он был слишком близко к огню, и начал тлеть.'
    teller 'На его лбу выгравирован номер «199»; его губы сшиты.'

    menu:
        'Итак… что тут у нас интересного?' if _r34976_condition(gsm):
            # r0 # reply34976
            $ _r34976_action(gsm)
            jump dzm199_s1
        'Итак… что тут у нас интересного?' if _r34979_condition(gsm):
            # r1 # reply34979
            jump dzm199_s1
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r34980_condition(gsm):
            # r2 # reply34980
            jump dzm199_s1
        'Использовать на трупе свою способность История костей.' if _r34981_condition(gsm):
            # r3 # reply34981
            jump dzm199_s2
        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply34984
            jump dzm199_dispose
        'Оставить зомби в покое.':
            # r5 # reply34985
            jump dzm199_dispose


# s1 # say34977
label dzm199_s1:  # from 0.0 0.1 0.2
    teller 'Труп продолжает пялиться на тебя.'

    menu:
        'Использовать на трупе свою способность История костей.' if _r34981_condition(gsm):
            # r3 # reply34981
            jump dzm199_s2
        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply34984
            jump dzm199_dispose
        'Оставить зомби в покое.':
            # r6 # reply34978
            jump dzm199_dispose


# s2 # say34982
label dzm199_s2:  # from 0.3
    teller 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if _r34980_condition(gsm):
            # r2 # reply34980
            jump dzm199_s1
        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply34984
            jump dzm199_dispose
        'Оставить зомби в покое.':
            # r7 # reply34983
            jump dzm199_dispose
