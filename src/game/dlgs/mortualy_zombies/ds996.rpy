init 10 python:
    from dlgs.ds996_logic import Ds996Logic
    ds996Logic = Ds996Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DS996.DLG
# ###


label ds996_init:
    return


label ds996_dispose:
    jump show_graphics_menu


# s0 # say35460
label ds996_s0:  # - # IF ~  True()  Check EXTERN ~DMORTE~ : 392 Check EXTERN ~DMORTE~ : 388 Check EXTERN ~DMORTE~ : 386
    SPEAKER 'Этот скелет довольно стар: кожаные ремешки потрескались и истерлись от времени. На лбу с особым искусством вырезано слово ПОКАЙСЯ; более грубая рука уже позднее высекла на обоих висках число 996.'

    menu:
        'Прошу прощения, ты не видал поблизости других скелетов?' if ds996Logic.r35461_condition():
            # r0 # reply35461
            $ ds996Logic.r35461_action()
            jump ds996_s1

        'Прошу прощения, ты не видал поблизости других скелетов?' if ds996Logic.r35484_condition():
            # r1 # reply35484
            jump ds996_s1

        'Один вопрос: зачем комбинезон? То есть, я хочу сказать: не похоже, что у тебя есть что скрывать.' if ds996Logic.r35485_condition():
            # r2 # reply35485
            $ ds996Logic.r35485_action()
            jump ds996_s1

        'Один вопрос: зачем комбинезон? То есть, я хочу сказать: не похоже, что у тебя есть что скрывать.' if ds996Logic.r35486_condition():
            # r3 # reply35486
            jump ds996_s1

        'Использовать на скелете свою способность История костей.' if ds996Logic.r35487_condition():
            # r4 # reply35487
            jump ds996_s2

        'Внимательно осмотреть скелет.':
            # r5 # reply35492
            $ ds996Logic.r35492_action()
            jump ds996_s3

        'Попробовать вытащить скобы из суставов скелета.' if ds996Logic.r35525_condition():
            # r6 # reply35525
            $ ds996Logic.r35525_action()
            jump ds996_dispose

        'Попробовать вытащить скобы из суставов скелета.' if ds996Logic.r35526_condition():
            # r7 # reply35526
            jump ds996_s4

        'Попробовать вытащить скобы из суставов скелета.' if ds996Logic.r35527_condition():
            # r8 # reply35527
            jump ds996_s5

        'Попробовать вытащить скобы из суставов скелета.' if ds996Logic.r35528_condition():
            # r9 # reply35528
            jump ds996_s6

        'Попробовать вытащить скобы из суставов скелета.' if ds996Logic.r35529_condition():
            # r10 # reply35529
            jump ds996_s4

        'Попробовать вытащить скобы из суставов скелета.' if ds996Logic.r35530_condition():
            # r11 # reply35530
            jump ds996_s5

        'Попробовать вытащить скобы из суставов скелета.' if ds996Logic.r35531_condition():
            # r12 # reply35531
            jump ds996_s6

        'Как насчет этого скелета, Морт? Пойдет такое тело?' if ds996Logic.r35532_condition():
            # r13 # reply35532
            jump ds996_dispose

        'Оставить скелет в покое.' if ds996Logic.r35533_condition():
            # r14 # reply35533
            $ ds996Logic.r35533_action()
            jump ds996_dispose

        'Оставить скелет в покое.' if ds996Logic.r35534_condition():
            # r15 # reply35534
            jump ds996_dispose

        'Оставить скелет в покое.' if ds996Logic.r35535_condition():
            # r16 # reply35535
            jump ds996_dispose


# s1 # say35462
label ds996_s1:  # from 0.0 0.1 0.2 0.3 # Check EXTERN ~DMORTE~ : 386
    SPEAKER 'Скелет не реагирует.'

    menu:
        'Приятно было поболтать с тобой, Костяшка. Будь здоров.' if ds996Logic.r35463_condition():
            # r17 # reply35463
            $ ds996Logic.r35463_action()
            jump ds996_dispose

        'Приятно было поболтать с тобой, Костяшка. Будь здоров.' if ds996Logic.r35482_condition():
            # r18 # reply35482
            jump ds996_dispose

        'Приятно было поболтать с тобой, Костяшка. Будь здоров.' if ds996Logic.r35483_condition():
            # r19 # reply35483
            jump ds996_dispose


# s2 # say35488
label ds996_s2:  # from 0.4 # Check EXTERN ~DMORTE~ : 386
    SPEAKER 'Скелет не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить скелет в покое.' if ds996Logic.r35489_condition():
            # r20 # reply35489
            $ ds996Logic.r35489_action()
            jump ds996_dispose

        'Оставить скелет в покое.' if ds996Logic.r35490_condition():
            # r21 # reply35490
            jump ds996_dispose

        'Оставить скелет в покое.' if ds996Logic.r35491_condition():
            # r22 # reply35491
            jump ds996_dispose


# s3 # say35493
label ds996_s3:  # from 0.5 # Check EXTERN ~DMORTE~ : 392 Check EXTERN ~DMORTE~ : 386
    SPEAKER 'Кто-то позаботился о том, чтобы связать кости скелета кожаными ремнями, обвивающими тело на манер, напоминающий мускулы и сухожилия. Ремни привязаны к железными скобам, вбитым в суставы скелета. Кажется, этот скелет довольно долго служил: кости растрескались, многочисленные трещины на них залиты вонючим клеем.'

    menu:
        'Попробовать вытащить скобы из суставов скелета.' if ds996Logic.r35494_condition():
            # r23 # reply35494
            $ ds996Logic.r35494_action()
            jump ds996_dispose

        'Попробовать вытащить скобы из суставов скелета.' if ds996Logic.r35516_condition():
            # r24 # reply35516
            jump ds996_s4

        'Попробовать вытащить скобы из суставов скелета.' if ds996Logic.r35517_condition():
            # r25 # reply35517
            jump ds996_s5

        'Попробовать вытащить скобы из суставов скелета.' if ds996Logic.r35518_condition():
            # r26 # reply35518
            jump ds996_s6

        'Не против, если я возьму немного ремешков и скоб?' if ds996Logic.r35519_condition():
            # r27 # reply35519
            jump ds996_s4

        'Не против, если я возьму немного ремешков и скоб?' if ds996Logic.r35520_condition():
            # r28 # reply35520
            jump ds996_s5

        'Не против, если я возьму немного ремешков и скоб?' if ds996Logic.r35521_condition():
            # r29 # reply35521
            jump ds996_s6

        'Оставить скелет в покое.' if ds996Logic.r35522_condition():
            # r30 # reply35522
            $ ds996Logic.r35522_action()
            jump ds996_dispose

        'Оставить скелет в покое.' if ds996Logic.r35523_condition():
            # r31 # reply35523
            jump ds996_dispose

        'Оставить скелет в покое.' if ds996Logic.r35524_condition():
            # r32 # reply35524
            jump ds996_dispose


# s4 # say35499
label ds996_s4:  # from 0.7 0.10 3.1 3.4 # Check EXTERN ~DMORTE~ : 386
    SPEAKER 'Ты тянешь за железные скобы, но тебе не хватает сил, чтобы вытащить их. Они накрепко забиты.'

    menu:
        'Если бы у меня был подходящий инструмент, я бы смог их вытащить… хммм. Я еще вернусь, Костяшка.' if ds996Logic.r35500_condition():
            # r33 # reply35500
            $ ds996Logic.r35500_action()
            jump ds996_dispose

        'Если бы у меня был подходящий инструмент, я бы смог их вытащить… хммм. Я еще вернусь, Костяшка.' if ds996Logic.r35501_condition():
            # r34 # reply35501
            jump ds996_dispose

        'Если бы у меня был подходящий инструмент, я бы смог их вытащить… хммм. Я еще вернусь, Костяшка.' if ds996Logic.r35502_condition():
            # r35 # reply35502
            jump ds996_dispose

        'Оставить скелет в покое.' if ds996Logic.r35503_condition():
            # r36 # reply35503
            $ ds996Logic.r35503_action()
            jump ds996_dispose

        'Оставить скелет в покое.' if ds996Logic.r35504_condition():
            # r37 # reply35504
            jump ds996_dispose

        'Оставить скелет в покое.' if ds996Logic.r35505_condition():
            # r38 # reply35505
            jump ds996_dispose


# s5 # say35507
label ds996_s5:  # from 0.8 0.11 3.2 3.5
    SPEAKER 'Ты тянешь за железные скобы изо всех сил, и через несколько мгновений вырываешь их из суставов. Скелет разваливается, некоторые из его костей продолжают шевелиться.'

    menu:
        'Прости, Костяшка…':
            # r39 # reply35508
            $ ds996Logic.r35508_action()
            jump ds996_dispose


# s6 # say35510
label ds996_s6:  # from 0.9 0.12 3.3 3.6
    SPEAKER 'С помощью ломика ты вырываешь скобы из суставов. Скелет разваливается, хотя некоторые кости продолжают шевелиться.'

    menu:
        'Прости, Костяшка…':
            # r40 # reply35511
            $ ds996Logic.r35511_action()
            jump ds996_dispose


# s7 # say35536
label ds996_s7:  # - # IF ~  False()
    SPEAKER 'Скелет не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump ds996_dispose