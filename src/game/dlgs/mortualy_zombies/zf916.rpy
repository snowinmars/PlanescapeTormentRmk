init 10 python:
    from game.dlgs.mortualy_zombies.zf916_logic import Zf916Logic
    zf916Logic = Zf916Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/ZF916.DLG
# ###


label start_zf916_talk:
    call zf916_init
    jump zf916_s0
label start_zf916_kill:
    call zf916_init
    jump zf916_kill
label zf916_init:
    $ zf916Logic.zf916_init()
    scene bg DISABLED
    show zf916_img default at center_left_down
    return
label zf916_dispose:
    hide zf916_img
    jump show_graphics_menu


# s0 # say24719
label zf916_s0:  # - # IF ~  True()
    nr 'Труп женщины смотрит на тебя пустым взглядом. На ее лбу вырезан номер «916»; ее губы крепко зашиты. От тела исходит легкий запах формальдегида.'

    menu:
        '«Итак… чем занимаешься вечером?»' if zf916Logic.r24720_condition():
            # r0 # reply24720
            $ zf916Logic.r24720_action()
            jump zf916_s1

        '«Итак… чем занимаешься вечером?»' if zf916Logic.r24737_condition():
            # r1 # reply24737
            jump zf916_s1

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».' if zf916Logic.r24738_condition():
            # r2 # reply24738
            jump zf916_s1

        'Использовать на трупе свою способность «История костей».' if zf916Logic.r24739_condition():
            # r3 # reply24739
            jump zf916_s2

        '«Было приятно с тобой поболтать. Прощай».' if zf916Logic.r24744_condition():
            # r4 # reply24744
            jump morte_s46  # EXTERN

        'Оставить труп в покое.' if zf916Logic.r24745_condition():
            # r5 # reply24745
            jump morte_s46  # EXTERN

        '«Было приятно с тобой поболтать. Прощай».' if zf916Logic.r24746_condition():
            # r6 # reply24746
            jump zf916_dispose

        'Оставить труп в покое.' if zf916Logic.r24747_condition():
            # r7 # reply24747
            jump zf916_dispose

        '«Было приятно с тобой поболтать. Прощай».' if zf916Logic.r24748_condition():
            # r8 # reply24748
            jump zf916_dispose

        'Оставить труп в покое.' if zf916Logic.r24749_condition():
            # r9 # reply24749
            jump zf916_dispose


# s1 # say24721
label zf916_s1:  # from 0.0 0.1 0.2
    nr 'Труп продолжает пялиться на тебя.'

    menu:
        '«Тогда прощай».' if zf916Logic.r24722_condition():
            # r10 # reply24722
            jump morte_s46  # EXTERN

        '«Тогда прощай».' if zf916Logic.r24735_condition():
            # r11 # reply24735
            jump zf916_dispose

        '«Тогда прощай».' if zf916Logic.r24736_condition():
            # r12 # reply24736
            jump zf916_dispose


# s2 # say24740
label zf916_s2:  # from 0.3
    nr 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        '«Тогда прощай».' if zf916Logic.r24741_condition():
            # r13 # reply24741
            jump morte_s46  # EXTERN

        '«Тогда прощай».' if zf916Logic.r24742_condition():
            # r14 # reply24742
            jump zf916_dispose

        '«Тогда прощай».' if zf916Logic.r24743_condition():
            # r15 # reply24743
            jump zf916_dispose


# s3 # say24750
label zf916_s3:  # - # IF ~  False()
    nr 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump zf916_dispose


label zf916_kill:
    nr 'Труп женщины смотрит на тебя пустым взглядом. На ее лбу вырезан номер «916»; ее губы крепко зашиты. От тела исходит легкий запах формальдегида.'

    menu:
        '(Уйти.)':
            jump zf916_dispose
        '(Убить зомби).':
            jump zf916_killed


label zf916_killed:
    $ zf916Logic.kill_zf916()
    nr 'Я бью в этот пустой взгляд, в запах формальдегида. Последний удар я наношу в губы.'
    jump zf916_dispose
