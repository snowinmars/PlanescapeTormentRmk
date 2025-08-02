init 10 python:
    from dlgs.ds1221_logic import Ds1221Logic
    ds1221Logic = Ds1221Logic(renpy.store.global_settings_manager)


# ###
# Original: DLG/DS1221.DLG
# ###


label ds1221_init:
    return


label ds1221_dispose:
    jump show_graphics_menu


# s0 # say35306
label ds1221_s0:  # - # IF ~  True()  Check EXTERN ~DMORTE~ : 376 Check EXTERN ~DMORTE~ : 372 Check EXTERN ~DMORTE~ : 370
    SPEAKER 'Этот оживленный скелет ужасно воняет, как будто бы его совсем недавно ободрали и препарировали. Его челюсти и основные суставы крепко связаны кожаными ремешками, поверх тела надет грубый комбинезон. На его лбу вырезан номер 1221.'

    menu:
        'Прошу прощения, тебе не попадались другие скелеты?' if ds1221Logic.r35307_condition():
            # r0 # reply35307
            $ ds1221Logic.r35307_action()
            jump ds1221_s1

        'Прошу прощения, тебе не попадались другие скелеты?' if ds1221Logic.r35330_condition():
            # r1 # reply35330
            jump ds1221_s1

        'Один вопрос: зачем комбинезон? То есть, я хочу сказать: не похоже, что у тебя есть что скрывать.' if ds1221Logic.r35331_condition():
            # r2 # reply35331
            $ ds1221Logic.r35331_action()
            jump ds1221_s1

        'Один вопрос: зачем комбинезон? То есть, я хочу сказать: не похоже, что у тебя есть что скрывать.' if ds1221Logic.r35332_condition():
            # r3 # reply35332
            jump ds1221_s1

        'Использовать на скелете свою способность История костей.' if ds1221Logic.r35333_condition():
            # r4 # reply35333
            jump ds1221_s2

        'Внимательно осмотреть скелет.':
            # r5 # reply35338
            $ ds1221Logic.r35338_action()
            jump ds1221_s3

        'Попробовать вытащить скобы из суставов скелета.' if ds1221Logic.r35372_condition():
            # r6 # reply35372
            jump ds1221_s4

        'Попробовать вытащить скобы из суставов скелета.' if ds1221Logic.r35373_condition():
            # r7 # reply35373
            jump ds1221_s5

        'Попробовать вытащить скобы из суставов скелета.' if ds1221Logic.r35374_condition():
            # r8 # reply35374
            jump ds1221_s6

        'Попробовать вытащить скобы из суставов скелета.' if ds1221Logic.r35375_condition():
            # r9 # reply35375
            jump ds1221_s4

        'Попробовать вытащить скобы из суставов скелета.' if ds1221Logic.r35376_condition():
            # r10 # reply35376
            jump ds1221_s5

        'Попробовать вытащить скобы из суставов скелета.' if ds1221Logic.r35377_condition():
            # r11 # reply35377
            jump ds1221_s6

        'Оставить скелет в покое.' if ds1221Logic.r35380_condition():
            # r12 # reply35380
            jump show_graphics_menu

        'Оставить скелет в покое.' if ds1221Logic.r35381_condition():
            # r13 # reply35381
            jump show_graphics_menu


# s1 # say35308
label ds1221_s1:  # from 0.0 0.1 0.2 0.3 # Check EXTERN ~DMORTE~ : 370
    SPEAKER 'Скелет не отвечает.'

    menu:
        'Приятно было поболтать с тобой, Костяшка. Будь здоров.' if ds1221Logic.r35328_condition():
            # r14 # reply35328
            jump show_graphics_menu

        'Приятно было поболтать с тобой, Костяшка. Будь здоров.' if ds1221Logic.r35329_condition():
            # r15 # reply35329
            jump show_graphics_menu


# s2 # say35334
label ds1221_s2:  # from 0.4 # Check EXTERN ~DMORTE~ : 370
    SPEAKER 'Скелет не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить скелет в покое.' if ds1221Logic.r35336_condition():
            # r16 # reply35336
            jump show_graphics_menu

        'Оставить скелет в покое.' if ds1221Logic.r35337_condition():
            # r17 # reply35337
            jump show_graphics_menu


# s3 # say35339
label ds1221_s3:  # from 0.5 # Check EXTERN ~DMORTE~ : 376 Check EXTERN ~DMORTE~ : 370
    SPEAKER 'Кто-то позаботился о том, чтобы связать кости скелета кожаными ремнями, обвивающими тело на манер, напоминающий мускулы и сухожилия. Ремни привязаны к железными скобам, вбитым в суставы скелета. Кажется, этот скелет сослужил хорошую службу: кости растрескались, многочисленные трещины на них залиты вонючим клеем.'

    menu:
        'Попробовать вытащить скобы из суставов скелета.' if ds1221Logic.r35362_condition():
            # r18 # reply35362
            jump ds1221_s4

        'Попробовать вытащить скобы из суставов скелета.' if ds1221Logic.r35363_condition():
            # r19 # reply35363
            jump ds1221_s5

        'Попробовать вытащить скобы из суставов скелета.' if ds1221Logic.r35364_condition():
            # r20 # reply35364
            jump ds1221_s6

        'Не против, если я возьму немного ремешков и скоб?' if ds1221Logic.r35365_condition():
            # r21 # reply35365
            jump ds1221_s4

        'Не против, если я возьму немного ремешков и скоб?' if ds1221Logic.r35366_condition():
            # r22 # reply35366
            jump ds1221_s5

        'Не против, если я возьму немного ремешков и скоб?' if ds1221Logic.r35367_condition():
            # r23 # reply35367
            jump ds1221_s6

        'Оставить скелет в покое.' if ds1221Logic.r35369_condition():
            # r24 # reply35369
            jump show_graphics_menu

        'Оставить скелет в покое.' if ds1221Logic.r35370_condition():
            # r25 # reply35370
            jump show_graphics_menu


# s4 # say35345
label ds1221_s4:  # from 0.7 0.10 3.1 3.4 # Check EXTERN ~DMORTE~ : 370
    SPEAKER 'Ты тянешь за железные скобы, но тебе не хватает сил, чтобы вытащить их. Они накрепко забиты.'

    menu:
        'Если бы у меня был подходящий инструмент, я бы смог их вытащить… хм-м. Я еще вернусь, Костяшка.' if ds1221Logic.r35347_condition():
            # r26 # reply35347
            jump show_graphics_menu

        'Если бы у меня был подходящий инструмент, я бы смог их вытащить… хм-м. Я еще вернусь, Костяшка.' if ds1221Logic.r35348_condition():
            # r27 # reply35348
            jump show_graphics_menu

        'Оставить скелет в покое.' if ds1221Logic.r35350_condition():
            # r28 # reply35350
            jump show_graphics_menu

        'Оставить скелет в покое.' if ds1221Logic.r35351_condition():
            # r29 # reply35351
            jump show_graphics_menu


# s5 # say35353
label ds1221_s5:  # from 0.8 0.11 3.2 3.5
    SPEAKER 'Ты тянешь за железные скобы изо всех сил, и через несколько мгновений вырываешь их из суставов. Скелет разваливается, некоторые из его костей продолжают шевелиться.'

    menu:
        'Извини, Костяшка…':
            # r30 # reply35354
            $ ds1221Logic.r35354_action()
            jump show_graphics_menu


# s6 # say35356
label ds1221_s6:  # from 0.9 0.12 3.3 3.6
    SPEAKER 'С помощью ломика ты вырываешь скобы из суставов. Скелет разваливается, хотя некоторые кости продолжают шевелиться.'

    menu:
        'Извини, Костяшка…':
            # r31 # reply35357
            $ ds1221Logic.r35357_action()
            jump show_graphics_menu


# s7 # say35382
label ds1221_s7:  # - # IF ~  False()
    SPEAKER 'Скелет не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump show_graphics_menu