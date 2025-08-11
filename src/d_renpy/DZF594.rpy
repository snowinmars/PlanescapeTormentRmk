init 10 python:
    from game.dlgs.zf594_logic import Zf594Logic
    zf594Logic = Zf594Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/ZF594.DLG
# ###


label start_zf594_talk_first:
    call zf594_init
    jump todo
label start_zf594_talk:
    call zf594_init
    jump todo
label start_zf594_kill_first:
    call zf594_init
    jump zf594_kill_first
label start_zf594_kill:
    call zf594_init
    jump zf594_kill
label zf594_init:
    $ zf594Logic.zf594_init()
    scene bg LOCATION
    show zf594_img default at center_left_down
    return
label zf594_dispose:
    hide zf594_img
    jump show_graphics_menu


# s0 # say35018
label zf594_s0:  # - # IF ~  True()
    SPEAKER 'Неуклюжий труп женщины уставился на тебя пустым взглядом. Ее кожа похожа на бумагу, совсем тонкая… как будто кто-то обернул ее тело в простыню из легкой ткани. На ее лбу угольным карандашом нацарапан номер «594».'

    menu:
        '«Итак… чем занимаешься вечером?»' if zf594Logic.r35019_condition():
            # r0 # reply35019
            $ zf594Logic.r35019_action()
            jump zf594_s1

        '«Итак… чем занимаешься вечером?»' if zf594Logic.r35036_condition():
            # r1 # reply35036
            jump zf594_s1

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».' if zf594Logic.r35037_condition():
            # r2 # reply35037
            jump zf594_s1

        'Использовать на трупе свою способность «История костей».' if zf594Logic.r35038_condition():
            # r3 # reply35038
            jump zf594_s2

        '«Было приятно с тобой поболтать. Прощай».' if zf594Logic.r35043_condition():
            # r4 # reply35043
            jump morte_s334  # EXTERN

        'Оставить труп в покое.' if zf594Logic.r35044_condition():
            # r5 # reply35044
            jump morte_s334  # EXTERN

        '«Было приятно с тобой поболтать. Прощай».' if zf594Logic.r35045_condition():
            # r6 # reply35045
            jump zf594_dispose

        'Оставить труп в покое.' if zf594Logic.r35046_condition():
            # r7 # reply35046
            jump zf594_dispose

        '«Было приятно с тобой поболтать. Прощай».' if zf594Logic.r35047_condition():
            # r8 # reply35047
            jump zf594_dispose

        'Оставить труп в покое.' if zf594Logic.r35048_condition():
            # r9 # reply35048
            jump zf594_dispose


# s1 # say35020
label zf594_s1:  # from 0.0 0.1 0.2
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        '«Тогда прощай».' if zf594Logic.r35021_condition():
            # r10 # reply35021
            jump morte_s334  # EXTERN

        '«Тогда прощай».' if zf594Logic.r35034_condition():
            # r11 # reply35034
            jump zf594_dispose

        '«Тогда прощай».' if zf594Logic.r35035_condition():
            # r12 # reply35035
            jump zf594_dispose


# s2 # say35039
label zf594_s2:  # from 0.3
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        '«Тогда прощай».' if zf594Logic.r35040_condition():
            # r13 # reply35040
            jump morte_s334  # EXTERN

        '«Тогда прощай».' if zf594Logic.r35041_condition():
            # r14 # reply35041
            jump zf594_dispose

        '«Тогда прощай».' if zf594Logic.r35042_condition():
            # r15 # reply35042
            jump zf594_dispose


# s3 # say35049
label zf594_s3:  # - # IF ~  False()
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:

label zf594_kill:
    nr 'Todo.'

    menu:
        'Уйти.':
            jump zf594_dispose
        'Убить.':
            jump zf594_killed


label zf594_killed:
    $ zf594Logic.kill_zf594()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'zf594s.'
    nr 'Who is zf594?'
    nr 'zf594 is dead, baby, zf594 is dead.'
    jump zf594_dispose


label zf594_kill_first:
    nr 'Todo.'

    menu:
        'Уйти.':
            jump zf594_dispose
        'Убить.':
            jump zf594_killed_first


label zf594_killed_first:
    $ zf594Logic.kill_zf594()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'zf594s.'
    nr 'Who is zf594?'
    nr 'zf594 is dead, baby, zf594 is dead.'
    jump zf594_dispose
