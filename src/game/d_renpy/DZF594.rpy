init 10 python:
    from dlgs.dzf594_logic import Dzf594Logic
    dzf594Logic = Dzf594Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZF594.DLG
# ###


label dzf594_init:
    return


label dzf594_dispose:
    jump show_graphics_menu


# s0 # say35018
label dzf594_s0:  # - # IF ~  True()  Check EXTERN ~DMORTE~ : 334
    SPEAKER 'Неуклюжий труп женщины уставился на тебя пустым взглядом. Ее кожа похожа на бумагу, совсем тонкая… как будто кто-то обернул ее тело в простыню из легкой ткани. На ее лбу угольным карандашом нацарапан номер 594.'

    menu:
        'Итак… чем занимаешься вечером?' if dzf594Logic.r35019_condition():
            # r0 # reply35019
            $ dzf594Logic.r35019_action()
            jump dzf594_s1

        'Итак… чем занимаешься вечером?' if dzf594Logic.r35036_condition():
            # r1 # reply35036
            jump dzf594_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzf594Logic.r35037_condition():
            # r2 # reply35037
            jump dzf594_s1

        'Использовать на трупе свою способность История костей.' if dzf594Logic.r35038_condition():
            # r3 # reply35038
            jump dzf594_s2

        'Было приятно с тобой поболтать. Прощай.' if dzf594Logic.r35043_condition():
            # r4 # reply35043
            jump dzf594_dispose

        'Оставить труп в покое.' if dzf594Logic.r35044_condition():
            # r5 # reply35044
            jump dzf594_dispose

        'Было приятно с тобой поболтать. Прощай.' if dzf594Logic.r35045_condition():
            # r6 # reply35045
            jump dzf594_dispose

        'Оставить труп в покое.' if dzf594Logic.r35046_condition():
            # r7 # reply35046
            jump dzf594_dispose

        'Было приятно с тобой поболтать. Прощай.' if dzf594Logic.r35047_condition():
            # r8 # reply35047
            jump dzf594_dispose

        'Оставить труп в покое.' if dzf594Logic.r35048_condition():
            # r9 # reply35048
            jump dzf594_dispose


# s1 # say35020
label dzf594_s1:  # from 0.0 0.1 0.2 # Check EXTERN ~DMORTE~ : 334
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Тогда прощай.' if dzf594Logic.r35021_condition():
            # r10 # reply35021
            jump dzf594_dispose

        'Тогда прощай.' if dzf594Logic.r35034_condition():
            # r11 # reply35034
            jump dzf594_dispose

        'Тогда прощай.' if dzf594Logic.r35035_condition():
            # r12 # reply35035
            jump dzf594_dispose


# s2 # say35039
label dzf594_s2:  # from 0.3 # Check EXTERN ~DMORTE~ : 334
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Тогда прощай.' if dzf594Logic.r35040_condition():
            # r13 # reply35040
            jump dzf594_dispose

        'Тогда прощай.' if dzf594Logic.r35041_condition():
            # r14 # reply35041
            jump dzf594_dispose

        'Тогда прощай.' if dzf594Logic.r35042_condition():
            # r15 # reply35042
            jump dzf594_dispose


# s3 # say35049
label dzf594_s3:  # - # IF ~  False()
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump dzf594_dispose