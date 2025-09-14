init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.mortuary_zombies.zm825_logic import Zm825Logic
    zm825Logic = Zm825Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM825.DLG
# ###


# s0 # say24564
label zm825_s0: # - # IF ~  True()
    nr 'Голова этого трупа болтается на плечах… судя по вывернутой шее, этого человека повесили. На виске нарисован номер «825».'

    menu:
        '«Я ищу ключ… быть может, он у тебя?»' if zm825Logic.r24565_condition():
            # a0 # r24565
            jump morte1_s31  # EXTERN

        '«Я ищу ключ… быть может, он у тебя?»' if zm825Logic.r24568_condition():
            # a1 # r24568
            jump zm825_s1

        '«Итак… что тут у нас интересного?»' if zm825Logic.r24569_condition():
            # a2 # r24569
            jump zm825_s1

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».' if zm825Logic.r24570_condition():
            # a3 # r24570
            jump zm825_s1

        'Использовать на трупе свою способность «История костей».' if zm825Logic.r24573_condition():
            # a4 # r24573
            jump zm825_s2

        'Осмотреть труп, проверить, есть ли у него ключ.' if zm825Logic.r24574_condition():
            # a5 # r24574
            jump zm825_s3

        '«Было приятно с тобой поболтать. Прощай».':
            # a6 # r42308
            jump zm825_dispose

        'Оставить труп в покое.':
            # a7 # r42309
            jump zm825_dispose


# s1 # say24566
label zm825_s1: # from 0.1 0.2 0.3 3.1
    nr 'Труп уставился в землю и не отвечает.'

    menu:
        '«Тогда неважно. Прощай».':
            # a8 # r24567
            jump zm825_dispose

        'Оставить труп в покое.':
            # a9 # r42310
            jump zm825_dispose


# s2 # say24571
label zm825_s2: # from 0.4
    nr 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить труп в покое.':
            # a10 # r24572
            jump zm825_dispose


# s3 # say42311
label zm825_s3: # from 0.5
    nr 'У этого трупа ничего нет… но ты замечаешь, что его руки сильно перевязаны.'
    # 'Бинты могут пригодиться, если снять их с трупа.' # TODO [snow]: Обыграть?

    menu:
        '«Похоже, ключа у тебя нет… Ты случайно не знаешь, у кого из твоих приятелей есть ключ от этого места?»' if zm825Logic.r42312_condition():
            # a11 # r42312
            jump morte1_s31  # EXTERN

        '«Похоже, ключа у тебя нет… Ты случайно не знаешь, у кого из твоих приятелей есть ключ от этого места?»' if zm825Logic.r42313_condition():
            # a12 # r42313
            jump zm825_s1

        '«Было приятно с тобой поболтать. Прощай».':
            # a13 # r42314
            jump zm825_dispose

        'Оставить труп в покое.':
            # a14 # r42315
            jump zm825_dispose
