init 10 python:
    from game.dlgs.mortuary_zombies.zf891_logic import Zf891Logic
    zf891Logic = Zf891Logic(renpy.store.global_state_manager)


# ###
# Original:  DLG/DZF891.DLG
# ###


# s0 # say35274
label zf891_s0: # - # IF ~  True()
    nr 'Этот труп женщины выглядит особенно отвратительно: он лишен ушей, носа и губ.'
    nr 'Чтобы зашить рот, препарирующему пришлось стягивать кожу вокруг рта очень туго; через оставшуюся открытой щель все еще можно разглядеть ряд кривых желтых зубов. На лбу вырезан номер «891».'

    menu:
        '«Итак… чем занимаешься вечером?»' if zf891Logic.r35275_condition():
            # a0 # r35275
            $ zf891Logic.r35275_action()
            jump zf891_s1

        '«Итак… чем занимаешься вечером?»' if zf891Logic.r35292_condition():
            # a1 # r35292
            jump zf891_s1

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».' if zf891Logic.r35293_condition():
            # a2 # r35293
            jump zf891_s1

        'Использовать на трупе свою способность «История костей».' if zf891Logic.r35294_condition():
            # a3 # r35294
            jump zf891_s2

        '«Было приятно с тобой поболтать. Прощай».' if zf891Logic.r35299_condition():
            # a4 # r35299
            jump morte_s366  # EXTERN

        'Оставить труп в покое.' if zf891Logic.r35300_condition():
            # a5 # r35300
            jump morte_s366  # EXTERN

        '«Было приятно с тобой поболтать. Прощай».' if zf891Logic.r35301_condition():
            # a6 # r35301
            jump zf891_dispose

        'Оставить труп в покое.' if zf891Logic.r35302_condition():
            # a7 # r35302
            jump zf891_dispose

        '«Было приятно с тобой поболтать. Прощай».' if zf891Logic.r35303_condition():
            # a8 # r35303
            jump zf891_dispose

        'Оставить труп в покое.' if zf891Logic.r35304_condition():
            # a9 # r35304
            jump zf891_dispose


# s1 # say35276
label zf891_s1: # from 0.0 0.1 0.2
    nr 'Труп продолжает пялиться на тебя.'

    menu:
        '«Тогда прощай».' if zf891Logic.r35277_condition():
            # a10 # r35277
            jump morte_s366  # EXTERN

        '«Тогда прощай».' if zf891Logic.r35290_condition():
            # a11 # r35290
            jump zf891_dispose

        '«Тогда прощай».' if zf891Logic.r35291_condition():
            # a12 # r35291
            jump zf891_dispose


# s2 # say35295
label zf891_s2: # from 0.3
    nr 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        '«Тогда прощай».' if zf891Logic.r35296_condition():
            # a13 # r35296
            jump morte_s366  # EXTERN

        '«Тогда прощай».' if zf891Logic.r35297_condition():
            # a14 # r35297
            jump zf891_dispose

        '«Тогда прощай».' if zf891Logic.r35298_condition():
            # a15 # r35298
            jump zf891_dispose


# s3 # say35305
label zf891_s3: # - # IF ~  False()
    nr 'Труп не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump zf891_dispose
