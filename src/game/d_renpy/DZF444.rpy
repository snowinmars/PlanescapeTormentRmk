init 10 python:
    from dlgs.dzf444_logic import Dzf444Logic
    dzf444Logic = Dzf444Logic(renpy.store.global_settings_manager)


# ###
# Original: DLG/DZF444.DLG
# ###


label dzf444_init:
    return


label dzf444_dispose:
    jump show_graphics_menu


# s0 # say35210
label dzf444_s0:  # - # IF ~  True()  Check EXTERN ~DMORTE~ : 358
    SPEAKER 'У этого трупа женщины ужасный вид. Ее грубая, обработанная бальзамом кожа покрыта сотнями небольших укусов, вероятно, крысиных. Судя по складкам вокруг ран, они, скорее всего, были нанесены еще до того, как труп препарировали. Ее губы зашиты, а на лице темно-синими чернилами выведен номер 444.'

    menu:
        'Итак… чем занимаешься вечером?' if dzf444Logic.r35211_condition():
            # r0 # reply35211
            $ dzf444Logic.r35211_action()
            jump dzf444_s1

        'Итак… чем занимаешься вечером?' if dzf444Logic.r35228_condition():
            # r1 # reply35228
            jump dzf444_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzf444Logic.r35229_condition():
            # r2 # reply35229
            jump dzf444_s1

        'Использовать на трупе свою способность История костей.' if dzf444Logic.r35230_condition():
            # r3 # reply35230
            jump dzf444_s2

        'Было приятно с тобой поболтать. Прощай.' if dzf444Logic.r35237_condition():
            # r4 # reply35237
            jump show_graphics_menu

        'Оставить труп в покое.' if dzf444Logic.r35238_condition():
            # r5 # reply35238
            jump show_graphics_menu

        'Было приятно с тобой поболтать. Прощай.' if dzf444Logic.r35239_condition():
            # r6 # reply35239
            jump show_graphics_menu

        'Оставить труп в покое.' if dzf444Logic.r35240_condition():
            # r7 # reply35240
            jump show_graphics_menu


# s1 # say35212
label dzf444_s1:  # from 0.0 0.1 0.2 # Check EXTERN ~DMORTE~ : 358
    SPEAKER 'Труп продолжает пялиться на тебя.'

    menu:
        'Тогда прощай.' if dzf444Logic.r35226_condition():
            # r8 # reply35226
            jump show_graphics_menu

        'Тогда прощай.' if dzf444Logic.r35227_condition():
            # r9 # reply35227
            jump show_graphics_menu


# s2 # say35231
label dzf444_s2:  # from 0.3 # Check EXTERN ~DMORTE~ : 358
    SPEAKER 'Труп не реагирует. Кажется, он слишкомдалек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Тогда прощай.' if dzf444Logic.r35233_condition():
            # r10 # reply35233
            jump show_graphics_menu

        'Тогда прощай.' if dzf444Logic.r35234_condition():
            # r11 # reply35234
            jump show_graphics_menu


# s3 # say35241
label dzf444_s3:  # - # IF ~  False()
    SPEAKER 'Труп не реагирует. Кажется, он слишкомдалек от того, чтобы отвечать на твои вопросы.'

    jump show_graphics_menu