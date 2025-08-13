init 10 python:
    from game.dlgs.zf626_logic import Zf626Logic
    zf626Logic = Zf626Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZF626.DLG
# ###


# s0 # say35050
label zf626_s0:  # - # IF ~  True()
    SPEAKER 'Левая сторона лица этой женщины выглядит так, словно ее разбили дубиной; плоть, вся во вмятинах и синяках, едва держится на проломленном черепе. Номер «626» вышит на правой щеке, прямо под глазом.'

    menu:
        '«Э… здорово тебе досталось».' if zf626Logic.r35051_condition():
            # r0 # reply35051
            $ zf626Logic.r35051_action()
            jump zf626_s1

        '«Э… здорово тебе досталось».' if zf626Logic.r35068_condition():
            # r1 # reply35068
            jump zf626_s1

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».' if zf626Logic.r35069_condition():
            # r2 # reply35069
            jump zf626_s1

        'Использовать на трупе свою способность «История костей».' if zf626Logic.r35070_condition():
            # r3 # reply35070
            jump zf626_s2

        '«Было приятно поболтать с тобой. Прощай».' if zf626Logic.r35075_condition():
            # r4 # reply35075
            jump morte_s338  # EXTERN

        'Оставить труп в покое.' if zf626Logic.r35076_condition():
            # r5 # reply35076
            jump morte_s338  # EXTERN

        '«Было приятно поболтать с тобой. Прощай».' if zf626Logic.r35077_condition():
            # r6 # reply35077
            jump zf626_dispose

        'Оставить труп в покое.' if zf626Logic.r35078_condition():
            # r7 # reply35078
            jump zf626_dispose

        '«Было приятно поболтать с тобой. Прощай».' if zf626Logic.r35079_condition():
            # r8 # reply35079
            jump zf626_dispose

        'Оставить труп в покое.' if zf626Logic.r35080_condition():
            # r9 # reply35080
            jump zf626_dispose


# s1 # say35052
label zf626_s1:  # from 0.0 0.1 0.2
    SPEAKER 'Труп продолжает смотреть на тебя одним уцелевшим глазом.'

    menu:
        '«Тогда прощай».' if zf626Logic.r35053_condition():
            # r10 # reply35053
            jump morte_s338  # EXTERN

        '«Тогда прощай».' if zf626Logic.r35066_condition():
            # r11 # reply35066
            jump zf626_dispose

        '«Тогда прощай».' if zf626Logic.r35067_condition():
            # r12 # reply35067
            jump zf626_dispose


# s2 # say35071
label zf626_s2:  # from 0.3
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        '«Тогда прощай».' if zf626Logic.r35072_condition():
            # r13 # reply35072
            jump morte_s338  # EXTERN

        '«Тогда прощай».' if zf626Logic.r35073_condition():
            # r14 # reply35073
            jump zf626_dispose

        '«Тогда прощай».' if zf626Logic.r35074_condition():
            # r15 # reply35074
            jump zf626_dispose


# s3 # say35081
label zf626_s3:  # - # IF ~  False()
    SPEAKER 'Этот труп не шевелится. Кажется, он далек от того, чтобы отвечать на твои вопросы.'

    menu:

label zf626_kill: # -
    nr 'Todo.'

    menu:
        'Уйти.':
            jump zf626_dispose
        'Убить.':
            jump zf626_killed


label zf626_killed:  # from zf626_kill
    $ zf626Logic.kill_zf626()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'zf626s.'
    nr 'Who is zf626?'
    nr 'zf626 is dead, baby, zf626 is dead.'
    jump zf626_dispose


label zf626_kill_first:  # -
    nr 'Todo.'

    menu:
        'Уйти.':
            jump zf626_dispose
        'Убить.':
            jump zf626_killed_first


label zf626_killed_first: # from zf626_kill_first
    $ zf626Logic.kill_zf626()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'zf626s.'
    nr 'Who is zf626?'
    nr 'zf626 is dead, baby, zf626 is dead.'
    jump zf626_dispose
