init 10 python:
    from dlgs.mortualy_zombies.dzm475_logic import Dzm475Logic
    dzm475Logic = Dzm475Logic(renpy.store.global_settings_manager)


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
    $ dzm475Logic.dzm475_init()
    scene bg mortuary1
    show dzm475_img default at center_left_down
    return
label dzm475_dispose:
    hide dzm475_img
    jump show_graphics_menu


# s0 # say6584
label dzm475_s0:  # - # IF ~  True()
    teller 'Немного помятая голова этого мертвеца стянута многочисленными тонкими металлическими лентами, скрепленными прямо на черепе.'
    teller 'На проржавевшей табличке над его левым глазом выбит номер «475». Его рот намертво закрыт; от него несет бальзамирующей жидкостью.'

    menu:
        'Итак… что тут у нас интересного?' if dzm475Logic.r6587_condition():
            # r0 # reply6587
            $ dzm475Logic.r6587_action()
            jump dzm475_s1

        'Итак… что тут у нас интересного?' if dzm475Logic.r6588_condition():
            # r1 # reply6588
            jump dzm475_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzm475Logic.r6589_condition():
            # r2 # reply6589
            jump dzm475_s1

        'Использовать на трупе свою способность История костей.' if dzm475Logic.r6590_condition():
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
        'Использовать на трупе свою способность История костей.' if dzm475Logic.r6590_condition():
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
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzm475Logic.r6589_condition():
            # r2 # reply6589
            jump dzm475_s1

        'Было приятно с тобой поболтать. Прощай.':
            # r4 # reply6591
            jump dzm475_dispose

        'Оставить труп в покое.':
            # r7 # reply6594
            jump dzm475_dispose


label dzm475_kill:
    teller 'Немного помятая голова этого мертвеца стянута многочисленными тонкими металлическими лентами, скрепленными прямо на черепе.'
    teller 'На проржавевшей табличке над его левым глазом выбит номер «475». Его рот намертво закрыт; от него несет бальзамирующей жидкостью.'

    menu:
        '(Уйти.)':
            jump dzm475_dispose
        '(Убить зомби).':
            jump dzm475_killed


label dzm475_killed:
    $ dzm475Logic.kill_dzm475()
    teller 'Я разгибаю металлические ленты на его черепе. Без них голова трупа сама разваливается по частям. Я не чувствую сожалений.'
    jump dzm475_dispose
