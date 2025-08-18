init 10 python:
    from game.dlgs.zm569_logic import Zm569Logic
    zm569Logic = Zm569Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DZM569.DLG
# ###


# s0 # say24575
label zm569_s0: # - # IF ~  True()
    SPEAKER 'Судя по виду, этот неуклюжий труп мертв уже несколько лет. Кожа на голове в некоторых местах отвалилась, открывая белый как мел череп. Кто-то выбил номер «569» на открывшейся кости.'

    menu:
        '«Я ищу ключ… быть может, он у тебя?»' if zm569Logic.r24576_condition():
            # a0 # r24576
            jump morte1_s31  # EXTERN

        '«Я ищу ключ… быть может, он у тебя?»' if zm569Logic.r24579_condition():
            # a1 # r24579
            jump zm569_s1

        '«Итак… что тут у нас интересного?»' if zm569Logic.r24580_condition():
            # a2 # r24580
            jump zm569_s1

        '«Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить».' if zm569Logic.r24581_condition():
            # a3 # r24581
            jump zm569_s1

        'Использовать на трупе свою способность «История костей».' if zm569Logic.r24584_condition():
            # a4 # r24584
            jump zm569_s2

        'Осмотреть труп, проверить, есть ли у него ключ.' if zm569Logic.r24585_condition():
            # a5 # r24585
            jump zm569_s3

        '«Было приятно с тобой поболтать. Прощай».':
            # a6 # r42290
            jump zm569_dispose

        'Оставить зомби в покое.':
            # a7 # r42291
            jump zm569_dispose

# s1 # say24577
label zm569_s1: # from 0.1 0.2 0.3 3.1
    SPEAKER 'Труп молчаливо уставился на тебя.'

    menu:
        '«Тогда неважно. Прощай».':
            # a8 # r24578
            jump zm569_dispose

        'Оставить зомби в покое.':
            # a9 # r42292
            jump zm569_dispose

# s2 # say24582
label zm569_s2: # from 0.4
    SPEAKER 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить зомби в покое.':
            # a10 # r24583
            jump zm569_dispose

# s3 # say42293
label zm569_s3: # from 0.5
    SPEAKER 'Похоже, у этого трупа нет ключа… да и вряд ли он смог бы им воспользоваться. Его пальцы перебиты, как будто кто-то постучал по ним молотком. Ты замечаешь, что его левое плечо сильно перевязано… бинтами можно воспользоваться, если снять их с трупа.'

    menu:
        '«Похоже, что нет… Ты случайно не знаешь, у кого из твоих приятелей есть ключ от этого места?»' if zm569Logic.r42294_condition():
            # a11 # r42294
            jump morte1_s31  # EXTERN

        '«Похоже, что нет… Ты случайно не знаешь, у кого из твоих приятелей есть ключ от этого места?»' if zm569Logic.r42295_condition():
            # a12 # r42295
            jump zm569_s1

        '«Было приятно с тобой поболтать. Прощай».':
            # a13 # r42296
            jump zm569_dispose

        'Оставить зомби в покое.':
            # a14 # r42297
            jump zm569_dispose


label zm569_kill: # -
    nr 'Todo.'

    menu:
        'Уйти.':
            jump zm569_dispose
        'Убить.':
            jump zm569_killed


label zm569_killed: # from zm569_kill
    $ zm569Logic.kill_zm569()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'zm569s.'
    nr 'Who is zm569?'
    nr 'zm569 is dead, baby, zm569 is dead.'
    jump zm569_dispose


label zm569_kill_first: # -
    nr 'Todo.'

    menu:
        'Уйти.':
            jump zm569_dispose
        'Убить.':
            jump zm569_killed_first


label zm569_killed_first: # from zm569_kill_first
    $ zm569Logic.kill_zm569()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'zm569s.'
    nr 'Who is zm569?'
    nr 'zm569 is dead, baby, zm569 is dead.'
    jump zm569_dispose
