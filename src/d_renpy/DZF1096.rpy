init 10 python:
    from dlgs.zf1096_logic import Zf1096Logic
    zf1096Logic = Zf1096Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/ZF1096.DLG
# ###


label zf1096_init:
    return


label zf1096_dispose:
    jump show_graphics_menu


# s0 # say35082
label zf1096_s0:  # - # IF ~  True()  Check EXTERN ~DMORTE~ : 342
    SPEAKER 'Этот труп женщины совершает круговой обход между плитами в комнате. Ее волосы заплетены в длинную косу, которая обернута вокруг шеи в виде петли. Кто-то под трафарет написал номер 1096 у нее на лбу; ее губы крепко зашиты.'

    menu:
        'Э… Красивая коса.' if zf1096Logic.r35083_condition():
            # r0 # reply35083
            $ zf1096Logic.r35083_action()
            jump zf1096_s1

        'Э… Красивая коса.' if zf1096Logic.r35100_condition():
            # r1 # reply35100
            jump zf1096_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if zf1096Logic.r35101_condition():
            # r2 # reply35101
            jump zf1096_s1

        'Использовать на трупе свою способность История костей.' if zf1096Logic.r35102_condition():
            # r3 # reply35102
            jump zf1096_s2

        'Было приятно с тобой поболтать. Прощай.' if zf1096Logic.r35107_condition():
            # r4 # reply35107
            jump zf1096_dispose

        'Оставить труп в покое.' if zf1096Logic.r35108_condition():
            # r5 # reply35108
            jump zf1096_dispose

        'Было приятно с тобой поболтать. Прощай.' if zf1096Logic.r35109_condition():
            # r6 # reply35109
            jump zf1096_dispose

        'Оставить труп в покое.' if zf1096Logic.r35110_condition():
            # r7 # reply35110
            jump zf1096_dispose

        'Было приятно с тобой поболтать. Прощай.' if zf1096Logic.r35111_condition():
            # r8 # reply35111
            jump zf1096_dispose

        'Оставить труп в покое.' if zf1096Logic.r35112_condition():
            # r9 # reply35112
            jump zf1096_dispose


# s1 # say35084
label zf1096_s1:  # from 0.0 0.1 0.2 # Check EXTERN ~DMORTE~ : 342
    SPEAKER 'Труп не отвечает. Ты сомневаешься, знает ли она вообще о твоем присутствии.'

    menu:
        'Тогда прощай.' if zf1096Logic.r35085_condition():
            # r10 # reply35085
            jump zf1096_dispose

        'Тогда прощай.' if zf1096Logic.r35098_condition():
            # r11 # reply35098
            jump zf1096_dispose

        'Тогда прощай.' if zf1096Logic.r35099_condition():
            # r12 # reply35099
            jump zf1096_dispose


# s2 # say35103
label zf1096_s2:  # from 0.3 # Check EXTERN ~DMORTE~ : 342
    SPEAKER 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Тогда прощай.' if zf1096Logic.r35104_condition():
            # r13 # reply35104
            jump zf1096_dispose

        'Тогда прощай.' if zf1096Logic.r35105_condition():
            # r14 # reply35105
            jump zf1096_dispose

        'Тогда прощай.' if zf1096Logic.r35106_condition():
            # r15 # reply35106
            jump zf1096_dispose


# s3 # say35113
label zf1096_s3:  # - # IF ~  False()
    SPEAKER 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump zf1096_dispose