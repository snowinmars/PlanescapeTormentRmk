init python:
    def _r34976_action(gsm):
        gsm.gcm.modify_property('protagonist', 'law', -1)
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


label dzm199_init:
    return


label dzm199_dispose:
    jump show_graphics_menu


# s0 # say34975
label dzm199_s0:  # from - # IF ~  True()
    SPEAKER 'От этого оживленного трупа несет обугленным мясом и горелой одеждой. По правому боку тянутся довольно свежие следы от ожогов. Возможно, он был слишком близко к огню, и начал тлеть. На его лбу выгравирован номер 199; его губы сшиты.'

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
            jump show_graphics_menu
        'Оставить зомби в покое.':
            # r5 # reply34985
            jump show_graphics_menu


# s1 # say34977
label dzm199_s1:  # from 0.0 0.1 0.2
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Оставить зомби в покое.':
            # r6 # reply34978
            jump show_graphics_menu


# s2 # say34982
label dzm199_s2:  # from 0.3
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить зомби в покое.':
            # r7 # reply34983
            jump show_graphics_menu
