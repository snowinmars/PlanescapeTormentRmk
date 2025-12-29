init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.mortuary_zombies.zf1096_logic import Zf1096Logic
    zf1096Logic = Zf1096Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF1096.DLG
# ###


# s0 # say35082
label zf1096_s0: # - # IF ~  True()
    $ zf1096Logic.talk()
    'zf1096_s0{#zf1096_s0}'
    # nr 'Этот труп женщины совершает круговой обход между плитами в комнате. Ее волосы заплетены в длинную косу, которая обернута вокруг шеи в виде петли. Кто-то под трафарет написал номер «1096» у нее на лбу; ее губы крепко зашиты.{#zf1096_s0_1}'

    menu:
        'zf1096_s0_r35083{#zf1096_s0_r35083}' if zf1096Logic.r35083_condition(): # '«Э… Красивая коса».{#zf1096_s0_r35083}'
            # a0 # r35083
            $ zf1096Logic.r35083_action()
            jump zf1096_s1

        'zf1096_s0_r35100{#zf1096_s0_r35100}' if zf1096Logic.r35100_condition(): # '«Э… Красивая коса».{#zf1096_s0_r35100}'
            # a1 # r35100
            jump zf1096_s1

        'zf1096_s0_r35101{#zf1096_s0_r35101}' if zf1096Logic.r35101_condition(): # '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».{#zf1096_s0_r35101}'
            # a2 # r35101
            jump zf1096_s1

        'zf1096_s0_r35102{#zf1096_s0_r35102}' if zf1096Logic.r35102_condition(): # 'Использовать на трупе свою способность «История костей».{#zf1096_s0_r35102}'
            # a3 # r35102
            jump zf1096_s2

        'zf1096_s0_r35107{#zf1096_s0_r35107}' if zf1096Logic.r35107_condition(): # '«Было приятно с тобой поболтать. Прощай».{#zf1096_s0_r35107}'
            # a4 # r35107
            jump morte_s342  # EXTERN

        'zf1096_s0_r35108{#zf1096_s0_r35108}' if zf1096Logic.r35108_condition(): # 'Оставить труп в покое.{#zf1096_s0_r35108}'
            # a5 # r35108
            jump morte_s342  # EXTERN

        'zf1096_s0_r35109{#zf1096_s0_r35109}' if zf1096Logic.r35109_condition(): # '«Было приятно с тобой поболтать. Прощай».{#zf1096_s0_r35109}'
            # a6 # r35109
            jump zf1096_dispose

        'zf1096_s0_r35110{#zf1096_s0_r35110}' if zf1096Logic.r35110_condition(): # 'Оставить труп в покое.{#zf1096_s0_r35110}'
            # a7 # r35110
            jump zf1096_dispose

        'zf1096_s0_r35111{#zf1096_s0_r35111}' if zf1096Logic.r35111_condition(): # '«Было приятно с тобой поболтать. Прощай».{#zf1096_s0_r35111}'
            # a8 # r35111
            jump zf1096_dispose

        'zf1096_s0_r35112{#zf1096_s0_r35112}' if zf1096Logic.r35112_condition(): # 'Оставить труп в покое.{#zf1096_s0_r35112}'
            # a9 # r35112
            jump zf1096_dispose


# s1 # say35084
label zf1096_s1: # from 0.0 0.1 0.2
    'zf1096_s1{#zf1096_s1}'
    # nr 'Труп не отвечает. Ты сомневаешься, знает ли она вообще о твоем присутствии.{#zf1096_s1_1}'

    menu:
        'zf1096_s1_r35085{#zf1096_s1_r35085}' if zf1096Logic.r35085_condition(): # '«Тогда прощай».{#zf1096_s1_r35085}'
            # a10 # r35085
            jump morte_s342  # EXTERN

        'zf1096_s1_r35098{#zf1096_s1_r35098}' if zf1096Logic.r35098_condition(): # '«Тогда прощай».{#zf1096_s1_r35098}'
            # a11 # r35098
            jump zf1096_dispose

        'zf1096_s1_r35099{#zf1096_s1_r35099}' if zf1096Logic.r35099_condition(): # '«Тогда прощай».{#zf1096_s1_r35099}'
            # a12 # r35099
            jump zf1096_dispose


# s2 # say35103
label zf1096_s2: # from 0.3
    'zf1096_s2{#zf1096_s2}'
    # nr 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.{#zf1096_s2_1}'

    menu:
        'zf1096_s2_r35104{#zf1096_s2_r35104}' if zf1096Logic.r35104_condition(): # '«Тогда прощай».{#zf1096_s2_r35104}'
            # a13 # r35104
            jump morte_s342  # EXTERN

        'zf1096_s2_r35105{#zf1096_s2_r35105}' if zf1096Logic.r35105_condition(): # '«Тогда прощай».{#zf1096_s2_r35105}'
            # a14 # r35105
            jump zf1096_dispose

        'zf1096_s2_r35106{#zf1096_s2_r35106}' if zf1096Logic.r35106_condition(): # '«Тогда прощай».{#zf1096_s2_r35106}'
            # a15 # r35106
            jump zf1096_dispose


# s3 # say35113
label zf1096_s3: # - # IF ~  False()
    'zf1096_s3{#zf1096_s3}'
    # nr 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.{#zf1096_s3_1}'

    # menu: TODO [snow]: misgenerated
    jump zf1096_dispose
