init 10 python:
    from dlgs.dzf1148_logic import Dzf1148Logic
    dzf1148Logic = Dzf1148Logic(renpy.store.global_settings_manager)


# ###
# Original: DLG/DZF1148.DLG
# ###


label dzf1148_init:
    return


label dzf1148_dispose:
    jump show_graphics_menu


# s0 # say35242
label dzf1148_s0:  # - # IF ~  True()  Check EXTERN ~DMORTE~ : 362
    SPEAKER 'Кожа этого женского трупа покрыто замысловатыми узорами татуировок. Кожа на лбу отвалилась, так что номер 1148 вырезан прямо на черепе. Ее рот зашит крепкими грубыми стежками.'

    menu:
        'Итак… чем занимаешься вечером?' if dzf1148Logic.r35243_condition():
            # r0 # reply35243
            $ dzf1148Logic.r35243_action()
            jump dzf1148_s1

        'Итак… чем занимаешься вечером?' if dzf1148Logic.r35260_condition():
            # r1 # reply35260
            jump dzf1148_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzf1148Logic.r35261_condition():
            # r2 # reply35261
            jump dzf1148_s1

        'Использовать на трупе свою способность История костей.' if dzf1148Logic.r35262_condition():
            # r3 # reply35262
            jump dzf1148_s2

        'Было приятно с тобой поболтать. Прощай.' if dzf1148Logic.r35269_condition():
            # r4 # reply35269
            jump show_graphics_menu

        'Оставить труп в покое.' if dzf1148Logic.r35270_condition():
            # r5 # reply35270
            jump show_graphics_menu

        'Было приятно с тобой поболтать. Прощай.' if dzf1148Logic.r35271_condition():
            # r6 # reply35271
            jump show_graphics_menu

        'Оставить труп в покое.' if dzf1148Logic.r35272_condition():
            # r7 # reply35272
            jump show_graphics_menu


# s1 # say35244
label dzf1148_s1:  # from 0.0 0.1 0.2 # Check EXTERN ~DMORTE~ : 362
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Тогда прощай.' if dzf1148Logic.r35258_condition():
            # r8 # reply35258
            jump show_graphics_menu

        'Тогда прощай.' if dzf1148Logic.r35259_condition():
            # r9 # reply35259
            jump show_graphics_menu


# s2 # say35263
label dzf1148_s2:  # from 0.3 # Check EXTERN ~DMORTE~ : 362
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Тогда прощай.' if dzf1148Logic.r35265_condition():
            # r10 # reply35265
            jump show_graphics_menu

        'Тогда прощай.' if dzf1148Logic.r35266_condition():
            # r11 # reply35266
            jump show_graphics_menu


# s3 # say35273
label dzf1148_s3:  # - # IF ~  False()
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump show_graphics_menu