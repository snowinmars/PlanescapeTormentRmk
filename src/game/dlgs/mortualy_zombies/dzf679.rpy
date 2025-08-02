init 10 python:
    from dlgs.mortualy_zombies.dzf679_logic import Dzf679Logic
    dzf679Logic = Dzf679Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZF679.DLG # orphan orphan
# ###


label start_dzf679_talk:
    call dzf679_init
    jump dzf679_s0
label start_dzf679_kill:
    call dzf679_init
    jump dzf679_kill
label dzf679_init:
    $ dzf679Logic.dzf679_init()
    scene bg mortuary2
    show dzf679_img default at center_left_down
    return
label dzf679_dispose:
    hide dzf679_img
    jump show_graphics_menu


# s0 # say35178
label dzf679_s0:  # - # IF ~  True() Manually checked EXTERN ~DMORTE~ : 354 as dmorte_s330
    teller 'Похоже, это труп довольно таки старой, даже древней женщины.'
    teller 'Если не обращать внимание на зловоние бальзамирующей жидкости, швы на ее рту и номер «679», вышитый на правой щеке, то она выглядит почти так же, как и в последние годы своей жизни.'

    menu:
        'Итак… чем занимаешься вечером?' if dzf679Logic.r35179_condition():
            # r0 # reply35179
            $ dzf679Logic.r35179_action()
            jump dzf679_s1

        'Итак… чем занимаешься вечером?' if dzf679Logic.r35196_condition():
            # r1 # reply35196
            jump dzf679_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzf679Logic.r35197_condition():
            # r2 # reply35197
            jump dzf679_s1

        'Использовать на трупе свою способность История костей.' if dzf679Logic.r35198_condition():
            # r3 # reply35198
            jump dzf679_s2

        'Было приятно с тобой поболтать. Прощай.' if dzf679Logic.r35203_condition():
            # r4 # reply35203
            jump dmorte_s330

        'Оставить труп в покое.' if dzf679Logic.r35204_condition():
            # r5 # reply35204
            jump dmorte_s330

        'Было приятно с тобой поболтать. Прощай.' if dzf679Logic.r35205_condition():
            # r6 # reply35205
            jump dzf679_dispose

        'Оставить труп в покое.' if dzf679Logic.r35206_condition():
            # r7 # reply35206
            jump dzf679_dispose

        'Было приятно с тобой поболтать. Прощай.' if dzf679Logic.r35207_condition():
            # r8 # reply35207
            jump dzf679_dispose

        'Оставить труп в покое.' if dzf679Logic.r35208_condition():
            # r9 # reply35208
            jump dzf679_dispose


# s1 # say35180
label dzf679_s1:  # from 0.0 0.1 0.2 # Manually checked EXTERN ~DMORTE~ : 354 as dmorte_s330
    teller 'Труп продолжает пялиться на тебя.'

    menu:
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzf679Logic.r35197_condition():
            # r2 # reply35197
            jump dzf679_s1

        'Использовать на трупе свою способность История костей.' if dzf679Logic.r35198_condition():
            # r3 # reply35198
            jump dzf679_s2

        'Было приятно с тобой поболтать. Прощай.' if dzf679Logic.r35203_condition():
            # r4 # reply35203
            jump dmorte_s330

        'Было приятно с тобой поболтать. Прощай.' if dzf679Logic.r35205_condition():
            # r6 # reply35205
            jump dzf679_dispose

        'Было приятно с тобой поболтать. Прощай.' if dzf679Logic.r35207_condition():
            # r8 # reply35207
            jump dzf679_dispose

        'Тогда прощай.' if dzf679Logic.r35181_condition():
            # r10 # reply35181
            jump dmorte_s330

        'Тогда прощай.' if dzf679Logic.r35194_condition():
            # r11 # reply35194
            jump dzf679_dispose

        'Тогда прощай.' if dzf679Logic.r35195_condition():
            # r12 # reply35195
            jump dzf679_dispose

        'Оставить труп в покое.' if dzf679Logic.r35204_condition():
            # r5 # reply35204
            jump dmorte_s330

        'Оставить труп в покое.' if dzf679Logic.r35206_condition():
            # r7 # reply35206
            jump dzf679_dispose

        'Оставить труп в покое.' if dzf679Logic.r35208_condition():
            # r9 # reply35208
            jump dzf679_dispose


# s2 # say35199
label dzf679_s2:  # from 0.3 # Manually checked EXTERN ~DMORTE~ : 354 as dmorte_s330
    teller 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzf679Logic.r35197_condition():
            # r2 # reply35197
            jump dzf679_s1

        'Было приятно с тобой поболтать. Прощай.' if dzf679Logic.r35203_condition():
            # r4 # reply35203
            jump dmorte_s330

        'Было приятно с тобой поболтать. Прощай.' if dzf679Logic.r35205_condition():
            # r6 # reply35205
            jump dzf679_dispose

        'Было приятно с тобой поболтать. Прощай.' if dzf679Logic.r35207_condition():
            # r8 # reply35207
            jump dzf679_dispose

        'Тогда прощай.' if dzf679Logic.r35200_condition():
            # r13 # reply35200
            jump dmorte_s330

        'Тогда прощай.' if dzf679Logic.r35201_condition():
            # r14 # reply35201
            jump dzf679_dispose

        'Тогда прощай.' if dzf679Logic.r35202_condition():
            # r15 # reply35202
            jump dzf679_dispose

        'Оставить труп в покое.' if dzf679Logic.r35204_condition():
            # r5 # reply35204
            jump dmorte_s330

        'Оставить труп в покое.' if dzf679Logic.r35206_condition():
            # r7 # reply35206
            jump dzf679_dispose

        'Оставить труп в покое.' if dzf679Logic.r35208_condition():
            # r9 # reply35208
            jump dzf679_dispose


# s3 # say35209
label dzf679_s3:  # - # IF ~  False() # orphan
    teller 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump dzf679_dispose


label dzf679_kill:
    teller 'Похоже, это труп довольно таки старой, даже древней женщины.'
    teller 'Если не обращать внимание на зловоние бальзамирующей жидкости, швы на ее рту и номер «679», вышитый на правой щеке, то она выглядит почти так же, как и в последние годы своей жизни.'

    menu:
        '(Уйти.)':
            jump dzf679_dispose
        '(Убить зомби).':
            jump dzf679_killed


label dzf679_killed:
    $ dzf679Logic.kill_dzf679()
    teller 'Её тело легко складывается от моего удара - тело без жизни, без разума. Я не чувствую сожаления.'
    jump dzf679_dispose
