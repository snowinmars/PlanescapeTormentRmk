init 10 python:
    from game.dlgs.zf1096_logic import Zf1096Logic
    zf1096Logic = Zf1096Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZF1096.DLG
# ###


# s0 # say35082
label zf1096_s0: # - # IF ~  True()
    SPEAKER 'Этот труп женщины совершает круговой обход между плитами в комнате. Ее волосы заплетены в длинную косу, которая обернута вокруг шеи в виде петли. Кто-то под трафарет написал номер «1096» у нее на лбу; ее губы крепко зашиты.'

    menu:
        '«Э… Красивая коса».' if zf1096Logic.r35083_condition():
            # a0 # r35083
            $ zf1096Logic.r35083_action()
            jump zf1096_s1

        '«Э… Красивая коса».' if zf1096Logic.r35100_condition():
            # a1 # r35100
            jump zf1096_s1

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».' if zf1096Logic.r35101_condition():
            # a2 # r35101
            jump zf1096_s1

        'Использовать на трупе свою способность «История костей».' if zf1096Logic.r35102_condition():
            # a3 # r35102
            jump zf1096_s2

        '«Было приятно с тобой поболтать. Прощай».' if zf1096Logic.r35107_condition():
            # a4 # r35107
            jump morte_s342  # EXTERN

        'Оставить труп в покое.' if zf1096Logic.r35108_condition():
            # a5 # r35108
            jump morte_s342  # EXTERN

        '«Было приятно с тобой поболтать. Прощай».' if zf1096Logic.r35109_condition():
            # a6 # r35109
            jump zf1096_dispose

        'Оставить труп в покое.' if zf1096Logic.r35110_condition():
            # a7 # r35110
            jump zf1096_dispose

        '«Было приятно с тобой поболтать. Прощай».' if zf1096Logic.r35111_condition():
            # a8 # r35111
            jump zf1096_dispose

        'Оставить труп в покое.' if zf1096Logic.r35112_condition():
            # a9 # r35112
            jump zf1096_dispose


# s1 # say35084
label zf1096_s1: # from 0.0 0.1 0.2
    SPEAKER 'Труп не отвечает. Ты сомневаешься, знает ли она вообще о твоем присутствии.'

    menu:
        '«Тогда прощай».' if zf1096Logic.r35085_condition():
            # a10 # r35085
            jump morte_s342  # EXTERN

        '«Тогда прощай».' if zf1096Logic.r35098_condition():
            # a11 # r35098
            jump zf1096_dispose

        '«Тогда прощай».' if zf1096Logic.r35099_condition():
            # a12 # r35099
            jump zf1096_dispose


# s2 # say35103
label zf1096_s2: # from 0.3
    SPEAKER 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        '«Тогда прощай».' if zf1096Logic.r35104_condition():
            # a13 # r35104
            jump morte_s342  # EXTERN

        '«Тогда прощай».' if zf1096Logic.r35105_condition():
            # a14 # r35105
            jump zf1096_dispose

        '«Тогда прощай».' if zf1096Logic.r35106_condition():
            # a15 # r35106
            jump zf1096_dispose


# s3 # say35113
label zf1096_s3: # - # IF ~  False()
    SPEAKER 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
