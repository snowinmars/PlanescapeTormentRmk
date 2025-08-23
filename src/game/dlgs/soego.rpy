init 10 python:
    from game.dlgs.soego_logic import SoegoLogic
    soegoLogic = SoegoLogic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/DSOEGO.DLG
# ###


label soego_s0_ctor: # - # IF WEIGHT #8 /* Triggers after states #: 59 58 12 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Appearance","GLOBAL",1) Global("Gate_Open","GLOBAL",0) Global("Soego","GLOBAL",0)
    scene bg mortuary_f1r1
    show soego_img default at center_left_down
    jump soego_s0


label soego_s10_ctor: # -
    scene bg mortuary_f1r1
    show soego_img default at center_left_down
    jump soego_s10


label soego_s38_ctor: # - # IF WEIGHT #9 /* Triggers after states #: 59 58 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") !Global("Appearance","GLOBAL",1) Global("Gate_Open","GLOBAL",0) Global("Soego","GLOBAL",0)
    scene bg mortuary_f1r1
    show soego_img default at center_left_down
    jump soego_s38


label soego_s58_ctor: # - # IF WEIGHT #6 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Gate_Open","GLOBAL",1)
    scene bg mortuary_f1r1
    show soego_img default at center_left_down
    jump soego_s58


label soego_s59_ctor: # - # IF WEIGHT #7 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Soego","GLOBAL",1) Global("Gate_Open","GLOBAL",0)
    scene bg mortuary_f1r1
    show soego_img default at center_left_down
    jump soego_s59


label soego_s63_ctor: # - # IF WEIGHT #4 /* Triggers after states #: 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR1500") !Global("CR_Vic","GLOBAL",1)
    scene bg mortuary_f1r1
    show soego_img default at center_left_down
    jump soego_s63


label soego_s75_ctor: # -
    scene bg mortuary_f1r1
    show soego_img default at center_left_down
    jump soego_s75


label soego_s76_ctor: # -
    scene bg mortuary_f1r1
    show soego_img default at center_left_down
    jump soego_s76


label soego_s79_ctor: # - # IF WEIGHT #2 /* Triggers after states #: 82 95 even though they appear after this state */ ~  CreatureInArea("AR1500") Global("CR_Vic","GLOBAL",1)
    scene bg mortuary_f1r1
    show soego_img default at center_left_down
    jump soego_s79


label soego_s82_ctor: # - # IF WEIGHT #1 /* Triggers after states #: 95 even though they appear after this state */ ~  CreatureInArea("AR1500") Global("Met_Soego2","GLOBAL",1)
    scene bg mortuary_f1r1
    show soego_img default at center_left_down
    jump soego_s82


label soego_s85_ctor: # -
    scene bg mortuary_f1r1
    show soego_img default at center_left_down
    jump soego_s85


label soego_s86_ctor: # -
    scene bg mortuary_f1r1
    show soego_img default at center_left_down
    jump soego_s86


label soego_s87_ctor: # -
    scene bg mortuary_f1r1
    show soego_img default at center_left_down
    jump soego_s87


label soego_s95_ctor: # - # IF WEIGHT #0 ~  CreatureInArea("AR1500") GlobalGT("Soego_Exposed","GLOBAL",0)
    scene bg mortuary_f1r1
    show soego_img default at center_left_down
    jump soego_s95


label soego_s96_ctor: # -
    scene bg mortuary_f1r1
    show soego_img default at center_left_down
    jump soego_s96


label soego_s98_ctor: # -
    scene bg mortuary_f1r1
    show soego_img default at center_left_down
    jump soego_s98


label soego_s99_ctor: # -
    scene bg mortuary_f1r1
    show soego_img default at center_left_down
    jump soego_s99


label soego_s102_ctor: # -
    scene bg mortuary_f1r1
    show soego_img default at center_left_down
    jump soego_s102


label soego_s108_ctor: # - # IF WEIGHT #3 ~  Global("Dustman_Initiation","GLOBAL",5) GlobalLT("Soego","GLOBAL",3) !Global("CR_Vic","GLOBAL",1)
    scene bg mortuary_f1r1
    show soego_img default at center_left_down
    jump soego_s108


label soego_dispose:
    hide soego_img
    jump graphics_menu


# s0 # say1431
label soego_s0: # - # IF WEIGHT #8 /* Triggers after states #: 59 58 12 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Appearance","GLOBAL",1) Global("Gate_Open","GLOBAL",0) Global("Soego","GLOBAL",0)
    nr 'Перед тобой устало выглядящий мужчина в выцветших черных одеждах. Его худощавое лицо слишком бледное, как будто он давно не спал.'
    nr 'Его плечи осунулись, под налитыми кровью глазами видны мешки. Похоже, он не заметил тебя…'
    nr 'Должно быть, он спутал тебя с одним из мертвых рабочих.'

    menu:
        '«Приветствую».':
            # a0 # r1432
            jump soego_s1

        '«Кто ты?»':
            # a1 # r1433
            jump soego_s1

        '«Что это за место?»':
            # a2 # r1434
            jump soego_s1

        '«У меня есть несколько вопросов…»':
            # a3 # r1435
            jump soego_s1

        'Оставить его в покое.':
            # a4 # r1436
            jump soego_dispose


# s1 # say1437
label soego_s1: # from 0.0 0.1 0.2 0.3
    nr 'Когда ты обращаешься к тленному, он резко поднимает голову.'
    soego_unknown '«Про… прошу прощения? Ты что-то сказал мне?»'

    menu:
        '«Да. У меня есть несколько вопросов…»':
            # a5 # r1438
            $ soegoLogic.j63982_s1_r1438_action()
            jump soego_s2

        '«Нет. Нет, это не я».':
            # a6 # r1439
            $ soegoLogic.j63982_s1_r1439_action()
            $ soegoLogic.r1439_action()
            jump soego_s2

        'Стать тихим как покойник.' if soegoLogic.r1440_condition():
            # a7 # r1440
            jump soego_s3

        'Стать тихим как покойник.' if soegoLogic.r1441_condition():
            # a8 # r1441
            jump soego_s4

        'Уйти. Быстро.':
            # a9 # r1442
            jump soego_s5


# s2 # say1443
label soego_s2: # from 1.0 1.1 3.0 3.3 4.0 4.1
    soego_unknown '«О, силы!»'
    nr 'Тленный подпрыгивает, затем внимательно смотрит на тебя. Ты замечаешь, что его глаза не налиты кровью, а просто имеют красный оттенок.'
    soego_unknown '«Эй, ты заставляешь меня сделать нелестное признание: из тебя вышел убедительный зомби».'
    nr 'Он делает легкий поклон.'
    soego '«Я Соэго. Могу ли я спросить тебя, что ты делаешь здесь…»'
    nr 'Он косится на твои шрамы.'
    soego '«…в таком виде?»'

    menu:
        '«Это не твое дело».':
            # a10 # r1444
            jump soego_s6

        '«Я не совсем понимаю, что я здесь делаю. Я очнулся на одной из плит наверху, и моя память… немного туманна».':
            # a11 # r1445
            jump soego_s7

        '«Я заблудился в этих залах и теперь не могу найти выход. Ты можешь мне помочь?»' if soegoLogic.r1446_condition():
            # a12 # r1446
            jump soego_s8

        '«Я пытаюсь выбраться отсюда».':
            # a13 # r1447
            jump soego_s13

        '«Мне были нужны перемены в жизни».':
            # a14 # r1448
            $ soegoLogic.r1448_action()
            jump soego_s16

        '«У меня совершенно нет на это времени. Прощай».':
            # a15 # r4999
            jump soego_s17


# s3 # say1449
label soego_s3: # from 1.2
    nr 'Тленный некоторое время изучает тебя, затем трясет головой.'
    soego '«Опять почудилось…»'
    nr 'Вздыхает он и трет глаза.'
    soego '«Эти заклинания от лихорадки действуют слишком сильно…»'

    menu:
        '«Это не твое воображение. У меня есть другие вопросы…»':
            # a16 # r1450
            $ soegoLogic.j63982_s3_r1450_action()
            jump soego_s2

        'Свернуть ему шею, пока он отвлекся.' if soegoLogic.r1451_condition():
            # a17 # r1451
            jump soego_s19

        'Свернуть ему шею, пока он отвлекся.' if soegoLogic.r1452_condition():
            # a18 # r1452
            jump soego_s22

        '«У меня есть несколько вопросов».':
            # a19 # r1453
            $ soegoLogic.j63982_s3_r1453_action()
            jump soego_s2

        'Тихо уйти.':
            # a20 # r1454
            jump soego_dispose


# s4 # say1455
label soego_s4: # from 1.3
    nr 'Тленный внимательно смотрит на тебя, затем наклоняется к тебе… его губы раскрываются, обнажая ряд грязных и острых зубов.'
    nr 'Он, как крыса, начинает обнюхивать тебя.'

    menu:
        '«Эй… какого черта ты меня обнюхиваешь?»':
            # a21 # r1456
            $ soegoLogic.j63982_s4_r1456_action()
            $ soegoLogic.r1456_action()
            jump soego_s2

        '«Послушай, у меня есть вопросы к тебе…»':
            # a22 # r1457
            $ soegoLogic.j63982_s4_r1457_action()
            $ soegoLogic.r1457_action()
            jump soego_s2

        'Свернуть ему шею, пока он наклоняется вперед.' if soegoLogic.r1458_condition():
            # a23 # r1458
            jump soego_s19

        'Свернуть ему шею, пока он наклоняется вперед.' if soegoLogic.r1459_condition():
            # a24 # r1459
            jump soego_s22

        'Уйти. Быстро.':
            # a25 # r1460
            jump soego_s15


# s5 # say1461
label soego_s5: # from 1.4
    nr 'Как только ты собираешься уйти, тленный издает легкое шипение, затем наклоняется вперед и обнюхивает тебя.'
    soego_unknown '«О, силы!»'
    nr 'Тленный отступает назад, его глаза широко раскрыты. Ты замечаешь, что его глаза не налиты кровью, а просто имеют красный оттенок.'
    soego_unknown '«Эй, ты заставляешь меня сделать нелестное признание: из тебя вышел убедительный зомби».'
    nr 'Он слегка кивает.'
    soego '«Я Соэго. Могу ли я спросить, что ты здесь делаешь… в таком виде?»'

    menu:
        '«Это не твое дело».':
            # a26 # r1462
            jump soego_s6

        '«Я не совсем понимаю, что я здесь делаю. Я очнулся на одной из плит наверху, и моя память… немного туманна».':
            # a27 # r1463
            jump soego_s7

        '«Я заблудился и ищу выход. Ты можешь мне помочь?»' if soegoLogic.r1464_condition():
            # a28 # r1464
            jump soego_s8

        '«Я пытаюсь выбраться отсюда».':
            # a29 # r1465
            jump soego_s13

        '«Мне были нужны перемены в жизни».':
            # a30 # r1466
            $ soegoLogic.r1466_action()
            jump soego_s16

        '«У меня совершенно нет на это времени. Прощай».':
            # a31 # r1467
            jump soego_s17


# s6 # say1468
label soego_s6: # from 2.0 5.0 15.0 41.1 43.0 50.1 115.1
    soego '«О, боюсь, что это *как раз* мое дело».'
    nr 'Глаза Соэго блестят красным, уголки его рта слегка подергиваются, словно в предвкушении.'
    soego '«Может…»'
    nr 'Он широко ухмыляется, показывая ряд острых грязных зубов.'
    soego '«Может, мне стоит позвать охрану? Да… да, пожалуй, я так и сделаю».'

    menu:
        '«Постой! Я потерялся… Я просто заблудился в этих залах и теперь не могу найти выход. Ты можешь мне помочь?»' if soegoLogic.r1469_condition():
            # a32 # r1469
            jump soego_s8

        '«Стой! Не надо звать стражу! Я просто хочу выбраться отсюда… ты поможешь мне?»' if soegoLogic.r1470_condition():
            # a33 # r1470
            jump soego_s13

        'Свернуть ему шею до того, как он сможет позвать на помощь.' if soegoLogic.r1471_condition():
            # a34 # r1471
            jump soego_s19

        'Свернуть ему шею до того, как он сможет позвать на помощь.' if soegoLogic.r1472_condition():
            # a35 # r1472
            jump soego_s22

        '«Давай, зови их. Буду рад с ними встретиться».':
            # a36 # r1473
            jump soego_s18


# s7 # say1474
label soego_s7: # from 2.1 5.1 13.3 15.1 42.1 57.0
    soego '«Правда?»'
    nr 'Тленный недоверчиво осматривает тебя.'
    soego '«Ты *выглядишь* так, как будто тебя только что вскрыли. Не представляю, как ты смог пережить эту невыносимую боль…».'
    soego '«…тебе *больно*? Кажется, да».'

    menu:
        '«Как я вообще сюда попал?»':
            # a37 # r1475
            jump soego_s54

        '«У меня нет времени на это. Прощай».':
            # a38 # r1476
            jump soego_s17


# s8 # say1477
label soego_s8: # from 2.2 5.2 6.0 13.0 15.2 16.0 17.0 26.0 40.0 41.0 50.0 61.0 62.0
    nr 'Соэго кивает, уголки его рта немного подрагивают.'
    soego '«Ну почему же… конечно. Эти залы *способны* запутать посетителей».'
    soego '«В этом нет ничего плохого, но тебе нельзя находиться в Морге после девяти ударов колокола. Позволь мне открыть для тебя ворота».'

    menu:
        '«Спасибо».' if soegoLogic.r1478_condition():
            # a39 # r1478
            $ soegoLogic.r1478_action()
            jump soego_dispose

        '«Спасибо».' if soegoLogic.r1479_condition():
            # a40 # r1479
            jump soego_s9


# s9 # say1480
label soego_s9: # from 8.1 56.1 60.1
    nr 'Соэго тянется к поясу, шарит по одежде, затем начинает шипеть.'
    soego '«Ключ!»'
    nr 'В его глазах появляется яркий красный блеск, а губы складываются в гримасу ярости… выражение лица при этом напоминает звериный оскал.'
    soego '«Кто-то украл ключ!»'
    nr 'Он разворачивается к тебе и рычит.'
    soego '«Ты! Это сделал ты!»'

    menu:
        'Блеф: «Эй… погоди! Зачем мне спрашивать тебя о нем, если я его украл?»':
            # a41 # r1481
            jump soego_s18

        'Ложь: «О чем это ты?! Мне-то он зачем!»':
            # a42 # r1482
            $ soegoLogic.r1482_action()
            jump soego_s18

        'Свернуть ему шею до того, как он сможет позвать на помощь.' if soegoLogic.r1483_condition():
            # a43 # r1483
            jump soego_s19

        'Свернуть ему шею до того, как он сможет позвать на помощь.' if soegoLogic.r1484_condition():
            # a44 # r1484
            jump soego_s22

        '«Ну, допустим, я. И что? И что ты мне сделаешь?»':
            # a45 # r1485
            jump soego_s18


# s10 # say1486
label soego_s10: # -
    nr 'Соэго берет огромный ключ с пояса и идет к главным воротам.'
    nr 'Ты не можешь не заметить его странной походки… он наклоняется вперед, пытаясь сохранить равновесие.'

    menu:
        '«Какая странная у него походка».' if soegoLogic.r1487_condition():
            # a46 # r1487
            jump morte_s101  # EXTERN

        'Подождать, пока он открывает ворота.' if soegoLogic.r1488_condition():
            # a47 # r1488
            jump soego_s11


# s11 # say1489
label soego_s11: # from 10.1
    nr 'Дойдя до ворот, Соэго вставляет ключ в замок. Спустя мгновение из замочной скважины раздается неприятный звук…'
    nr 'Он наполняет весь главный зал, эхом раскатываясь по мраморным стенам.'

    menu:
        'Подождать, пока он не вернется.':
            # a48 # r1490
            $ soegoLogic.r1490_action()
            jump soego_s12


# s12 # say1491
label soego_s12: # from 11.0 # IF WEIGHT #5 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Gate_Open","GLOBAL",1) Global("Gate_Cut_Scene","AR0201",1)
    soego '«Вот и все. Главные ворота открыты».' # TODO [snow]: "но вернуться обратно ты не сможешь" - можешь в любое время.

    menu:
        '«Могу ли я задать пару вопросу перед тем, как уйду?»':
            # a49 # r1492
            $ soegoLogic.r1492_action()
            jump soego_s26

        '«Спасибо, Соэго. Я пошел».':
            # a50 # r1493
            $ soegoLogic.r1493_action()
            jump soego_dispose


# s13 # say1494
label soego_s13: # from 2.3 5.3 6.1 15.3 16.1 17.1 26.1 61.1
    soego '«Выбраться отсюда?»'
    nr 'Соэго хмурится.'
    soego '«А как ты умудрился попасть внутрь?»'

    menu:
        '«Я был здесь на похоронах, отдавал дань уважения. Я уже готов уйти… вот только, кажется, я заблудился. Ты не поможешь мне найти выход?»' if soegoLogic.r1495_condition():
            # a51 # r1495
            jump soego_s8

        '«Я и сам не знаю».' if soegoLogic.r1496_condition():
            # a52 # r1496
            jump soego_s14

        '«Я и сам не знаю».' if soegoLogic.r1497_condition():
            # a53 # r1497
            jump soego_s61

        '«Я очнулся на одной из плит наверху, и моя память… немного туманна».':
            # a54 # r1498
            jump soego_s7

        '«У меня нет времени на это. Прощай».':
            # a55 # r1499
            jump soego_s17


# s14 # say1500
label soego_s14: # from 13.1
    nr 'Соэго цокает языком.'
    soego '«Очень любопытно».'
    nr 'Он снова изучает тебя.'
    soego '«А может, ты один из контрактников?»'

    menu:
        '«Э, контрактников?»':
            # a56 # r1501
            jump soego_s23

        '«У меня совершенно нет на это времени. Прощай».':
            # a57 # r1502
            jump soego_s17


# s15 # say1503
label soego_s15: # from 4.4
    nr 'Едва ты собираешься уйти, как тленный перестает тебя обнюхивать и испускает легкое шипение.'
    soego_unknown '«О, силы!»'
    nr 'Тленный отступает назад, его глаза широко раскрыты. Ты замечаешь, что его глаза не налиты кровью, а просто имеют красный оттенок.'
    soego_unknown '«Эй, ты заставляешь меня сделать нелестное признание: из тебя вышел убедительный зомби».'
    nr 'Он слегка кивает.'
    soego '«Я Соэго. Могу ли я спросить, что ты здесь делаешь… в таком виде?»'

    menu:
        '«Это не твое дело».':
            # a58 # r1504
            jump soego_s6

        '«Я не совсем понимаю, что я здесь делаю. Я очнулся на одной из плит наверху, и моя память… немного туманна».':
            # a59 # r1505
            jump soego_s7

        '«Я заблудился и ищу выход. Ты можешь мне помочь?»' if soegoLogic.r1506_condition():
            # a60 # r1506
            jump soego_s8

        '«Я пытаюсь выбраться отсюда».':
            # a61 # r1508
            jump soego_s13

        '«Мне были нужны перемены в жизни».':
            # a62 # r1509
            $ soegoLogic.r1509_action()
            jump soego_s16

        '«У меня совершенно нет на это времени. Прощай».':
            # a63 # r1510
            jump soego_s17


# s16 # say1511
label soego_s16: # from 2.4 5.4 15.4
    soego '«Понятно…»'
    nr 'Глаза Соэго блестят красным, уголки его рта слегка подрагивают, словно в предвкушении.'
    soego '«Может…»'
    nr 'Он широко ухмыляется, показывая ряд острых грязных зубов.'
    soego '«Может, мне стоит позвать охрану? Да… да, пожалуй, я так и сделаю».'

    menu:
        '«Постой! Я потерялся… Я просто заблудился в этих залах и теперь не могу найти выход. Ты можешь мне помочь?»' if soegoLogic.r1512_condition():
            # a64 # r1512
            jump soego_s8

        '«Стой! Не надо звать стражу! Я просто хочу выбраться отсюда… ты поможешь мне?»' if soegoLogic.r1513_condition():
            # a65 # r1513
            jump soego_s13

        'Свернуть ему шею до того, как он сможет позвать на помощь.' if soegoLogic.r1514_condition():
            # a66 # r1514
            jump soego_s19

        'Свернуть ему шею до того, как он сможет позвать на помощь.' if soegoLogic.r1515_condition():
            # a67 # r1515
            jump soego_s22

        '«Давай, зови их. Буду рад с ними встретиться».':
            # a68 # r1516
            jump soego_s18


# s17 # say1517
label soego_s17: # from 2.5 5.5 7.1 13.4 14.1 15.5 23.2 24.2 25.2 26.9 27.4 28.2 29.3 31.3 32.2 33.4 34.4 35.3 36.3 37.2 114.3 115.4
    nr 'Когда ты собираешься уходить, как Соэго издает злобное шипение… затем он неожиданно успокаивается и поднимает руки.'
    soego '«Нет, нет, боюсь, что ты не можешь уйти. Что-то здесь не так. Мне кажется, что будет лучше, если мы разберемся с этим…»'
    nr 'Уголки его рта подрагивают, в глазах вспыхивает огонек.'
    soego '«Может, охрана поможет. Да… наверное, мне стоит позвать их».'

    menu:
        '«Постой! Я потерялся… Я просто заблудился в этих залах и теперь не могу найти выход. Ты можешь мне помочь?»' if soegoLogic.r1518_condition():
            # a69 # r1518
            jump soego_s8

        '«Стой! Не надо звать стражу! Я просто хочу выбраться отсюда… ты поможешь мне?»' if soegoLogic.r1520_condition():
            # a70 # r1520
            jump soego_s13

        'Свернуть ему шею до того, как он сможет позвать на помощь.' if soegoLogic.r1521_condition():
            # a71 # r1521
            jump soego_s19

        'Свернуть ему шею до того, как он сможет позвать на помощь.' if soegoLogic.r1522_condition():
            # a72 # r1522
            jump soego_s22

        '«Давай, зови их. Буду рад с ними встретиться».':
            # a73 # r1523
            jump soego_s18


# s18 # say1524
label soego_s18: # from 6.4 9.0 9.1 9.4 16.4 17.4 40.4 40.5 41.6 50.6 53.6 61.4
    nr 'Соэго делает шаг назад, затем быстро хлопает в ладони три раза. В ответ во всем Морге раздается звон огромного железного колокола.'

    menu:
        '«Ну хорошо…»':
            # a74 # r1525
            $ soegoLogic.r1525_action()
            jump soego_dispose


# s19 # say1526
label soego_s19: # from 3.1 4.2 6.2 9.2 16.2 17.2 40.2 51.0 61.2 114.2 115.3
    nr 'До того, как он смог произнести слово, твои руки хватают его голову за виски, и ты резко сворачиваешь его голову влево.'

    menu:
        '«Нельзя допустить, чтобы ты предупредил своих друзей».':
            # a75 # r1528
            $ soegoLogic.r1528_action()
            jump soego_s20


# s20 # say1529
label soego_s20: # from 19.0
    nr 'В его шее раздается характерный хруст… но вместо того, чтобы безвольно упасть, тленный издает душераздирающий крик и вырывается из твоей хватки!'

    menu:
        '«Что?!..»' if soegoLogic.r1530_condition():
            # a76 # r1530
            $ soegoLogic.r1530_action()
            jump morte_s100  # EXTERN

        '«Что?!..»' if soegoLogic.r1531_condition():
            # a77 # r1531
            $ soegoLogic.r1531_action()
            jump soego_s21


# s21 # say1532
label soego_s21: # from 20.1
    nr 'Кажется, тленный шокирован не меньше тебя. В его глазах безумие, из горла издается булькающие звуки…'
    nr '…ты уверен, что свернул ему шею: его голова повернута под неестественным углом, но он все еще жив!'
    nr 'Пока ты в оцепенении смотришь на него, он слабо хлопает в ладони три раза. В ответ во всем Морге раздается звон огромного железного колокола.'

    menu:
        '«Ну хорошо…»':
            # a78 # r1533
            $ soegoLogic.r1533_action()
            jump soego_dispose


# s22 # say1534
label soego_s22: # from 3.2 4.3 6.3 9.3 16.3 17.3 40.3 61.3 114.1 115.2
    nr 'Должно быть, *что-то* насторожило тленного… до того, как ты смог до него дотянуться, он отскакивает назад.'
    nr 'В его глазах вспыхивает красный огонек, он скалит зубы.'
    nr 'Шипя, он быстро хлопает в ладони три раза. В ответ во всем Морге раздается звон огромного железного колокола.'

    menu:
        '«Ну хорошо…»':
            # a79 # r1535
            $ soegoLogic.r1535_action()
            jump soego_dispose


# s23 # say4792
label soego_s23: # from 14.0
    soego '«Некоторые подписывают с тленными контракты, согласно которым они могут использовать их тела, как только те умрут».'
    soego '«Возможно, тебя взяли… по недоразумению. Ты кажешься гораздо умнее, чем наши обычные зомби».'

    menu:
        '«Люди продают вам свои тела после смерти?»':
            # a80 # r4793
            jump soego_s24

        '«О. У меня есть другие вопросы…»':
            # a81 # r4794
            jump soego_s26

        '«У меня нет времени на это. Прощай».':
            # a82 # r4795
            jump soego_s17


# s24 # say4796
label soego_s24: # from 23.0
    soego '«О да. В обмен на небольшую сумму многие готовы продать свое тело, которое все равно им не понадобится, когда они достигнут Истинной Смерти».'

    menu:
        '«И что вы делаете с этими телами?»':
            # a83 # r4797
            jump soego_s25

        '«Понятно… Ты не против, если я задам тебе пару вопросов?»':
            # a84 # r4798
            jump soego_s25

        '«Спасибо за информацию. Прощай».':
            # a85 # r4799
            jump soego_s17


# s25 # say4800
label soego_s25: # from 24.0 24.1
    soego '«Оболочки совершают различные поручения по всему Моргу».'
    soego '«Они перевозят тела, моют полы, помогают готовить тела к погребению… относительно несложные задачи».'
    soego '«К сожалению, они не способны выполнять более сложные инструкции».'

    menu:
        '«Хорошо, „контрактник“ я или нет, но как я попал сюда, если я не мертв?»':
            # a86 # r4801
            jump soego_s54

        '«Понятно… Ты не против, если я задам тебе пару вопросов?»':
            # a87 # r4802
            jump soego_s26

        '«Спасибо за информацию. Прощай».':
            # a88 # r4803
            jump soego_s17


# s26 # say4804
label soego_s26: # from 12.0 23.1 25.1 27.2 28.0 29.1 31.1 32.0 33.2 34.2 35.1 36.1 37.0 58.0
    nr 'Соэго кивает.'
    soego '«Задавай свои вопросы».'

    menu:
        '«Я хочу уйти. Можешь ли ты проводить меня к выходу?»' if soegoLogic.r4805_condition():
            # a89 # r4805
            jump soego_s8

        '«Можешь ли ты помочь мне выбраться отсюда?»' if soegoLogic.r4806_condition():
            # a90 # r4806
            jump soego_s13

        '«Тебе известно, что на втором этаже есть труп, который на самом деле — замаскированный человек?»' if soegoLogic.r4807_condition():
            # a91 # r4807
            jump soego_s27

        '«Можно спросить… с тобой все в порядке? Ты выглядишь уставшим».':
            # a92 # r4809
            $ soegoLogic.r4809_action()
            jump soego_s31

        '«Ты ведь Соэго, верно? Я слышал, что ты немного странноват для тленного. Что ты похож на крысу».' if soegoLogic.r4810_condition():
            # a93 # r4810
            $ soegoLogic.r4810_action()
            jump soego_s30

        '«Ты ведь Соэго, верно? Я слышал, что ты немного странноват для тленного. Что ты похож на крысу».' if soegoLogic.r4811_condition():
            # a94 # r4811
            jump soego_s29

        '«Ты знаешь кого-нибудь по имени Фарод?»' if soegoLogic.r4832_condition():
            # a95 # r4832
            jump soego_s33

        '«Я потерял дневник. Тебе ничего такого не попадалось?»' if soegoLogic.r4833_condition():
            # a96 # r4833
            jump soego_s37

        '«Неважно. Мне нужно идти. Прощай».' if soegoLogic.r4834_condition():
            # a97 # r4834
            jump soego_dispose

        '«Неважно. Мне нужно идти. Прощай».' if soegoLogic.r4835_condition():
            # a98 # r4835
            jump soego_s17


# s27 # say4808
label soego_s27: # from 26.2
    soego '«Прошу прощения?»'

    menu:
        '«Наверху есть человек, замаскированный под труп. Я думаю, он шпионит за тленными».' if soegoLogic.r4836_condition():
            # a99 # r4836
            $ soegoLogic.r4836_action()
            jump soego_s28

        '«Наверху есть человек, замаскированный под труп. Я думаю, он шпионит за тленными».' if soegoLogic.r4837_condition():
            # a100 # r4837
            $ soegoLogic.r4837_action()
            jump soego_s28

        '«Забудь об этом. У меня есть несколько вопросов…»':
            # a101 # r4838
            jump soego_s26

        '«Неважно. Мне нужно идти. Прощай».' if soegoLogic.r4839_condition():
            # a102 # r4839
            jump soego_dispose

        '«Неважно. Мне нужно идти. Прощай».' if soegoLogic.r916_condition():
            # a103 # r916
            jump soego_s17


# s28 # say4840
label soego_s28: # from 27.0 27.1
    soego '«Что? Как это могло случиться?..»'
    nr 'Соэго внезапно переходит на шепот, его губы раскрываются, обнажая ряд острых зубов.'
    soego '«*Анархист*».'
    nr 'В его глазах вспыхивает красный огонек.'
    soego '«Анархист. *Здесь*».'
    nr 'Неожиданно он вспоминает о твоем присутствии и успокаивается.'
    soego '«Спасибо за предупреждение. Я позабочусь, чтобы стража разобралась с этим делом».'

    menu:
        '«Без проблем. У меня есть еще вопросы…»':
            # a104 # r4852
            jump soego_s26

        '«Неважно. Мне нужно идти. Прощай».' if soegoLogic.r4853_condition():
            # a105 # r4853
            jump soego_dispose

        '«Неважно. Мне нужно идти. Прощай».' if soegoLogic.r4854_condition():
            # a106 # r4854
            jump soego_s17


# s29 # say4855
label soego_s29: # from 26.5
    nr 'Ты уже готов сказать это, но вдруг останавливаешься. Глядя на Соэго, ты чувствуешь странное покалывающее чувство…'
    nr '…почему-то тебе кажется, что не следует ничего говорить.'

    menu:
        '«Я слышал о тебе кое-что странное, Соэго. Что ты похож на крысу».':
            # a107 # r4856
            jump soego_s30

        '«Э… я хотел бы у тебя кое-что спросить».':
            # a108 # r4857
            jump soego_s26

        '«Неважно. Мне нужно идти. Прощай».' if soegoLogic.r4858_condition():
            # a109 # r4858
            jump soego_dispose

        '«Неважно. Мне нужно идти. Прощай».' if soegoLogic.r4859_condition():
            # a110 # r4859
            jump soego_s17


# s30 # say4860
label soego_s30: # from 26.4 29.0
    nr 'На минуту Соэго в тишине изучает тебя. В его глазах вспыхивает красный огонек, и он издает легкое шипение.'
    soego '«Кажется, ты злоупотребляешь нашим гостеприимством».'
    nr 'Неожиданно он делает шаг назад, затем быстро хлопает в ладони три раза. В ответ во всем Морге раздается звон огромного железного колокола.'

    menu:
        '«Что за?.. Что ты делаешь?»':
            # a111 # r4861
            $ soegoLogic.r4861_action()
            jump soego_dispose

        '«Ну хорошо. Приготовься к смерти, Соэго».':
            # a112 # r4862
            $ soegoLogic.r4862_action()
            jump soego_dispose


# s31 # say4863
label soego_s31: # from 26.3
    nr 'Соэго удается слабо улыбнуться, уголки его рта слегка подрагивают.'
    soego '«Я немного приболел… небольшая лихорадка, ничего страшного. Иногда из-за нее трудно… заснуть».'

    menu:
        '«Я могу чем-нибудь помочь?»':
            # a113 # r4864
            $ soegoLogic.r4864_action()
            jump soego_s32

        '«О. У меня есть другие вопросы…»':
            # a114 # r4865
            jump soego_s26

        '«Ясно. Что ж, мне нужно идти. Прощай».' if soegoLogic.r4866_condition():
            # a115 # r4866
            jump soego_dispose

        '«Ясно. Что ж, мне нужно идти. Прощай».' if soegoLogic.r4867_condition():
            # a116 # r4867
            jump soego_s17


# s32 # say4868
label soego_s32: # from 31.0
    nr 'Соэго качает головой.'
    soego '«Нет-нет, спасибо за заботу… Я переживу».'
    nr 'Он немного хмурится.'
    soego '«Тебе нужно что-либо еще?»'

    menu:
        '«Да. У меня есть еще вопросы…»':
            # a117 # r4869
            jump soego_s26

        '«Нет, не хочу тебя больше беспокоить. Спасибо за информацию».' if soegoLogic.r4870_condition():
            # a118 # r4870
            jump soego_dispose

        '«Нет, не хочу тебя больше беспокоить. Спасибо за информацию».' if soegoLogic.r4871_condition():
            # a119 # r4871
            jump soego_s17


# s33 # say4872
label soego_s33: # from 26.6
    soego '«Фарод? Ну конечно же, я знаю его».'
    nr 'Он хмурится, в его глазах появляется красный блеск.'
    soego '«Отвратительный человек. Никакого уважения к мертвым, и еще меньше — к живым. Сборщик».'

    menu:
        '«Сборщик?»':
            # a120 # r4873
            jump soego_s34

        '«Ты знаешь, где его можно найти?»':
            # a121 # r4874
            jump soego_s36

        '«О. У меня есть другие вопросы…»':
            # a122 # r4875
            jump soego_s26

        '«Понятно. Кажется, мне пора идти».' if soegoLogic.r4876_condition():
            # a123 # r4876
            jump soego_dispose

        '«Понятно. Кажется, мне пора идти».' if soegoLogic.r4877_condition():
            # a124 # r4877
            jump soego_s17


# s34 # say4878
label soego_s34: # from 33.0 36.0
    soego '«Сборщики находят трупы и доставляют их сюда, в Морг. Затем мы заботимся о том, чтобы тела были похоронены надлежащим образом».'

    menu:
        '«А если сборщик находит тело… мое, к примеру… он может принести его сюда и продать его вам?»' if soegoLogic.r4879_condition():
            # a125 # r4879
            jump soego_s35

        '«А этот сборщик, Фарод… ты не знаешь, где я могу найти его?»':
            # a126 # r4880
            jump soego_s36

        '«О. У меня есть другие вопросы…»':
            # a127 # r4881
            jump soego_s26

        '«Ясно. Что ж, мне нужно идти. Прощай».' if soegoLogic.r4882_condition():
            # a128 # r4882
            jump soego_dispose

        '«Ясно. Что ж, мне нужно идти. Прощай».' if soegoLogic.r4883_condition():
            # a129 # r4883
            jump soego_s17


# s35 # say4884
label soego_s35: # from 34.0
    soego '«Да».'

    menu:
        '«Хм-м. Выходит, мне крайне важно найти этого Фарода. Ты не знаешь, где я могу найти его?»':
            # a130 # r4885
            jump soego_s36

        '«О. У меня есть другие вопросы…»':
            # a131 # r4886
            jump soego_s26

        '«Спасибо за информацию. Прощай».' if soegoLogic.r4887_condition():
            # a132 # r4887
            jump soego_dispose

        '«Спасибо за информацию. Прощай».' if soegoLogic.r4888_condition():
            # a133 # r4888
            jump soego_s17


# s36 # say4889
label soego_s36: # from 33.1 34.1 35.0
    soego '«Я знаю, что он живет в Улье, в трущобах вокруг Морга, но точнее сказать не могу».'
    soego '«Другие сборщики могут знать, если они соизволят говорить с тобой».'

    menu:
        '«Еще раз, чем занимаются сборщики?»':
            # a134 # r4890
            jump soego_s34

        '«О. У меня есть другие вопросы…»':
            # a135 # r4891
            jump soego_s26

        '«Спасибо за информацию. Прощай».' if soegoLogic.r4892_condition():
            # a136 # r4892
            jump soego_dispose

        '«Спасибо за информацию. Прощай».' if soegoLogic.r4893_condition():
            # a137 # r4893
            jump soego_s17


# s37 # say4894
label soego_s37: # from 26.7
    soego '«Дневник?»'
    nr 'Соэго выглядит растерянным.'
    soego '«Нет, мне он не попадался».'

    menu:
        '«Ладно, неважно. У меня есть другие вопросы…»':
            # a138 # r4895
            jump soego_s26

        '«Все равно спасибо. Прощай».' if soegoLogic.r4896_condition():
            # a139 # r4896
            jump soego_dispose

        '«Все равно спасибо. Прощай».' if soegoLogic.r4897_condition():
            # a140 # r4897
            jump soego_s17


# s38 # say4898
label soego_s38: # - # IF WEIGHT #9 /* Triggers after states #: 59 58 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") !Global("Appearance","GLOBAL",1) Global("Gate_Open","GLOBAL",0) Global("Soego","GLOBAL",0)
    nr 'Перед тобой сильно уставший мужчина в черной одежде. Его худощавое лицо очень бледно, похоже, он не высыпается: плечи поникли, под красными глазами огромные мешки.'
    nr 'Он настолько погружен в раздумья, что даже не замечает тебя.'

    menu:
        '«Приветствую…»' if soegoLogic.r66706_condition():
            # a141 # r66706
            $ soegoLogic.j63982_s38_r66706_action()
            $ soegoLogic.r66706_action()
            jump soego_s39

        '«Приветствую…»' if soegoLogic.r66707_condition():
            # a142 # r66707
            $ soegoLogic.j63982_s38_r66707_action()
            $ soegoLogic.r66707_action()
            jump soego_s113

        'Оставить его в раздумьях.':
            # a143 # r66708
            jump soego_dispose


# s39 # say4904
label soego_s39: # from 38.0
    soego '«Приветствую…»'
    nr 'Человек поворачивается к тебе лицом и слегка кивает. Внезапно ты замечаешь, что его глаза не налиты кровью, а просто имеют красный оттенок.'
    soego '«Я Соэго. Чем я могу…»'
    nr 'Неожиданно он замечает твои шрамы, при этом уголки его рта начинают подрагивать.'
    soego '«Прошу прощения, ты потерялся?»'

    menu:
        '«Да».':
            # a144 # r4905
            jump soego_s40

        '«Нет».':
            # a145 # r4906
            jump soego_s41

        '«Нет, я не потерялся. У меня есть несколько вопросов…»':
            # a146 # r4907
            jump soego_s41

        '«Нет. Я просто искал выход. Прощай».':
            # a147 # r4908
            jump soego_s41


# s40 # say4909
label soego_s40: # from 39.0
    soego '«Тогда ладно…»'
    nr 'Уголки рта Соэго снова начинают подрагивать, словно в предвкушении.'
    soego '«Позволь мне позвать охрану, она выпроводит тебя. Подожди минуточку».'
    nr 'Кажется, вот-вот он позовет охрану.'

    menu:
        '«Секундочку! Пожалуйста… не надо звать охрану. Я пришел сюда на похороны, и просто заблудился в этих залах… Ты не можешь указать мне выход наружу?»' if soegoLogic.r4910_condition():
            # a148 # r4910
            jump soego_s8

        '«Нет! Я не потерялся. Я оговорился».':
            # a149 # r4911
            jump soego_s50

        'Свернуть ему шею до того, как он сможет позвать на помощь.' if soegoLogic.r4912_condition():
            # a150 # r4912
            jump soego_s19

        'Свернуть ему шею до того, как он сможет позвать на помощь.' if soegoLogic.r4913_condition():
            # a151 # r4913
            jump soego_s22

        'Уйти. Быстро.':
            # a152 # r4914
            jump soego_s18

        'Подождать.':
            # a153 # r4915
            jump soego_s18


# s41 # say4916
label soego_s41: # from 39.1 39.2 39.3
    soego '«Не помню, чтобы я тебя впускал».'
    nr 'Соэго подозрительно смотрит на тебя, его глаза горят красными факелами.'
    soego '«Могу ли я поинтересоваться, что ты здесь делаешь?»'

    menu:
        '«Я был здесь на похоронах, отдавал дань уважения. Я уже готов уйти… вот только, кажется, я заблудился. Ты не поможешь мне найти выход?»' if soegoLogic.r4917_condition():
            # a154 # r4917
            jump soego_s8

        '«Это тебя не касается».':
            # a155 # r4918
            jump soego_s6

        '«Я очнулся на одной из плит в вашей препараторской».':
            # a156 # r4919
            jump soego_s42

        '«Я хочу повидаться кое с кем».':
            # a157 # r4920
            jump soego_s43

        '«Я пришел сюда на похороны, но, похоже, произошла ошибка».' if soegoLogic.r4921_condition():
            # a158 # r4921
            jump soego_s53

        'Наклониться вперед, будто собираясь прошептать ему что-то, а затем, когда он наклоняется в ответ, свернуть ему шею.':
            # a159 # r4922
            jump soego_s51

        'Уйти. Быстро.':
            # a160 # r4923
            jump soego_s18


# s42 # say4924
label soego_s42: # from 41.2 50.2 115.0
    nr 'Он выглядит удивленным.'
    soego '«Ты… очнулся на одной из плит наверху?»'

    menu:
        '«Ой, нет. Я оговорился».':
            # a161 # r4925
            jump soego_s50

        '«Да. Я знаю, в это трудно поверить, но это правда. Я очнулся на одной из ваших плит наверху».':
            # a162 # r4926
            $ soegoLogic.r4926_action()
            jump soego_s7


# s43 # say4927
label soego_s43: # from 41.3 50.3
    nr 'Соэго кивает.'
    soego '«С кем ты хочешь увидеться? Я буду рад тебе показать дорогу».'

    menu:
        '«Это не твое дело».':
            # a163 # r4928
            jump soego_s6

        '«Я хочу повидаться с Дхоллом».' if soegoLogic.r4929_condition():
            # a164 # r4929
            jump soego_s44

        '«Я хочу повидаться с Дейонаррой».' if soegoLogic.r4930_condition():
            # a165 # r4930
            jump soego_s47

        'Ложь: «Э… с Аданом. Он все еще работает здесь, или?..»' if soegoLogic.r4931_condition():
            # a166 # r4931
            $ soegoLogic.r4931_action()
            jump soego_s49

        'Ложь: «Э… с Аданом. Он все еще работает здесь, или?..»' if soegoLogic.r4932_condition():
            # a167 # r4932
            jump soego_s49

        '«Ой, ни с кем. Я оговорился».':
            # a168 # r4933
            jump soego_s50


# s44 # say4934
label soego_s44: # from 43.1
    soego '«Дхолла? Писаря Дхолла можно найти в приемной комнате на верхнем этаже».'
    nr 'Уголки рта Соэго начинают подрагивать.'
    soego '«Он очень занят, а здоровье его подорвано. Если у тебя к нему не срочное дело, то лучше не беспокоить его».'

    menu:
        '«Что не так с Дхоллом?»':
            # a169 # r4935
            jump soego_s46

        '«В приемной комнате?»':
            # a170 # r4936
            jump soego_s45

        '«Хорошо. Я не буду долго задерживать его. Прощай».':
            # a171 # r4937
            jump soego_s62


# s45 # say4938
label soego_s45: # from 44.1
    soego '«Да… в приемную комнату доставляются все тела из города. Их записывают, а затем подготавливают к погребению».'

    menu:
        '«Что не так с Дхоллом?»':
            # a172 # r4939
            jump soego_s46

        '«Спасибо за разъяснения. Я постараюсь, чтобы мой визит к Дхоллу был коротким. Прощай».':
            # a173 # r4940
            jump soego_s62


# s46 # say4941
label soego_s46: # from 44.0 45.0
    soego '«О, с ним ничего плохого. Дхолл…»'
    nr 'Соэго клацает зубами.'
    soego '«Очень *стар*. Его ревностная каталогизация мертвых довела его до ручки. Несомненно, смерть незамедлительно последует за его изнурительной болезнью».'

    menu:
        '«Хорошо. Я не буду долго задерживать его. Прощай».':
            # a174 # r4942
            jump soego_s62


# s47 # say4943
label soego_s47: # from 43.2 53.2
    soego '«Дейонарру? В северо-западном мемориальном зале погребена женщина с таким именем. Ты ее ищешь?»'

    menu:
        '«Да… ты можешь сказать, что с ней произошло?»':
            # a175 # r4944
            jump soego_s48

        '«Да. Мне нужно ее проведать».':
            # a176 # r4945
            jump soego_s62


# s48 # say4946
label soego_s48: # from 47.0
    soego '«Я не знаю, но она здесь уже достаточно долго. Ее отец может знать, что произошло с ней…»'
    soego '«…он часто приходит сюда из своих апартаментов в Верхнем районе. Это он захотел поместить ее здесь в мемориальном зале».'

    menu:
        '«Спасибо за разъяснения. Пойду, проведаю ее».':
            # a177 # r4947
            jump soego_s62


# s49 # say4948
label soego_s49: # from 43.3 43.4 53.3 53.4
    soego '«Адан…»'
    nr 'Глаза Соэго сужаются, красный блеск, который ты в них видел, казалось бы, усиливается.'
    soego '«В этих залах Морга нет никого, живого или мертвого, носящего подобное имя».'
    nr 'Его рот подергивается, и, к твоей неожиданности, он начинает принюхиваться.'

    menu:
        '«Э… значит, я ошибся».':
            # a178 # r4949
            jump soego_s50


# s50 # say4950
label soego_s50: # from 40.1 42.0 43.5 49.0 53.1 57.1
    nr 'Уголки рта Соэго снова подергиваются, а глаза сверкают.'
    soego '«Тогда что ты здесь делаешь?»'

    menu:
        '«Я был здесь на похоронах, отдавал дань уважения. Я уже готов уйти… вот только, кажется, я заблудился. Ты не поможешь мне найти выход?»' if soegoLogic.r4951_condition():
            # a179 # r4951
            jump soego_s8

        '«Это не твое дело».':
            # a180 # r4952
            jump soego_s6

        '«Я очнулся на одной из плит в вашей препараторской».':
            # a181 # r4953
            jump soego_s42

        '«Я хочу повидаться кое с кем».':
            # a182 # r4954
            jump soego_s43

        '«Я пришел на похороны».' if soegoLogic.r4955_condition():
            # a183 # r4955
            jump soego_s53

        'Наклониться вперед, будто собираясь прошептать ему что-то, а затем, когда он наклоняется в ответ, свернуть ему шею.':
            # a184 # r4956
            jump soego_s51

        'Убежать от него.':
            # a185 # r5028
            jump soego_s18


# s51 # say4957
label soego_s51: # from 41.5 50.5 53.5
    nr 'Соэго хмурится, когда ты наклоняешься вперед. Ты замечаешь, что он что-то вынюхивает, что-то проверяя.'
    nr 'Неожиданно его глаза сужаются. Похоже, он готов позвать стражу.'

    menu:
        'Свернуть ему шею до того, как он сможет позвать на помощь.' if soegoLogic.r4958_condition():
            # a186 # r4958
            jump soego_s19

        'Свернуть ему шею до того, как он сможет позвать на помощь.' if soegoLogic.r4959_condition():
            # a187 # r4959
            jump soego_s52


# s52 # say4960
label soego_s52: # from 51.1
    nr 'До того, как ты смог дотянуться до Соэго, он отскакивает назад. В его глазах вспыхивает красный огонек, он скалит зубы.'
    nr 'Шипя, он быстро хлопает в ладони три раза. В ответ во всем Морге раздается звон огромного железного колокола.'

    menu:
        '«Ну хорошо…»':
            # a188 # r4961
            $ soegoLogic.r4961_action()
            jump soego_dispose


# s53 # say4962
label soego_s53: # from 41.4 50.4
    soego '«Кого хоронили? Возможно, служба проводится в другом месте Морга».'

    menu:
        '«Ты не понял… хоронили МЕНЯ».':
            # a189 # r4963
            jump soego_s57

        '«Прошу прощения… Я оговорился. Мне неизвестно имя усопшего».':
            # a190 # r4964
            jump soego_s50

        '«Ее зовут Дейонарра».' if soegoLogic.r4965_condition():
            # a191 # r4965
            jump soego_s47

        'Ложь: «Его зовут… э, Адан».' if soegoLogic.r4967_condition():
            # a192 # r4967
            $ soegoLogic.r4967_action()
            jump soego_s49

        'Ложь: «Его зовут… э, Адан».' if soegoLogic.r4968_condition():
            # a193 # r4968
            jump soego_s49

        'Наклониться вперед, будто собираясь прошептать ему что-то, а затем свернуть ему шею.':
            # a194 # r4969
            jump soego_s51

        'Убежать от него.':
            # a195 # r4970
            jump soego_s18


# s54 # say4966
label soego_s54: # from 7.0 25.0
    soego '«Ну…»'
    nr 'Соэго отводит глаза в сторону. Кажется, он смущен.'
    soego '«Кажется, произошла какая-то ошибка. Или тебя принесли твои кровные родственники, или тленные, или…»'
    nr 'Соэго неожиданно умолкает, как будто ему в голову пришла неприятная мысль.'
    soego '«Или один из *сборщиков*».'

    menu:
        '«Сборщиков?»':
            # a196 # r4971
            jump soego_s55


# s55 # say4972
label soego_s55: # from 54.0
    soego '«Да, сборщиков… банды собирателей, которые приносят нам мертвые тела. Они могли решить, что ты мертв».'
    nr 'Соэго хрипит, его глаза приобретают блеск.'
    soego '«Они были так ослеплены медью, что не позаботились проверить тело перед тем, как доставить тебя сюда».'
    nr 'Соэго изучает тебя.'
    soego '«Тебе несказанно повезло, что ты выжил… иначе ты мог достичь Истинной Смерти раньше положенного срока».'

    menu:
        '«Значит, произошла ошибка… Я хочу уйти отсюда. Немедленно».':
            # a197 # r4973
            jump soego_s56


# s56 # say4974
label soego_s56: # from 55.0 59.1
    nr 'Соэго кивает, уголки его рта начинают подрагивать.'
    soego '«Ну… ладно, ладно. Позволь мне открыть главные ворота».'

    menu:
        '«Хорошо».' if soegoLogic.r4975_condition():
            # a198 # r4975
            $ soegoLogic.r4975_action()
            jump soego_dispose

        '«Хорошо».' if soegoLogic.r4976_condition():
            # a199 # r4976
            jump soego_s9


# s57 # say4977
label soego_s57: # from 53.0
    soego '«Тебя?»'

    menu:
        '«Да, *меня*. Я пробудился на одной из ваших плит наверху».':
            # a200 # r4978
            jump soego_s7

        '«Прошу прощения… Я ошибся».':
            # a201 # r4979
            jump soego_s50


# s58 # say4980
label soego_s58: # - # IF WEIGHT #6 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Gate_Open","GLOBAL",1)
    nr 'При твоем приближении Соэго вынюхивает воздух и поднимает взгляд. Увидев тебя, он хмурится.'
    soego '«Я уже открыл для тебя ворота. Почему ты все еще здесь?»'

    menu:
        '«Перед тем, как уйти, я хочу задать несколько вопросов».':
            # a202 # r4981
            jump soego_s26

        '«Я как раз направляюсь к воротам. Прощай».':
            # a203 # r4982
            jump soego_dispose


# s59 # say4983
label soego_s59: # - # IF WEIGHT #7 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Soego","GLOBAL",1) Global("Gate_Open","GLOBAL",0)
    nr 'При твоем приближении Соэго вынюхивает воздух и поднимает взгляд. Увидев тебя, он слегка кивает.'
    soego '«Ты нашел то, что искал?»'

    menu:
        '«Да, спасибо. Прошу прощения, я, кажется, заблудился в этих залах… Ты не поможешь мне найти выход?»' if soegoLogic.r4984_condition():
            # a204 # r4984
            jump soego_s60

        '«Да. Мне пора идти. Ты можешь указать, где выход?»' if soegoLogic.r4985_condition():
            # a205 # r4985
            jump soego_s56

        '«Да, я как раз направляюсь к воротам. Прощай».':
            # a206 # r4986
            jump soego_dispose


# s60 # say4987
label soego_s60: # from 59.0
    nr 'Соэго кивает, уголки его рта немого подрагивают.'
    soego '«Ну почему же… конечно. Эти залы *могут* запутать посетителей. Позволь мне открыть для тебя ворота».'

    menu:
        '«Спасибо».' if soegoLogic.r4988_condition():
            # a207 # r4988
            $ soegoLogic.r4988_action()
            jump soego_dispose

        '«Спасибо».' if soegoLogic.r4989_condition():
            # a208 # r4989
            jump soego_s9


# s61 # say4990
label soego_s61: # from 13.2
    soego '«Очень странно».'
    nr 'В глазах Соэго вспыхивает красный огонек, уголки рта начинают подрагивать, будто в предвкушении.'
    soego '«Может…»'
    nr 'Он широко ухмыляется, показывая ряд острых грязных зубов.'
    soego '«Может, мне стоит позвать охрану? Да… да, пожалуй, я так и сделаю».'

    menu:
        '«Постой! Я потерялся… Я просто заблудился в этих залах и теперь не могу найти выход. Ты можешь мне помочь?»' if soegoLogic.r4991_condition():
            # a209 # r4991
            jump soego_s8

        '«Стой! Не надо звать стражу! Я просто хочу выбраться отсюда… ты поможешь мне?»' if soegoLogic.r4992_condition():
            # a210 # r4992
            jump soego_s13

        'Свернуть ему шею до того, как он сможет позвать на помощь.' if soegoLogic.r4993_condition():
            # a211 # r4993
            jump soego_s19

        'Свернуть ему шею до того, как он сможет позвать на помощь.' if soegoLogic.r4994_condition():
            # a212 # r4994
            jump soego_s22

        '«Давай, зови их. Буду рад с ними встретиться».':
            # a213 # r4995
            jump soego_s18


# s62 # say4996
label soego_s62: # from 44.2 45.1 46.0 47.1 48.0
    nr 'Соэго кивает… но его рот снова дергается. Похоже, он этого даже не замечает.'
    soego '«Возвращайся, когда воздашь все почести, и я открою для тебя главные ворота. Уже пробило девять ударов — закончи свои дела побыстрее».'

    menu:
        '«Пожалуй, отложу это до следующего раза. Ты мог бы меня отсюда выпустить?»':
            # a214 # r4997
            jump soego_s8

        '«Спасибо. Я скоро вернусь».':
            # a215 # r4998
            jump soego_dispose


# s63 # say21653
label soego_s63: # - # IF WEIGHT #4 /* Triggers after states #: 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR1500") !Global("CR_Vic","GLOBAL",1)
    soego '«А, еще один из живущих. Большинство из тех, кто заходит так глубоко в катакомбы, убивают упыри. Тебе повезло».'

    menu:
        '«Ты Соэго, из Морга. Что ты здесь делаешь?»' if soegoLogic.r21655_condition():
            # a216 # r21655
            $ soegoLogic.r21655_action()
            jump soego_s72

        '«Кто ты?»' if soegoLogic.r21656_condition():
            # a217 # r21656
            $ soegoLogic.r21656_action()
            jump soego_s64

        '«Где я?»' if soegoLogic.r21657_condition():
            # a218 # r21657
            $ soegoLogic.r21657_action()
            jump soego_s77

        '«Почему из меня сделали заключенного?»' if soegoLogic.r21658_condition():
            # a219 # r21658
            $ soegoLogic.r21658_action()
            jump soego_s78

        '«Возможно. Прощай».' if soegoLogic.r21660_condition():
            # a220 # r21660
            $ soegoLogic.r21660_action()
            jump soego_s71


# s64 # say21661
label soego_s64: # from 63.1 77.0 78.0
    soego '«Я Соэго, фрактотум тленных. Я занимаюсь здесь миссионерской деятельностью».'
    soego 'Он делает полупоклон.'

    menu:
        '«Миссионерской?»':
            # a221 # r21662
            jump soego_s65

        '«Что здесь делают тленные?»' if soegoLogic.r21663_condition():
            # a222 # r21663
            jump soego_s66

        '«Где я?»':
            # a223 # r64595
            jump soego_s77

        '«Почему из меня сделали заключенного?»':
            # a224 # r64596
            jump soego_s78

        '«Здравствуй и прощай».':
            # a225 # r21665
            jump soego_s71


# s65 # say21666
label soego_s65: # from 64.0 72.2 73.2 74.0 101.3 104.1
    soego '«Да, я пришел в эти катакомбы, когда услышал, что здесь бродит *беспокойная* нежить. Надеюсь, я смогу спасти их».'

    menu:
        '«Спасти?»':
            # a226 # r21667
            jump soego_s67

        '«Где я?»':
            # a227 # r64597
            jump soego_s77

        '«Почему из меня сделали заключенного?»':
            # a228 # r64599
            jump soego_s78

        '«Это все, что я хотел узнать. Прощай».':
            # a229 # r21669
            jump soego_s71


# s66 # say21670
label soego_s66: # from 64.1 72.3 73.3 74.1 101.4 104.2 109.2
    soego '«Я здесь один. Я пришел в эти катакомбы, когда услышал, что здесь бродит *беспокойная* нежить. Надеюсь, я смогу спасти их».'

    menu:
        '«Спасти?»':
            # a230 # r21671
            jump soego_s67

        '«Где я?»':
            # a231 # r64600
            jump soego_s77

        '«Почему из меня сделали заключенного?»':
            # a232 # r64601
            jump soego_s78

        '«Это все, что я хотел узнать. Прощай».':
            # a233 # r21673
            jump soego_s71


# s67 # say21674
label soego_s67: # from 65.0 66.0
    soego '«Да, чувства связывают их с этой ложной жизнью. Я надеюсь убедить их забыть свои чувства, покинуть эту ложную жизнь и достичь Истинной Смерти».'

    menu:
        '«Ложную жизнь?»':
            # a234 # r21675
            jump soego_s68

        '«Истинной Смерти?»':
            # a235 # r21676
            jump soego_s69

        '«Ты хочешь, чтобы они умерли?»':
            # a236 # r21767
            jump soego_s70

        '«Где я?»':
            # a237 # r64602
            jump soego_s77

        '«Почему из меня сделали заключенного?»':
            # a238 # r64603
            jump soego_s78

        '«Это все, что я хотел узнать. Прощай».':
            # a239 # r21770
            jump soego_s71


# s68 # say21771
label soego_s68: # from 67.0 69.0 70.0
    soego '«Эти… мертвецы… они так близки к Истинной Смерти… но они все еще цепляются за эту жизнь. Ложную жизнь, которая является ложью существования на этом плане».'

    menu:
        '«Истинной Смерти?»':
            # a240 # r21772
            jump soego_s69

        '«Ты хочешь, чтобы они умерли?»':
            # a241 # r21774
            jump soego_s70

        '«Где я?»':
            # a242 # r64604
            jump soego_s77

        '«Почему из меня сделали заключенного?»':
            # a243 # r64605
            jump soego_s78

        '«Это все, что я хотел узнать. Прощай».':
            # a244 # r21776
            jump soego_s71


# s69 # say21777
label soego_s69: # from 67.1 68.0 70.1
    soego '«Полное отсутствие чувств, Истинная Смерть — это истинная жизнь за пределами тени этого существования»..'
    soego '«Это место, которого должны достичь все эти мертвецы, чтобы стать свободными».'

    menu:
        '«А что это за „ложная жизнь“, про которую ты говорил?»':
            # a245 # r21779
            jump soego_s68

        '«Ты хочешь, чтобы они умерли?»':
            # a246 # r21780
            jump soego_s70

        '«Где я?»':
            # a247 # r64606
            jump soego_s77

        '«Почему из меня сделали заключенного?»':
            # a248 # r64607
            jump soego_s78

        '«Это все, что я хотел узнать. Прощай».':
            # a249 # r21784
            jump soego_s71


# s70 # say21786
label soego_s70: # from 67.2 68.1 69.1
    soego '«Я хочу, чтобы они переступили пределы этого плана бытия и освободились от чувств. Это спасет их».'

    menu:
        '«А что это за „ложная жизнь“, про которую ты говорил?»':
            # a250 # r21788
            jump soego_s68

        '«Ты что-то говорил об „Истинной Смерти“»?':
            # a251 # r21790
            jump soego_s69

        '«Где я?»':
            # a252 # r64608
            jump soego_s77

        '«Почему из меня сделали заключенного?»':
            # a253 # r64609
            jump soego_s78

        '«Это все, что я хотел узнать. Прощай».':
            # a254 # r21794
            jump soego_s71


# s71 # say21799
label soego_s71: # from 63.4 64.4 65.3 66.3 67.5 68.4 69.4 70.4 72.6 73.6 74.4 77.2 78.2 79.5 80.1 81.0 101.5 104.3 109.5 110.3 112.1
    soego '«Подожди минуту. Не нападай на здешнюю нежить: если ты не будешь их беспокоить, они не причинят тебе вреда»..'
    soego '«Будешь враждебно к ним относиться, и они начнут защищаться… а их очень много»..'
    soego '«И еще: если тебе нужно отдохнуть, ты можешь приходить сюда».'

    menu:
        '«Погоди… а сейчас можно отдохнуть?»' if soegoLogic.r21800_condition():
            # a255 # r21800
            $ soegoLogic.j21805_s71_r21800_action()
            jump soego_s84

        '«Погоди… а сейчас можно отдохнуть?»' if soegoLogic.r64569_condition():
            # a256 # r64569
            $ soegoLogic.j21805_s71_r64569_action()
            jump soego_s84

        'Уйти.':
            # a257 # r64570
            $ soegoLogic.j21805_s71_r64570_action()
            jump soego_dispose


# s72 # say21806
label soego_s72: # from 63.0
    soego '«Память тебе не изменяет. Я больше не работаю в Морге… теперь я занимаюсь здесь миссионерской деятельностью».'

    menu:
        '«Но я думал, что сломал тебе шею…»' if soegoLogic.r64547_condition():
            # a258 # r64547
            jump soego_s73

        '«Но я думал, что *убил* тебя…»' if soegoLogic.r21808_condition():
            # a259 # r21808
            jump soego_s73

        '«Миссионерской?»':
            # a260 # r21809
            jump soego_s65

        '«Что здесь делают тленные?»' if soegoLogic.r21811_condition():
            # a261 # r21811
            jump soego_s66

        '«Где я?»':
            # a262 # r64610
            jump soego_s77

        '«Почему из меня сделали заключенного?»':
            # a263 # r64611
            jump soego_s78

        '«Это все, что я хотел узнать. Прощай».':
            # a264 # r21813
            jump soego_s71


# s73 # say21814
label soego_s73: # from 72.0 72.1 109.0 109.1
    soego '«Нанесенное тобой увечье было несмертельным. Я быстро восстановился… и понял, что хочу быть подальше от Морга».'

    menu:
        '«Соэго, я свернул тебе шею… разве это не смертельно?»' if soegoLogic.r21815_condition():
            # a265 # r21815
            jump soego_s101

        '«Ты не сердишься?»':
            # a266 # r21816
            jump soego_s74

        '«Хм… Ты говорил, что ты миссионер?»':
            # a267 # r21817
            jump soego_s65

        '«Тогда ладно. Что здесь делают тленные?»' if soegoLogic.r21818_condition():
            # a268 # r21818
            jump soego_s66

        '«Ладно… Так где же я?»':
            # a269 # r64612
            jump soego_s77

        '«Понятно… Почему из меня сделали заключенного?»':
            # a270 # r64613
            jump soego_s78

        '«Забудь; это все, что я хотел узнать. Farewell».':
            # a271 # r21820
            jump soego_s71


# s74 # say21821
label soego_s74: # from 73.1 101.2 104.0
    soego '«Нет… а должен? Я был немного расстроен, я не собирался уходить оттуда.'
    soego '«Однако тебе все равно не стоит возвращаться в Морг: немногие знакомые мне фрактотумы будут рады повстречать тебя».'

    menu:
        '«Ты говорил, что ты миссионер?»':
            # a272 # r64614
            jump soego_s65

        '«Что здесь делают тленные?»' if soegoLogic.r21823_condition():
            # a273 # r21823
            jump soego_s66

        '«Где я?»':
            # a274 # r64615
            jump soego_s77

        '«Почему из меня сделали заключенного?»':
            # a275 # r64616
            jump soego_s78

        '«Это все, что я хотел узнать. Прощай».':
            # a276 # r21825
            jump soego_s71


# s75 # say21716
label soego_s75: # -
    nr 'Null node.'

    jump soego_dispose


# s76 # say21832
label soego_s76: # -
    nr 'Null node.'

    jump soego_dispose


# s77 # say21837
label soego_s77: # from 63.2 64.2 65.1 66.1 67.3 68.2 69.2 70.2 72.4 73.4 74.2 78.1 109.3
    soego '«Ты в катакомбах Мертвых Народов. Сюда тебя привела стража».'

    menu:
        '«А кто ты?»':
            # a277 # r21840
            jump soego_s64

        '«Почему из меня сделали заключенного?»':
            # a278 # r21841
            jump soego_s78

        '«Это все, что я хотел узнать. Прощай».':
            # a279 # r21843
            jump soego_s71


# s78 # say21844
label soego_s78: # from 63.3 64.3 65.2 66.2 67.4 68.3 69.3 70.3 72.5 73.5 74.3 77.1 109.4
    soego '«Не знаю. Поспрашивай здешних „жителей“».'

    menu:
        '«А кто ты?»':
            # a280 # r21847
            jump soego_s64

        '«Где я?»':
            # a281 # r21848
            jump soego_s77

        '«Возможно. Прощай».':
            # a282 # r21850
            jump soego_s71


# s79 # say21851
label soego_s79: # - # IF WEIGHT #2 /* Triggers after states #: 82 95 even though they appear after this state */ ~  CreatureInArea("AR1500") Global("CR_Vic","GLOBAL",1)
    soego '«О, к нам подоспела подмога! Меня, как агента Многоединого, предупредили о твоем приходе»..'
    soego '«Нам нужно, чтобы ты попытался пробраться в тронный зал Безмолвного Короля и убил его»..'
    soego '«Сделай это, и Многоединый вознаградит тебя».'

    menu:
        '«Соэго… Эморик хотел знать, где ты».' if soegoLogic.r66181_condition():
            # a283 # r66181
            $ soegoLogic.r66181_action()
            jump soego_s110

        '«Погоди, ты Соэго? Эморик искал тебя».' if soegoLogic.r21852_condition():
            # a284 # r21852
            $ soegoLogic.r21852_action()
            jump soego_s110

        '«Постой… разве я не сломал тебе шею в Морге?»' if soegoLogic.r64623_condition():
            # a285 # r64623
            $ soegoLogic.r64623_action()
            jump soego_s112

        '«Постой… Я думал, что *убил* тебя в Морге…»' if soegoLogic.r64624_condition():
            # a286 # r64624
            $ soegoLogic.r64624_action()
            jump soego_s112

        '«Как мне добраться до Безмолвного Короля?»' if soegoLogic.r21853_condition():
            # a287 # r21853
            $ soegoLogic.r21853_action()
            jump soego_s80

        '«Понятно. Тогда прощай».' if soegoLogic.r21854_condition():
            # a288 # r21854
            $ soegoLogic.r21854_action()
            jump soego_s71


# s80 # say21858
label soego_s80: # from 79.4 110.2 112.0
    soego '«Не знаю… Я здесь уже много времени, но так и не смог найти способ попасть в его тронный зал».'
    soego '«Может быть, тебе повезет больше, без той ненависти и фанатизма, которые направлены на меня».'

    menu:
        '«Ненависти и фанатизма?»':
            # a289 # r21860
            jump soego_s81

        '«Понятно. Тогда прощай».':
            # a290 # r21862
            jump soego_s71


# s81 # say21864
label soego_s81: # from 80.0
    soego '«Взгляды моей фракции популярны, но не все их принимают. Многие важные персоны этой цивилизации не питают к ним теплых чувств».'

    menu:
        '«Понятно. Тогда прощай».':
            # a291 # r21870
            jump soego_s71


# s82 # say21913
label soego_s82: # - # IF WEIGHT #1 /* Triggers after states #: 95 even though they appear after this state */ ~  CreatureInArea("AR1500") Global("Met_Soego2","GLOBAL",1)
    soego '«А, рад встрече».'

    menu:
        '«Безмолвный Король мертв, и уже давно. Нет *никакого* Безмолвного Короля».' if soegoLogic.r24206_condition():
            # a292 # r24206
            $ soegoLogic.r24206_action()
            jump soego_s94

        '«Безмолвный Король мертв, и уже давно. Нет *никакого* Безмолвного Короля».' if soegoLogic.r21915_condition():
            # a293 # r21915
            $ soegoLogic.r21915_action()
            jump soego_s94

        '«Ты Соэго? Эморик тебя искал».' if soegoLogic.r21914_condition():
            # a294 # r21914
            $ soegoLogic.r21914_action()
            jump soego_s109

        '«Я был в твоей комнате и видел твой дневник».' if soegoLogic.r21916_condition():
            # a295 # r21916
            $ soegoLogic.r21916_action()
            jump soego_s100

        '«В одном из коридоров неподалеку я встретил скелета, который находится на грани принятия Истинной Смерти».' if soegoLogic.r21917_condition():
            # a296 # r21917
            $ soegoLogic.r21917_action()
            jump soego_s97

        '«Мне нужно отдохнуть».' if soegoLogic.r21920_condition():
            # a297 # r21920
            jump soego_s84

        '«Нам нужно отдохнуть».' if soegoLogic.r21922_condition():
            # a298 # r21922
            jump soego_s84

        '«У меня есть несколько вопросов…»':
            # a299 # r21924
            jump soego_s83

        '«Я просто проходил мимо. Прощай».':
            # a300 # r21925
            jump soego_dispose


# s83 # say21943
label soego_s83: # from 82.7 88.0 89.1 90.0 91.1 92.0 94.1 94.3 111.0
    soego '«Я отвечу, если смогу».'

    menu:
        '«Расскажи мне о Харгримме».' if soegoLogic.r21944_condition():
            # a301 # r21944
            jump soego_s88

        '«Расскажи мне об Акасте».' if soegoLogic.r21945_condition():
            # a302 # r21945
            jump soego_s89

        '«Расскажи мне о Тухлой Мери».' if soegoLogic.r21946_condition():
            # a303 # r21946
            jump soego_s90

        '«Расскажи мне о Безмолвном Короле».' if soegoLogic.r21947_condition():
            # a304 # r21947
            jump soego_s91

        '«Что тебе известно об этой „цивилизации“?»' if soegoLogic.r21948_condition():
            # a305 # r21948
            jump soego_s92

        '«Что тебе известно об этой „цивилизации“?»' if soegoLogic.r21949_condition():
            # a306 # r21949
            jump soego_s93

        '«Неважно. Прощай».':
            # a307 # r21951
            jump soego_dispose


# s84 # say21954
label soego_s84: # from 71.0 71.1 82.5 82.6
    soego '«Конечно. Здесь ты будешь в безопасности».'

    menu:
        '«Спасибо…»':
            # a308 # r21956
            $ soegoLogic.r21956_action()
            jump soego_dispose


# s85 # say21958
label soego_s85: # -
    nr 'Null Node.'

    jump soego_dispose


# s86 # say21963
label soego_s86: # -
    nr 'Null Node.'

    jump soego_dispose


# s87 # say21969
label soego_s87: # -
    nr 'Null Node.'

    jump soego_dispose


# s88 # say21975
label soego_s88: # from 83.0 91.0
    soego '«Упрямец, и все же он поражает своей верностью и преданностью долгу».'
    soego '«Здесь он мой сильнейший противник, и он уже многие годы не дает распасться этой цивилизации»..'
    soego '«Его страсти являются результатом его верности и преданности долгу… замечательные качества, однако направлены не в то русло».'

    menu:
        '«У меня есть другие вопросы…»':
            # a309 # r21976
            jump soego_s83

        '«Это все, что я хотел узнать. Прощай».':
            # a310 # r21977
            jump soego_dispose


# s89 # say21978
label soego_s89: # from 83.1
    soego '«Акаста — животное. Боюсь, что Безмолвный Король — единственный, кто держит ее под контролем»..'
    soego '«Если его устранят, упыри разорят катакомбы».'

    menu:
        '«Расскажи мне о Безмолвном Короле».':
            # a311 # r21979
            $ soegoLogic.r21979_action()
            jump soego_s91

        '«У меня есть другие вопросы…»':
            # a312 # r21980
            jump soego_s83

        '«Это все, что я хотел узнать. Прощай».':
            # a313 # r21981
            jump soego_dispose


# s90 # say21982
label soego_s90: # from 83.2
    soego '«Тухлая Мери — добрая душа, хоть и медлительная»..'
    soego '«Я почти ничего не понимаю из того, что она говорит, но она и другие зомби не склонны к насилию».'

    menu:
        '«У меня есть другие вопросы…»':
            # a314 # r21983
            jump soego_s83

        '«Это все, что я хотел узнать. Прощай».':
            # a315 # r21984
            jump soego_dispose


# s91 # say21985
label soego_s91: # from 83.3 89.0
    soego '«Я никогда не видел Безмолвного Короля. Хотел бы я что-нибудь о нем рассказать, но никогда с ним не встречался»..'
    soego '«Его тронный зал, предположительно, находится за красными дверями, но я не могу получить туда доступ… Харгримм, скелет-жрец, не даст мне его».'

    menu:
        '«Расскажи мне о Харгримме».':
            # a316 # r21986
            $ soegoLogic.r21986_action()
            jump soego_s88

        '«У меня есть другие вопросы…»':
            # a317 # r21987
            jump soego_s83

        '«Это все, что я хотел узнать. Прощай».':
            # a318 # r21988
            jump soego_dispose


# s92 # say21989
label soego_s92: # from 83.4
    soego '«Думаю, они здесь уже много веков, пекутся о тех, кто скончался в их залах».'
    soego '«Подобная преданность долгу больше не нужна… да она почти что преступна».'

    menu:
        '«У меня есть другие вопросы…»':
            # a319 # r21990
            jump soego_s83

        '«Это все, что я хотел узнать. Прощай».':
            # a320 # r21991
            jump soego_dispose


# s93 # say21992
label soego_s93: # from 83.5
    soego '«Думаю, они здесь уже много веков, пекутся о тех, кто скончался в их залах»..'
    soego '«Подобная преданность долгу больше не нужна… да она почти что преступна».'

    jump morte_s220  # EXTERN


# s94 # say21993
label soego_s94: # from 82.0 82.1
    soego '«Что? Это правда?»'
    soego '«Ах, Многоединый наверняка вознаградит тебя за такие вести…»'

    menu:
        '«Многоединый?»' if soegoLogic.r25248_condition():
            # a321 # r25248
            $ soegoLogic.j25254_s94_r25248_action()
            jump soego_s111

        '«Интересно. У меня есть другие вопросы…»' if soegoLogic.r25252_condition():
            # a322 # r25252
            $ soegoLogic.j25254_s94_r25252_action()
            jump soego_s83

        '«Возможно. Прощай».' if soegoLogic.r25253_condition():
            # a323 # r25253
            $ soegoLogic.j25254_s94_r25253_action()
            jump soego_dispose

        '«Хорошо. У меня есть несколько вопросов…»' if soegoLogic.r21994_condition():
            # a324 # r21994
            $ soegoLogic.j21996_s94_r21994_action()
            jump soego_s83

        '«Тогда я расскажу ему сам. Прощай».' if soegoLogic.r21995_condition():
            # a325 # r21995
            $ soegoLogic.j21996_s94_r21995_action()
            jump soego_dispose


# s95 # say21997
label soego_s95: # - # IF WEIGHT #0 ~  CreatureInArea("AR1500") GlobalGT("Soego_Exposed","GLOBAL",0)
    soego '«Ах ты… сволочь!»'

    menu:
        '«Чт…»':
            # a326 # r21998
            $ soegoLogic.r21998_action()
            jump soego_dispose


# s96 # say22003
label soego_s96: # -
    soego '«Э… эта дверь ведет в мои личные покои. Прошу туда не входить».'

    menu:
        'Уйти.':
            # a327 # r22004
            jump soego_dispose


# s97 # say22005
label soego_s97: # from 82.4
    soego '«О! Пойду поговорю с ним!»'

    menu:
        '«Прощай».':
            # a328 # r22006
            jump soego_dispose


# s98 # say22007
label soego_s98: # -
    soego '«Нет, я уже иду».'

    menu:
        '«Прощай».':
            # a329 # r22008
            jump soego_dispose


# s99 # say22009
label soego_s99: # -
    soego '«К сожалению, нет. Но все еще образуется».'

    menu:
        '«Понятно. Прощай».':
            # a330 # r22010
            jump soego_dispose


# s100 # say22011
label soego_s100: # from 82.3
    nr 'Соэго некоторое время молчит.'
    soego '«Все ясно».'
    nr 'Неожиданно он начинает превращаться…'

    menu:
        '«Какого?..»':
            # a331 # r22012
            $ soegoLogic.r22012_action()
            jump soego_dispose


# s101 # say22014
label soego_s101: # from 73.0
    soego '«Э… твоя память тебе изменяет. Конечно, моя шея слегка побаливала…».'
    soego '«…она немного вывернута. Но сломана? Вряд ли».'

    menu:
        '«Позволь не согласиться. Что ты такое, Соэго?»' if soegoLogic.r22015_condition():
            # a332 # r22015
            jump soego_s106

        '«Позволь не согласиться. Что ты такое, Соэго?»' if soegoLogic.r22016_condition():
            # a333 # r22016
            jump soego_s103

        '«Ты не сердишься?»':
            # a334 # r22018
            jump soego_s74

        '«Ты говорил, что ты миссионер?»':
            # a335 # r22019
            jump soego_s65

        '«Что здесь делают тленные?»' if soegoLogic.r22020_condition():
            # a336 # r22020
            jump soego_s66

        '«Это все, что я хотел узнать. Прощай».':
            # a337 # r22022
            jump soego_s71


# s102 # say22023
label soego_s102: # -
    nr 'Он вырывается из твоей хватки со сверхъестественной скоростью. Фыркая и плюясь, он шипит.'
    soego '«Глупая тварь, ты напал на агента коллективного разума черепных крыс!»'
    nr 'Внезапно он начинает пугающе преображаться…'

    menu:
        '«Какого?..»':
            # a338 # r22024
            $ soegoLogic.r22024_action()
            jump soego_dispose


# s103 # say22026
label soego_s103: # from 101.1
    soego '«Глупый вопрос! Ты очнулся на препараторской плите в Морге… ты сам мне об этом рассказал».'
    soego '«Несомненно, мое ранение было получше того, из-за которого сборщики перепутали тебя с трупом, не так ли?»'

    menu:
        '«Все так, но… неважно».':
            # a339 # r22027
            jump soego_s104

        '«У меня… особый случай».':
            # a340 # r22028
            jump soego_s105

        '«Нет. Что-то здесь не так, и я очень скоро выясню это».':
            # a341 # r22029
            jump soego_s104


# s104 # say22032
label soego_s104: # from 103.0 103.2 105.0 105.1 106.1 107.0
    soego '«Ну и ладно».'
    nr 'Он пожимает плечами.'

    menu:
        '«Ты не злишься насчет того, что произошло?»':
            # a342 # r22033
            jump soego_s74

        '«Ты говорил, что ты миссионер?»':
            # a343 # r22034
            jump soego_s65

        '«Так что же тленные делают здесь?»' if soegoLogic.r22035_condition():
            # a344 # r22035
            jump soego_s66

        '«Я уже должен идти. Прощай».':
            # a345 # r22038
            jump soego_s71


# s105 # say22039
label soego_s105: # from 103.1
    nr 'Он улыбается.'
    soego '«У каждого свои причуды. Уверен, этого ты не станешь отрицать?»'

    menu:
        '«Все так, но… неважно».':
            # a346 # r22040
            jump soego_s104

        '«Нет. Что-то здесь не так, и я очень скоро выясню это».':
            # a347 # r22041
            jump soego_s104


# s106 # say22043
label soego_s106: # from 101.0
    soego '«Что я такое?.. Что за вопрос такой?»'

    menu:
        '«Ты слышал меня. Ты ведь не обычный тленный… что ты *такое*, Соэго?»':
            # a348 # r22044
            jump soego_s107

        '«Забудь. Неважно».':
            # a349 # r22045
            jump soego_s104


# s107 # say22047
label soego_s107: # from 106.0
    nr 'Соэго бросает на тебя угрюмый взгляд.'
    soego '«Я не понимаю, о *чем* ты говоришь».'

    menu:
        '«Что-то здесь не так, и я очень скоро выясню это».':
            # a350 # r22048
            jump soego_s104


# s108 # say22050
label soego_s108: # - # IF WEIGHT #3 ~  Global("Dustman_Initiation","GLOBAL",5) GlobalLT("Soego","GLOBAL",3) !Global("CR_Vic","GLOBAL",1)
    soego '«А, еще один из живущих. Большинство из тех, кто заходит так глубоко в катакомбы, убивают упыри. Тебе повезло».'

    menu:
        '«Ты Соэго? Эморик тебя искал».' if soegoLogic.r22051_condition():
            # a351 # r22051
            $ soegoLogic.r22051_action()
            jump soego_s109

        '«Соэго… Эморик хотел знать, где ты».' if soegoLogic.r66173_condition():
            # a352 # r66173
            $ soegoLogic.r66173_action()
            jump soego_s109


# s109 # say22053
label soego_s109: # from 82.2 108.0 108.1
    soego '«Да, это я. Я занимаюсь здесь миссионерской деятельностью для тленных».'

    menu:
        '«Хорошо. Но… я думал, что сломал тебе шею…»' if soegoLogic.r64617_condition():
            # a353 # r64617
            jump soego_s73

        '«Хорошо. Но… я думал, что *убил* тебя…»' if soegoLogic.r64618_condition():
            # a354 # r64618
            jump soego_s73

        '«Здесь есть другие тленные?»':
            # a355 # r22054
            jump soego_s66

        '«Где я?»':
            # a356 # r50792
            jump soego_s77

        '«Почему из меня сделали заключенного?»':
            # a357 # r50793
            jump soego_s78

        '«Я уже должен идти. Прощай».':
            # a358 # r22056
            jump soego_s71


# s110 # say22057
label soego_s110: # from 79.0 79.1
    soego '«Да, это я».'

    menu:
        '«Постой… разве я не сломал тебе шею в Морге?»' if soegoLogic.r64625_condition():
            # a359 # r64625
            jump soego_s112

        '«Постой… Я думал, что *убил* тебя в Морге…»' if soegoLogic.r64626_condition():
            # a360 # r64626
            jump soego_s112

        '«Хорошо. Так как же мне добраться до Безмолвного Короля?»' if soegoLogic.r22058_condition():
            # a361 # r22058
            $ soegoLogic.j21857_s110_r22058_action()
            jump soego_s80

        '«Хорошо. Прощай».' if soegoLogic.r22060_condition():
            # a362 # r22060
            jump soego_s71


# s111 # say25249
label soego_s111: # from 94.0
    soego '«Да, коллективный разум черепных крыс. Иди на восток от Катакомб плачущих камней. Там ты найдешь дорогу».'

    menu:
        '«Интересно. У меня есть другие вопросы…»':
            # a363 # r25250
            jump soego_s83

        '«Возможно. Прощай».':
            # a364 # r25251
            jump soego_dispose


# s112 # say64620
label soego_s112: # from 79.2 79.3 110.0 110.1
    nr 'Он отмахивается от твоих слов.'
    soego '«Ничто, для меня это ничто. Я уже был благославлен ликантропией — любые раны восстанавливаются очень быстро».'

    menu:
        '«Понятно… Так как мне добраться до Безмолвного Короля?»':
            # a365 # r64621
            jump soego_s80

        '«Хорошо… Тогда прощай».':
            # a366 # r64622
            jump soego_s71


# s113 # say66709
label soego_s113: # from 38.1
    soego '«Приветствую…»'
    nr 'Человек поворачивается к тебе лицом и делает небольшой поклон. Внезапно ты замечаешь, что его глаза не налиты кровью, а просто имеют красный оттенок.'
    soego '«Я Соэго. Чем могу помочь?»'

    menu:
        '«Я хотел бы покинуть Морг. Ты не поможешь мне?»':
            # a367 # r66712
            jump soego_s114

        '«У меня есть несколько вопросов…»':
            # a368 # r66713
            jump soego_s114

        '«Я просто проходил мимо. Прощай».':
            # a369 # r66714
            jump soego_dispose


# s114 # say66710
label soego_s114: # from 113.0 113.1
    nr 'Пока ты произносишь фразу, губы Соэго неожиданно раскрываются, обнажая ряд грязных и острых зубов. Он наклоняется вперед, обнюхивая тебя.'

    menu:
        '«Эй… какого черта ты меня обнюхиваешь?»':
            # a370 # r66715
            jump soego_s115

        'Свернуть ему шею, пока он наклоняется вперед.' if soegoLogic.r66716_condition():
            # a371 # r66716
            jump soego_s22

        'Свернуть ему шею, пока он наклоняется вперед.' if soegoLogic.r66717_condition():
            # a372 # r66717
            jump soego_s19

        '«Неважно… Прощай».':
            # a373 # r66718
            jump soego_s17


# s115 # say66711
label soego_s115: # from 114.0
    soego '«Твоя одежда… эта мантия. Она не так пахнет. Она не твоя».'
    nr 'Губы Соэго растягиваются в странной улыбке, глаза горят диким огнем.'
    soego '«Кто ты *такой*?»'

    menu:
        '«Я… одолжил эту мантию. Я очнулся на одной из плит наверху в препараторской».':
            # a374 # r66719
            jump soego_s42

        '«Ты прав. Эта мантия не моя, но чья она — это не твое дело».':
            # a375 # r66720
            jump soego_s6

        'Свернуть ему шею до того, как он сможет позвать на помощь.' if soegoLogic.r66721_condition():
            # a376 # r66721
            jump soego_s22

        'Свернуть ему шею до того, как он сможет позвать на помощь.' if soegoLogic.r66722_condition():
            # a377 # r66722
            jump soego_s19

        '«Это неважно. Мне пора идти».':
            # a378 # r66723
            jump soego_s17
