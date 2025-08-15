init 10 python:
    from game.dlgs.mortualy_zombies.zf832_logic import Zf832Logic
    zf832Logic = Zf832Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/ZF832.DLG
# ###


label start_zf832_talk:
    call zf832_init
    jump zf832_s0
label start_zf832_kill:
    call zf832_init
    jump zf832_kill
label zf832_init:
    $ zf832Logic.zf832_init()
    scene bg mortuary_f3r4
    show zf832_img default at center_left_down
    return
label zf832_dispose:
    hide zf832_img
    jump graphics_menu


# s0 # say35146
label zf832_s0: # - # IF ~  True()
    nr 'Несмотря на жесткую иссохшую кожу, совершенно очевидно, что раньше это была красивая женщина средних лет.'
    nr 'Тот, кто препарировал труп, похоже, сжалился над ней: он зашил ей рот аккуратными мелкими стежками и наколол на лбу номер «832» элегантным шрифтом.'

    menu:
        '«Итак… чем занимаешься вечером?»' if zf832Logic.r35147_condition():
            # a0 # r35147
            $ zf832Logic.r35147_action()
            jump zf832_s1

        '«Итак… чем занимаешься вечером?»' if zf832Logic.r35164_condition():
            # a1 # r35164
            jump zf832_s1

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».' if zf832Logic.r35165_condition():
            # a2 # r35165
            jump zf832_s1

        'Использовать на трупе свою способность «История костей».' if zf832Logic.r35166_condition():
            # a3 # r35166
            jump zf832_s2

        '«Было приятно с тобой поболтать. Прощай».' if zf832Logic.r35171_condition():
            # a4 # r35171
            jump morte_s350  # EXTERN

        'Оставить труп в покое.' if zf832Logic.r35172_condition():
            # a5 # r35172
            jump morte_s350  # EXTERN

        '«Было приятно с тобой поболтать. Прощай».' if zf832Logic.r35173_condition():
            # a6 # r35173
            jump zf832_dispose

        'Оставить труп в покое.' if zf832Logic.r35174_condition():
            # a7 # r35174
            jump zf832_dispose

        '«Было приятно с тобой поболтать. Прощай».' if zf832Logic.r35175_condition():
            # a8 # r35175
            jump zf832_dispose

        'Оставить труп в покое.' if zf832Logic.r35176_condition():
            # a9 # r35176
            jump zf832_dispose


# s1 # say35148
label zf832_s1: # from 0.0 0.1 0.2
    nr 'Труп продолжает пялиться на тебя.'

    menu:
        '«Тогда прощай».' if zf832Logic.r35149_condition():
            # a10 # r35149
            jump morte_s350  # EXTERN

        '«Тогда прощай».' if zf832Logic.r35162_condition():
            # a11 # r35162
            jump zf832_dispose

        '«Тогда прощай».' if zf832Logic.r35163_condition():
            # a12 # r35163
            jump zf832_dispose


# s2 # say35167
label zf832_s2: # from 0.3
    nr 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        '«Тогда прощай».' if zf832Logic.r35168_condition():
            # a13 # r35168
            jump morte_s350  # EXTERN

        '«Тогда прощай».' if zf832Logic.r35169_condition():
            # a14 # r35169
            jump zf832_dispose

        '«Тогда прощай».' if zf832Logic.r35170_condition():
            # a15 # r35170
            jump zf832_dispose


# s3 # say35177
label zf832_s3: # - # IF ~  False()
    nr 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump zf832_dispose


label zf832_kill:
    nr 'Несмотря на жесткую иссохшую кожу, совершенно очевидно, что раньше это была красивая женщина средних лет.'
    nr 'Тот, кто препарировал труп, похоже, сжалился над ней: он зашил ей рот аккуратными мелкими стежками и наколол на лбу номер «832» элегантным шрифтом.'

    menu:
        '(Уйти.)':
            jump zf832_dispose
        '(Убить зомби).':
            jump zf832_killed


label zf832_killed:
    $ zf832Logic.kill_zf832()
    nr 'На секунду я замедляю удар, задерживая взгляд на красивых глазах - на глазах без жизни и без разума. А потом без сожалений разрушаю красоту.'
    jump zf832_dispose
