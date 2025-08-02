init 10 python:
    from dlgs.mortualy_zombies.dzf1096_logic import Dzf1096Logic
    dzf1096Logic = Dzf1096Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZF1096.DLG # orphan dzf1096_s3
# ###


label start_dzf1096_talk:
    call dzf1096_init
    jump dzf1096_s0
label start_dzf1096_kill:
    call dzf1096_init
    jump dzf1096_kill
label dzf1096_dmorte_extern:
    show morte_img default at center_right_down
    return
label dzf1096_init:
    $ dzf1096Logic.dzf1096_init()
    scene bg mortuary_f2r3
    show dzf1096_img default at center_left_down
    return
label dzf1096_dispose:
    hide dzf1096_img
    hide morte_img
    jump show_graphics_menu


# s0 # say35082
label dzf1096_s0:  # - # IF ~  True() Manually checked EXTERN ~DMORTE~ : 342 as dmorte_s330
    teller 'Этот труп женщины совершает круговой обход между плитами в комнате. Ее волосы заплетены в длинную косу, которая обернута вокруг шеи в виде петли.'
    teller 'Кто-то под трафарет написал номер «1096» у нее на лбу; ее губы крепко зашиты.'

    menu:
        'Э… Красивая коса.' if dzf1096Logic.r35083_condition():
            # r0 # reply35083
            $ dzf1096Logic.r35083_action()
            jump dzf1096_s1

        'Э… Красивая коса.' if dzf1096Logic.r35100_condition():
            # r1 # reply35100
            jump dzf1096_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzf1096Logic.r35101_condition():
            # r2 # reply35101
            jump dzf1096_s1

        'Использовать на трупе свою способность История костей.' if dzf1096Logic.r35102_condition():
            # r3 # reply35102
            jump dzf1096_s2

        'Было приятно с тобой поболтать. Прощай.' if dzf1096Logic.r35107_condition():
            # r4 # reply35107
            jump dmorte_s330

        'Оставить труп в покое.' if dzf1096Logic.r35108_condition():
            # r5 # reply35108
            jump dmorte_s330

        'Было приятно с тобой поболтать. Прощай.' if dzf1096Logic.r35109_condition():
            # r6 # reply35109
            jump dzf1096_dispose

        'Оставить труп в покое.' if dzf1096Logic.r35110_condition():
            # r7 # reply35110
            jump dzf1096_dispose

        'Было приятно с тобой поболтать. Прощай.' if dzf1096Logic.r35111_condition():
            # r8 # reply35111
            jump dzf1096_dispose

        'Оставить труп в покое.' if dzf1096Logic.r35112_condition():
            # r9 # reply35112
            jump dzf1096_dispose


# s1 # say35084
label dzf1096_s1:  # from 0.0 0.1 0.2 # Manually checked EXTERN ~DMORTE~ : 342 as dmorte_s330
    teller 'Труп не отвечает. Ты сомневаешься, знает ли она вообще о твоем присутствии.'

    menu:
        'Использовать на трупе свою способность История костей.' if dzf1096Logic.r35102_condition():
            # r3 # reply35102
            jump dzf1096_s2

        'Было приятно с тобой поболтать. Прощай.' if dzf1096Logic.r35107_condition():
            # r4 # reply35107
            jump dmorte_s330

        'Было приятно с тобой поболтать. Прощай.' if dzf1096Logic.r35109_condition():
            # r6 # reply35109
            jump dzf1096_dispose

        'Было приятно с тобой поболтать. Прощай.' if dzf1096Logic.r35111_condition():
            # r8 # reply35111
            jump dzf1096_dispose

        'Тогда прощай.' if dzf1096Logic.r35085_condition():
            # r10 # reply35085
            jump dmorte_s330

        'Тогда прощай.' if dzf1096Logic.r35098_condition():
            # r11 # reply35098
            jump dzf1096_dispose

        'Тогда прощай.' if dzf1096Logic.r35099_condition():
            # r12 # reply35099
            jump dzf1096_dispose

        'Оставить труп в покое.' if dzf1096Logic.r35108_condition():
            # r5 # reply35108
            jump dmorte_s330

        'Оставить труп в покое.' if dzf1096Logic.r35110_condition():
            # r7 # reply35110
            jump dzf1096_dispose

        'Оставить труп в покое.' if dzf1096Logic.r35112_condition():
            # r9 # reply35112
            jump dzf1096_dispose


# s2 # say35103
label dzf1096_s2:  # from 0.3 # Manually checked EXTERN ~DMORTE~ : 342 as dmorte_s330
    teller 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzf1096Logic.r35101_condition():
            # r2 # reply35101
            jump dzf1096_s1

        'Было приятно с тобой поболтать. Прощай.' if dzf1096Logic.r35107_condition():
            # r4 # reply35107
            jump dmorte_s330

        'Было приятно с тобой поболтать. Прощай.' if dzf1096Logic.r35109_condition():
            # r6 # reply35109
            jump dzf1096_dispose

        'Было приятно с тобой поболтать. Прощай.' if dzf1096Logic.r35111_condition():
            # r8 # reply35111
            jump dzf1096_dispose

        'Тогда прощай.' if dzf1096Logic.r35104_condition():
            # r13 # reply35104
            jump dmorte_s330

        'Тогда прощай.' if dzf1096Logic.r35105_condition():
            # r14 # reply35105
            jump dzf1096_dispose

        'Тогда прощай.' if dzf1096Logic.r35106_condition():
            # r15 # reply35106
            jump dzf1096_dispose

        'Оставить труп в покое.' if dzf1096Logic.r35108_condition():
            # r5 # reply35108
            jump dmorte_s330

        'Оставить труп в покое.' if dzf1096Logic.r35110_condition():
            # r7 # reply35110
            jump dzf1096_dispose

        'Оставить труп в покое.' if dzf1096Logic.r35112_condition():
            # r9 # reply35112
            jump dzf1096_dispose


# s3 # say35113
label dzf1096_s3:  # - # IF ~  False() # orphan
    teller 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump dzf1096_dispose


label dzf1096_kill:
    teller 'Этот труп женщины совершает круговой обход между плитами в комнате. Ее волосы заплетены в длинную косу, которая обернута вокруг шеи в виде петли.'
    teller 'Кто-то под трафарет написал номер «1096» у нее на лбу; ее губы крепко зашиты.'

    menu:
        '(Уйти.)':
            jump dzf1096_dispose
        '(Убить зомби).':
            jump dzf1096_killed

label dzf1096_killed:
    $ dzf1096Logic.kill_dzf1096()
    teller 'Я затягиваю косу вокруг её шеи. Она поворачивается ко мне с смотрит на меня пустыми глазами.'
    teller '...'
    teller 'Она же и так не дышит.'
    teller 'Я сжимаю косу изо всех сил - шея женщины ощутимо хрустит. Ещё немного - и она смотрит на меня снизу вверх.'
    teller 'В её глазах нет ни жизни, ни разума.'
    jump dzf1096_dispose
