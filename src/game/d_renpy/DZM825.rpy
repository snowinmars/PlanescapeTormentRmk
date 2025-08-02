init 10 python:
    from dlgs.dzm825_logic import Dzm825Logic
    dzm825Logic = Dzm825Logic(renpy.store.global_settings_manager)


# ###
# Original: DLG/DZM825.DLG
# ###


label dzm825_init:
    return


label dzm825_dispose:
    jump show_graphics_menu


# s0 # say24564
label dzm825_s0:  # - # IF ~  True()  Check EXTERN ~DMORTE1~ : 31
    SPEAKER 'Голова этого трупа болтается на плечах… судя по вывернутой шее, этого человека повесили. На виске нарисован номер 825.'

    menu:
        'Я ищу ключ… быть может, он у тебя?' if dzm825Logic.r24568_condition():
            # r0 # reply24568
            jump dzm825_s1

        'Итак… что тут у нас интересного?' if dzm825Logic.r24569_condition():
            # r1 # reply24569
            jump dzm825_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzm825Logic.r24570_condition():
            # r2 # reply24570
            jump dzm825_s1

        'Использовать на трупе свою способность История костей.' if dzm825Logic.r24573_condition():
            # r3 # reply24573
            jump dzm825_s2

        'Осмотреть труп, проверить, есть ли у него ключ.' if dzm825Logic.r24574_condition():
            # r4 # reply24574
            jump dzm825_s3

        'Было приятно с тобой поболтать. Прощай.':
            # r5 # reply42308
            jump show_graphics_menu

        'Оставить труп в покое.':
            # r6 # reply42309
            jump show_graphics_menu


# s1 # say24566
label dzm825_s1:  # from 0.1 0.2 0.3 3.1
    SPEAKER 'Труп уставился в землю и не отвечает.'

    menu:
        'Тогда неважно. Прощай.':
            # r7 # reply24567
            jump show_graphics_menu

        'Оставить труп в покое.':
            # r8 # reply42310
            jump show_graphics_menu


# s2 # say24571
label dzm825_s2:  # from 0.4
    SPEAKER 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить труп в покое.':
            # r9 # reply24572
            jump show_graphics_menu


# s3 # say42311
label dzm825_s3:  # from 0.5 # Check EXTERN ~DMORTE1~ : 31
    SPEAKER 'У этого трупа ничего нет… но ты замечаешь, что его руки сильно перевязаны. Бинты могут пригодиться, если снять их с трупа.'

    menu:
        'Похоже, ключа у тебя нет… Ты случайно не знаешь, у кого из твоих приятелей есть ключ от этого места?' if dzm825Logic.r42313_condition():
            # r10 # reply42313
            jump dzm825_s1

        'Было приятно с тобой поболтать. Прощай.':
            # r11 # reply42314
            jump show_graphics_menu

        'Оставить труп в покое.':
            # r12 # reply42315
            jump show_graphics_menu
