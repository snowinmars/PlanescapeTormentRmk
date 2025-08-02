init 10 python:
    from dlgs.mortualy_zombies.zf594_logic import Zf594Logic
    zf594Logic = Zf594Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZF594.DLG # orphan zf594_s3
# ###


label start_zf594_talk:
    call zf594_init
    jump zf594_s0
label start_zf594_kill:
    call zf594_init
    jump zf594_kill
label zf594_init:
    $ zf594Logic.zf594_init()
    scene bg mortuary_f2r2
    show zf594_img default at center_left_down
    return
label zf594_dispose:
    hide zf594_img
    jump show_graphics_menu


# s0 # say35018
label zf594_s0:  # - # IF ~  True() Manually checked EXTERN ~DMORTE~ : 334 as morte_s330
    teller 'Неуклюжий труп женщины уставился на тебя пустым взглядом. Ее кожа похожа на бумагу, совсем тонкая… как будто кто-то обернул ее тело в простыню из легкой ткани.'
    teller 'На ее лбу угольным карандашом нацарапан номер «594».'

    menu:
        'Итак… чем занимаешься вечером?' if zf594Logic.r35019_condition():
            # r0 # reply35019
            $ zf594Logic.r35019_action()
            jump zf594_s1

        'Итак… чем занимаешься вечером?' if zf594Logic.r35036_condition():
            # r1 # reply35036
            jump zf594_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if zf594Logic.r35037_condition():
            # r2 # reply35037
            jump zf594_s1

        'Использовать на трупе свою способность История костей.' if zf594Logic.r35038_condition():
            # r3 # reply35038
            jump zf594_s2

        'Было приятно с тобой поболтать. Прощай.' if zf594Logic.r35043_condition():
            # r4 # reply35043
            jump morte_s330

        'Оставить труп в покое.' if zf594Logic.r35044_condition():
            # r5 # reply35044
            jump morte_s330

        'Было приятно с тобой поболтать. Прощай.' if zf594Logic.r35045_condition():
            # r6 # reply35045
            jump zf594_dispose

        'Оставить труп в покое.' if zf594Logic.r35046_condition():
            # r7 # reply35046
            jump zf594_dispose

        'Было приятно с тобой поболтать. Прощай.' if zf594Logic.r35047_condition():
            # r8 # reply35047
            jump zf594_dispose

        'Оставить труп в покое.' if zf594Logic.r35048_condition():
            # r9 # reply35048
            jump zf594_dispose


# s1 # say35020
label zf594_s1:  # from 0.0 0.1 0.2 # Manually checked EXTERN ~DMORTE~ : 334 as morte_s330
    teller 'Труп продолжает пялиться на тебя.'

    menu:
        'Использовать на трупе свою способность История костей.' if zf594Logic.r35038_condition():
            # r3 # reply35038
            jump zf594_s2

        'Было приятно с тобой поболтать. Прощай.' if zf594Logic.r35043_condition():
            # r4 # reply35043
            jump morte_s330

        'Было приятно с тобой поболтать. Прощай.' if zf594Logic.r35045_condition():
            # r6 # reply35045
            jump zf594_dispose

        'Было приятно с тобой поболтать. Прощай.' if zf594Logic.r35047_condition():
            # r8 # reply35047
            jump zf594_dispose

        'Тогда прощай.' if zf594Logic.r35021_condition():
            # r10 # reply35021
            jump morte_s330

        'Тогда прощай.' if zf594Logic.r35034_condition():
            # r11 # reply35034
            jump zf594_dispose

        'Тогда прощай.' if zf594Logic.r35035_condition():
            # r12 # reply35035
            jump zf594_dispose

        'Оставить труп в покое.' if zf594Logic.r35044_condition():
            # r5 # reply35044
            jump morte_s330

        'Оставить труп в покое.' if zf594Logic.r35046_condition():
            # r7 # reply35046
            jump zf594_dispose

        'Оставить труп в покое.' if zf594Logic.r35048_condition():
            # r9 # reply35048
            jump zf594_dispose


# s2 # say35039
label zf594_s2:  # from 0.3 # Manually checked EXTERN ~DMORTE~ : 334 as morte_s330
    teller 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if zf594Logic.r35037_condition():
            # r2 # reply35037
            jump zf594_s1

        'Было приятно с тобой поболтать. Прощай.' if zf594Logic.r35043_condition():
            # r4 # reply35043
            jump morte_s330

        'Было приятно с тобой поболтать. Прощай.' if zf594Logic.r35045_condition():
            # r6 # reply35045
            jump zf594_dispose

        'Было приятно с тобой поболтать. Прощай.' if zf594Logic.r35047_condition():
            # r8 # reply35047
            jump zf594_dispose

        'Тогда прощай.' if zf594Logic.r35040_condition():
            # r13 # reply35040
            jump morte_s330

        'Тогда прощай.' if zf594Logic.r35041_condition():
            # r14 # reply35041
            jump zf594_dispose

        'Тогда прощай.' if zf594Logic.r35042_condition():
            # r15 # reply35042
            jump zf594_dispose

        'Оставить труп в покое.' if zf594Logic.r35044_condition():
            # r5 # reply35044
            jump morte_s330

        'Оставить труп в покое.' if zf594Logic.r35046_condition():
            # r7 # reply35046
            jump zf594_dispose

        'Оставить труп в покое.' if zf594Logic.r35048_condition():
            # r9 # reply35048
            jump zf594_dispose


# s3 # say35049
label zf594_s3:  # - # IF ~  False() # orphan
    teller 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump zf594_dispose


label zf594_kill:
    teller 'Неуклюжий труп женщины уставился на тебя пустым взглядом. Ее кожа похожа на бумагу, совсем тонкая… как будто кто-то обернул ее тело в простыню из легкой ткани.'
    teller 'На ее лбу угольным карандашом нацарапан номер «594».'
    teller 'Ты думаешь о том, как разрезал бы её кожу.'

    menu:
        '(Уйти.)':
            jump zf594_dispose
        '(Убить зомби).':
            jump zf594_killed


label zf594_killed:
    $ zf594Logic.kill_zf594()
    teller 'Её кожа и правда тонкая - как летнее платье; удивительно приятная на ощупь. Она смотрит на меня пустыми глазами.'
    teller 'В них нет ни жизни, ни разума. Я без сожалений снимаю с неё остатки жизни.'
    jump zf594_dispose
