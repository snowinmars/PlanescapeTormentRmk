init 10 python:
    from dlgs.mortualy_zombies.ds748_logic import Ds748Logic
    ds748Logic = Ds748Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DS748.DLG
# ###


label start_ds748_talk:
    call ds748_init
    jump ds748_s0
label ds748_init:
    show ds748_img default at center_left_down
    return
label ds748_dispose:
    hide ds748_img
    jump show_graphics_menu


# s0 # say35383
label ds748_s0:  # - # IF ~  True()  Manually checked EXTERN ~DMORTE~ : 384 Manually checked EXTERN ~DMORTE~ : 380 Manually checked EXTERN ~DMORTE~ : 378
    teller 'Этот скелет — 748, судя по номеру, выбитому над бровью, — выделяется только тем, что некоторые из его зубов вставные, и сделаны из красновато-коричневого камня.'
    teller 'Совершенно очевидно, что они не представляют никакой ценности, иначе их бы удалили те, кто за ним смотрит.'

    menu:
        'Прошу прощения, ты не видал поблизости других скелетов?' if ds748Logic.r35384_condition():
            # r0 # reply35384
            $ ds748Logic.r35384_action()
            jump ds748_s1

        'Прошу прощения, ты не видал поблизости других скелетов?' if ds748Logic.r35407_condition():
            # r1 # reply35407
            jump ds748_s1

        'Один вопрос: зачем комбинезон? То есть, я хочу сказать: не похоже, что у тебя есть что скрывать.' if ds748Logic.r35408_condition():
            # r2 # reply35408
            $ ds748Logic.r35408_action()
            jump ds748_s1

        'Один вопрос: зачем комбинезон? То есть, я хочу сказать: не похоже, что у тебя есть что скрывать.' if ds748Logic.r35409_condition():
            # r3 # reply35409
            jump ds748_s1

        'Использовать на скелете свою способность История костей.' if ds748Logic.r35410_condition():
            # r4 # reply35410
            jump ds748_s2

        'Внимательно осмотреть скелет.':
            # r5 # reply35415
            $ ds748Logic.r35415_action()
            jump ds748_s3

        'Попробовать вытащить скобы из суставов скелета.' if ds748Logic.r35448_condition():
            # r6 # reply35448
            $ ds748Logic.r35448_action()
            jump dmorte_s384

        'Попробовать вытащить скобы из суставов скелета.' if ds748Logic.r35449_condition():
            # r7 # reply35449
            jump ds748_s4

        'Попробовать вытащить скобы из суставов скелета.' if ds748Logic.r35450_condition():
            # r8 # reply35450
            jump ds748_s5

        'Попробовать вытащить скобы из суставов скелета.' if ds748Logic.r35451_condition():
            # r9 # reply35451
            jump ds748_s6

        'Попробовать вытащить скобы из суставов скелета.' if ds748Logic.r35452_condition():
            # r10 # reply35452
            jump ds748_s4

        'Попробовать вытащить скобы из суставов скелета.' if ds748Logic.r35453_condition():
            # r11 # reply35453
            jump ds748_s5

        'Попробовать вытащить скобы из суставов скелета.' if ds748Logic.r35454_condition():
            # r12 # reply35454
            jump ds748_s6

        'Как насчет этого скелета, Морт? Пойдет такое тело?' if ds748Logic.r35455_condition():
            # r13 # reply35455
            jump dmorte_s380

        'Оставить скелет в покое.' if ds748Logic.r35456_condition():
            # r14 # reply35456
            $ ds748Logic.r35456_action()
            jump dmorte_s378

        'Оставить скелет в покое.' if ds748Logic.r35457_condition():
            # r15 # reply35457
            jump ds748_dispose

        'Оставить скелет в покое.' if ds748Logic.r35458_condition():
            # r16 # reply35458
            jump ds748_dispose


# s1 # say35385
label ds748_s1:  # from 0.0 0.1 0.2 0.3 # Manually checked EXTERN ~DMORTE~ : 378
    teller 'Скелет не отвечает.'

    menu:
        'Приятно было поболтать с тобой, Костяшка. Будь здоров.' if ds748Logic.r35386_condition():
            # r17 # reply35386
            $ ds748Logic.r35386_action()
            jump dmorte_s378

        'Приятно было поболтать с тобой, Костяшка. Будь здоров.' if ds748Logic.r35405_condition():
            # r18 # reply35405
            jump ds748_dispose

        'Приятно было поболтать с тобой, Костяшка. Будь здоров.' if ds748Logic.r35406_condition():
            # r19 # reply35406
            jump ds748_dispose


# s2 # say35411
label ds748_s2:  # from 0.4 # Manually checked EXTERN ~DMORTE~ : 378
    teller 'Скелет не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить скелет в покое.' if ds748Logic.r35412_condition():
            # r20 # reply35412
            $ ds748Logic.r35412_action()
            jump dmorte_s378

        'Оставить скелет в покое.' if ds748Logic.r35413_condition():
            # r21 # reply35413
            jump ds748_dispose

        'Оставить скелет в покое.' if ds748Logic.r35414_condition():
            # r22 # reply35414
            jump ds748_dispose


# s3 # say35416
label ds748_s3:  # from 0.5 # Manually checked EXTERN ~DMORTE~ : 384 Manually checked EXTERN ~DMORTE~ : 378
    teller 'Кто-то позаботился о том, чтобы связать кости скелета кожаными ремнями, обвивающими тело на манер, напоминающий мускулы и сухожилия.'
    teller 'Ремни привязаны к железными скобам, вбитым в суставы скелета.'
    teller 'Кажется, этот скелет сослужил хорошую службу: кости растрескались, многочисленные трещины на них залиты вонючим клеем.'

    menu:
        'Попробовать вытащить скобы из суставов скелета.' if ds748Logic.r35417_condition():
            # r23 # reply35417
            $ ds748Logic.r35417_action()
            jump dmorte_s384

        'Попробовать вытащить скобы из суставов скелета.' if ds748Logic.r35439_condition():
            # r24 # reply35439
            jump ds748_s4

        'Попробовать вытащить скобы из суставов скелета.' if ds748Logic.r35440_condition():
            # r25 # reply35440
            jump ds748_s5

        'Попробовать вытащить скобы из суставов скелета.' if ds748Logic.r35441_condition():
            # r26 # reply35441
            jump ds748_s6

        'Не против, если я возьму немного ремешков и скоб?' if ds748Logic.r35442_condition():
            # r27 # reply35442
            jump ds748_s4

        'Не против, если я возьму немного ремешков и скоб?' if ds748Logic.r35443_condition():
            # r28 # reply35443
            jump ds748_s5

        'Не против, если я возьму немного ремешков и скоб?' if ds748Logic.r35444_condition():
            # r29 # reply35444
            jump ds748_s6

        'Оставить скелет в покое.' if ds748Logic.r35445_condition():
            # r30 # reply35445
            $ ds748Logic.r35445_action()
            jump dmorte_s378

        'Оставить скелет в покое.' if ds748Logic.r35446_condition():
            # r31 # reply35446
            jump ds748_dispose

        'Оставить скелет в покое.' if ds748Logic.r35447_condition():
            # r32 # reply35447
            jump ds748_dispose


# s4 # say35422
label ds748_s4:  # from 0.7 0.10 3.1 3.4 # Manually checked EXTERN ~DMORTE~ : 378
    teller 'Ты тянешь за железные скобы, но тебе не хватает сил, чтобы вытащить их. Они накрепко забиты.'

    menu:
        'Если бы у меня был подходящий инструмент, я бы смог их вытащить… хм-м. Я еще вернусь, Костяшка.' if ds748Logic.r35423_condition():
            # r33 # reply35423
            $ ds748Logic.r35423_action()
            jump dmorte_s378

        'Если бы у меня был подходящий инструмент, я бы смог их вытащить… хм-м. Я еще вернусь, Костяшка.' if ds748Logic.r35424_condition():
            # r34 # reply35424
            jump ds748_dispose

        'Если бы у меня был подходящий инструмент, я бы смог их вытащить… хм-м. Я еще вернусь, Костяшка.' if ds748Logic.r35425_condition():
            # r35 # reply35425
            jump ds748_dispose

        'Оставить скелет в покое.' if ds748Logic.r35426_condition():
            # r36 # reply35426
            $ ds748Logic.r35426_action()
            jump dmorte_s378

        'Оставить скелет в покое.' if ds748Logic.r35427_condition():
            # r37 # reply35427
            jump ds748_dispose

        'Оставить скелет в покое.' if ds748Logic.r35428_condition():
            # r38 # reply35428
            jump ds748_dispose


# s5 # say35430
label ds748_s5:  # from 0.8 0.11 3.2 3.5
    teller 'Ты тянешь за железные скобы изо всех сил, и через несколько мгновений вырываешь их из суставов.'
    teller 'Скелет разваливается, некоторые из его костей продолжают шевелиться.'

    menu:
        'Извини, Костяшка…':
            # r39 # reply35431
            $ ds748Logic.r35431_action()
            jump ds748_dispose


# s6 # say35433
label ds748_s6:  # from 0.9 0.12 3.3 3.6
    teller 'С помощью ломика ты вырываешь скобы из суставов. Скелет разваливается, хотя некоторые кости продолжают шевелиться.'

    menu:
        'Извини, Костяшка…':
            # r40 # reply35434
            $ ds748Logic.r35434_action()
            jump ds748_dispose


# s7 # say35459
label ds748_s7:  # - # IF ~  False()
    teller 'Скелет не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump ds748_dispose
