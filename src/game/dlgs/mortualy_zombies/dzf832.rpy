init 10 python:
    from dlgs.mortualy_zombies.dzf832_logic import Dzf832Logic
    dzf832Logic = Dzf832Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZF832.DLG # orphan dzf832_s3
# ###


label start_dzf832_talk:
    call dzf832_init
    jump dzf832_s0
label start_dzf832_kill:
    call dzf832_init
    jump dzf832_kill
label dzf832_init:
    $ dzf832Logic.dzf832_init()
    scene bg mortuary2
    show dzf832_img default at center_left_down
    return
label dzf832_dispose:
    hide dzf832_img
    jump show_graphics_menu


# s0 # say35146
label dzf832_s0:  # - # IF ~  True() Manually checked EXTERN ~DMORTE~ : 350 as dmorte_s330
    teller 'Несмотря на жесткую иссохшую кожу, совершенно очевидно, что раньше это была красивая женщина средних лет.'
    teller 'Тот, кто препарировал труп, похоже, сжалился над ней: он зашил ей рот аккуратными мелкими стежками и наколол на лбу номер «832» элегантным шрифтом.'

    menu:
        'Итак… чем занимаешься вечером?' if dzf832Logic.r35147_condition():
            # r0 # reply35147
            $ dzf832Logic.r35147_action()
            jump dzf832_s1

        'Итак… чем занимаешься вечером?' if dzf832Logic.r35164_condition():
            # r1 # reply35164
            jump dzf832_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzf832Logic.r35165_condition():
            # r2 # reply35165
            jump dzf832_s1

        'Использовать на трупе свою способность История костей.' if dzf832Logic.r35166_condition():
            # r3 # reply35166
            jump dzf832_s2

        'Было приятно с тобой поболтать. Прощай.' if dzf832Logic.r35171_condition():
            # r4 # reply35171
            jump dmorte_s330

        'Оставить труп в покое.' if dzf832Logic.r35172_condition():
            # r5 # reply35172
            jump dmorte_s330

        'Было приятно с тобой поболтать. Прощай.' if dzf832Logic.r35173_condition():
            # r6 # reply35173
            jump dzf832_dispose

        'Оставить труп в покое.' if dzf832Logic.r35174_condition():
            # r7 # reply35174
            jump dzf832_dispose

        'Было приятно с тобой поболтать. Прощай.' if dzf832Logic.r35175_condition():
            # r8 # reply35175
            jump dzf832_dispose

        'Оставить труп в покое.' if dzf832Logic.r35176_condition():
            # r9 # reply35176
            jump dzf832_dispose


# s1 # say35148
label dzf832_s1:  # from 0.0 0.1 0.2 # Manually checked EXTERN ~DMORTE~ : 350 as dmorte_s330
    teller 'Труп продолжает пялиться на тебя.'

    menu:
        'Использовать на трупе свою способность История костей.' if dzf832Logic.r35166_condition():
            # r3 # reply35166
            jump dzf832_s2

        'Было приятно с тобой поболтать. Прощай.' if dzf832Logic.r35171_condition():
            # r4 # reply35171
            jump dmorte_s330

        'Было приятно с тобой поболтать. Прощай.' if dzf832Logic.r35173_condition():
            # r6 # reply35173
            jump dzf832_dispose

        'Было приятно с тобой поболтать. Прощай.' if dzf832Logic.r35175_condition():
            # r8 # reply35175
            jump dzf832_dispose

        'Тогда прощай.' if dzf832Logic.r35149_condition():
            # r10 # reply35149
            jump dmorte_s330

        'Тогда прощай.' if dzf832Logic.r35162_condition():
            # r11 # reply35162
            jump dzf832_dispose

        'Тогда прощай.' if dzf832Logic.r35163_condition():
            # r12 # reply35163
            jump dzf832_dispose

        'Оставить труп в покое.' if dzf832Logic.r35172_condition():
            # r5 # reply35172
            jump dmorte_s330

        'Оставить труп в покое.' if dzf832Logic.r35174_condition():
            # r7 # reply35174
            jump dzf832_dispose

        'Оставить труп в покое.' if dzf832Logic.r35176_condition():
            # r9 # reply35176
            jump dzf832_dispose


# s2 # say35167
label dzf832_s2:  # from 0.3 # Manually checked EXTERN ~DMORTE~ : 350 as dmorte_s330
    teller 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzf832Logic.r35165_condition():
            # r2 # reply35165
            jump dzf832_s1

        'Было приятно с тобой поболтать. Прощай.' if dzf832Logic.r35171_condition():
            # r4 # reply35171
            jump dmorte_s330

        'Было приятно с тобой поболтать. Прощай.' if dzf832Logic.r35173_condition():
            # r6 # reply35173
            jump dzf832_dispose

        'Было приятно с тобой поболтать. Прощай.' if dzf832Logic.r35175_condition():
            # r8 # reply35175
            jump dzf832_dispose

        'Тогда прощай.' if dzf832Logic.r35168_condition():
            # r13 # reply35168
            jump dmorte_s330

        'Тогда прощай.' if dzf832Logic.r35169_condition():
            # r14 # reply35169
            jump dzf832_dispose

        'Тогда прощай.' if dzf832Logic.r35170_condition():
            # r15 # reply35170
            jump dzf832_dispose

        'Оставить труп в покое.' if dzf832Logic.r35172_condition():
            # r5 # reply35172
            jump dmorte_s330

        'Оставить труп в покое.' if dzf832Logic.r35174_condition():
            # r7 # reply35174
            jump dzf832_dispose

        'Оставить труп в покое.' if dzf832Logic.r35176_condition():
            # r9 # reply35176
            jump dzf832_dispose


# s3 # say35177
label dzf832_s3:  # - # IF ~  False() # orphan
    teller 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump dzf832_dispose


label dzf832_kill:
    teller 'Несмотря на жесткую иссохшую кожу, совершенно очевидно, что раньше это была красивая женщина средних лет.'
    teller 'Тот, кто препарировал труп, похоже, сжалился над ней: он зашил ей рот аккуратными мелкими стежками и наколол на лбу номер «832» элегантным шрифтом.'

    menu:
        '(Уйти.)':
            jump dzf832_dispose
        '(Убить зомби).':
            jump dzf832_killed


label dzf832_killed:
    $ dzf832Logic.kill_dzf832()
    teller 'На секунду я замедляю удар, задерживая взгляд на красивых глазах - на глазах без жизни и без разума. А потом без сожалений разрушаю красоту.'
    jump dzf832_dispose
