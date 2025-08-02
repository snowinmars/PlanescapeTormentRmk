init 10 python:
    from dlgs.zm199_logic import Zm199Logic
    zm199Logic = Zm199Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/ZM199.DLG
# ###


label zm199_init:
    return


label zm199_dispose:
    jump show_graphics_menu


# s0 # say34975
label zm199_s0:  # - # IF ~  True()
    SPEAKER 'От этого оживленного трупа несет обугленным мясом и горелой одеждой. По правому боку тянутся довольно свежие следы от ожогов. Возможно, он был слишком близко к огню, и начал тлеть. На его лбу выгравирован номер 199; его губы сшиты.'

    menu:
        'Итак… что тут у нас интересного?' if zm199Logic.r34976_condition():
            # r0 # reply34976
            $ zm199Logic.r34976_action()
            jump zm199_s1

        'Итак… что тут у нас интересного?' if zm199Logic.r34979_condition():
            # r1 # reply34979
            jump zm199_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if zm199Logic.r34980_condition():
            # r2 # reply34980
            jump zm199_s1

        'Использовать на трупе свою способность История костей.' if zm199Logic.r34981_condition():
            # r3 # reply34981
            jump zm199_s2

        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply34984
            jump zm199_dispose

        'Оставить зомби в покое.':
            # r5 # reply34985
            jump zm199_dispose


# s1 # say34977
label zm199_s1:  # from 0.0 0.1 0.2
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Оставить зомби в покое.':
            # r6 # reply34978
            jump zm199_dispose


# s2 # say34982
label zm199_s2:  # from 0.3
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить зомби в покое.':
            # r7 # reply34983
            jump zm199_dispose
