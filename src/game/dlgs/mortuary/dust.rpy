init 10 python:
    from game.dlgs.mortuary.dust_logic import DustLogic
    dustLogic = DustLogic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DUST.DLG
# ###

# dust_s22
# dust_s40
label start_dust_talk_first:
    call dust_init
    jump dust_s3
label start_dust_talk:
    call dust_init
    jump dust_s0
label start_dust_kill_first:
    call dust_init
    jump dust_kill_first
label start_dust_kill:
    call dust_init
    jump dust_kill
label dust_init:
    $ dustLogic.dust_init()
    scene bg mortuary_f3r4
    show dust_img default at center_left_down
    return
label dust_dispose:
    hide dust_img
    jump graphics_menu


# s0 # say300
label dust_s0:  # - # IF ~  Global("Appearance","GLOBAL",1)
    nr 'Тленный не обращает на тебя внимания. Должно быть, он спутал тебя с одним из мертвых рабочих.'

    menu:
        '«Приветствую».':
            # r0 # reply302
            jump dust_s1

        '«Кто ты?»':
            # r1 # reply303
            jump dust_s1

        '«Что это за место?»':
            # r2 # reply304
            jump dust_s1

        '«У меня есть пара вопросов…»':
            # r3 # reply305
            jump dust_s1

        'Оставить его в покое.':
            # r4 # reply306
            jump dust_dispose


# s1 # say307
label dust_s1:  # from 0.0 0.1 0.2 0.3
    nr 'Тленный подпрыгивает от неожиданности. Затем он поворачивает к тебе голову.'
    nr 'Он выглядит потрясенным: должно быть, маскировка у тебя весьма неплохая.'

    menu:
        'Воспользоваться эффектом неожиданности и свернуть ему шею до того, как он сможет позвать на помощь.':
            # r5 # reply310
            jump dust_s41

        '«У меня есть пара вопросов…»':
            # r6 # reply312
            jump dust_s2

        'Уйти. Быстро.':
            # r7 # reply1332
            jump dust_s2


# s2 # say309
label dust_s2:  # from 1.1 1.2 5.2 5.3 19.6 20.4 47.2 47.3 51.4
    nr 'Тленный отступает на шаг, затем быстро хлопает в ладони три раза.'
    nr 'В ответ во всем Морге раздается звон огромного железного колокола.'

    menu:
        '«Ну хорошо…»':
            # r8 # reply313
            $ dustLogic.r313_action()
            jump dust_dispose


# s3 # say314
label dust_s3:  # -
    nr 'Этот бледный мужчина одет в длинную темную мантию. От него слегка отдает плесенью.'
    nr 'Его лицо ничего не выражает; кажется, он полностью поглощен своими обязанностями.'

    menu:
        '«Приветствую».':
            # r9 # reply315
            jump dust_s4

        '«Кто ты?»':
            # r10 # reply316
            jump dust_s4

        '«Что это за место?»':
            # r11 # reply317
            jump dust_s4

        '«У меня есть пара вопросов…»':
            # r12 # reply319
            jump dust_s4

        'Оставить его в покое.':
            # r13 # reply382
            jump dust_dispose


# s4 # say321
label dust_s4:  # from 3.0 3.1 3.2 3.3 40.2 40.3
    nr 'Тленный медленно поднимает свою голову и оборачивается к тебе.'
    dust '«Ты потерялся?»'

    menu:
        '«Да».':
            # r14 # reply322
            jump dust_s5

        '«Нет».':
            # r15 # reply323
            jump dust_s6

        '«Нет, я не потерялся. У меня есть несколько вопросов…»':
            # r16 # reply324
            jump dust_s6

        '«Прощай».':
            # r17 # reply325
            jump dust_s5


# s5 # say326
label dust_s5:  # from 4.0 4.3 6.4 16.2 51.1
    dust '«Я позову стражу, они тебя живо выведут. Погоди минуточку».'

    menu:
        'Свернуть ему шею до того, как он сможет позвать на помощь.' if dustLogic.r327_condition():
            # r18 # reply327
            jump dust_s44

        'Свернуть ему шею до того, как он сможет позвать на помощь.' if dustLogic.r328_condition():
            # r19 # reply328
            jump dust_s41

        'Уйти. Быстро.':
            # r20 # reply329
            jump dust_s2

        'Подождать.':
            # r21 # reply1333
            jump dust_s2


# s6 # say330
label dust_s6:  # from 4.1 4.2 51.2 51.3
    dust '«Если ты не потерялся, что же ты здесь делаешь?»'

    menu:
        '«Это тебя не касается».':
            # r22 # reply331
            jump dust_s7

        '«Я очнулся на одной из плит в вашей препараторской».':
            # r23 # reply332
            jump dust_s8

        '«Я хочу кое с кем повидаться».':
            # r24 # reply333
            jump dust_s9

        '«Я пришел сюда на похороны, но, похоже, произошла ошибка».' if dustLogic.r334_condition():
            # r25 # reply334
            jump dust_s16

        'Уйти. Быстро.':
            # r26 # reply337
            jump dust_s5


# s7 # say335
label dust_s7:  # from 6.0 9.0 20.0
    dust '«Боюсь, что касается. Может, стражники развяжут твой язык».'
    nr 'Тленный отступает на шаг; кажется, он собирается позвать стражников.'

    menu:
        'Свернуть ему шею до того, как он сможет позвать на помощь.' if dustLogic.r344_condition():
            # r27 # reply344
            jump dust_s44

        'Свернуть ему шею до того, как он сможет позвать на помощь.' if dustLogic.r3887_condition():
            # r28 # reply3887
            jump dust_s41

        '«Давай, зови их. Буду рад с ними встретиться».':
            # r29 # reply3888
            $ dustLogic.r3888_action()
            jump dust_dispose


# s8 # say336
label dust_s8:  # from 6.1 16.0 20.1
    dust '«Любишь пошутить? Тогда, может, ты поделишься своими шутками со стражниками».'
    nr 'Тленный отступает на шаг; кажется, он собирается позвать стражников.'

    menu:
        'Свернуть ему шею до того, как он сможет позвать на помощь.' if dustLogic.r358_condition():
            # r30 # reply358
            jump dust_s44

        'Свернуть ему шею до того, как он сможет позвать на помощь.' if dustLogic.r3885_condition():
            # r31 # reply3885
            jump dust_s41

        '«Давай, зови их. Буду рад с ними встретиться».':
            # r32 # reply3886
            $ dustLogic.r3886_action()
            jump dust_dispose


# s9 # say338
label dust_s9:  # from 6.2 20.2
    dust '«Кого ты хочешь увидеть?»'

    menu:
        '«Это не твое дело».':
            # r33 # reply3922
            jump dust_s7

        '«Я хочу повидаться с Дхоллом».' if dustLogic.r342_condition():
            # r34 # reply342
            jump dust_s10

        '«Я хочу повидаться с Дхоллом».' if dustLogic.r343_condition():
            # r35 # reply343
            jump dust_s11

        '«Я хочу повидаться с Дейонаррой».' if dustLogic.r33183_condition():
            # r36 # reply33183
            jump dust_s13

        '«Я хочу повидаться с Дейонаррой».' if dustLogic.r33185_condition():
            # r37 # reply33185
            jump dust_s12

        '«Я хочу повидаться с Соэго».' if dustLogic.r33186_condition():
            # r38 # reply33186
            jump dust_s15

        '«Я хочу повидаться с Соэго».' if dustLogic.r33187_condition():
            # r39 # reply33187
            jump dust_s14

        'Ложь: «Э-э… Адана. Он все еще работает здесь?..»' if dustLogic.r33189_condition():
            # r40 # reply33189
            $ dustLogic.r33189_action()
            jump dust_s21

        'Ложь: «Э-э… Адана. Он все еще работает здесь?..»' if dustLogic.r33190_condition():
            # r41 # reply33190
            jump dust_s21

        '«Ой, нет. Я оговорился».':
            # r42 # reply33191
            jump dust_s20


# s10 # say345
label dust_s10:  # from 9.1
    dust '«Дхолла можно найти в приемной комнате на этом этаже. Должен предупредить… Дхолл очень занят, а здоровье у него подкошено».'
    dust '«Если у тебя к нему несрочное дело, то лучше не беспокоить его».'

    menu:
        '«Хорошо. Спасибо за информацию».':
            # r43 # reply347
            jump dust_s48


# s11 # say346
label dust_s11:  # from 9.2
    dust '«Скорее всего, Дхолл в приемной комнате на втором этаже. Он очень занят, а здоровье у него подкошено».'
    dust '«Если у тебя к нему несрочное дело, то лучше не беспокоить его».'

    menu:
        '«Хорошо. Спасибо за информацию».':
            # r44 # reply348
            jump dust_s48


# s12 # say349
label dust_s12:  # from 9.4 19.1
    dust '«Дейонаррой? На первом этаже в мемориальном зале похоронена женщина. Может быть, это она?»'

    menu:
        '«Скорее всего. Спасибо».':
            # r45 # reply352
            jump dust_s48


# s13 # say350
label dust_s13:  # from 9.3
    dust '«Дейонаррой? В северо-западном мемориальном зале похоронена женщина. Может быть, это она?»'

    menu:
        '«Скорее всего. Спасибо».':
            # r46 # reply353
            jump dust_s48


# s14 # say351
label dust_s14:  # from 9.6
    dust '«Скорее всего, Соэго находится у главных ворот на первом этаже. Он работает проводником в часы антипика».'

    menu:
        '«Отлично. Спасибо».':
            # r47 # reply354
            jump dust_s48


# s15 # say355
label dust_s15:  # from 9.5
    dust '«Скорее всего, Соэго находится у главных ворот. Он работает проводником в часы антипика».'

    menu:
        '«Отлично. Спасибо».':
            # r48 # reply356
            jump dust_s48


# s16 # say357
label dust_s16:  # from 6.3 20.3
    dust '«Кто был погребен? Возможно, служба проводится в другом конце Морга».'

    menu:
        '«Ты не понимаешь… ошибка в том, что похоронить собирались МЕНЯ».':
            # r49 # reply359
            jump dust_s8

        '«Может быть. Где еще проводят службу?»':
            # r50 # reply360
            jump dust_s17

        '«Ты можешь показать выход отсюда?»':
            # r51 # reply361
            jump dust_s5


# s17 # say362
label dust_s17:  # from 16.1
    dust '«По всему периметру Морга расположены погребальные залы. Они расположены вдоль стены на первом и втором этажах».'
    dust '«Тебе известно имя усопшего?»'

    menu:
        '«Нет».':
            # r52 # reply363
            jump dust_s18

        '«Да».':
            # r53 # reply364
            jump dust_s19


# s18 # say365
label dust_s18:  # from 17.0
    dust '«Тогда тебе стоит поговорить с одним из проводников у главных ворот. Они тебе помогут».'

    menu:
        '«Отлично. Спасибо».':
            # r54 # reply366
            jump dust_dispose


# s19 # say367
label dust_s19:  # from 17.1
    nr 'Тленный ждет.'

    menu:
        '«Прошу прощения… Я оговорился. Мне неизвестно имя усопшего».':
            # r55 # reply369
            jump dust_s20

        '«Это имя — Дейонарра».' if dustLogic.r370_condition():
            # r56 # reply370
            jump dust_s12

        'Ложь: «Меня зовут… э-э, Адан».' if dustLogic.r371_condition():
            # r57 # reply371
            $ dustLogic.r371_action()
            jump dust_s21

        'Ложь: «Меня зовут… э-э, Адан».' if dustLogic.r372_condition():
            # r58 # reply372
            jump dust_s21

        'Наклониться вперед, будто собираясь прошептать ему что-то на ухо, а затем свернуть ему шею.' if dustLogic.r373_condition():
            # r59 # reply373
            jump dust_s44

        'Наклониться вперед, будто собираясь прошептать ему что-то на ухо, а затем свернуть ему шею.' if dustLogic.r1335_condition():
            # r60 # reply1335
            jump dust_s45

        'Убежать от него.':
            # r61 # reply1336
            jump dust_s2


# s20 # say374
label dust_s20:  # from 9.9 19.0
    dust '«Понятно. И что же ты здесь делаешь?»'

    menu:
        '«Это не твое дело».':
            # r62 # reply375
            jump dust_s7

        '«Я очнулся на одной из плит в вашей препараторской».':
            # r63 # reply376
            jump dust_s8

        '«Я хочу кое с кем повидаться».':
            # r64 # reply377
            jump dust_s9

        '«Я пришел сюда на похороны, но, похоже, произошла ошибка».' if dustLogic.r378_condition():
            # r65 # reply378
            jump dust_s16

        'Убежать от него.':
            # r66 # reply379
            jump dust_s2


# s21 # say368
label dust_s21:  # from 9.7 9.8 19.2 19.3
    dust '«Это имя мне незнакомо. Справься у одного из проводников у главных ворот… они смогут сориентировать тебя лучше, чем я».'

    menu:
        '«Хорошо. Я так и сделаю. Прощай».':
            # r67 # reply380
            jump dust_s48


# s22 # say294
label dust_s22:  # - # IF ~  Global("Appearance","GLOBAL",2)
    nr 'Этот бледный мужчина одет в длинную темную мантию. От него слегка отдает плесенью.'
    nr 'Его лицо ничего не выражает; кажется, он полностью поглощен своими обязанностями.'

    menu:
        '«Приветствую».':
            # r68 # reply295
            jump dust_s23

        'Оставить его в покое.':
            # r69 # reply297
            jump dust_dispose


# s23 # say381
label dust_s23:  # from 22.0
    nr 'Он медленно оборачивается, его взгляд мельком скользит по твоей одежде.'
    dust '«Приветствую тебя, посвященный».'

    menu:
        '«Кто ты?»':
            # r70 # reply383
            jump dust_s24

        '«Что это за место?»':
            # r71 # reply384
            jump dust_s25

        '«У меня есть пара вопросов…»':
            # r72 # reply391
            jump dust_s26

        'Оставить его в покое.':
            # r73 # reply392
            jump dust_dispose


# s24 # say393
label dust_s24:  # from 23.0
    dust '«У меня такой же вопрос. Твое лицо мне незнакомо. Как тебя зовут?»'

    menu:
        'Ложь: «Меня зовут… э-э, Адан».' if dustLogic.r450_condition():
            # r74 # reply450
            $ dustLogic.r450_action()
            jump dust_s49

        'Ложь: «Меня зовут… э-э, Адан».' if dustLogic.r1337_condition():
            # r75 # reply1337
            jump dust_s49

        '«Как меня зовут — не твое дело. Я должен идти. Прощай».' if dustLogic.r3904_condition():
            # r76 # reply3904
            jump dust_s47

        '«Как меня зовут — не твое дело. Я должен идти. Прощай».' if dustLogic.r3905_condition():
            # r77 # reply3905
            jump dust_s46


# s25 # say394
label dust_s25:  # from 23.1
    dust '«Это Морг…»'
    nr 'Тленный какое-то время смотрит на тебя, как бы оценивая только что тобою сказанное.'
    dust '«Как, ты сказал, тебя зовут?»'

    menu:
        'Ложь: «Меня зовут… э-э, Адан».' if dustLogic.r399_condition():
            # r78 # reply399
            $ dustLogic.r399_action()
            jump dust_s49

        'Ложь: «Меня зовут… э-э, Адан».' if dustLogic.r3906_condition():
            # r79 # reply3906
            jump dust_s49

        '«Как меня зовут — не твое дело. Я должен идти. Прощай».' if dustLogic.r3907_condition():
            # r80 # reply3907
            jump dust_s47

        '«Как меня зовут — не твое дело. Я должен идти. Прощай».' if dustLogic.r3908_condition():
            # r81 # reply3908
            jump dust_s46


# s26 # say400
label dust_s26:  # from 23.2 27.0 28.2 30.3 31.3 34.2 36.1 39.0 50.0
    nr 'Тленный терпеливо ждет твоего продолжения.'

    menu:
        '«Можешь показать мне выход?»':
            # r82 # reply401
            jump dust_s27

        '«Ты знаешь кого-нибудь по имени Фарод?»':
            # r83 # reply402
            jump dust_s28

        '«Я потерял дневник. Тебе ничего такого не попадалось?»':
            # r84 # reply403
            jump dust_s39

        '«Неважно. Извини за беспокойство».':
            # r85 # reply404
            jump dust_s48


# s27 # say405
label dust_s27:  # from 26.0
    dust '«Ты можешь просто выйти через главные ворота. Они на первом этаже».'

    menu:
        '«У меня есть другие вопросы…»':
            # r86 # reply406
            jump dust_s26

        '«Спасибо. Прощай».':
            # r87 # reply407
            jump dust_s48


# s28 # say408
label dust_s28:  # from 26.1
    dust '«Это имя…»'
    nr 'Тленный на секунду умолкает.'
    dust '«Это имя *звучит* знакомо… Кажется, я припоминаю сборщика с таким именем. Писец Дхолл может знать о нем больше».'

    menu:
        '«Сборщика?»':
            # r88 # reply409
            jump dust_s29

        '«Дхолл?»':
            # r89 # reply410
            jump dust_s30

        '«У меня есть другие вопросы…»':
            # r90 # reply411
            jump dust_s26

        '«Спасибо за уделенное время. Прощай».':
            # r91 # reply425
            jump dust_s48


# s29 # say412
label dust_s29:  # from 28.0
    dust '«Сборщики… они собирают тех, кто умер на улицах Сигила, и доставляют их в Морг…»'
    nr 'Тленный умолкает, хмуря брови.'
    dust '«Ты нездешний. Кто ты?»'

    menu:
        '«Я недавно посвящен. Прости мое невежество».' if dustLogic.r413_condition():
            # r92 # reply413
            jump dust_s50

        '«Я… недавно здесь. Я… пытаюсь изучить обстановку».' if dustLogic.r3918_condition():
            # r93 # reply3918
            jump dust_s47

        '«Ну… к чему имена? Храни веру, э-э, посвященный».' if dustLogic.r3919_condition():
            # r94 # reply3919
            jump dust_s47

        '«Если ты не можешь помочь мне, я поищу кого-нибудь, кто сможет. Прощай».' if dustLogic.r3920_condition():
            # r95 # reply3920
            jump dust_s46


# s30 # say414
label dust_s30:  # from 28.1
    dust '«Дхолл — один из самых уважаемых членов нашей фракции. Наверное, никто не размышлял о сущности Истинной Смерти и не заслужил ее больше, чем он».'
    dust '«У него много знаний, которыми он может поделиться. Если ты незнаком с ним, то я советую тебе как можно раньше воспользоваться этой возможностью».'
    dust '«Ему осталось не так долго жить в тени этого существования».'

    menu:
        '«*Ему осталось не так долго жить?*»':
            # r96 # reply415
            jump dust_s31

        '«Где я могу найти Дхолла?»' if dustLogic.r416_condition():
            # r97 # reply416
            jump dust_s32

        '«Где я могу найти Дхолла?»' if dustLogic.r417_condition():
            # r98 # reply417
            jump dust_s33

        '«У меня есть другие вопросы…»':
            # r99 # reply418
            jump dust_s26

        '«Спасибо за информацию. Я поговорю с ним».':
            # r100 # reply33204
            jump dust_s48


# s31 # say419
label dust_s31:  # from 30.0 32.0 33.0
    nr 'Кивок.'
    dust '«Дхолл болен. Он стар, даже по меркам гитцераев. Несомненно, смерть последует за болезнью, которую он подхватил. Ему повезло».'

    menu:
        '«По меркам гитцераев?»':
            # r101 # reply420
            jump dust_s34

        '«Что это еще за *гитцераи*?»':
            # r102 # reply421
            jump dust_s35

        '«Повезло?»':
            # r103 # reply422
            jump dust_s36

        '«Понятно. У меня еще вопросы…»':
            # r104 # reply423
            jump dust_s26

        '«Спасибо за уделенное время. Мне нужно идти».':
            # r105 # reply424
            jump dust_s48


# s32 # say427
label dust_s32:  # from 30.1
    dust '«Дхолл находится в приемной комнате в северо-западной части этого этажа. Должен предупредить… Дхолл очень занят…»'
    dust '«То время, которое он не занят своими обязанностями, отбирает у него болезнь».'

    menu:
        '«Дхолл болен?»':
            # r106 # reply428
            jump dust_s31

        '«Спасибо за уделенное время. Мне нужно идти. Прощай».':
            # r107 # reply429
            jump dust_s48


# s33 # say426
label dust_s33:  # from 30.2
    dust '«Дхолл скорее всего находится в приемной комнате на втором этаже. Лучше не отвлекай его слишком сильно, он очень занят…»'
    dust '«То время, которое он не занят своими обязанностями, отбирает у него болезнь».'

    menu:
        '«Дхолл болен?»':
            # r108 # reply430
            jump dust_s31

        '«Спасибо за уделенное время. Мне нужно идти. Прощай».':
            # r109 # reply431
            jump dust_s48


# s34 # say432
label dust_s34:  # from 31.0
    dust '«Да, гитцераи живут гораздо дольше, чем люди».'

    menu:
        '«Что это еще за *гитцераи*?»':
            # r110 # reply433
            jump dust_s35

        '«Как это Дхоллу повезло? От него хотят избавиться?»':
            # r111 # reply437
            jump dust_s36

        '«О, у меня есть другие вопросы…»':
            # r112 # reply438
            jump dust_s26

        '«Спасибо за уделенное время. Прощай».':
            # r113 # reply440
            jump dust_s48


# s35 # say435
label dust_s35:  # from 31.1 34.0
    dust '«Гитцераи — это…»'
    nr 'Тленный умолкает, затем хмурится, бросив на тебя пристальный взгляд.'
    dust '«Ты ведь нездешний. Кто ты?»'

    menu:
        '«Я недавно посвящен. Прости мое невежество».' if dustLogic.r436_condition():
            # r114 # reply436
            jump dust_s50

        '«Я… недавно здесь. Я… пытаюсь изучить обстановку».' if dustLogic.r3909_condition():
            # r115 # reply3909
            jump dust_s47

        '«Ну… к чему имена? Храни веру, э-э, посвященный».' if dustLogic.r3910_condition():
            # r116 # reply3910
            jump dust_s47

        '«Если ты не можешь помочь мне, я поищу кого-нибудь, кто сможет. Прощай».' if dustLogic.r3911_condition():
            # r117 # reply3911
            jump dust_s46


# s36 # say439
label dust_s36:  # from 31.2 34.1
    dust '«Ему повезло в том, что он достигнет Истинной Смерти. Он больше не будет странствовать в тени этого существования».'

    menu:
        '«И… это хорошо?»':
            # r118 # reply441
            jump dust_s37

        '«Понятно. И правда, очень повезло. У меня есть другие вопросы…»':
            # r119 # reply442
            jump dust_s26

        '«Понятно. Ну что ж, мне нужно идти. Прощай».':
            # r120 # reply443
            jump dust_s48


# s37 # say444
label dust_s37:  # from 36.0
    nr 'Тленный кивает.'
    dust '«Да».'
    nr 'Он хмурится, затем пристально смотрит на тебя.'
    dust '«Ты ведь не здешний. Кто ты?»'

    menu:
        '«Я недавно посвящен. Прости мое невежество».' if dustLogic.r445_condition():
            # r121 # reply445
            jump dust_s50

        '«Я… недавно здесь. Я… пытаюсь изучить обстановку».' if dustLogic.r446_condition():
            # r122 # reply446
            jump dust_s47

        '«Ну… к чему имена? Храни веру, э-э, посвященный».' if dustLogic.r3912_condition():
            # r123 # reply3912
            jump dust_s47

        '«Если ты не можешь помочь мне, я поищу кого-нибудь, кто сможет. Прощай».' if dustLogic.r3913_condition():
            # r124 # reply3913
            jump dust_s46


# s38 # say447
label dust_s38:  # -
    dust '«Ты не из наших. Кто ты? Что ты здесь делаешь? Ты из анархистов? Или шпион другой фракции? Стража! Стража!»'

    menu:
        '«Проклятье!»':
            # r125 # reply448
            $ dustLogic.r448_action()
            jump dust_dispose

        '«Тс-с! Я не смогу тебе ответить под такой крик!»' if dustLogic.r449_condition():
            # r126 # reply449
            $ dustLogic.r449_action()
            jump dust_dispose

        '«Тс-с! Я не смогу тебе ответить под такой крик!»' if dustLogic.r1339_condition():
            # r127 # reply1339
            $ dustLogic.r1339_action()
            jump dust_dispose


# s39 # say398
label dust_s39:  # from 26.2
    dust '«Дневник? Не встречал такого».'

    menu:
        '«У меня есть другие вопросы…»':
            # r128 # reply451
            jump dust_s26

        '«Я должен идти. Прощай».':
            # r129 # reply452
            jump dust_s48


# s40 # say1419
label dust_s40:  # -
    nr 'Этот бледный мужчина одет в длинную темную мантию. От него слегка отдает плесенью.'
    nr 'Его лицо ничего не выражает; кажется, он полностью поглощен своими обязанностями.'

    menu:
        '«Приветствую».' if dustLogic.r1420_condition():
            # r130 # reply1420
            jump morte_s61  # EXTERN

        '«Приветствую».' if dustLogic.r1421_condition():
            # r131 # reply1421
            jump morte_s63  # EXTERN

        '«Приветствую».' if dustLogic.r1422_condition():
            # r132 # reply1422
            jump dust_s4

        '«Приветствую».' if dustLogic.r1423_condition():
            # r133 # reply1423
            jump dust_s4

        'Оставить его в покое.':
            # r134 # reply1424
            jump dust_dispose


# s41 # say1425
label dust_s41:  # from 1.0 5.1 7.1 8.1 47.1
    nr 'Тленный не успевает и слова вымолвить, как твои руки хватают его голову за виски и резко сворачивают ее влево.'

    menu:
        '«Нельзя дать тебе предупредить своих друзей…»':
            # r135 # reply1426
            $ dustLogic.r1426_action()
            jump dust_s42


# s42 # say1427
label dust_s42:  # from 41.0 45.0
    nr 'В шее раздается характерный хруст, и тело тленного безвольно падает в твои объятия.'

    menu:
        '«Лучше ты, чем я, трухлявый».' if dustLogic.r1428_condition():
            # r136 # reply1428
            $ dustLogic.r1428_action()
            jump dust_s43

        '«Лучше ты, чем я, трухлявый».' if dustLogic.r1429_condition():
            # r137 # reply1429
            $ dustLogic.r1429_action()
            jump dust_dispose


# s43 # say1430
label dust_s43:  # from 42.0
    nr 'К своему удивлению, это действие происходит практически инстинктивно, будто ты проделывал это уже много раз…'
    nr '…с этой мыслью всплывает воспоминание, но оно недостаточно сильно для того, чтобы за него зацепиться.'

    menu:
        'Оставить тело, уйти.':
            # r138 # reply3882
            $ dustLogic.r3882_action()
            jump dust_dispose


# s44 # say3883
label dust_s44:  # from 5.0 7.0 8.0 19.4 47.0
    nr 'Ты недостаточно быстр, и тленный уворачивается от твоего выпада.'
    nr 'Отступив на шаг, он быстро хлопает в ладони три раза. В ответ во всем Морге раздается звон огромного железного колокола.'

    menu:
        '«Ну хорошо…»':
            # r139 # reply3884
            $ dustLogic.r3884_action()
            jump dust_dispose


# s45 # say3889
label dust_s45:  # from 19.5
    nr 'Ты наклоняешься, чтобы шепнуть ему что-то на ухо, тленный тоже наклоняется.'
    nr 'Как только он оказывается на расстоянии вытянутой руки, ты хватаешь его за виски и резко сворачиваешь голову влево.'

    menu:
        '«Нельзя дать тебе предупредить своих друзей…»':
            # r140 # reply3890
            $ dustLogic.r3890_action()
            jump dust_s42


# s46 # say3891
label dust_s46:  # from 24.3 25.3 29.3 35.3 37.3 49.3 50.1
    nr 'Тленный явно что-то подозревает. Похоже, он хочет что-то сказать, затем едва качает головой и возвращается к своим обязанностям.'

    menu:
        'Уйти прочь.':
            # r141 # reply3892
            jump dust_dispose


# s47 # say3893
label dust_s47:  # from 24.2 25.2 29.1 29.2 35.1 35.2 37.1 37.2 49.1 49.2
    nr 'Тленный внимательно тебя осматривает.'
    dust '«Ты не из наших. Что ты здесь делаешь? Ты из анархистов? Или шпион другой фракции? Кажется, здесь есть дело для стражников…»'

    menu:
        'Свернуть ему шею до того, как он сможет позвать на помощь.' if dustLogic.r3914_condition():
            # r142 # reply3914
            jump dust_s44

        'Свернуть ему шею до того, как он сможет позвать на помощь.' if dustLogic.r3915_condition():
            # r143 # reply3915
            jump dust_s41

        '«Нет-нет… не он… то есть, я хотел сказать, не шпион… понимаешь, я очнулся на одной из плит… и…»':
            # r144 # reply3916
            jump dust_s2

        'Уйти. Быстро.':
            # r145 # reply3917
            jump dust_s2


# s48 # say3894
label dust_s48:  # from 10.0 11.0 12.0 13.0 14.0 15.0 21.0 26.3 27.1 28.3 30.4 31.4 32.1 33.1 34.3 36.2 39.1
    nr 'Тленный кивает, затем возвращается к своим обязанностям.'

    menu:
        'Уйти прочь.':
            # r146 # reply3895
            jump dust_dispose


# s49 # say3896
label dust_s49:  # from 24.0 24.1 25.0 25.1
    nr 'Тленный хмурится.'
    dust '«Это имя мне незнакомо».'

    menu:
        '«Я недавно посвящен. Прости мое невежество».' if dustLogic.r3898_condition():
            # r147 # reply3898
            jump dust_s50

        '«Я… недавно здесь. Я… пытаюсь изучить порядки».' if dustLogic.r3899_condition():
            # r148 # reply3899
            jump dust_s47

        '«Ну… к чему имена? Храни веру, э-э, посвященный».' if dustLogic.r3900_condition():
            # r149 # reply3900
            jump dust_s47

        '«Если ты не можешь помочь мне, я поищу кого-нибудь, кто сможет. Прощай».' if dustLogic.r3901_condition():
            # r150 # reply3901
            jump dust_s46


# s50 # say3897
label dust_s50:  # from 29.0 35.0 37.0 49.0
    nr 'Тленный продолжает хмуриться, но затем слегка кивает.'
    dust '«Ну хорошо. Что я могу сделать для тебя, посвященный?»'

    menu:
        '«У меня есть пара вопросов…»':
            # r151 # reply3902
            jump dust_s26

        '«На этот раз — ничего. Прощай».':
            # r152 # reply3903
            jump dust_s46


# s51 # say66674
label dust_s51:  # - # IF ~  Global("Appearance","GLOBAL",0)
    nr 'Тленный бросает на тебя каменный взгляд.'
    dust '«Ты потерялся?»'

    menu:
        '«Нет, я член фракции. Я просто осматриваю Морг».' if dustLogic.r66675_condition():
            # r153 # reply66675
            jump dust_s52

        '«Да».' if dustLogic.r66676_condition():
            # r154 # reply66676
            jump dust_s5

        '«Нет».' if dustLogic.r66677_condition():
            # r155 # reply66677
            jump dust_s6

        '«Нет, я не потерялся. У меня есть несколько вопросов…»' if dustLogic.r66678_condition():
            # r156 # reply66678
            jump dust_s6

        '«Прощай».' if dustLogic.r66679_condition():
            # r157 # reply66679
            jump dust_s2


# s52 # say66681
label dust_s52:  # from 51.0
    nr 'Тленный какое-то время пристально на тебя смотрит, затем кивает.'
    dust '«Хорошо. Если тебе нужна помощь, дай мне знать».'

    menu:
        '«Конечно. Прощай».':
            # r158 # reply66682
            jump dust_dispose


label dust_kill:
    nr 'Todo.'

    menu:
        'Уйти.':
            jump dust_dispose
        'Убить.':
            jump dust_killed


label dust_killed:
    $ dustLogic.kill_dust()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'dusts.'
    nr 'Who is dust?'
    nr 'dust is dead, baby, dust is dead.'
    jump dust_dispose


label dust_kill_first:
    nr 'Todo.'

    menu:
        'Уйти.':
            jump dust_dispose
        'Убить.':
            jump dust_killed_first


label dust_killed_first:
    $ dustLogic.kill_dust()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 'dusts.'
    nr 'Who is dust?'
    nr 'dust is dead, baby, dust is dead.'
    jump dust_dispose
