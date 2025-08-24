init 10 python:
    from game.dlgs.mortuary_zombies.zm199_logic import Zm199Logic
    zm199Logic = Zm199Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZM199.DLG
# ###


label zm199_s0_ctor: # - # IF ~  True()
    scene bg DISABLED
    show zm199_img default at center_left_down
    jump zm199_s0


label zm199_dispose:
    hide zm199_img
    jump graphics_menu


# s0 # say34975
label zm199_s0: # - # IF ~  True()
    nr 'От этого оживленного трупа несет обугленным мясом и горелой одеждой. По правому боку тянутся довольно свежие следы от ожогов. Возможно, он был слишком близко к огню, и начал тлеть.'
    nr 'На его лбу выгравирован номер «199»; его губы сшиты.'

    menu:
        '«Итак… что тут у нас интересного?»' if zm199Logic.r34976_condition():
            # a0 # r34976
            $ zm199Logic.r34976_action()
            jump zm199_s1

        '«Итак… что тут у нас интересного?»' if zm199Logic.r34979_condition():
            # a1 # r34979
            jump zm199_s1

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».' if zm199Logic.r34980_condition():
            # a2 # r34980
            jump zm199_s1

        'Использовать на трупе свою способность «История костей».' if zm199Logic.r34981_condition():
            # a3 # r34981
            jump zm199_s2

        '«Было приятно с тобой поболтать. Прощай».':
            # a4 # r34984
            jump zm199_dispose

        'Оставить зомби в покое.':
            # a5 # r34985
            jump zm199_dispose


# s1 # say34977
label zm199_s1: # from 0.0 0.1 0.2
    nr 'Труп продолжает пялиться на тебя.'

    menu:
        'Оставить зомби в покое.':
            # a6 # r34978
            jump zm199_dispose


# s2 # say34982
label zm199_s2: # from 0.3
    nr 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить зомби в покое.':
            # a7 # r34983
            jump zm199_dispose
