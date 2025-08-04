init 10 python:
    from game.dlgs.zf832_logic import Zf832Logic
    zf832Logic = Zf832Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/ZF832.DLG
# ###


label start_zf832_talk_first:
    call zf832_init
    jump todo
label start_zf832_talk:
    call zf832_init
    jump todo
label start_zf832_kill_first:
    call zf832_init
    jump zf832_kill_first
label start_zf832_kill:
    call zf832_init
    jump zf832_kill
label zf832_init:
    $ zf832Logic.zf832_init()
    scene bg LOCATION
    show zf832_img default at center_left_down
    return
label zf832_dispose:
    hide zf832_img
    jump show_graphics_menu


# s0 # say35146
label zf832_s0:  # - # IF ~  True()
    SPEAKER 'Несмотря на жесткую иссохшую кожу, совершенно очевидно, что раньше это была красивая женщина средних лет. Тот, кто препарировал труп, похоже, сжалился над ней: он зашил ей рот аккуратными мелкими стежками и наколол на лбу номер «832» элегантным шрифтом.'

    menu:
        '«Итак… чем занимаешься вечером?»' if zf832Logic.r35147_condition():
            # r0 # reply35147
            $ zf832Logic.r35147_action()
            jump zf832_s1

        '«Итак… чем занимаешься вечером?»' if zf832Logic.r35164_condition():
            # r1 # reply35164
            jump zf832_s1

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».' if zf832Logic.r35165_condition():
            # r2 # reply35165
            jump zf832_s1

        'Использовать на трупе свою способность «История костей».' if zf832Logic.r35166_condition():
            # r3 # reply35166
            jump zf832_s2

        '«Было приятно с тобой поболтать. Прощай».' if zf832Logic.r35171_condition():
            # r4 # reply35171
            jump morte_s350  # EXTERN

        'Оставить труп в покое.' if zf832Logic.r35172_condition():
            # r5 # reply35172
            jump morte_s350  # EXTERN

        '«Было приятно с тобой поболтать. Прощай».' if zf832Logic.r35173_condition():
            # r6 # reply35173
            jump zf832_dispose

        'Оставить труп в покое.' if zf832Logic.r35174_condition():
            # r7 # reply35174
            jump zf832_dispose

        '«Было приятно с тобой поболтать. Прощай».' if zf832Logic.r35175_condition():
            # r8 # reply35175
            jump zf832_dispose

        'Оставить труп в покое.' if zf832Logic.r35176_condition():
            # r9 # reply35176
            jump zf832_dispose


# s1 # say35148
label zf832_s1:  # from 0.0 0.1 0.2
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        '«Тогда прощай».' if zf832Logic.r35149_condition():
            # r10 # reply35149
            jump morte_s350  # EXTERN

        '«Тогда прощай».' if zf832Logic.r35162_condition():
            # r11 # reply35162
            jump zf832_dispose

        '«Тогда прощай».' if zf832Logic.r35163_condition():
            # r12 # reply35163
            jump zf832_dispose


# s2 # say35167
label zf832_s2:  # from 0.3
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        '«Тогда прощай».' if zf832Logic.r35168_condition():
            # r13 # reply35168
            jump morte_s350  # EXTERN

        '«Тогда прощай».' if zf832Logic.r35169_condition():
            # r14 # reply35169
            jump zf832_dispose

        '«Тогда прощай».' if zf832Logic.r35170_condition():
            # r15 # reply35170
            jump zf832_dispose


# s3 # say35177
label zf832_s3:  # - # IF ~  False()
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:

label zf832_kill:
    nr 'todo'

    menu:
        'Уйти.':
            jump zf832_dispose
        'Убить.':
            jump zf832_killed


label zf832_killed:
    $ zf832Logic.kill_zf832()
    nr 'Whose motorcycle is this?'
    nr 'It's a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'zf832's.'
    nr 'Who is zf832?'
    nr 'zf832 is dead, baby, zf832 is dead.'
    jump zf832_dispose


label zf832_kill_first:
    nr 'todo'

    menu:
        'Уйти.':
            jump zf832_dispose
        'Убить.':
            jump zf832_killed_first


label zf832_killed_first:
    $ zf832Logic.kill_zf832()
    nr 'Whose motorcycle is this?'
    nr 'It's a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'zf832's.'
    nr 'Who is zf832?'
    nr 'zf832 is dead, baby, zf832 is dead.'
    jump zf832_dispose
