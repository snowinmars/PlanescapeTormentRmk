init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.mortuary_zombies.zm463_logic import Zm463Logic
    zm463Logic = Zm463Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM463.DLG
# ###


# s0 # say6484
label zm463_s0: # - # IF ~  True()
    "zm463_s0{#zm463_s0}"
    # nr 'Неуклюжий труп смотрит на тебя пустым взглядом. На его лбу вырезан номер «463», а его губы крепко зашиты. От тела исходит легкий запах формальдегида.{#zm463_s0_1}'

    menu:
        'zm463_s0_r6485{#zm463_s0_r6485}' if zm463Logic.r6485_condition(): # '«Итак… что тут у нас интересного?»{#zm463_s0_r6485}'
            # a0 # r6485
            $ zm463Logic.r6485_action()
            jump zm463_s1

        'zm463_s0_r6488{#zm463_s0_r6488}' if zm463Logic.r6488_condition(): # '«Итак… что тут у нас интересного?»{#zm463_s0_r6488}'
            # a1 # r6488
            jump zm463_s1

        'zm463_s0_r6489{#zm463_s0_r6489}' if zm463Logic.r6489_condition(): # '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».{#zm463_s0_r6489}'
            # a2 # r6489
            jump zm463_s1

        'zm463_s0_r6490{#zm463_s0_r6490}' if zm463Logic.r6490_condition(): # 'Использовать на трупе свою способность «История костей».{#zm463_s0_r6490}'
            # a3 # r6490
            jump zm463_s2

        'zm463_s0_r6491{#zm463_s0_r6491}': # '«Было приятно с тобой поболтать. Прощай».{#zm463_s0_r6491}'
            # a4 # r6491
            jump zm463_dispose

        'zm463_s0_r6492{#zm463_s0_r6492}': # 'Оставить труп в покое.{#zm463_s0_r6492}'
            # a5 # r6492
            jump zm463_dispose


# s1 # say6486
label zm463_s1: # from 0.0 0.1 0.2
    "zm463_s1{#zm463_s1}"
    # nr 'Труп продолжает пялиться на тебя.{#zm463_s1_1}'

    menu:
        'zm463_s1_r6493{#zm463_s1_r6493}': # 'Оставить труп в покое.{#zm463_s1_r6493}'
            # a6 # r6493
            jump zm463_dispose


# s2 # say6487
label zm463_s2: # from 0.3
    "zm463_s2{#zm463_s2}"
    # nr 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.{#zm463_s2_1}'

    menu:
        'zm463_s2_r6494{#zm463_s2_r6494}': # 'Оставить труп в покое.{#zm463_s2_r6494}'
            # a7 # r6494
            jump zm463_dispose
