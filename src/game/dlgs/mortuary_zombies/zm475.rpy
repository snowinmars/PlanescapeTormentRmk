init 10 python:
    from game.dlgs.mortuary_zombies.zm475_logic import Zm475Logic
    zm475Logic = Zm475Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZM475.DLG
# ###


# s0 # say6584
label zm475_s0: # - # IF ~  True()
    nr 'Немного помятая голова этого мертвеца стянута многочисленными тонкими металлическими лентами, скрепленными прямо на черепе.'
    nr 'На проржавевшей табличке над его левым глазом выбит номер «475». Его рот намертво закрыт; от него несет бальзамирующей жидкостью.'

    menu:
        '«Итак… что тут у нас интересного?»' if zm475Logic.r6587_condition():
            # a0 # r6587
            $ zm475Logic.r6587_action()
            jump zm475_s1

        '«Итак… что тут у нас интересного?»' if zm475Logic.r6588_condition():
            # a1 # r6588
            jump zm475_s1

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».' if zm475Logic.r6589_condition():
            # a2 # r6589
            jump zm475_s1

        'Использовать на трупе свою способность «История костей».' if zm475Logic.r6590_condition():
            # a3 # r6590
            jump zm475_s2

        '«Было приятно с тобой поболтать. Прощай».':
            # a4 # r6591
            jump zm475_dispose

        'Оставить труп в покое.':
            # a5 # r6592
            jump zm475_dispose


# s1 # say6585
label zm475_s1: # from 0.0 0.1 0.2
    nr 'Труп продолжает пялиться на тебя.'

    menu:
        'Оставить труп в покое.':
            # a6 # r6593
            jump zm475_dispose


# s2 # say6586
label zm475_s2: # from 0.3
    nr 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить труп в покое.':
            # a7 # r6594
            jump zm475_dispose
