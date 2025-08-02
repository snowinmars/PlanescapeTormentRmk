init 10 python:
    from dlgs.mortualy_zombies.zf891_logic import Zf891Logic
    zf891Logic = Zf891Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZF891.DLG # orphan zf891_s3
# ###


label start_zf891_talk:
    call zf891_init
    jump zf891_s0
label start_zf891_kill:
    call zf891_init
    jump zf891_kill
label zf891_init:
    $ zf891Logic.zf891_init()
    scene bg mortuary2
    show zf891_img default at center_left_down
    return
label zf891_dispose:
    hide zf891_img
    jump show_graphics_menu


# s0 # say35274
label zf891_s0:  # - # IF ~  True() Manually checked EXTERN ~DMORTE~ : 366 as morte_s330
    teller 'Этот труп женщины выглядит особенно отвратительно: он лишен ушей, носа и губ.'
    teller 'Чтобы зашить рот, препарирующему пришлось стягивать кожу вокруг рта очень туго; через оставшуюся открытой щель все еще можно разглядеть ряд кривых желтых зубов. На лбу вырезан номер «891».'

    menu:
        'Итак… чем занимаешься вечером?' if zf891Logic.r35275_condition():
            # r0 # reply35275
            $ zf891Logic.r35275_action()
            jump zf891_s1

        'Итак… чем занимаешься вечером?' if zf891Logic.r35292_condition():
            # r1 # reply35292
            jump zf891_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if zf891Logic.r35293_condition():
            # r2 # reply35293
            jump zf891_s1

        'Использовать на трупе свою способность История костей.' if zf891Logic.r35294_condition():
            # r3 # reply35294
            jump zf891_s2

        'Было приятно с тобой поболтать. Прощай.' if zf891Logic.r35299_condition():
            # r4 # reply35299
            jump morte_s330

        'Оставить труп в покое.' if zf891Logic.r35300_condition():
            # r5 # reply35300
            jump morte_s330

        'Было приятно с тобой поболтать. Прощай.' if zf891Logic.r35301_condition():
            # r6 # reply35301
            jump zf891_dispose

        'Оставить труп в покое.' if zf891Logic.r35302_condition():
            # r7 # reply35302
            jump zf891_dispose

        'Было приятно с тобой поболтать. Прощай.' if zf891Logic.r35303_condition():
            # r8 # reply35303
            jump zf891_dispose

        'Оставить труп в покое.' if zf891Logic.r35304_condition():
            # r9 # reply35304
            jump zf891_dispose


# s1 # say35276
label zf891_s1:  # from 0.0 0.1 0.2 # Manually checked EXTERN ~DMORTE~ : 366 as morte_s330
    teller 'Труп продолжает пялиться на тебя.'

    menu:
        'Использовать на трупе свою способность История костей.' if zf891Logic.r35294_condition():
            # r3 # reply35294
            jump zf891_s2

        'Было приятно с тобой поболтать. Прощай.' if zf891Logic.r35299_condition():
            # r4 # reply35299
            jump morte_s330

        'Было приятно с тобой поболтать. Прощай.' if zf891Logic.r35301_condition():
            # r6 # reply35301
            jump zf891_dispose

        'Было приятно с тобой поболтать. Прощай.' if zf891Logic.r35303_condition():
            # r8 # reply35303
            jump zf891_dispose

        'Тогда прощай.' if zf891Logic.r35277_condition():
            # r10 # reply35277
            jump morte_s330

        'Тогда прощай.' if zf891Logic.r35290_condition():
            # r11 # reply35290
            jump zf891_dispose

        'Тогда прощай.' if zf891Logic.r35291_condition():
            # r12 # reply35291
            jump zf891_dispose

        'Оставить труп в покое.' if zf891Logic.r35300_condition():
            # r5 # reply35300
            jump morte_s330

        'Оставить труп в покое.' if zf891Logic.r35302_condition():
            # r7 # reply35302
            jump zf891_dispose

        'Оставить труп в покое.' if zf891Logic.r35304_condition():
            # r9 # reply35304
            jump zf891_dispose


# s2 # say35295
label zf891_s2:  # from 0.3 # Manually checked EXTERN ~DMORTE~ : 366 as morte_s330
    teller 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if zf891Logic.r35293_condition():
            # r2 # reply35293
            jump zf891_s1

        'Было приятно с тобой поболтать. Прощай.' if zf891Logic.r35299_condition():
            # r4 # reply35299
            jump morte_s330

        'Было приятно с тобой поболтать. Прощай.' if zf891Logic.r35301_condition():
            # r6 # reply35301
            jump zf891_dispose

        'Было приятно с тобой поболтать. Прощай.' if zf891Logic.r35303_condition():
            # r8 # reply35303
            jump zf891_dispose

        'Тогда прощай.' if zf891Logic.r35296_condition():
            # r13 # reply35296
            jump morte_s330

        'Тогда прощай.' if zf891Logic.r35297_condition():
            # r14 # reply35297
            jump zf891_dispose

        'Тогда прощай.' if zf891Logic.r35298_condition():
            # r15 # reply35298
            jump zf891_dispose

        'Оставить труп в покое.' if zf891Logic.r35300_condition():
            # r5 # reply35300
            jump morte_s330

        'Оставить труп в покое.' if zf891Logic.r35302_condition():
            # r7 # reply35302
            jump zf891_dispose

        'Оставить труп в покое.' if zf891Logic.r35304_condition():
            # r9 # reply35304
            jump zf891_dispose


# s3 # say35305
label zf891_s3:  # - # IF ~  False() # orphan
    teller 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump zf891_dispose


label zf891_kill:
    teller 'Этот труп женщины выглядит особенно отвратительно: он лишен ушей, носа и губ.'
    teller 'Чтобы зашить рот, препарирующему пришлось стягивать кожу вокруг рта очень туго; через оставшуюся открытой щель все еще можно разглядеть ряд кривых желтых зубов. На лбу вырезан номер «891».'

    menu:
        '(Уйти.)':
            jump zf891_dispose
        '(Убить зомби).':
            jump zf891_killed


label zf891_killed:
    $ zf891Logic.kill_zf891()
    teller 'На секунду я замедляю удар, задерживая взгляд на чудовищно уродливом лице, на глазах без жизни и без разума. А потом без сожалений бью.'
    jump zf891_dispose
