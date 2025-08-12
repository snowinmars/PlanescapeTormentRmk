init 10 python:
    from game.dlgs.zm825_logic import Zm825Logic
    zm825Logic = Zm825Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/ZM825.DLG
# ###


label start_zm825_talk_first:
    call zm825_init
    jump todo
label start_zm825_talk:
    call zm825_init
    jump todo
label start_zm825_kill_first:
    call zm825_init
    jump zm825_kill_first
label start_zm825_kill:
    call zm825_init
    jump zm825_kill
label zm825_init:
    $ zm825Logic.zm825_init()
    scene bg LOCATION
    show zm825_img default at center_left_down
    return
label zm825_dispose:
    hide zm825_img
    jump graphics_menu


# s0 # say24564
label zm825_s0:  # - # IF ~  True()
    SPEAKER 'Голова этого трупа болтается на плечах… судя по вывернутой шее, этого человека повесили. На виске нарисован номер «825».'

    menu:
        '«Я ищу ключ… быть может, он у тебя?»' if zm825Logic.r24565_condition():
            # r0 # reply24565
            jump morte1_s31  # EXTERN

        '«Я ищу ключ… быть может, он у тебя?»' if zm825Logic.r24568_condition():
            # r1 # reply24568
            jump zm825_s1

        '«Итак… что тут у нас интересного?»' if zm825Logic.r24569_condition():
            # r2 # reply24569
            jump zm825_s1

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».' if zm825Logic.r24570_condition():
            # r3 # reply24570
            jump zm825_s1

        'Использовать на трупе свою способность «История костей».' if zm825Logic.r24573_condition():
            # r4 # reply24573
            jump zm825_s2

        'Осмотреть труп, проверить, есть ли у него ключ.' if zm825Logic.r24574_condition():
            # r5 # reply24574
            jump zm825_s3

        '«Было приятно с тобой поболтать. Прощай».':
            # r6 # reply42308
            jump zm825_dispose

        'Оставить труп в покое.':
            # r7 # reply42309
            jump zm825_dispose


# s1 # say24566
label zm825_s1:  # from 0.1 0.2 0.3 3.1
    SPEAKER 'Труп уставился в землю и не отвечает.'

    menu:
        '«Тогда неважно. Прощай».':
            # r8 # reply24567
            jump zm825_dispose

        'Оставить труп в покое.':
            # r9 # reply42310
            jump zm825_dispose


# s2 # say24571
label zm825_s2:  # from 0.4
    SPEAKER 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить труп в покое.':
            # r10 # reply24572
            jump zm825_dispose


# s3 # say42311
label zm825_s3:  # from 0.5
    SPEAKER 'У этого трупа ничего нет… но ты замечаешь, что его руки сильно перевязаны. Бинты могут пригодиться, если снять их с трупа.'

    menu:
        '«Похоже, ключа у тебя нет… Ты случайно не знаешь, у кого из твоих приятелей есть ключ от этого места?»' if zm825Logic.r42312_condition():
            # r11 # reply42312
            jump morte1_s31  # EXTERN

        '«Похоже, ключа у тебя нет… Ты случайно не знаешь, у кого из твоих приятелей есть ключ от этого места?»' if zm825Logic.r42313_condition():
            # r12 # reply42313
            jump zm825_s1

        '«Было приятно с тобой поболтать. Прощай».':
            # r13 # reply42314
            jump zm825_dispose

        'Оставить труп в покое.':
            # r14 # reply42315
            jump zm825_dispose


label zm825_kill:
    nr 'Todo.'

    menu:
        'Уйти.':
            jump zm825_dispose
        'Убить.':
            jump zm825_killed


label zm825_killed:
    $ zm825Logic.kill_zm825()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'zm825s.'
    nr 'Who is zm825?'
    nr 'zm825 is dead, baby, zm825 is dead.'
    jump zm825_dispose


label zm825_kill_first:
    nr 'Todo.'

    menu:
        'Уйти.':
            jump zm825_dispose
        'Убить.':
            jump zm825_killed_first


label zm825_killed_first:
    $ zm825Logic.kill_zm825()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'zm825s.'
    nr 'Who is zm825?'
    nr 'zm825 is dead, baby, zm825 is dead.'
    jump zm825_dispose
