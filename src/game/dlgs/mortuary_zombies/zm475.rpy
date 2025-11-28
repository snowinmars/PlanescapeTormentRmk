init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.mortuary_zombies.zm475_logic import Zm475Logic
    zm475Logic = Zm475Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM475.DLG
# ###


# s0 # say6584
label zm475_s0: # - # IF ~  True()
    nr 'Немного помятая голова этого мертвеца стянута многочисленными тонкими металлическими лентами, скрепленными прямо на черепе. На проржавевшей табличке над его левым глазом выбит номер «475». Его рот намертво закрыт; от него несет бальзамирующей жидкостью.{#zm475_s0_1}'

    menu:
        '«Итак… что тут у нас интересного?»{#zm475_s0_r6587}' if zm475Logic.r6587_condition():
            # a0 # r6587
            $ zm475Logic.r6587_action()
            jump zm475_s1

        '«Итак… что тут у нас интересного?»{#zm475_s0_r6588}' if zm475Logic.r6588_condition():
            # a1 # r6588
            jump zm475_s1

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».{#zm475_s0_r6589}' if zm475Logic.r6589_condition():
            # a2 # r6589
            jump zm475_s1

        'Использовать на трупе свою способность «История костей».{#zm475_s0_r6590}' if zm475Logic.r6590_condition():
            # a3 # r6590
            jump zm475_s2

        '«Было приятно с тобой поболтать. Прощай».{#zm475_s0_r6591}':
            # a4 # r6591
            jump zm475_dispose

        'Оставить труп в покое.{#zm475_s0_r6592}':
            # a5 # r6592
            jump zm475_dispose


# s1 # say6585
label zm475_s1: # from 0.0 0.1 0.2
    nr 'Труп продолжает пялиться на тебя.{#zm475_s1_1}'

    menu:
        'Оставить труп в покое.{#zm475_s1_r6593}':
            # a6 # r6593
            jump zm475_dispose


# s2 # say6586
label zm475_s2: # from 0.3
    nr 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.{#zm475_s2_1}'

    menu:
        'Оставить труп в покое.{#zm475_s2_r6594}':
            # a7 # r6594
            jump zm475_dispose
