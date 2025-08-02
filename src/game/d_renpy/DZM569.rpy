init 10 python:
    from dlgs.dzm569_logic import Dzm569Logic
    dzm569Logic = Dzm569Logic(renpy.store.global_settings_manager)


# ###
# Original: DLG/DZM569.DLG
# ###


label dzm569_init:
    return


label dzm569_dispose:
    jump show_graphics_menu


# s0 # say24575
label dzm569_s0:  # - # IF ~  True()  Check EXTERN ~DMORTE1~ : 31
    SPEAKER 'Судя по виду, этот неуклюжий труп мертв уже несколько лет. Кожа на голове в некоторых местах отвалилась, открывая белый как мел череп. Кто-то выбил номер 569 на открывшейся кости.'

    menu:
        'Я ищу ключ… быть может, он у тебя?' if dzm569Logic.r24579_condition():
            # r0 # reply24579
            jump dzm569_s1

        'Итак… что тут у нас интересного?' if dzm569Logic.r24580_condition():
            # r1 # reply24580
            jump dzm569_s1

        'Знаешь, мне известно, что ты не зомби. Тебе никого не одурачить.' if dzm569Logic.r24581_condition():
            # r2 # reply24581
            jump dzm569_s1

        'Использовать на трупе свою способность История костей.' if dzm569Logic.r24584_condition():
            # r3 # reply24584
            jump dzm569_s2

        'Осмотреть труп, проверить, есть ли у него ключ.' if dzm569Logic.r24585_condition():
            # r4 # reply24585
            jump dzm569_s3

        'Было приятно с тобой поболтать. Прощай.':
            # r5 # reply42290
            jump show_graphics_menu

        'Оставить зомби в покое.':
            # r6 # reply42291
            jump show_graphics_menu


# s1 # say24577
label dzm569_s1:  # from 0.1 0.2 0.3 3.1
    SPEAKER 'Труп молчаливо уставился на тебя.'

    menu:
        'Тогда неважно. Прощай.':
            # r7 # reply24578
            jump show_graphics_menu

        'Оставить зомби в покое.':
            # r8 # reply42292
            jump show_graphics_menu


# s2 # say24582
label dzm569_s2:  # from 0.4
    SPEAKER 'Труп не шевелится. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить зомби в покое.':
            # r9 # reply24583
            jump show_graphics_menu


# s3 # say42293
label dzm569_s3:  # from 0.5 # Check EXTERN ~DMORTE1~ : 31
    SPEAKER 'Похоже, у этого трупа нет ключа… да и вряд ли он смог бы им воспользоваться. Его пальцы перебиты, как будто кто-то постучал по ним молотком. Ты замечаешь, что его левое плечо сильно перевязано… бинтами можно воспользоваться, если снять их с трупа.'

    menu:
        'Похоже, что нет… Ты случайно не знаешь, у кого из твоих приятелей есть ключ от этого места?' if dzm569Logic.r42295_condition():
            # r10 # reply42295
            jump dzm569_s1

        'Было приятно с тобой поболтать. Прощай.':
            # r11 # reply42296
            jump show_graphics_menu

        'Оставить зомби в покое.':
            # r12 # reply42297
            jump show_graphics_menu
