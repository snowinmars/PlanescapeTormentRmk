init 10 python:
    from dlgs.dzf891_logic import Dzf891Logic
    dzf891Logic = Dzf891Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZF891.DLG
# ###


label dzf891_init:
    return


label dzf891_dispose:
    jump show_graphics_menu


# s0 # say35274
label dzf891_s0:  # - # IF ~  True()  Check EXTERN ~DMORTE~ : 366
    SPEAKER 'Этот труп женщины выглядит особенно отвратительно: он лишен ушей, носа и губ. Чтобы зашить рот, препарирующему пришлось стягивать кожу вокруг рта очень туго; через оставшуюся открытой щель все еще можно разглядеть ряд кривых желтых зубов. На лбу вырезан номер 891.'

    menu:
        'Итак… чем занимаешься вечером?' if dzf891Logic.r35275_condition():
            # r0 # reply35275
            $ dzf891Logic.r35275_action()
            jump dzf891_s1

        'Итак… чем занимаешься вечером?' if dzf891Logic.r35292_condition():
            # r1 # reply35292
            jump dzf891_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzf891Logic.r35293_condition():
            # r2 # reply35293
            jump dzf891_s1

        'Использовать на трупе свою способность История костей.' if dzf891Logic.r35294_condition():
            # r3 # reply35294
            jump dzf891_s2

        'Было приятно с тобой поболтать. Прощай.' if dzf891Logic.r35299_condition():
            # r4 # reply35299
            jump dzf891_dispose

        'Оставить труп в покое.' if dzf891Logic.r35300_condition():
            # r5 # reply35300
            jump dzf891_dispose

        'Было приятно с тобой поболтать. Прощай.' if dzf891Logic.r35301_condition():
            # r6 # reply35301
            jump dzf891_dispose

        'Оставить труп в покое.' if dzf891Logic.r35302_condition():
            # r7 # reply35302
            jump dzf891_dispose

        'Было приятно с тобой поболтать. Прощай.' if dzf891Logic.r35303_condition():
            # r8 # reply35303
            jump dzf891_dispose

        'Оставить труп в покое.' if dzf891Logic.r35304_condition():
            # r9 # reply35304
            jump dzf891_dispose


# s1 # say35276
label dzf891_s1:  # from 0.0 0.1 0.2 # Check EXTERN ~DMORTE~ : 366
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Тогда прощай.' if dzf891Logic.r35277_condition():
            # r10 # reply35277
            jump dzf891_dispose

        'Тогда прощай.' if dzf891Logic.r35290_condition():
            # r11 # reply35290
            jump dzf891_dispose

        'Тогда прощай.' if dzf891Logic.r35291_condition():
            # r12 # reply35291
            jump dzf891_dispose


# s2 # say35295
label dzf891_s2:  # from 0.3 # Check EXTERN ~DMORTE~ : 366
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Тогда прощай.' if dzf891Logic.r35296_condition():
            # r13 # reply35296
            jump dzf891_dispose

        'Тогда прощай.' if dzf891Logic.r35297_condition():
            # r14 # reply35297
            jump dzf891_dispose

        'Тогда прощай.' if dzf891Logic.r35298_condition():
            # r15 # reply35298
            jump dzf891_dispose


# s3 # say35305
label dzf891_s3:  # - # IF ~  False()
    SPEAKER 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump dzf891_dispose