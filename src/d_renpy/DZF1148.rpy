init 10 python:
    from game.dlgs.zf1148_logic import Zf1148Logic
    zf1148Logic = Zf1148Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZF1148.DLG
# ###


# s0 # say35242
label zf1148_s0:  # - # IF ~  True()
    SPEAKER 'Кожа этого женского трупа покрыто замысловатыми узорами татуировок. Кожа на лбу отвалилась, так что номер «1148» вырезан прямо на черепе. Ее рот зашит крепкими грубыми стежками.'

    menu:
        '«Итак… чем занимаешься вечером?»' if zf1148Logic.r35243_condition():
            # r0 # reply35243
            $ zf1148Logic.r35243_action()
            jump zf1148_s1

        '«Итак… чем занимаешься вечером?»' if zf1148Logic.r35260_condition():
            # r1 # reply35260
            jump zf1148_s1

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».' if zf1148Logic.r35261_condition():
            # r2 # reply35261
            jump zf1148_s1

        'Использовать на трупе свою способность «История костей».' if zf1148Logic.r35262_condition():
            # r3 # reply35262
            jump zf1148_s2

        '«Было приятно с тобой поболтать. Прощай».' if zf1148Logic.r35267_condition():
            # r4 # reply35267
            jump morte_s362  # EXTERN

        'Оставить труп в покое.' if zf1148Logic.r35268_condition():
            # r5 # reply35268
            jump morte_s362  # EXTERN

        '«Было приятно с тобой поболтать. Прощай».' if zf1148Logic.r35269_condition():
            # r6 # reply35269
            jump zf1148_dispose

        'Оставить труп в покое.' if zf1148Logic.r35270_condition():
            # r7 # reply35270
            jump zf1148_dispose

        '«Было приятно с тобой поболтать. Прощай».' if zf1148Logic.r35271_condition():
            # r8 # reply35271
            jump zf1148_dispose

        'Оставить труп в покое.' if zf1148Logic.r35272_condition():
            # r9 # reply35272
            jump zf1148_dispose


# s1 # say35244
label zf1148_s1:  # from 0.0 0.1 0.2
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        '«Тогда прощай».' if zf1148Logic.r35245_condition():
            # r10 # reply35245
            jump morte_s362  # EXTERN

        '«Тогда прощай».' if zf1148Logic.r35258_condition():
            # r11 # reply35258
            jump zf1148_dispose

        '«Тогда прощай».' if zf1148Logic.r35259_condition():
            # r12 # reply35259
            jump zf1148_dispose


# s2 # say35263
label zf1148_s2:  # from 0.3
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        '«Тогда прощай».' if zf1148Logic.r35264_condition():
            # r13 # reply35264
            jump morte_s362  # EXTERN

        '«Тогда прощай».' if zf1148Logic.r35265_condition():
            # r14 # reply35265
            jump zf1148_dispose

        '«Тогда прощай».' if zf1148Logic.r35266_condition():
            # r15 # reply35266
            jump zf1148_dispose


# s3 # say35273
label zf1148_s3:  # - # IF ~  False()
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:

label zf1148_kill: # -
    nr 'Todo.'

    menu:
        'Уйти.':
            jump zf1148_dispose
        'Убить.':
            jump zf1148_killed


label zf1148_killed:  # from zf1148_kill
    $ zf1148Logic.kill_zf1148()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'zf1148s.'
    nr 'Who is zf1148?'
    nr 'zf1148 is dead, baby, zf1148 is dead.'
    jump zf1148_dispose


label zf1148_kill_first:  # -
    nr 'Todo.'

    menu:
        'Уйти.':
            jump zf1148_dispose
        'Убить.':
            jump zf1148_killed_first


label zf1148_killed_first: # from zf1148_kill_first
    $ zf1148Logic.kill_zf1148()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'zf1148s.'
    nr 'Who is zf1148?'
    nr 'zf1148 is dead, baby, zf1148 is dead.'
    jump zf1148_dispose
