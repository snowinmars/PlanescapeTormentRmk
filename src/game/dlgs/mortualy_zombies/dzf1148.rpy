init 10 python:
    from dlgs.mortualy_zombies.dzf1148_logic import Dzf1148Logic
    dzf1148Logic = Dzf1148Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZF1148.DLG # orphan dzf1148_s3
# ###


label start_dzf1148_talk:
    call dzf1148_init
    jump dzf1148_s0
label start_dzf1148_kill:
    call dzf1148_init
    jump dzf1148_kill
label dzf1148_init:
    $ dzf1148Logic.dzf1148_init()
    scene bg mortuary2
    show dzf1148_img default at center_left_down
    return
label dzf1148_dispose:
    hide dzf1148_img
    jump show_graphics_menu


# s0 # say35242
label dzf1148_s0:  # - # IF ~  True() Manually checked EXTERN ~DMORTE~ : 362 as dmorte_s330
    teller 'Кожа этого женского трупа покрыто замысловатыми узорами татуировок.'
    teller 'Кожа на лбу отвалилась, так что номер 1148 вырезан прямо на черепе. Ее рот зашит крепкими грубыми стежками.'

    menu:
        'Итак… чем занимаешься вечером?' if dzf1148Logic.r35243_condition():
            # r0 # reply35243
            $ dzf1148Logic.r35243_action()
            jump dzf1148_s1

        'Итак… чем занимаешься вечером?' if dzf1148Logic.r35260_condition():
            # r1 # reply35260
            jump dzf1148_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzf1148Logic.r35261_condition():
            # r2 # reply35261
            jump dzf1148_s1

        'Использовать на трупе свою способность История костей.' if dzf1148Logic.r35262_condition():
            # r3 # reply35262
            jump dzf1148_s2

        'Было приятно с тобой поболтать. Прощай.' if dzf1148Logic.r35267_condition():
            # r4 # reply35267
            jump dmorte_s330

        'Оставить труп в покое.' if dzf1148Logic.r35268_condition():
            # r5 # reply35268
            jump dmorte_s330

        'Было приятно с тобой поболтать. Прощай.' if dzf1148Logic.r35269_condition():
            # r6 # reply35269
            jump dzf1148_dispose

        'Оставить труп в покое.' if dzf1148Logic.r35270_condition():
            # r7 # reply35270
            jump dzf1148_dispose

        'Было приятно с тобой поболтать. Прощай.' if dzf1148Logic.r35271_condition():
            # r8 # reply35271
            jump dzf1148_dispose

        'Оставить труп в покое.' if dzf1148Logic.r35272_condition():
            # r9 # reply35272
            jump dzf1148_dispose


# s1 # say35244
label dzf1148_s1:  # from 0.0 0.1 0.2 # Manually checked EXTERN ~DMORTE~ : 362 as dmorte_s330
    teller 'Труп продолжает пялиться на тебя.'

    menu:
        'Использовать на трупе свою способность История костей.' if dzf1148Logic.r35262_condition():
            # r3 # reply35262
            jump dzf1148_s2

        'Было приятно с тобой поболтать. Прощай.' if dzf1148Logic.r35267_condition():
            # r4 # reply35267
            jump dmorte_s330

        'Было приятно с тобой поболтать. Прощай.' if dzf1148Logic.r35269_condition():
            # r6 # reply35269
            jump dzf1148_dispose

        'Было приятно с тобой поболтать. Прощай.' if dzf1148Logic.r35271_condition():
            # r8 # reply35271
            jump dzf1148_dispose

        'Тогда прощай.' if dzf1148Logic.r35245_condition():
            # r10 # reply35245
            jump dmorte_s330

        'Тогда прощай.' if dzf1148Logic.r35258_condition():
            # r11 # reply35258
            jump dzf1148_dispose

        'Тогда прощай.' if dzf1148Logic.r35259_condition():
            # r12 # reply35259
            jump dzf1148_dispose

        'Оставить труп в покое.' if dzf1148Logic.r35268_condition():
            # r5 # reply35268
            jump dmorte_s330

        'Оставить труп в покое.' if dzf1148Logic.r35270_condition():
            # r7 # reply35270
            jump dzf1148_dispose

        'Оставить труп в покое.' if dzf1148Logic.r35272_condition():
            # r9 # reply35272
            jump dzf1148_dispose


# s2 # say35263
label dzf1148_s2:  # from 0.3 # Manually checked EXTERN ~DMORTE~ : 362 as dmorte_s330
    teller 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzf1148Logic.r35261_condition():
            # r2 # reply35261
            jump dzf1148_s1

        'Было приятно с тобой поболтать. Прощай.' if dzf1148Logic.r35267_condition():
            # r4 # reply35267
            jump dmorte_s330

        'Было приятно с тобой поболтать. Прощай.' if dzf1148Logic.r35269_condition():
            # r6 # reply35269
            jump dzf1148_dispose

        'Было приятно с тобой поболтать. Прощай.' if dzf1148Logic.r35271_condition():
            # r8 # reply35271
            jump dzf1148_dispose

        'Тогда прощай.' if dzf1148Logic.r35264_condition():
            # r13 # reply35264
            jump dmorte_s330

        'Тогда прощай.' if dzf1148Logic.r35265_condition():
            # r14 # reply35265
            jump dzf1148_dispose

        'Тогда прощай.' if dzf1148Logic.r35266_condition():
            # r15 # reply35266
            jump dzf1148_dispose

        'Оставить труп в покое.' if dzf1148Logic.r35268_condition():
            # r5 # reply35268
            jump dmorte_s330

        'Оставить труп в покое.' if dzf1148Logic.r35270_condition():
            # r7 # reply35270
            jump dzf1148_dispose

        'Оставить труп в покое.' if dzf1148Logic.r35272_condition():
            # r9 # reply35272
            jump dzf1148_dispose


# s3 # say35273
label dzf1148_s3:  # - # IF ~  False() # orphan
    teller 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump dzf1148_dispose


label dzf1148_kill:
    teller 'Кожа этого женского трупа покрыто замысловатыми узорами татуировок.'
    teller 'Кожа на лбу отвалилась, так что номер 1148 вырезан прямо на черепе. Ее рот зашит крепкими грубыми стежками.'

    menu:
        '(Уйти.)':
            jump dzf1148_dispose
        '(Убить зомби).':
            jump dzf1148_killed


label dzf1148_killed:
    $ dzf1148Logic.kill_dzf1148()
    teller 'Покрытая татуировками кожа расслаивается под моими ударами. Её тело затихает на полу.'
    jump dzf1148_dispose
