init 10 python:
    from dlgs.zf444_logic import Zf444Logic
    zf444Logic = Zf444Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/ZF444.DLG
# ###


label zf444_init:
    return


label zf444_dispose:
    jump show_graphics_menu


# s0 # say35210
label zf444_s0:  # - # IF ~  True()  Check EXTERN ~DMORTE~ : 358
    SPEAKER 'У этого трупа женщины ужасный вид. Ее грубая, обработанная бальзамом кожа покрыта сотнями небольших укусов, вероятно, крысиных. Судя по складкам вокруг ран, они, скорее всего, были нанесены еще до того, как труп препарировали. Ее губы зашиты, а на лице темно-синими чернилами выведен номер 444.'

    menu:
        'Итак… чем занимаешься вечером?' if zf444Logic.r35211_condition():
            # r0 # reply35211
            $ zf444Logic.r35211_action()
            jump zf444_s1

        'Итак… чем занимаешься вечером?' if zf444Logic.r35228_condition():
            # r1 # reply35228
            jump zf444_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if zf444Logic.r35229_condition():
            # r2 # reply35229
            jump zf444_s1

        'Использовать на трупе свою способность История костей.' if zf444Logic.r35230_condition():
            # r3 # reply35230
            jump zf444_s2

        'Было приятно с тобой поболтать. Прощай.' if zf444Logic.r35235_condition():
            # r4 # reply35235
            jump zf444_dispose

        'Оставить труп в покое.' if zf444Logic.r35236_condition():
            # r5 # reply35236
            jump zf444_dispose

        'Было приятно с тобой поболтать. Прощай.' if zf444Logic.r35237_condition():
            # r6 # reply35237
            jump zf444_dispose

        'Оставить труп в покое.' if zf444Logic.r35238_condition():
            # r7 # reply35238
            jump zf444_dispose

        'Было приятно с тобой поболтать. Прощай.' if zf444Logic.r35239_condition():
            # r8 # reply35239
            jump zf444_dispose

        'Оставить труп в покое.' if zf444Logic.r35240_condition():
            # r9 # reply35240
            jump zf444_dispose


# s1 # say35212
label zf444_s1:  # from 0.0 0.1 0.2 # Check EXTERN ~DMORTE~ : 358
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Тогда прощай.' if zf444Logic.r35213_condition():
            # r10 # reply35213
            jump zf444_dispose

        'Тогда прощай.' if zf444Logic.r35226_condition():
            # r11 # reply35226
            jump zf444_dispose

        'Тогда прощай.' if zf444Logic.r35227_condition():
            # r12 # reply35227
            jump zf444_dispose


# s2 # say35231
label zf444_s2:  # from 0.3 # Check EXTERN ~DMORTE~ : 358
    SPEAKER 'Труп не реагирует. Кажется, он слишкомдалек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Тогда прощай.' if zf444Logic.r35232_condition():
            # r13 # reply35232
            jump zf444_dispose

        'Тогда прощай.' if zf444Logic.r35233_condition():
            # r14 # reply35233
            jump zf444_dispose

        'Тогда прощай.' if zf444Logic.r35234_condition():
            # r15 # reply35234
            jump zf444_dispose


# s3 # say35241
label zf444_s3:  # - # IF ~  False()
    SPEAKER 'Труп не реагирует. Кажется, он слишкомдалек от того, чтобы отвечать на твои вопросы.'

    jump zf444_dispose