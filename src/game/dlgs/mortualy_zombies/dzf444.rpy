init 10 python:
    from dlgs.mortualy_zombies.dzf444_logic import Dzf444Logic
    dzf444Logic = Dzf444Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZF444.DLG
# ###


label start_dzf444_talk:
    call dzf444_init
    jump dzf444_s0
label start_dzf444_kill:
    call dzf444_init
    jump dzf444_kill
label dzf444_init:
    $ dzf444Logic.dzf444_init()
    scene bg mortuary2
    show dzf444_img default at center_left_down
    return
label dzf444_dispose:
    hide dzf444_img
    jump show_graphics_menu


# s0 # say35210
label dzf444_s0:  # from - # Manually checked EXTERN ~DMORTE~ : 358 as dmorte_s330
    teller 'У этого трупа женщины ужасный вид. Ее грубая, обработанная бальзамом кожа покрыта сотнями небольших укусов, вероятно, крысиных.'
    teller 'Судя по складкам вокруг ран, они, скорее всего, были нанесены еще до того, как труп препарировали. Ее губы зашиты, а на лице темно-синими чернилами выведен номер «444».'

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
        'Было приятно с тобой поболтать. Прощай.' if dzf444Logic.r35235_condition():
            # r4 # reply35235
            jump dmorte_s330
        'Было приятно с тобой поболтать. Прощай.' if dzf444Logic.r35237_condition():
            # r6 # reply35237
            jump dzf444_dispose
        'Было приятно с тобой поболтать. Прощай.' if dzf444Logic.r35239_condition():
            # r8 # reply35239
            jump dzf444_dispose
        'Оставить труп в покое.' if dzf444Logic.r35236_condition():
            # r5 # reply35236
            jump dmorte_s330
        'Оставить труп в покое.' if dzf444Logic.r35238_condition():
            # r7 # reply35238
            jump dzf444_dispose
        'Оставить труп в покое.' if dzf444Logic.r35240_condition():
            # r9 # reply35240
            jump dzf444_dispose


# s1 # say35212
label dzf444_s1:  # from 0.0 0.1 0.2 # Manually checked EXTERN ~DMORTE~ : 358 as dmorte_s330 (dmorte_s358 in the original Ps:T)
    teller 'Труп продолжает пялиться на тебя.'

    menu:
        'Использовать на трупе свою способность История костей.' if dzf444Logic.r35230_condition():
            # r3 # reply35230
            jump dzf444_s2
        'Было приятно с тобой поболтать. Прощай.' if dzf444Logic.r35235_condition():
            # r4 # reply35235
            jump dmorte_s330
        'Было приятно с тобой поболтать. Прощай.' if dzf444Logic.r35237_condition():
            # r6 # reply35237
            jump dzf444_dispose
        'Было приятно с тобой поболтать. Прощай.' if dzf444Logic.r35239_condition():
            # r8 # reply35239
            jump dzf444_dispose
        'Тогда прощай.' if dzf444Logic.r35213_condition():
            # r10 # reply35213
            jump dmorte_s330
        'Тогда прощай.' if dzf444Logic.r35226_condition():
            # r11 # reply35226
            jump dzf444_dispose
        'Тогда прощай.' if dzf444Logic.r35227_condition():
            # r12 # reply35227
            jump dzf444_dispose
        'Оставить труп в покое.' if dzf444Logic.r35236_condition():
            # r5 # reply35236
            jump dmorte_s330
        'Оставить труп в покое.' if dzf444Logic.r35238_condition():
            # r7 # reply35238
            jump dzf444_dispose
        'Оставить труп в покое.' if dzf444Logic.r35240_condition():
            # r9 # reply35240
            jump dzf444_dispose


# s2 # say35231
label dzf444_s2:  # from 0.3 # Manually checked EXTERN ~DMORTE~ : 358 as dmorte_s330
    teller 'Труп не реагирует. Кажется, он слишкомдалек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzf444Logic.r35229_condition():
            # r2 # reply35229
            jump dzf444_s1
        'Было приятно с тобой поболтать. Прощай.' if dzf444Logic.r35235_condition():
            # r4 # reply35235
            jump dmorte_s330
        'Было приятно с тобой поболтать. Прощай.' if dzf444Logic.r35237_condition():
            # r6 # reply35237
            jump dzf444_dispose
        'Было приятно с тобой поболтать. Прощай.' if dzf444Logic.r35239_condition():
            # r8 # reply35239
            jump dzf444_dispose
        'Тогда прощай.' if dzf444Logic.r35232_condition():
            # r13 # reply35232
            jump dmorte_s330
        'Тогда прощай.' if dzf444Logic.r35233_condition():
            # r14 # reply35233
            jump dzf444_dispose
        'Тогда прощай.' if dzf444Logic.r35234_condition():
            # r15 # reply35234
            jump dzf444_dispose
        'Оставить труп в покое.' if dzf444Logic.r35236_condition():
            # r5 # reply35236
            jump dmorte_s330
        'Оставить труп в покое.' if dzf444Logic.r35238_condition():
            # r7 # reply35238
            jump dzf444_dispose
        'Оставить труп в покое.' if dzf444Logic.r35240_condition():
            # r9 # reply35240
            jump dzf444_dispose


label dzf444_kill:
    teller 'У этого трупа женщины ужасный вид. Ее грубая, обработанная бальзамом кожа покрыта сотнями небольших укусов, вероятно, крысиных.'
    teller 'Судя по складкам вокруг ран, они, скорее всего, были нанесены еще до того, как труп препарировали. Ее губы зашиты, а на лице темно-синими чернилами выведен номер «444».'

    menu:
        '(Уйти.)':
            jump dzf444_dispose
        '(Убить зомби).':
            jump dzf444_killed


label dzf444_killed:
    $ dzf444Logic.kill_dzf444()
    teller 'Она смотрит на меня пустыми глазами.'
    teller 'В них нет ни жизни, ни разума. От падения трупа рвутся нитки на губах. Я не чувствую сожаления.'
    jump dzf444_dispose
