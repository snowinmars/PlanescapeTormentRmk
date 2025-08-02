init 10 python:
    from dlgs.mortualy_zombies.s1221_logic import S1221Logic
    s1221Logic = S1221Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/S1221.DLG
# ###


label start_s1221_talk:
    call s1221_init
    jump s1221_s0
label s1221_init:
    show s1221_img default at center_left_down
    return
label s1221_dispose:
    hide s1221_img
    jump show_graphics_menu


# s0 # say35306
label s1221_s0:  # - # IF ~  True()  Manually checked EXTERN ~DMORTE~ : 376 Manually checked EXTERN ~DMORTE~ : 372 Manually checked EXTERN ~DMORTE~ : 370
    teller 'Этот оживленный скелет ужасно воняет, как будто бы его совсем недавно ободрали и препарировали.'
    teller 'Его челюсти и основные суставы крепко связаны кожаными ремешками, поверх тела надет грубый комбинезон. На его лбу вырезан номер 1221.'

    menu:
        'Прошу прощения, тебе не попадались другие скелеты?' if s1221Logic.r35307_condition():
            # r0 # reply35307
            $ s1221Logic.r35307_action()
            jump s1221_s1

        'Прошу прощения, тебе не попадались другие скелеты?' if s1221Logic.r35330_condition():
            # r1 # reply35330
            jump s1221_s1

        'Один вопрос: зачем комбинезон? То есть, я хочу сказать: не похоже, что у тебя есть что скрывать.' if s1221Logic.r35331_condition():
            # r2 # reply35331
            $ s1221Logic.r35331_action()
            jump s1221_s1

        'Один вопрос: зачем комбинезон? То есть, я хочу сказать: не похоже, что у тебя есть что скрывать.' if s1221Logic.r35332_condition():
            # r3 # reply35332
            jump s1221_s1

        'Использовать на скелете свою способность История костей.' if s1221Logic.r35333_condition():
            # r4 # reply35333
            jump s1221_s2

        'Внимательно осмотреть скелет.':
            # r5 # reply35338
            $ s1221Logic.r35338_action()
            jump s1221_s3

        'Попробовать вытащить скобы из суставов скелета.' if s1221Logic.r35371_condition():
            # r6 # reply35371
            $ s1221Logic.r35371_action()
            jump morte_s376

        'Попробовать вытащить скобы из суставов скелета.' if s1221Logic.r35372_condition():
            # r7 # reply35372
            jump s1221_s4

        'Попробовать вытащить скобы из суставов скелета.' if s1221Logic.r35373_condition():
            # r8 # reply35373
            jump s1221_s5

        'Попробовать вытащить скобы из суставов скелета.' if s1221Logic.r35374_condition():
            # r9 # reply35374
            jump s1221_s6

        'Попробовать вытащить скобы из суставов скелета.' if s1221Logic.r35375_condition():
            # r10 # reply35375
            jump s1221_s4

        'Попробовать вытащить скобы из суставов скелета.' if s1221Logic.r35376_condition():
            # r11 # reply35376
            jump s1221_s5

        'Попробовать вытащить скобы из суставов скелета.' if s1221Logic.r35377_condition():
            # r12 # reply35377
            jump s1221_s6

        'Эй, а как насчет этого скелета, Морт? Пойдет такое тело?' if s1221Logic.r35378_condition():
            # r13 # reply35378
            jump morte_s372

        'Оставить скелет в покое.' if s1221Logic.r35379_condition():
            # r14 # reply35379
            $ s1221Logic.r35379_action()
            jump morte_s370

        'Оставить скелет в покое.' if s1221Logic.r35380_condition():
            # r15 # reply35380
            jump s1221_dispose

        'Оставить скелет в покое.' if s1221Logic.r35381_condition():
            # r16 # reply35381
            jump s1221_dispose


# s1 # say35308
label s1221_s1:  # from 0.0 0.1 0.2 0.3 # Manually checked EXTERN ~DMORTE~ : 370
    teller 'Скелет не отвечает.'

    menu:
        'Приятно было поболтать с тобой, Костяшка. Будь здоров.' if s1221Logic.r35309_condition():
            # r17 # reply35309
            $ s1221Logic.r35309_action()
            jump morte_s370

        'Приятно было поболтать с тобой, Костяшка. Будь здоров.' if s1221Logic.r35328_condition():
            # r18 # reply35328
            jump s1221_dispose

        'Приятно было поболтать с тобой, Костяшка. Будь здоров.' if s1221Logic.r35329_condition():
            # r19 # reply35329
            jump s1221_dispose


# s2 # say35334
label s1221_s2:  # from 0.4 # Manually checked EXTERN ~DMORTE~ : 370
    teller 'Скелет не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить скелет в покое.' if s1221Logic.r35335_condition():
            # r20 # reply35335
            $ s1221Logic.r35335_action()
            jump morte_s370

        'Оставить скелет в покое.' if s1221Logic.r35336_condition():
            # r21 # reply35336
            jump s1221_dispose

        'Оставить скелет в покое.' if s1221Logic.r35337_condition():
            # r22 # reply35337
            jump s1221_dispose


# s3 # say35339
label s1221_s3:  # from 0.5 # Manually checked EXTERN ~DMORTE~ : 376 Manually checked EXTERN ~DMORTE~ : 370
    teller 'Кто-то позаботился о том, чтобы связать кости скелета кожаными ремнями, обвивающими тело на манер, напоминающий мускулы и сухожилия.'
    teller 'Ремни привязаны к железными скобам, вбитым в суставы скелета. Кажется, этот скелет сослужил хорошую службу: кости растрескались, многочисленные трещины на них залиты вонючим клеем.'

    menu:
        'Попробовать вытащить скобы из суставов скелета.' if s1221Logic.r35340_condition():
            # r23 # reply35340
            $ s1221Logic.r35340_action()
            jump morte_s376

        'Попробовать вытащить скобы из суставов скелета.' if s1221Logic.r35362_condition():
            # r24 # reply35362
            jump s1221_s4

        'Попробовать вытащить скобы из суставов скелета.' if s1221Logic.r35363_condition():
            # r25 # reply35363
            jump s1221_s5

        'Попробовать вытащить скобы из суставов скелета.' if s1221Logic.r35364_condition():
            # r26 # reply35364
            jump s1221_s6

        'Не против, если я возьму немного ремешков и скоб?' if s1221Logic.r35365_condition():
            # r27 # reply35365
            jump s1221_s4

        'Не против, если я возьму немного ремешков и скоб?' if s1221Logic.r35366_condition():
            # r28 # reply35366
            jump s1221_s5

        'Не против, если я возьму немного ремешков и скоб?' if s1221Logic.r35367_condition():
            # r29 # reply35367
            jump s1221_s6

        'Оставить скелет в покое.' if s1221Logic.r35368_condition():
            # r30 # reply35368
            $ s1221Logic.r35368_action()
            jump morte_s370

        'Оставить скелет в покое.' if s1221Logic.r35369_condition():
            # r31 # reply35369
            jump s1221_dispose

        'Оставить скелет в покое.' if s1221Logic.r35370_condition():
            # r32 # reply35370
            jump s1221_dispose


# s4 # say35345
label s1221_s4:  # from 0.7 0.10 3.1 3.4 # Manually checked EXTERN ~DMORTE~ : 370
    teller 'Ты тянешь за железные скобы, но тебе не хватает сил, чтобы вытащить их. Они накрепко забиты.'

    menu:
        'Если бы у меня был подходящий инструмент, я бы смог их вытащить… хм-м. Я еще вернусь, Костяшка.' if s1221Logic.r35346_condition():
            # r33 # reply35346
            $ s1221Logic.r35346_action()
            jump s1221_dispose

        'Если бы у меня был подходящий инструмент, я бы смог их вытащить… хм-м. Я еще вернусь, Костяшка.' if s1221Logic.r35347_condition():
            # r34 # reply35347
            jump s1221_dispose

        'Если бы у меня был подходящий инструмент, я бы смог их вытащить… хм-м. Я еще вернусь, Костяшка.' if s1221Logic.r35348_condition():
            # r35 # reply35348
            jump s1221_dispose

        'Оставить скелет в покое.' if s1221Logic.r35349_condition():
            # r36 # reply35349
            $ s1221Logic.r35349_action()
            jump morte_s370

        'Оставить скелет в покое.' if s1221Logic.r35350_condition():
            # r37 # reply35350
            jump s1221_dispose

        'Оставить скелет в покое.' if s1221Logic.r35351_condition():
            # r38 # reply35351
            jump s1221_dispose


# s5 # say35353
label s1221_s5:  # from 0.8 0.11 3.2 3.5
    teller 'Ты тянешь за железные скобы изо всех сил, и через несколько мгновений вырываешь их из суставов.'
    teller 'Скелет разваливается, некоторые из его костей продолжают шевелиться.'

    menu:
        'Извини, Костяшка…':
            # r39 # reply35354
            $ s1221Logic.r35354_action()
            jump s1221_dispose


# s6 # say35356
label s1221_s6:  # from 0.9 0.12 3.3 3.6
    teller 'С помощью ломика ты вырываешь скобы из суставов. Скелет разваливается, хотя некоторые кости продолжают шевелиться.'

    menu:
        'Извини, Костяшка…':
            # r40 # reply35357
            $ s1221Logic.r35357_action()
            jump s1221_dispose


# s7 # say35382
label s1221_s7:  # - # IF ~  False()
    teller 'Скелет не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump s1221_dispose
