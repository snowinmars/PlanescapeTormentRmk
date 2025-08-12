init 10 python:
    from game.dlgs.mortualy_zombies.zf626_logic import Zf626Logic
    zf626Logic = Zf626Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/ZF626.DLG
# ###


label start_zf626_talk:
    call zf626_init
    jump zf626_s0
label start_zf626_kill:
    call zf626_init
    jump zf626_kill
label zf626_init:
    $ zf626Logic.zf626_init()
    scene bg mortuary_f2r2
    show zf626_img default at center_left_down
    return
label zf626_dispose:
    hide zf626_img
    jump graphics_menu


# s0 # say35050
label zf626_s0:  # - # IF ~  True()
    nr 'Левая сторона лица этой женщины выглядит так, словно ее разбили дубиной; плоть, вся во вмятинах и синяках, едва держится на проломленном черепе.'
    nr 'Номер «626» вышит на правой щеке, прямо под глазом.'

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
    nr 'Труп продолжает смотреть на тебя одним уцелевшим глазом.'

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
    nr 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

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
    nr 'Этот труп не шевелится. Кажется, он далек от того, чтобы отвечать на твои вопросы.'

    jump zf626_dispose


label zf626_kill:
    nr 'Левая сторона лица этой женщины выглядит так, словно ее разбили дубиной; плоть, вся во вмятинах и синяках, едва держится на проломленном черепе.'
    nr 'Номер «626» вышит на правой щеке, прямо под глазом.'
    nr 'Ты думаешь о том, как разрезал бы её кожу.'

    menu:
        '(Уйти.)':
            jump zf626_dispose
        '(Убить зомби).':
            jump zf626_killed


label zf626_killed:
    $ zf626Logic.kill_zf626()
    nr 'Я делаю её лицо симметричным. Будь у неё глаза, она бы смотрела на меня.'
    nr 'Смотрела бы глазами без жизни и без разума. Есть ли работа для слепых трупов?'
    jump zf626_dispose
