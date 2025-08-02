init 10 python:
    from dlgs.zm569_logic import Zm569Logic
    zm569Logic = Zm569Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/ZM569.DLG
# ###


label zm569_init:
    return


label zm569_dispose:
    jump show_graphics_menu


# s0 # say24575
label zm569_s0:  # - # IF ~  True()  Check EXTERN ~DMORTE1~ : 31
    SPEAKER 'Судя по виду, этот неуклюжий труп мертв уже несколько лет. Кожа на голове в некоторых местах отвалилась, открывая белый как мел череп. Кто-то выбил номер 569 на открывшейся кости.'

    menu:
        'Я ищу ключ… быть может, он у тебя?' if zm569Logic.r24576_condition():
            # r0 # reply24576
            jump zm569_dispose

        'Я ищу ключ… быть может, он у тебя?' if zm569Logic.r24579_condition():
            # r1 # reply24579
            jump zm569_s1

        'Итак… что тут у нас интересного?' if zm569Logic.r24580_condition():
            # r2 # reply24580
            jump zm569_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if zm569Logic.r24581_condition():
            # r3 # reply24581
            jump zm569_s1

        'Использовать на трупе свою способность История костей.' if zm569Logic.r24584_condition():
            # r4 # reply24584
            jump zm569_s2

        'Осмотреть труп, проверить, есть ли у него ключ.' if zm569Logic.r24585_condition():
            # r5 # reply24585
            jump zm569_s3

        'Было приятно с тобой поболтать. Прощай.':
            # r6 # reply42290
            jump zm569_dispose

        'Оставить зомби в покое.':
            # r7 # reply42291
            jump zm569_dispose


# s1 # say24577
label zm569_s1:  # from 0.1 0.2 0.3 3.1
    SPEAKER 'Труп молчаливо уставился на тебя.'

    menu:
        'Тогда неважно. Прощай.':
            # r8 # reply24578
            jump zm569_dispose

        'Оставить зомби в покое.':
            # r9 # reply42292
            jump zm569_dispose


# s2 # say24582
label zm569_s2:  # from 0.4
    SPEAKER 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить зомби в покое.':
            # r10 # reply24583
            jump zm569_dispose


# s3 # say42293
label zm569_s3:  # from 0.5 # Check EXTERN ~DMORTE1~ : 31
    SPEAKER 'Похоже, у этого трупа нет ключа… да и вряд ли он смог бы им воспользоваться. Его пальцы перебиты, как будто кто-то постучал по ним молотком. Ты замечаешь, что его левое плечо сильно перевязано… бинтами можно воспользоваться, если снять их с трупа.'

    menu:
        'Похоже, что нет… Ты случайно не знаешь, у кого из твоих приятелей есть ключ от этого места?' if zm569Logic.r42294_condition():
            # r11 # reply42294
            jump zm569_dispose

        'Похоже, что нет… Ты случайно не знаешь, у кого из твоих приятелей есть ключ от этого места?' if zm569Logic.r42295_condition():
            # r12 # reply42295
            jump zm569_s1

        'Было приятно с тобой поболтать. Прощай.':
            # r13 # reply42296
            jump zm569_dispose

        'Оставить зомби в покое.':
            # r14 # reply42297
            jump zm569_dispose
