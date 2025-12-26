init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.mortuary_zombies.zf626_logic import Zf626Logic
    zf626Logic = Zf626Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF626.DLG
# ###


# s0 # say35050
label zf626_s0: # - # IF ~  True()
    'zf626_s0{#zf626_s0}'
    # nr 'Левая сторона лица этой женщины выглядит так, словно ее разбили дубиной; плоть, вся во вмятинах и синяках, едва держится на проломленном черепе. Номер «626» вышит на правой щеке, прямо под глазом.{#zf626_s0_1}'

    menu:
        'zf626_s0_r35051{#zf626_s0_r35051}' if zf626Logic.r35051_condition(): # '«Э… здорово тебе досталось».{#zf626_s0_r35051}'
            # a0 # r35051
            $ zf626Logic.r35051_action()
            jump zf626_s1

        'zf626_s0_r35068{#zf626_s0_r35068}' if zf626Logic.r35068_condition(): # '«Э… здорово тебе досталось».{#zf626_s0_r35068}'
            # a1 # r35068
            jump zf626_s1

        'zf626_s0_r35069{#zf626_s0_r35069}' if zf626Logic.r35069_condition(): # '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».{#zf626_s0_r35069}'
            # a2 # r35069
            jump zf626_s1

        'zf626_s0_r35070{#zf626_s0_r35070}' if zf626Logic.r35070_condition(): # 'Использовать на трупе свою способность «История костей».{#zf626_s0_r35070}'
            # a3 # r35070
            jump zf626_s2

        'zf626_s0_r35075{#zf626_s0_r35075}' if zf626Logic.r35075_condition(): # '«Было приятно поболтать с тобой. Прощай».{#zf626_s0_r35075}'
            # a4 # r35075
            jump morte_s338  # EXTERN

        'zf626_s0_r35076{#zf626_s0_r35076}' if zf626Logic.r35076_condition(): # 'Оставить труп в покое.{#zf626_s0_r35076}'
            # a5 # r35076
            jump morte_s338  # EXTERN

        'zf626_s0_r35077{#zf626_s0_r35077}' if zf626Logic.r35077_condition(): # '«Было приятно поболтать с тобой. Прощай».{#zf626_s0_r35077}'
            # a6 # r35077
            jump zf626_dispose

        'zf626_s0_r35078{#zf626_s0_r35078}' if zf626Logic.r35078_condition(): # 'Оставить труп в покое.{#zf626_s0_r35078}'
            # a7 # r35078
            jump zf626_dispose

        'zf626_s0_r35079{#zf626_s0_r35079}' if zf626Logic.r35079_condition(): # '«Было приятно поболтать с тобой. Прощай».{#zf626_s0_r35079}'
            # a8 # r35079
            jump zf626_dispose

        'zf626_s0_r35080{#zf626_s0_r35080}' if zf626Logic.r35080_condition(): # 'Оставить труп в покое.{#zf626_s0_r35080}'
            # a9 # r35080
            jump zf626_dispose


# s1 # say35052
label zf626_s1: # from 0.0 0.1 0.2
    'zf626_s1{#zf626_s1}'
    # nr 'Труп продолжает смотреть на тебя одним уцелевшим глазом.{#zf626_s1_1}'

    menu:
        'zf626_s1_r35053{#zf626_s1_r35053}' if zf626Logic.r35053_condition(): # '«Тогда прощай».{#zf626_s1_r35053}'
            # a10 # r35053
            jump morte_s338  # EXTERN

        'zf626_s1_r35066{#zf626_s1_r35066}' if zf626Logic.r35066_condition(): # '«Тогда прощай».{#zf626_s1_r35066}'
            # a11 # r35066
            jump zf626_dispose

        'zf626_s1_r35067{#zf626_s1_r35067}' if zf626Logic.r35067_condition(): # '«Тогда прощай».{#zf626_s1_r35067}'
            # a12 # r35067
            jump zf626_dispose


# s2 # say35071
label zf626_s2: # from 0.3
    'zf626_s2{#zf626_s2}'
    # nr 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.{#zf626_s2_1}'

    menu:
        'zf626_s2_r35072{#zf626_s2_r35072}' if zf626Logic.r35072_condition(): # '«Тогда прощай».{#zf626_s2_r35072}'
            # a13 # r35072
            jump morte_s338  # EXTERN

        'zf626_s2_r35073{#zf626_s2_r35073}' if zf626Logic.r35073_condition(): # '«Тогда прощай».{#zf626_s2_r35073}'
            # a14 # r35073
            jump zf626_dispose

        'zf626_s2_r35074{#zf626_s2_r35074}' if zf626Logic.r35074_condition(): # '«Тогда прощай».{#zf626_s2_r35074}'
            # a15 # r35074
            jump zf626_dispose


# s3 # say35081
label zf626_s3: # - # IF ~  False()
    'zf626_s3{#zf626_s3}'
    # nr 'Этот труп не шевелится. Кажется, он далек от того, чтобы отвечать на твои вопросы.{#zf626_s3_1}'

    # menu: TODO [snow]: misgenerated
    jump zf626_dispose
