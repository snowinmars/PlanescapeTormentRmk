init 10 python:
    from game.dlgs.mortuary_zombies.zf444_logic import Zf444Logic
    zf444Logic = Zf444Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZF444.DLG
# ###


label zf444_s0_ctor: # - # IF ~  True()
    scene bg DISABLED
    show zf444_img default at center_left_down
    jump zf444_s0


label zf444_s3_ctor: # - # IF ~  False()
    scene bg DISABLED
    show zf444_img default at center_left_down
    jump zf444_s3


label zf444_dispose:
    hide zf444_img
    jump graphics_menu


# s0 # say35210
label zf444_s0: # - # IF ~  True()
    nr 'У этого трупа женщины ужасный вид. Ее грубая, обработанная бальзамом кожа покрыта сотнями небольших укусов, вероятно, крысиных. Судя по складкам вокруг ран, они, скорее всего, были нанесены еще до того, как труп препарировали. Ее губы зашиты, а на лице темно-синими чернилами выведен номер «444».'

    menu:
        '«Итак… чем занимаешься вечером?»' if zf444Logic.r35211_condition():
            # a0 # r35211
            $ zf444Logic.r35211_action()
            jump zf444_s1

        '«Итак… чем занимаешься вечером?»' if zf444Logic.r35228_condition():
            # a1 # r35228
            jump zf444_s1

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».' if zf444Logic.r35229_condition():
            # a2 # r35229
            jump zf444_s1

        'Использовать на трупе свою способность «История костей».' if zf444Logic.r35230_condition():
            # a3 # r35230
            jump zf444_s2

        '«Было приятно с тобой поболтать. Прощай».' if zf444Logic.r35235_condition():
            # a4 # r35235
            jump morte_s358  # EXTERN

        'Оставить труп в покое.' if zf444Logic.r35236_condition():
            # a5 # r35236
            jump morte_s358  # EXTERN

        '«Было приятно с тобой поболтать. Прощай».' if zf444Logic.r35237_condition():
            # a6 # r35237
            jump zf444_dispose

        'Оставить труп в покое.' if zf444Logic.r35238_condition():
            # a7 # r35238
            jump zf444_dispose

        '«Было приятно с тобой поболтать. Прощай».' if zf444Logic.r35239_condition():
            # a8 # r35239
            jump zf444_dispose

        'Оставить труп в покое.' if zf444Logic.r35240_condition():
            # a9 # r35240
            jump zf444_dispose


# s1 # say35212
label zf444_s1: # from 0.0 0.1 0.2
    nr 'Труп продолжает пялиться на тебя.'

    menu:
        '«Тогда прощай».' if zf444Logic.r35213_condition():
            # a10 # r35213
            jump morte_s358  # EXTERN

        '«Тогда прощай».' if zf444Logic.r35226_condition():
            # a11 # r35226
            jump zf444_dispose

        '«Тогда прощай».' if zf444Logic.r35227_condition():
            # a12 # r35227
            jump zf444_dispose


# s2 # say35231
label zf444_s2: # from 0.3
    nr 'Труп не реагирует. Кажется, он слишкомдалек от того, чтобы отвечать на твои вопросы.'

    menu:
        '«Тогда прощай».' if zf444Logic.r35232_condition():
            # a13 # r35232
            jump morte_s358  # EXTERN

        '«Тогда прощай».' if zf444Logic.r35233_condition():
            # a14 # r35233
            jump zf444_dispose

        '«Тогда прощай».' if zf444Logic.r35234_condition():
            # a15 # r35234
            jump zf444_dispose


# s3 # say35241
label zf444_s3: # - # IF ~  False()
    nr 'Труп не реагирует. Кажется, он слишкомдалек от того, чтобы отвечать на твои вопросы.'

    jump zf444_dispose
