init 10 python:
    from dlgs.mortualy_zombies.dzm199_logic import Dzm199Logic
    dzm199Logic = Dzm199Logic(renpy.store.global_settings_manager)


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
    $ dzm199Logic.dzm199_init()
    scene bg mortuary1
    show dzm199_img default at center_left_down
    return
label dzm199_dispose:
    hide dzm199_img
    jump show_graphics_menu


# s0 # say34975
label dzm199_s0:  # from - # IF ~  True()
    teller 'От этого оживленного трупа несет обугленным мясом и горелой одеждой. По правому боку тянутся довольно свежие следы от ожогов. Возможно, он был слишком близко к огню, и начал тлеть.'
    teller 'На его лбу выгравирован номер «199»; его губы сшиты.'

    menu:
        'Итак… что тут у нас интересного?' if dzm199Logic.r34976_condition():
            # r0 # reply34976
            $ dzm199Logic.r34976_action()
            jump dzm199_s1
        'Итак… что тут у нас интересного?' if dzm199Logic.r34979_condition():
            # r1 # reply34979
            jump dzm199_s1
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzm199Logic.r34980_condition():
            # r2 # reply34980
            jump dzm199_s1
        'Использовать на трупе свою способность История костей.' if dzm199Logic.r34981_condition():
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
        'Использовать на трупе свою способность История костей.' if dzm199Logic.r34981_condition():
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
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzm199Logic.r34980_condition():
            # r2 # reply34980
            jump dzm199_s1
        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply34984
            jump dzm199_dispose
        'Оставить зомби в покое.':
            # r7 # reply34983
            jump dzm199_dispose


label dzm199_kill:
    teller 'От этого оживленного трупа несет обугленным мясом и горелой одеждой. По правому боку тянутся довольно свежие следы от ожогов. Возможно, он был слишком близко к огню, и начал тлеть.'
    teller 'На его лбу выгравирован номер «199»; его губы сшиты.'

    menu:
        '(Уйти.)':
            jump dzm199_dispose
        '(Убить зомби).':
            jump dzm199_killed


label dzm199_killed:
    $ dzm199Logic.kill_dzm199()
    teller 'В его глазах - в глазах без жизни и без разума - давно поселился огонь. Я сожалею только о том, что так и не смог его выбить.'
    jump dzm199_dispose
