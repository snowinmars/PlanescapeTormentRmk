init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.mortuary_zombies.zf1072_logic import Zf1072Logic
    zf1072Logic = Zf1072Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF1072.DLG
# ###


# s0 # say35114
label zf1072_s0: # - # IF ~  True()
    "zf1072_s0{#zf1072_s0}"
    # nr 'От этого трупа женщины истончается особенно сильный запах формальдегида… пахнет так, как будто ее обработали совсем недавно, и неспроста: труп находится на последней стадии разложения. У нее нет челюсти, часть мяса отвалилась от черепа, обнажая номер «1072», выбитый на кости.{#zf1072_s0_1}'

    menu:
        'zf1072_s0_r35115{#zf1072_s0_r35115}' if zf1072Logic.r35115_condition(): # '«Кажется, у нее бывали деньки и получше…»{#zf1072_s0_r35115}'
            # a0 # r35115
            $ zf1072Logic.r35115_action()
            jump zf1072_s1

        'zf1072_s0_r35132{#zf1072_s0_r35132}' if zf1072Logic.r35132_condition(): # '«Кажется, у нее бывали деньки и получше…»{#zf1072_s0_r35132}'
            # a1 # r35132
            jump zf1072_s1

        'zf1072_s0_r35133{#zf1072_s0_r35133}' if zf1072Logic.r35133_condition(): # '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».{#zf1072_s0_r35133}'
            # a2 # r35133
            jump zf1072_s1

        'zf1072_s0_r35134{#zf1072_s0_r35134}' if zf1072Logic.r35134_condition(): # 'Использовать на трупе свою способность «История костей».{#zf1072_s0_r35134}'
            # a3 # r35134
            jump zf1072_s2

        'zf1072_s0_r35139{#zf1072_s0_r35139}' if zf1072Logic.r35139_condition(): # '«Было приятно с тобой поболтать. Прощай».{#zf1072_s0_r35139}'
            # a4 # r35139
            jump morte_s346  # EXTERN

        'zf1072_s0_r35140{#zf1072_s0_r35140}' if zf1072Logic.r35140_condition(): # 'Оставить труп в покое.{#zf1072_s0_r35140}'
            # a5 # r35140
            jump morte_s346  # EXTERN

        'zf1072_s0_r35141{#zf1072_s0_r35141}' if zf1072Logic.r35141_condition(): # '«Было приятно с тобой поболтать. Прощай».{#zf1072_s0_r35141}'
            # a6 # r35141
            jump zf1072_dispose

        'zf1072_s0_r35142{#zf1072_s0_r35142}' if zf1072Logic.r35142_condition(): # 'Оставить труп в покое.{#zf1072_s0_r35142}'
            # a7 # r35142
            jump zf1072_dispose

        'zf1072_s0_r35143{#zf1072_s0_r35143}' if zf1072Logic.r35143_condition(): # '«Было приятно с тобой поболтать. Прощай».{#zf1072_s0_r35143}'
            # a8 # r35143
            jump zf1072_dispose

        'zf1072_s0_r35144{#zf1072_s0_r35144}' if zf1072Logic.r35144_condition(): # 'Оставить труп в покое.{#zf1072_s0_r35144}'
            # a9 # r35144
            jump zf1072_dispose


# s1 # say35116
label zf1072_s1: # from 0.0 0.1 0.2
    "zf1072_s1{#zf1072_s1}"
    # nr 'Труп не отвечает на твой голос. Возможно, это связано с отсутствием челюсти. Или ей просто нечего сказать.{#zf1072_s1_1}'

    menu:
        'zf1072_s1_r35117{#zf1072_s1_r35117}' if zf1072Logic.r35117_condition(): # '«Тогда прощай».{#zf1072_s1_r35117}'
            # a10 # r35117
            jump morte_s346  # EXTERN

        'zf1072_s1_r35130{#zf1072_s1_r35130}' if zf1072Logic.r35130_condition(): # '«Тогда прощай».{#zf1072_s1_r35130}'
            # a11 # r35130
            jump zf1072_dispose

        'zf1072_s1_r35131{#zf1072_s1_r35131}' if zf1072Logic.r35131_condition(): # '«Тогда прощай».{#zf1072_s1_r35131}'
            # a12 # r35131
            jump zf1072_dispose


# s2 # say35135
label zf1072_s2: # from 0.3
    "zf1072_s2{#zf1072_s2}"
    # nr 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.{#zf1072_s2_1}'

    menu:
        'zf1072_s2_r35136{#zf1072_s2_r35136}' if zf1072Logic.r35136_condition(): # '«Тогда прощай».{#zf1072_s2_r35136}'
            # a13 # r35136
            jump morte_s346  # EXTERN

        'zf1072_s2_r35137{#zf1072_s2_r35137}' if zf1072Logic.r35137_condition(): # '«Тогда прощай».{#zf1072_s2_r35137}'
            # a14 # r35137
            jump zf1072_dispose

        'zf1072_s2_r35138{#zf1072_s2_r35138}' if zf1072Logic.r35138_condition(): # '«Тогда прощай».{#zf1072_s2_r35138}'
            # a15 # r35138
            jump zf1072_dispose


# s3 # say35145
label zf1072_s3: # - # IF ~  False()
    "zf1072_s3{#zf1072_s3}"
    # nr 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.{#zf1072_s3_1}'

    # menu: TODO [snow]: misgenerated
    jump zf1072_dispose
