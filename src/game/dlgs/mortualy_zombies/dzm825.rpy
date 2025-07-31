init 10 python:
    from dlgs.mortualy_zombies.dzm825_logic import Dzm825Logic
    dzm825Logic = Dzm825Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZM825.DLG
# ###


label start_dzm825_talk:
    call dzm825_init
    jump dzm825_s0
label start_dzm825_kill:
    call dzm825_init
    jump dzm825_kill
label dzm825_dmorte_extern:
    show morte_img default at center_right_down
    return
label dzm825_init:
    $ dzm825Logic.dzm825_init()
    scene bg mortuary_f2r1
    show dzm825_img default at center_left_down
    return
label dzm825_dispose:
    hide dzm825_img
    hide morte_img
    jump show_graphics_menu


# s0 # say24564
label dzm825_s0:  # from - # Manually checked EXTERN ~DMORTE1~ : 31
    teller 'Голова этого трупа болтается на плечах… судя по вывернутой шее, этого человека повесили. На виске нарисован номер 825.'

    menu:
        'Я ищу ключ… быть может, он у тебя?' if dzm825Logic.r24565_condition():
            # r0 # reply24565
            call dzm825_dmorte_extern
            jump dmorte1_s31
        'Я ищу ключ… быть может, он у тебя?' if dzm825Logic.r24568_condition():
            # r1 # reply24568
            jump dzm825_s1
        'Итак… что тут у нас интересного?' if dzm825Logic.r24569_condition():
            # r2 # reply24569
            jump dzm825_s1
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzm825Logic.r24570_condition():
            # r3 # reply24570
            jump dzm825_s1
        'Использовать на трупе свою способность История костей.' if dzm825Logic.r24573_condition():
            # r4 # reply24573
            jump dzm825_s2
        'Осмотреть труп, проверить, есть ли у него ключ.' if dzm825Logic.r24574_condition():
            # r5 # reply24574
            jump dzm825_s3
        'Было приятно с тобой поболтать. Прощай.':
            # r6 # reply42308
            jump dzm825_dispose
        'Оставить труп в покое.':
            # r7 # reply42309
            jump dzm825_dispose


# s1 # say24566
label dzm825_s1:  # from 0.1 0.2 0.3 3.1
    teller 'Труп уставился в землю и не отвечает.'

    menu:
        'Использовать на трупе свою способность История костей.' if dzm825Logic.r24573_condition():
            # r4 # reply24573
            jump dzm825_s2
        'Осмотреть труп, проверить, есть ли у него ключ.' if dzm825Logic.r24574_condition():
            # r5 # reply24574
            jump dzm825_s3
        'Тогда неважно. Прощай.':
            # r8 # reply24567
            jump dzm825_dispose
        'Оставить труп в покое.':
            # r9 # reply42310
            jump dzm825_dispose


# s2 # say24571
label dzm825_s2:  # from 0.4
    teller 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Я ищу ключ… быть может, он у тебя?' if dzm825Logic.r24565_condition():
            # r0 # reply24565
            jump dmorte1_s31
        'Я ищу ключ… быть может, он у тебя?' if dzm825Logic.r24568_condition():
            # r1 # reply24568
            jump dzm825_s1
        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzm825Logic.r24570_condition():
            # r3 # reply24570
            jump dzm825_s1
        'Осмотреть труп, проверить, есть ли у него ключ.' if dzm825Logic.r24574_condition():
            # r5 # reply24574
            jump dzm825_s3
        'Оставить труп в покое.':
            # r10 # reply24572
            jump dzm825_dispose


# s3 # say42311
label dzm825_s3:  # from 0.5 # IF ~  True() # Manually checked EXTERN ~DMORTE1~ : 31
    teller 'У этого трупа ничего нет… но ты замечаешь, что его руки сильно перевязаны. Бинты могут пригодиться, если снять их с трупа.'

    menu:
        'Похоже, ключа у тебя нет… Ты случайно не знаешь, у кого из твоих приятелей есть ключ от этого места?' if dzm825Logic.r42312_condition():
            # r11 # reply42312
            call dzm825_dmorte_extern
            jump dmorte1_s31
        'Похоже, ключа у тебя нет… Ты случайно не знаешь, у кого из твоих приятелей есть ключ от этого места?' if dzm825Logic.r42313_condition():
            # r12 # reply42313
            jump dzm825_s1
        'Было приятно с тобой поболтать. Прощай.':
            # r13 # reply42314
            jump dzm825_dispose
        'Оставить труп в покое.':
            # r14 # reply42315
            jump dzm825_dispose


label dzm825_kill:
    teller 'Голова этого трупа болтается на плечах… судя по вывернутой шее, этого человека повесили. На виске нарисован номер «825».'

    menu:
        '(Уйти.)':
            jump dzm825_dispose
        '(Убить зомби).':
            jump dzm825_killed


label dzm825_killed:
    $ dzm825Logic.kill_dzm825()
    teller 'Я беру голову трупа за волосы и поднимаю на уровень своего взгляда. Он смотрит на меня пустыми глазами.'
    teller 'В них нет ни жизни, ни разума. Я изо всей силы сдёргиваю голову с его тела.'
    jump dzm825_dispose
