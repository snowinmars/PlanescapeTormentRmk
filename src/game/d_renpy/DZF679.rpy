init 10 python:
    from dlgs.dzf679_logic import Dzf679Logic
    dzf679Logic = Dzf679Logic(renpy.store.global_settings_manager)


# ###
# Original: DLG/DZF679.DLG
# ###


label dzf679_init:
    return


label dzf679_dispose:
    jump show_graphics_menu


# s0 # say35178
label dzf679_s0:  # - # IF ~  True()  Check EXTERN ~DMORTE~ : 354
    SPEAKER 'Похоже, это труп довольно таки старой, даже древней женщины. Если не обращать внимание на зловоние бальзамирующей жидкости, швы на ее рту и номер 679, вышитый на правой щеке, то она выглядит почти так же, как и в последние годы своей жизни.'

    menu:
        'Итак… чем занимаешься вечером?' if dzf679Logic.r35179_condition():
            # r0 # reply35179
            $ dzf679Logic.r35179_action()
            jump dzf679_s1

        'Итак… чем занимаешься вечером?' if dzf679Logic.r35196_condition():
            # r1 # reply35196
            jump dzf679_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzf679Logic.r35197_condition():
            # r2 # reply35197
            jump dzf679_s1

        'Использовать на трупе свою способность История костей.' if dzf679Logic.r35198_condition():
            # r3 # reply35198
            jump dzf679_s2

        'Было приятно с тобой поболтать. Прощай.' if dzf679Logic.r35205_condition():
            # r4 # reply35205
            jump show_graphics_menu

        'Оставить труп в покое.' if dzf679Logic.r35206_condition():
            # r5 # reply35206
            jump show_graphics_menu

        'Было приятно с тобой поболтать. Прощай.' if dzf679Logic.r35207_condition():
            # r6 # reply35207
            jump show_graphics_menu

        'Оставить труп в покое.' if dzf679Logic.r35208_condition():
            # r7 # reply35208
            jump show_graphics_menu


# s1 # say35180
label dzf679_s1:  # from 0.0 0.1 0.2 # Check EXTERN ~DMORTE~ : 354
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Тогда прощай.' if dzf679Logic.r35194_condition():
            # r8 # reply35194
            jump show_graphics_menu

        'Тогда прощай.' if dzf679Logic.r35195_condition():
            # r9 # reply35195
            jump show_graphics_menu


# s2 # say35199
label dzf679_s2:  # from 0.3 # Check EXTERN ~DMORTE~ : 354
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Тогда прощай.' if dzf679Logic.r35201_condition():
            # r10 # reply35201
            jump show_graphics_menu

        'Тогда прощай.' if dzf679Logic.r35202_condition():
            # r11 # reply35202
            jump show_graphics_menu


# s3 # say35209
label dzf679_s3:  # - # IF ~  False()
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump show_graphics_menu