init 10 python:
    from dlgs.mortualy_zombies.dzf916_logic import Dzf916Logic
    dzf916Logic = Dzf916Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZF916.DLG
# ###


label start_dzf916_talk:
    call dzf916_init
    jump dzf916_s0
label start_dzf916_kill:
    call dzf916_init
    jump dzf916_kill
label dzf916_init:
    $ dzf916Logic.dzf916_init()
    scene bg mortuary2
    show dzf916_img default at center_left_down
    return
label dzf916_dispose:
    hide dzf916_img
    jump show_graphics_menu


# s0 # say24719
label dzf916_s0:  # from - # Manually checked EXTERN ~DMORTE~ : 46 as dmorte_s330
    teller 'Труп женщины смотрит на тебя пустым взглядом. На ее лбу вырезан номер «916»; ее губы крепко зашиты. От тела исходит легкий запах формальдегида.'

    menu:
        'Итак… чем занимаешься вечером?' if dzf916Logic.r24720_condition():
            # r0 # reply24720
            $ dzf916Logic.r24720_action()
            jump dzf916_s1
        'Итак… чем занимаешься вечером?' if dzf916Logic.r24737_condition():
            # r1 # reply24737
            jump dzf916_s1
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzf916Logic.r24738_condition():
            # r2 # reply24738
            jump dzf916_s1
        'Использовать на трупе свою способность История костей.' if dzf916Logic.r24739_condition():
            # r3 # reply24739
            jump dzf916_s2
        'Было приятно с тобой поболтать. Прощай.' if dzf916Logic.r24744_condition():
            # r4 # reply24744
            jump dmorte_s330
        'Было приятно с тобой поболтать. Прощай.' if dzf916Logic.r24746_condition():
            # r6 # reply24746
            jump dzf916_dispose
        'Было приятно с тобой поболтать. Прощай.' if dzf916Logic.r24748_condition():
            # r8 # reply24748
            jump dzf916_dispose
        'Оставить труп в покое.' if dzf916Logic.r24745_condition():
            # r5 # reply24745
            jump dmorte_s330
        'Оставить труп в покое.' if dzf916Logic.r24747_condition():
            # r7 # reply24747
            jump dzf916_dispose
        'Оставить труп в покое.' if dzf916Logic.r24749_condition():
            # r9 # reply24749
            jump dzf916_dispose


# s1 # say24721
label dzf916_s1:  # from 0.0 0.1 0.2 # Manually checked EXTERN ~DMORTE~ : 46 as dmorte_s330
    teller 'Труп продолжает пялиться на тебя.'

    menu:
        'Использовать на трупе свою способность История костей.' if dzf916Logic.r24739_condition():
            # r3 # reply24739
            jump dzf916_s2
        'Было приятно с тобой поболтать. Прощай.' if dzf916Logic.r24744_condition():
            # r4 # reply24744
            jump dmorte_s330
        'Было приятно с тобой поболтать. Прощай.' if dzf916Logic.r24746_condition():
            # r6 # reply24746
            jump dzf916_dispose
        'Было приятно с тобой поболтать. Прощай.' if dzf916Logic.r24748_condition():
            # r8 # reply24748
            jump dzf916_dispose
        'Тогда прощай.' if dzf916Logic.r24722_condition():
            # r10 # reply24722
            jump dmorte_s330
        'Тогда прощай.' if dzf916Logic.r24735_condition():
            # r11 # reply24735
            jump dzf916_dispose
        'Тогда прощай.' if dzf916Logic.r24736_condition():
            # r12 # reply24736
            jump dzf916_dispose
        'Оставить труп в покое.' if dzf916Logic.r24745_condition():
            # r5 # reply24745
            jump dmorte_s330
        'Оставить труп в покое.' if dzf916Logic.r24747_condition():
            # r7 # reply24747
            jump dzf916_dispose
        'Оставить труп в покое.' if dzf916Logic.r24749_condition():
            # r9 # reply24749
            jump dzf916_dispose


# s2 # say24740
label dzf916_s2:  # from 0.3 # Manually checked EXTERN ~DMORTE~ : 46 as dmorte_s330
    teller 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzf916Logic.r24738_condition():
            # r2 # reply24738
            jump dzf916_s1
        'Было приятно с тобой поболтать. Прощай.' if dzf916Logic.r24744_condition():
            # r4 # reply24744
            jump dmorte_s330
        'Было приятно с тобой поболтать. Прощай.' if dzf916Logic.r24746_condition():
            # r6 # reply24746
            jump dzf916_dispose
        'Было приятно с тобой поболтать. Прощай.' if dzf916Logic.r24748_condition():
            # r8 # reply24748
            jump dzf916_dispose
        'Тогда прощай.' if dzf916Logic.r24741_condition():
            # r13 # reply24741
            jump dmorte_s330
        'Тогда прощай.' if dzf916Logic.r24742_condition():
            # r14 # reply24742
            jump dzf916_dispose
        'Тогда прощай.' if dzf916Logic.r24743_condition():
            # r15 # reply24743
            jump dzf916_dispose
        'Оставить труп в покое.' if dzf916Logic.r24745_condition():
            # r5 # reply24745
            jump dmorte_s330
        'Оставить труп в покое.' if dzf916Logic.r24747_condition():
            # r7 # reply24747
            jump dzf916_dispose
        'Оставить труп в покое.' if dzf916Logic.r24749_condition():
            # r9 # reply24749
            jump dzf916_dispose


label dzf916_kill:
    teller 'Труп женщины смотрит на тебя пустым взглядом. На ее лбу вырезан номер «916»; ее губы крепко зашиты. От тела исходит легкий запах формальдегида.'

    menu:
        '(Уйти.)':
            jump dzf916_dispose
        '(Убить зомби).':
            jump dzf916_killed


label dzf916_killed:
    $ dzf916Logic.kill_dzf916()
    teller 'Я бью в этот пустой взгляд, в запах формальдегида. Последний удар я наношу в губы.'
    jump dzf916_dispose
