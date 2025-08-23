init 10 python:
    from game.dlgs.mortualy_zombies.zf594_logic import Zf594Logic
    zf594Logic = Zf594Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZF594.DLG
# ###


label zf594_s0_ctor: # - # IF ~  True()
    scene bg mortuary_f2r2
    show zf594_img default at center_left_down
    jump zf594_s0


label zf594_s3_ctor: # - # IF ~  False()
    scene bg mortuary_f2r2
    show zf594_img default at center_left_down
    jump zf594_s3


label zf594_dispose:
    hide zf594_img
    jump graphics_menu


# s0 # say35018
label zf594_s0: # - # IF ~  True()
    nr 'Неуклюжий труп женщины уставился на тебя пустым взглядом. Ее кожа похожа на бумагу, совсем тонкая… как будто кто-то обернул ее тело в простыню из легкой ткани.'
    nr 'На ее лбу угольным карандашом нацарапан номер «594».'

    menu:
        '«Итак… чем занимаешься вечером?»' if zf594Logic.r35019_condition():
            # a0 # r35019
            $ zf594Logic.r35019_action()
            jump zf594_s1

        '«Итак… чем занимаешься вечером?»' if zf594Logic.r35036_condition():
            # a1 # r35036
            jump zf594_s1

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».' if zf594Logic.r35037_condition():
            # a2 # r35037
            jump zf594_s1

        'Использовать на трупе свою способность «История костей».' if zf594Logic.r35038_condition():
            # a3 # r35038
            jump zf594_s2

        '«Было приятно с тобой поболтать. Прощай».' if zf594Logic.r35043_condition():
            # a4 # r35043
            jump morte_s334  # EXTERN

        'Оставить труп в покое.' if zf594Logic.r35044_condition():
            # a5 # r35044
            jump morte_s334  # EXTERN

        '«Было приятно с тобой поболтать. Прощай».' if zf594Logic.r35045_condition():
            # a6 # r35045
            jump zf594_dispose

        'Оставить труп в покое.' if zf594Logic.r35046_condition():
            # a7 # r35046
            jump zf594_dispose

        '«Было приятно с тобой поболтать. Прощай».' if zf594Logic.r35047_condition():
            # a8 # r35047
            jump zf594_dispose

        'Оставить труп в покое.' if zf594Logic.r35048_condition():
            # a9 # r35048
            jump zf594_dispose


# s1 # say35020
label zf594_s1: # from 0.0 0.1 0.2
    nr 'Труп продолжает пялиться на тебя.'

    menu:
        '«Тогда прощай».' if zf594Logic.r35021_condition():
            # a10 # r35021
            jump morte_s334  # EXTERN

        '«Тогда прощай».' if zf594Logic.r35034_condition():
            # a11 # r35034
            jump zf594_dispose

        '«Тогда прощай».' if zf594Logic.r35035_condition():
            # a12 # r35035
            jump zf594_dispose


# s2 # say35039
label zf594_s2: # from 0.3
    nr 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        '«Тогда прощай».' if zf594Logic.r35040_condition():
            # a13 # r35040
            jump morte_s334  # EXTERN

        '«Тогда прощай».' if zf594Logic.r35041_condition():
            # a14 # r35041
            jump zf594_dispose

        '«Тогда прощай».' if zf594Logic.r35042_condition():
            # a15 # r35042
            jump zf594_dispose


# s3 # say35049
label zf594_s3: # - # IF ~  False()
    nr 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump zf594_dispose
