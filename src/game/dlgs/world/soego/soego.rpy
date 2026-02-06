init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.world.soego.SoegoLogic import (SoegoLogic)

    soegoLogic = SoegoLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DSOEGO.DLG
# ###


# s0 # say1431
label soego_s0: # - # IF WEIGHT #8 /* Triggers after states #: 59 58 12 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Appearance","GLOBAL",1) Global("Gate_Open","GLOBAL",0) Global("Soego","GLOBAL",0)
    'soego_s0{#soego_s0}'
    # nr 'Перед тобой устало выглядящий мужчина в выцветших черных одеждах. Его худощавое лицо слишком бледное, как будто он давно не спал. Его плечи осунулись, под налитыми кровью глазами видны мешки. Похоже, он не заметил тебя… Должно быть, он спутал тебя с одним из мертвых рабочих.{#soego_s0_1}'

    menu:
        'soego_s0_r1432{#soego_s0_r1432}': # '«Приветствую».{#soego_s0_r1432}'
            # a0 # r1432
            jump soego_s1

        'soego_s0_r1433{#soego_s0_r1433}': # '«Кто ты?»{#soego_s0_r1433}'
            # a1 # r1433
            jump soego_s1

        'soego_s0_r1434{#soego_s0_r1434}': # '«Что это за место?»{#soego_s0_r1434}'
            # a2 # r1434
            jump soego_s1

        'soego_s0_r1435{#soego_s0_r1435}': # '«У меня есть несколько вопросов…»{#soego_s0_r1435}'
            # a3 # r1435
            jump soego_s1

        'soego_s0_r1436{#soego_s0_r1436}': # 'Оставить его в покое.{#soego_s0_r1436}'
            # a4 # r1436
            jump dialogues_dispose


# s1 # say1437
label soego_s1: # from 0.0 0.1 0.2 0.3
    $ soegoLogic.talk()
    'soego_s1{#soego_s1}'
    # nr 'Когда ты обращаешься к тленному, он резко поднимает голову.{#soego_s1_1}'
    # soego '«Про… прошу прощения? Ты что-то сказал мне?»{#soego_s1_2}'

    menu:
        'soego_s1_r1438{#soego_s1_r1438}': # '«Да. У меня есть несколько вопросов…»{#soego_s1_r1438}'
            # a5 # r1438
            $ soegoLogic.j63982_s1_r1438_action()
            jump soego_s2

        'soego_s1_r1439{#soego_s1_r1439}': # '«Нет. Нет, это не я».{#soego_s1_r1439}'
            # a6 # r1439
            $ soegoLogic.j63982_s1_r1439_action()
            $ soegoLogic.r1439_action()
            jump soego_s2

        'soego_s1_r1440{#soego_s1_r1440}' if soegoLogic.r1440_condition(): # 'Стать тихим как покойник.{#soego_s1_r1440}'
            # a7 # r1440
            jump soego_s3

        'soego_s1_r1441{#soego_s1_r1441}' if soegoLogic.r1441_condition(): # 'Стать тихим как покойник.{#soego_s1_r1441}'
            # a8 # r1441
            jump soego_s4

        'soego_s1_r1442{#soego_s1_r1442}': # 'Уйти. Быстро.{#soego_s1_r1442}'
            # a9 # r1442
            jump soego_s5


# s2 # say1443
label soego_s2: # from 1.0 1.1 3.0 3.3 4.0 4.1
    'soego_s2{#soego_s2_1}'
    # soego '«О, силы!»{#soego_s2_1}'
    # nr 'Тленный подпрыгивает, затем внимательно смотрит на тебя. Ты замечаешь, что его глаза не налиты кровью, а просто имеют красный оттенок.{#soego_s2_2}'
    # soego '«Эй, ты заставляешь меня сделать нелестное признание: из тебя вышел убедительный зомби».{#soego_s2_3}'
    # nr 'Он делает легкий поклон.{#soego_s2_4}'
    $ soegoLogic.set_know_soego_name()
    $ achievement_meet_soego.grant()
    'soego_s2{#soego_s2_2}'
    # soego '«Я Соэго. Могу ли я спросить тебя, что ты делаешь здесь».{#soego_s2_5}'
    # nr 'Он косится на твои шрамы.{#soego_s2_6}'
    # soego '«В таком виде?»{#soego_s2_7}'

    menu:
        'soego_s2_r1444{#soego_s2_r1444}': # '«Это не твое дело».{#soego_s2_r1444}'
            # a10 # r1444
            jump soego_s6

        'soego_s2_r1445{#soego_s2_r1445}': # '«Я не совсем понимаю, что я здесь делаю. Я очнулся на одной из плит наверху, и моя память… немного туманна».{#soego_s2_r1445}'
            # a11 # r1445
            jump soego_s7

        'soego_s2_r1446{#soego_s2_r1446}' if soegoLogic.r1446_condition(): # '«Я заблудился в этих залах и теперь не могу найти выход. Ты можешь мне помочь?»{#soego_s2_r1446}'
            # a12 # r1446
            jump soego_s8

        'soego_s2_r1447{#soego_s2_r1447}': # '«Я пытаюсь выбраться отсюда».{#soego_s2_r1447}'
            # a13 # r1447
            jump soego_s13

        'soego_s2_r1448{#soego_s2_r1448}': # '«Мне были нужны перемены в жизни».{#soego_s2_r1448}'
            # a14 # r1448
            $ soegoLogic.r1448_action()
            jump soego_s16

        'soego_s2_r4999{#soego_s2_r4999}': # '«У меня совершенно нет на это времени. Прощай».{#soego_s2_r4999}'
            # a15 # r4999
            jump soego_s17


# s3 # say1449
label soego_s3: # from 1.2
    'soego_s3{#soego_s3}'
    # nr 'Тленный некоторое время изучает тебя, затем трясет головой.{#soego_s3_1}'
    # soego '«Опять почудилось…»{#soego_s3_2}'
    # nr 'Вздыхает он и трет глаза.{#soego_s3_3}'
    # soego '«Эти заклинания от лихорадки действуют слишком сильно…»{#soego_s3_4}'

    menu:
        'soego_s3_r1450{#soego_s3_r1450}': # '«Это не твое воображение. У меня есть другие вопросы…»{#soego_s3_r1450}'
            # a16 # r1450
            $ soegoLogic.j63982_s3_r1450_action()
            jump soego_s2

        'soego_s3_r1451{#soego_s3_r1451}' if soegoLogic.r1451_condition(): # 'Свернуть ему шею, пока он отвлекся.{#soego_s3_r1451}'
            # a17 # r1451
            jump soego_s19

        'soego_s3_r1452{#soego_s3_r1452}' if soegoLogic.r1452_condition(): # 'Свернуть ему шею, пока он отвлекся.{#soego_s3_r1452}'
            # a18 # r1452
            jump soego_s22

        'soego_s3_r1453{#soego_s3_r1453}': # '«У меня есть несколько вопросов».{#soego_s3_r1453}'
            # a19 # r1453
            $ soegoLogic.j63982_s3_r1453_action()
            jump soego_s2

        'soego_s3_r1454{#soego_s3_r1454}': # 'Тихо уйти.{#soego_s3_r1454}'
            # a20 # r1454
            jump dialogues_dispose


# s4 # say1455
label soego_s4: # from 1.3
    'soego_s4{#soego_s4}'
    # nr 'Тленный внимательно смотрит на тебя, затем наклоняется к тебе… его губы раскрываются, обнажая ряд грязных и острых зубов. Он, как крыса, начинает обнюхивать тебя.{#soego_s4_1}'

    menu:
        'soego_s4_r1456{#soego_s4_r1456}': # '«Эй… какого черта ты меня обнюхиваешь?»{#soego_s4_r1456}'
            # a21 # r1456
            $ soegoLogic.j63982_s4_r1456_action()
            $ soegoLogic.r1456_action()
            jump soego_s2

        'soego_s4_r1457{#soego_s4_r1457}': # '«Послушай, у меня есть вопросы к тебе…»{#soego_s4_r1457}'
            # a22 # r1457
            $ soegoLogic.j63982_s4_r1457_action()
            $ soegoLogic.r1457_action()
            jump soego_s2

        'soego_s4_r1458{#soego_s4_r1458}' if soegoLogic.r1458_condition(): # 'Свернуть ему шею, пока он наклоняется вперед.{#soego_s4_r1458}'
            # a23 # r1458
            jump soego_s19

        'soego_s4_r1459{#soego_s4_r1459}' if soegoLogic.r1459_condition(): # 'Свернуть ему шею, пока он наклоняется вперед.{#soego_s4_r1459}'
            # a24 # r1459
            jump soego_s22

        'soego_s4_r1460{#soego_s4_r1460}': # 'Уйти. Быстро.{#soego_s4_r1460}'
            # a25 # r1460
            jump soego_s15


# s5 # say1461
label soego_s5: # from 1.4
    'soego_s5{#soego_s5_1}'
    # nr 'Как только ты собираешься уйти, тленный издает легкое шипение, затем наклоняется вперед и обнюхивает тебя.{#soego_s5_1}'
    # soego '«О, силы!»{#soego_s5_2}'
    # nr 'Тленный отступает назад, его глаза широко раскрыты. Ты замечаешь, что его глаза не налиты кровью, а просто имеют красный оттенок.{#soego_s5_3}'
    # soego '«Эй, ты заставляешь меня сделать нелестное признание: из тебя вышел убедительный зомби».{#soego_s5_4}'
    # nr 'Он слегка кивает.{#soego_s5_5}'
    $ soegoLogic.set_know_soego_name()
    $ achievement_meet_soego.grant()
    'soego_s5{#soego_s5_2}'
    # soego '«Я Соэго. Могу ли я спросить, что ты здесь делаешь… в таком виде?»{#soego_s5_6}'

    menu:
        'soego_s5_r1462{#soego_s5_r1462}': # '«Это не твое дело».{#soego_s5_r1462}'
            # a26 # r1462
            jump soego_s6

        'soego_s5_r1463{#soego_s5_r1463}': # '«Я не совсем понимаю, что я здесь делаю. Я очнулся на одной из плит наверху, и моя память… немного туманна».{#soego_s5_r1463}'
            # a27 # r1463
            jump soego_s7

        'soego_s5_r1464{#soego_s5_r1464}' if soegoLogic.r1464_condition(): # '«Я заблудился и ищу выход. Ты можешь мне помочь?»{#soego_s5_r1464}'
            # a28 # r1464
            jump soego_s8

        'soego_s5_r1465{#soego_s5_r1465}': # '«Я пытаюсь выбраться отсюда».{#soego_s5_r1465}'
            # a29 # r1465
            jump soego_s13

        'soego_s5_r1466{#soego_s5_r1466}': # '«Мне были нужны перемены в жизни».{#soego_s5_r1466}'
            # a30 # r1466
            $ soegoLogic.r1466_action()
            jump soego_s16

        'soego_s5_r1467{#soego_s5_r1467}': # '«У меня совершенно нет на это времени. Прощай».{#soego_s5_r1467}'
            # a31 # r1467
            jump soego_s17


# s6 # say1468
label soego_s6: # from 2.0 5.0 15.0 41.1 43.0 50.1 115.1
    'soego_s6{#soego_s6}'
    # soego '«О, боюсь, что это *как раз* мое дело».{#soego_s6_1}'
    # nr 'Глаза Соэго блестят красным, уголки его рта слегка подергиваются, словно в предвкушении.{#soego_s6_2}'
    # soego '«Может…»{#soego_s6_3}'
    # nr 'Он широко ухмыляется, показывая ряд острых грязных зубов.{#soego_s6_4}'
    # soego '«Может, мне стоит позвать охрану? Да… да, пожалуй, я так и сделаю».{#soego_s6_5}'

    menu:
        'soego_s6_r1469{#soego_s6_r1469}' if soegoLogic.r1469_condition(): # '«Постой! Я потерялся… Я просто заблудился в этих залах и теперь не могу найти выход. Ты можешь мне помочь?»{#soego_s6_r1469}'
            # a32 # r1469
            jump soego_s8

        'soego_s6_r1470{#soego_s6_r1470}' if soegoLogic.r1470_condition(): # '«Стой! Не надо звать стражу! Я просто хочу выбраться отсюда… ты поможешь мне?»{#soego_s6_r1470}'
            # a33 # r1470
            jump soego_s13

        'soego_s6_r1471{#soego_s6_r1471}' if soegoLogic.r1471_condition(): # 'Свернуть ему шею до того, как он сможет позвать на помощь.{#soego_s6_r1471}'
            # a34 # r1471
            jump soego_s19

        'soego_s6_r1472{#soego_s6_r1472}' if soegoLogic.r1472_condition(): # 'Свернуть ему шею до того, как он сможет позвать на помощь.{#soego_s6_r1472}'
            # a35 # r1472
            jump soego_s22

        'soego_s6_r1473{#soego_s6_r1473}': # '«Давай, зови их. Буду рад с ними встретиться».{#soego_s6_r1473}'
            # a36 # r1473
            jump soego_s18


# s7 # say1474
label soego_s7: # from 2.1 5.1 13.3 15.1 42.1 57.0
    'soego_s7{#soego_s7}'
    # soego '«Правда?»{#soego_s7_1}'
    # nr 'Тленный недоверчиво осматривает тебя.{#soego_s7_2}'
    # soego '«Ты *выглядишь* так, как будто тебя только что вскрыли. Не представляю, как ты смог пережить эту невыносимую боль… тебе *больно*? Кажется, да».{#soego_s7_3}'

    menu:
        'soego_s7_r1475{#soego_s7_r1475}': # '«Как я вообще сюда попал?»{#soego_s7_r1475}'
            # a37 # r1475
            jump soego_s54

        'soego_s7_r1476{#soego_s7_r1476}': # '«У меня нет времени на это. Прощай».{#soego_s7_r1476}'
            # a38 # r1476
            jump soego_s17


# s8 # say1477
label soego_s8: # from 2.2 5.2 6.0 13.0 15.2 16.0 17.0 26.0 40.0 41.0 50.0 61.0 62.0
    'soego_s8{#soego_s8}'
    # nr 'Соэго кивает, уголки его рта немного подрагивают.{#soego_s8_1}'
    # soego '«Ну почему же… конечно. Эти залы *способны* запутать посетителей. В этом нет ничего плохого, но тебе нельзя находиться в Морге после девяти ударов колокола. Позволь мне открыть для тебя ворота».{#soego_s8_2}'

    menu:
        'soego_s8_r1478{#soego_s8_r1478}' if soegoLogic.r1478_condition(): # '«Спасибо».{#soego_s8_r1478}'
            # a39 # r1478
            $ soegoLogic.r1478_action()
            jump dialogues_dispose

        'soego_s8_r1479{#soego_s8_r1479}' if soegoLogic.r1479_condition(): # '«Спасибо».{#soego_s8_r1479}'
            # a40 # r1479
            jump soego_s9


# s9 # say1480
label soego_s9: # from 8.1 56.1 60.1
    'soego_s9{#soego_s9}'
    # nr 'Соэго тянется к поясу, шарит по одежде, затем начинает шипеть.{#soego_s9_1}'
    # soego '«Ключ!»{#soego_s9_2}'
    # nr 'В его глазах появляется яркий красный блеск, а губы складываются в гримасу ярости… выражение лица при этом напоминает звериный оскал.{#soego_s9_3}'
    # soego '«Кто-то украл ключ!»{#soego_s9_4}'
    # nr 'Он разворачивается к тебе и рычит.{#soego_s9_5}'
    # soego '«Ты! Это сделал ты!»{#soego_s9_6}'

    menu:
        'soego_s9_r1481{#soego_s9_r1481}': # 'Блеф: «Эй… погоди! Зачем мне спрашивать тебя о нем, если я его украл?»{#soego_s9_r1481}'
            # a41 # r1481
            jump soego_s18

        'soego_s9_r1482{#soego_s9_r1482}': # 'Ложь: «О чем это ты?! Мне-то он зачем!»{#soego_s9_r1482}'
            # a42 # r1482
            $ soegoLogic.r1482_action()
            jump soego_s18

        'soego_s9_r1483{#soego_s9_r1483}' if soegoLogic.r1483_condition(): # 'Свернуть ему шею до того, как он сможет позвать на помощь.{#soego_s9_r1483}'
            # a43 # r1483
            jump soego_s19

        'soego_s9_r1484{#soego_s9_r1484}' if soegoLogic.r1484_condition(): # 'Свернуть ему шею до того, как он сможет позвать на помощь.{#soego_s9_r1484}'
            # a44 # r1484
            jump soego_s22

        'soego_s9_r1485{#soego_s9_r1485}': # '«Ну, допустим, я. И что? И что ты мне сделаешь?»{#soego_s9_r1485}'
            # a45 # r1485
            jump soego_s18


# s10 # say1486
label soego_s10: # -
    'soego_s10{#soego_s10}'
    # nr 'Соэго берет огромный ключ с пояса и идет к главным воротам. Ты не можешь не заметить его странной походки… он наклоняется вперед, пытаясь сохранить равновесие.{#soego_s10_1}'

    menu:
        'soego_s10_r1487{#soego_s10_r1487}' if soegoLogic.r1487_condition(): # '«Какая странная у него походка».{#soego_s10_r1487}'
            # a46 # r1487
            jump morte_s101  # EXTERN

        'soego_s10_r1488{#soego_s10_r1488}' if soegoLogic.r1488_condition(): # 'Подождать, пока он открывает ворота.{#soego_s10_r1488}'
            # a47 # r1488
            jump soego_s11


# s11 # say1489
label soego_s11: # from 10.1
    'soego_s11{#soego_s11}'
    # nr 'Дойдя до ворот, Соэго вставляет ключ в замок. Спустя мгновение из замочной скважины раздается неприятный звук… Он наполняет весь главный зал, эхом раскатываясь по мраморным стенам.{#soego_s11_1}'

    menu:
        'soego_s11_r1490{#soego_s11_r1490}': # 'Подождать, пока он не вернется.{#soego_s11_r1490}'
            # a48 # r1490
            $ soegoLogic.r1490_action()
            jump soego_s12


# s12 # say1491
label soego_s12: # from 11.0 # IF WEIGHT #5 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Gate_Open","GLOBAL",1) Global("Gate_Cut_Scene","AR0201",1)
    'soego_s12{#soego_s12}'
    # soego '«Вот и все. Главные ворота открыты, но вернуться обратно ты не сможешь».{#soego_s12_1}'

    menu:
        'soego_s12_r1492{#soego_s12_r1492}': # '«Могу ли я задать пару вопросу перед тем, как уйду?»{#soego_s12_r1492}'
            # a49 # r1492
            $ soegoLogic.r1492_action()
            jump soego_s26

        'soego_s12_r1493{#soego_s12_r1493}': # '«Спасибо, Соэго. Я пошел».{#soego_s12_r1493}'
            # a50 # r1493
            $ soegoLogic.r1493_action()
            jump dialogues_dispose


# s13 # say1494
label soego_s13: # from 2.3 5.3 6.1 15.3 16.1 17.1 26.1 61.1
    'soego_s13{#soego_s13}'
    # soego '«Выбраться отсюда?»{#soego_s13_1}'
    # nr 'Соэго хмурится.{#soego_s13_2}'
    # soego '«А как ты умудрился попасть внутрь?»{#soego_s13_3}'

    menu:
        'soego_s13_r1495{#soego_s13_r1495}' if soegoLogic.r1495_condition(): # '«Я был здесь на похоронах, отдавал дань уважения. Я уже готов уйти… вот только, кажется, я заблудился. Ты не поможешь мне найти выход?»{#soego_s13_r1495}'
            # a51 # r1495
            jump soego_s8

        'soego_s13_r1496{#soego_s13_r1496}' if soegoLogic.r1496_condition(): # '«Я и сам не знаю».{#soego_s13_r1496}'
            # a52 # r1496
            jump soego_s14

        'soego_s13_r1497{#soego_s13_r1497}' if soegoLogic.r1497_condition(): # '«Я и сам не знаю».{#soego_s13_r1497}'
            # a53 # r1497
            jump soego_s61

        'soego_s13_r1498{#soego_s13_r1498}': # '«Я очнулся на одной из плит наверху, и моя память… немного туманна».{#soego_s13_r1498}'
            # a54 # r1498
            jump soego_s7

        'soego_s13_r1499{#soego_s13_r1499}': # '«У меня нет времени на это. Прощай».{#soego_s13_r1499}'
            # a55 # r1499
            jump soego_s17


# s14 # say1500
label soego_s14: # from 13.1
    'soego_s14{#soego_s14}'
    # nr 'Соэго цокает языком.{#soego_s14_1}'
    # soego '«Очень любопытно».{#soego_s14_2}'
    # nr 'Он снова изучает тебя.{#soego_s14_3}'
    # soego '«А может, ты один из контрактников?»{#soego_s14_4}'

    menu:
        'soego_s14_r1501{#soego_s14_r1501}': # '«Э, контрактников?»{#soego_s14_r1501}'
            # a56 # r1501
            jump soego_s23

        'soego_s14_r1502{#soego_s14_r1502}': # '«У меня совершенно нет на это времени. Прощай».{#soego_s14_r1502}'
            # a57 # r1502
            jump soego_s17


# s15 # say1503
label soego_s15: # from 4.4
    'soego_s15{#soego_s15_1}'
    # nr 'Едва ты собираешься уйти, как тленный перестает тебя обнюхивать и испускает легкое шипение.{#soego_s15_1}'
    # soego '«О, силы!»{#soego_s15_2}'
    # nr 'Тленный отступает назад, его глаза широко раскрыты. Ты замечаешь, что его глаза не налиты кровью, а просто имеют красный оттенок.{#soego_s15_3}'
    # soego '«Эй, ты заставляешь меня сделать нелестное признание: из тебя вышел убедительный зомби».{#soego_s15_4}'
    # nr 'Он слегка кивает.{#soego_s15_5}'
    $ soegoLogic.set_know_soego_name()
    $ achievement_meet_soego.grant()
    'soego_s15{#soego_s15_2}'
    # soego '«Я Соэго. Могу ли я спросить, что ты здесь делаешь… в таком виде?»{#soego_s15_6}'

    menu:
        'soego_s15_r1504{#soego_s15_r1504}': # '«Это не твое дело».{#soego_s15_r1504}'
            # a58 # r1504
            jump soego_s6

        'soego_s15_r1505{#soego_s15_r1505}': # '«Я не совсем понимаю, что я здесь делаю. Я очнулся на одной из плит наверху, и моя память… немного туманна».{#soego_s15_r1505}'
            # a59 # r1505
            jump soego_s7

        'soego_s15_r1506{#soego_s15_r1506}' if soegoLogic.r1506_condition(): # '«Я заблудился и ищу выход. Ты можешь мне помочь?»{#soego_s15_r1506}'
            # a60 # r1506
            jump soego_s8

        'soego_s15_r1508{#soego_s15_r1508}': # '«Я пытаюсь выбраться отсюда».{#soego_s15_r1508}'
            # a61 # r1508
            jump soego_s13

        'soego_s15_r1509{#soego_s15_r1509}': # '«Мне были нужны перемены в жизни».{#soego_s15_r1509}'
            # a62 # r1509
            $ soegoLogic.r1509_action()
            jump soego_s16

        'soego_s15_r1510{#soego_s15_r1510}': # '«У меня совершенно нет на это времени. Прощай».{#soego_s15_r1510}'
            # a63 # r1510
            jump soego_s17


# s16 # say1511
label soego_s16: # from 2.4 5.4 15.4
    'soego_s16{#soego_s16}'
    # soego '«Понятно…»{#soego_s16_1}'
    # nr 'Глаза Соэго блестят красным, уголки его рта слегка подрагивают, словно в предвкушении.{#soego_s16_2}'
    # soego '«Может…»{#soego_s16_3}'
    # nr 'Он широко ухмыляется, показывая ряд острых грязных зубов.{#soego_s16_4}'
    # soego '«Может, мне стоит позвать охрану? Да… да, пожалуй, я так и сделаю».{#soego_s16_5}'

    menu:
        'soego_s16_r1512{#soego_s16_r1512}' if soegoLogic.r1512_condition(): # '«Постой! Я потерялся… Я просто заблудился в этих залах и теперь не могу найти выход. Ты можешь мне помочь?»{#soego_s16_r1512}'
            # a64 # r1512
            jump soego_s8

        'soego_s16_r1513{#soego_s16_r1513}' if soegoLogic.r1513_condition(): # '«Стой! Не надо звать стражу! Я просто хочу выбраться отсюда… ты поможешь мне?»{#soego_s16_r1513}'
            # a65 # r1513
            jump soego_s13

        'soego_s16_r1514{#soego_s16_r1514}' if soegoLogic.r1514_condition(): # 'Свернуть ему шею до того, как он сможет позвать на помощь.{#soego_s16_r1514}'
            # a66 # r1514
            jump soego_s19

        'soego_s16_r1515{#soego_s16_r1515}' if soegoLogic.r1515_condition(): # 'Свернуть ему шею до того, как он сможет позвать на помощь.{#soego_s16_r1515}'
            # a67 # r1515
            jump soego_s22

        'soego_s16_r1516{#soego_s16_r1516}': # '«Давай, зови их. Буду рад с ними встретиться».{#soego_s16_r1516}'
            # a68 # r1516
            jump soego_s18


# s17 # say1517
label soego_s17: # from 2.5 5.5 7.1 13.4 14.1 15.5 23.2 24.2 25.2 26.9 27.4 28.2 29.3 31.3 32.2 33.4 34.4 35.3 36.3 37.2 114.3 115.4
    'soego_s17{#soego_s17}'
    # nr 'Когда ты собираешься уходить, как Соэго издает злобное шипение… затем он неожиданно успокаивается и поднимает руки.{#soego_s17_1}'
    # soego '«Нет, нет, боюсь, что ты не можешь уйти. Что-то здесь не так. Мне кажется, что будет лучше, если мы разберемся с этим…»{#soego_s17_2}'
    # nr 'Уголки его рта подрагивают, в глазах вспыхивает огонек.{#soego_s17_3}'
    # soego '«Может, охрана поможет. Да… наверное, мне стоит позвать их».{#soego_s17_4}'

    menu:
        'soego_s17_r1518{#soego_s17_r1518}' if soegoLogic.r1518_condition(): # '«Постой! Я потерялся… Я просто заблудился в этих залах и теперь не могу найти выход. Ты можешь мне помочь?»{#soego_s17_r1518}'
            # a69 # r1518
            jump soego_s8

        'soego_s17_r1520{#soego_s17_r1520}' if soegoLogic.r1520_condition(): # '«Стой! Не надо звать стражу! Я просто хочу выбраться отсюда… ты поможешь мне?»{#soego_s17_r1520}'
            # a70 # r1520
            jump soego_s13

        'soego_s17_r1521{#soego_s17_r1521}' if soegoLogic.r1521_condition(): # 'Свернуть ему шею до того, как он сможет позвать на помощь.{#soego_s17_r1521}'
            # a71 # r1521
            jump soego_s19

        'soego_s17_r1522{#soego_s17_r1522}' if soegoLogic.r1522_condition(): # 'Свернуть ему шею до того, как он сможет позвать на помощь.{#soego_s17_r1522}'
            # a72 # r1522
            jump soego_s22

        'soego_s17_r1523{#soego_s17_r1523}': # '«Давай, зови их. Буду рад с ними встретиться».{#soego_s17_r1523}'
            # a73 # r1523
            jump soego_s18


# s18 # say1524
label soego_s18: # from 6.4 9.0 9.1 9.4 16.4 17.4 40.4 40.5 41.6 50.6 53.6 61.4
    'soego_s18{#soego_s18}'
    # nr 'Соэго делает шаг назад, затем быстро хлопает в ладони три раза. В ответ во всем Морге раздается звон огромного железного колокола.{#soego_s18_1}'

    menu:
        'soego_s18_r1525{#soego_s18_r1525}': # '«Ну хорошо…»{#soego_s18_r1525}'
            # a74 # r1525
            $ soegoLogic.r1525_action()
            jump dialogues_dispose


# s19 # say1526
label soego_s19: # from 3.1 4.2 6.2 9.2 16.2 17.2 40.2 51.0 61.2 114.2 115.3
    'soego_s19{#soego_s19}'
    # nr 'До того, как он смог произнести слово, твои руки хватают его голову за виски, и ты резко сворачиваешь его голову влево.{#soego_s19_1}'

    menu:
        'soego_s19_r1528{#soego_s19_r1528}': # '«Нельзя допустить, чтобы ты предупредил своих друзей».{#soego_s19_r1528}'
            # a75 # r1528
            $ soegoLogic.r1528_action()
            jump soego_s20


# s20 # say1529
label soego_s20: # from 19.0
    'soego_s20{#soego_s20}'
    # nr 'В его шее раздается характерный хруст… но вместо того, чтобы безвольно упасть, тленный издает душераздирающий крик и вырывается из твоей хватки!{#soego_s20_1}'

    menu:
        'soego_s20_r1530{#soego_s20_r1530}' if soegoLogic.r1530_condition(): # '«Что?!..»{#soego_s20_r1530}'
            # a76 # r1530
            $ soegoLogic.r1530_action()
            jump morte_s100  # EXTERN

        'soego_s20_r1531{#soego_s20_r1531}' if soegoLogic.r1531_condition(): # '«Что?!..»{#soego_s20_r1531}'
            # a77 # r1531
            $ soegoLogic.r1531_action()
            jump soego_s21


# s21 # say1532
label soego_s21: # from 20.1
    'soego_s21{#soego_s21}'
    # nr 'Кажется, тленный шокирован не меньше тебя. В его глазах безумие, из горла издается булькающие звуки… ты уверен, что свернул ему шею: его голова повернута под неестественным углом, но он все еще жив! Пока ты в оцепенении смотришь на него, он слабо хлопает в ладони три раза. В ответ во всем Морге раздается звон огромного железного колокола.{#soego_s21_1}'

    menu:
        'soego_s21_r1533{#soego_s21_r1533}': # '«Ну хорошо…»{#soego_s21_r1533}'
            # a78 # r1533
            $ soegoLogic.r1533_action()
            jump dialogues_dispose


# s22 # say1534
label soego_s22: # from 3.2 4.3 6.3 9.3 16.3 17.3 40.3 61.3 114.1 115.2
    'soego_s22{#soego_s22}'
    # nr 'Должно быть, *что-то* насторожило тленного… до того, как ты смог до него дотянуться, он отскакивает назад. В его глазах вспыхивает красный огонек, он скалит зубы. Шипя, он быстро хлопает в ладони три раза. В ответ во всем Морге раздается звон огромного железного колокола.{#soego_s22_1}'

    menu:
        'soego_s22_r1535{#soego_s22_r1535}': # '«Ну хорошо…»{#soego_s22_r1535}'
            # a79 # r1535
            $ soegoLogic.r1535_action()
            jump dialogues_dispose


# s23 # say4792
label soego_s23: # from 14.0
    'soego_s23{#soego_s23}'
    # soego '«Некоторые подписывают с тленными контракты, согласно которым они могут использовать их тела, как только те умрут. Возможно, тебя взяли… по недоразумению. Ты кажешься гораздо умнее, чем наши обычные зомби».{#soego_s23_1}'

    menu:
        'soego_s23_r4793{#soego_s23_r4793}': # '«Люди продают вам свои тела после смерти?»{#soego_s23_r4793}'
            # a80 # r4793
            jump soego_s24

        'soego_s23_r4794{#soego_s23_r4794}': # '«О. У меня есть другие вопросы…»{#soego_s23_r4794}'
            # a81 # r4794
            jump soego_s26

        'soego_s23_r4795{#soego_s23_r4795}': # '«У меня нет времени на это. Прощай».{#soego_s23_r4795}'
            # a82 # r4795
            jump soego_s17


# s24 # say4796
label soego_s24: # from 23.0
    'soego_s24{#soego_s24}'
    # soego '«О да. В обмен на небольшую сумму многие готовы продать свое тело, которое все равно им не понадобится, когда они достигнут Истинной Смерти».{#soego_s24_1}'

    menu:
        'soego_s24_r4797{#soego_s24_r4797}': # '«И что вы делаете с этими телами?»{#soego_s24_r4797}'
            # a83 # r4797
            jump soego_s25

        'soego_s24_r4798{#soego_s24_r4798}': # '«Понятно… Ты не против, если я задам тебе пару вопросов?»{#soego_s24_r4798}'
            # a84 # r4798
            jump soego_s25

        'soego_s24_r4799{#soego_s24_r4799}': # '«Спасибо за информацию. Прощай».{#soego_s24_r4799}'
            # a85 # r4799
            jump soego_s17


# s25 # say4800
label soego_s25: # from 24.0 24.1
    'soego_s25{#soego_s25}'
    # soego '«Оболочки совершают различные поручения по всему Моргу. Они перевозят тела, моют полы, помогают готовить тела к погребению… относительно несложные задачи. К сожалению, они не способны выполнять более сложные инструкции».{#soego_s25_1}'

    menu:
        'soego_s25_r4801{#soego_s25_r4801}': # '«Хорошо, „контрактник“ я или нет, но как я попал сюда, если я не мертв?»{#soego_s25_r4801}'
            # a86 # r4801
            jump soego_s54

        'soego_s25_r4802{#soego_s25_r4802}': # '«Понятно… Ты не против, если я задам тебе пару вопросов?»{#soego_s25_r4802}'
            # a87 # r4802
            jump soego_s26

        'soego_s25_r4803{#soego_s25_r4803}': # '«Спасибо за информацию. Прощай».{#soego_s25_r4803}'
            # a88 # r4803
            jump soego_s17


# s26 # say4804
label soego_s26: # from 12.0 23.1 25.1 27.2 28.0 29.1 31.1 32.0 33.2 34.2 35.1 36.1 37.0 58.0
    'soego_s26{#soego_s26}'
    # nr 'Соэго кивает.{#soego_s26_1}'
    # soego '«Задавай свои вопросы».{#soego_s26_2}'

    menu:
        'soego_s26_r4805{#soego_s26_r4805}' if soegoLogic.r4805_condition(): # '«Я хочу уйти. Можешь ли ты проводить меня к выходу?»{#soego_s26_r4805}'
            # a89 # r4805
            jump soego_s8

        'soego_s26_r4806{#soego_s26_r4806}' if soegoLogic.r4806_condition(): # '«Можешь ли ты помочь мне выбраться отсюда?»{#soego_s26_r4806}'
            # a90 # r4806
            jump soego_s13

        'soego_s26_r4807{#soego_s26_r4807}' if soegoLogic.r4807_condition(): # '«Тебе известно, что на втором этаже есть труп, который на самом деле — замаскированный человек?»{#soego_s26_r4807}'
            # a91 # r4807
            jump soego_s27

        'soego_s26_r4809{#soego_s26_r4809}': # '«Можно спросить… с тобой все в порядке? Ты выглядишь уставшим».{#soego_s26_r4809}'
            # a92 # r4809
            $ soegoLogic.r4809_action()
            jump soego_s31

        'soego_s26_r4810{#soego_s26_r4810}' if soegoLogic.r4810_condition(): # '«Ты ведь Соэго, верно? Я слышал, что ты немного странноват для тленного. Что ты похож на крысу».{#soego_s26_r4810}'
            # a93 # r4810
            $ soegoLogic.r4810_action()
            jump soego_s30

        'soego_s26_r4811{#soego_s26_r4811}' if soegoLogic.r4811_condition(): # '«Ты ведь Соэго, верно? Я слышал, что ты немного странноват для тленного. Что ты похож на крысу».{#soego_s26_r4811}'
            # a94 # r4811
            jump soego_s29

        'soego_s26_r4832{#soego_s26_r4832}' if soegoLogic.r4832_condition(): # '«Ты знаешь кого-нибудь по имени Фарод?»{#soego_s26_r4832}'
            # a95 # r4832
            jump soego_s33

        'soego_s26_r4833{#soego_s26_r4833}' if soegoLogic.r4833_condition(): # '«Я потерял дневник. Тебе ничего такого не попадалось?»{#soego_s26_r4833}'
            # a96 # r4833
            jump soego_s37

        'soego_s26_r4834{#soego_s26_r4834}' if soegoLogic.r4834_condition(): # '«Неважно. Мне нужно идти. Прощай».{#soego_s26_r4834}'
            # a97 # r4834
            jump dialogues_dispose

        'soego_s26_r4835{#soego_s26_r4835}' if soegoLogic.r4835_condition(): # '«Неважно. Мне нужно идти. Прощай».{#soego_s26_r4835}'
            # a98 # r4835
            jump soego_s17


# s27 # say4808
label soego_s27: # from 26.2
    'soego_s27{#soego_s27}'
    # soego '«Прошу прощения?»{#soego_s27_1}'

    menu:
        'soego_s27_r4836{#soego_s27_r4836}' if soegoLogic.r4836_condition(): # '«Наверху есть человек, замаскированный под труп. Я думаю, он шпионит за тленными».{#soego_s27_r4836}'
            # a99 # r4836
            $ soegoLogic.r4836_action()
            jump soego_s28

        'soego_s27_r4837{#soego_s27_r4837}' if soegoLogic.r4837_condition(): # '«Наверху есть человек, замаскированный под труп. Я думаю, он шпионит за тленными».{#soego_s27_r4837}'
            # a100 # r4837
            $ soegoLogic.r4837_action()
            jump soego_s28

        'soego_s27_r4838{#soego_s27_r4838}': # '«Забудь об этом. У меня есть несколько вопросов…»{#soego_s27_r4838}'
            # a101 # r4838
            jump soego_s26

        'soego_s27_r4839{#soego_s27_r4839}' if soegoLogic.r4839_condition(): # '«Неважно. Мне нужно идти. Прощай».{#soego_s27_r4839}'
            # a102 # r4839
            jump dialogues_dispose

        'soego_s27_r916{#soego_s27_r916}' if soegoLogic.r916_condition(): # '«Неважно. Мне нужно идти. Прощай».{#soego_s27_r916}'
            # a103 # r916
            jump soego_s17


# s28 # say4840
label soego_s28: # from 27.0 27.1
    'soego_s28{#soego_s28}'
    # soego '«Что? Как это могло случиться?..»{#soego_s28_1}'
    # nr 'Соэго внезапно переходит на шепот, его губы раскрываются, обнажая ряд острых зубов.{#soego_s28_2}'
    # soego '«*Анархист*».{#soego_s28_3}'
    # nr 'В его глазах вспыхивает красный огонек.{#soego_s28_4}'
    # soego '«Анархист. *Здесь*».{#soego_s28_5}'
    # nr 'Неожиданно он вспоминает о твоем присутствии и успокаивается.{#soego_s28_6}'
    # soego '«Спасибо за предупреждение. Я позабочусь, чтобы стража разобралась с этим делом».{#soego_s28_7}'

    menu:
        'soego_s28_r4852{#soego_s28_r4852}': # '«Без проблем. У меня есть еще вопросы…»{#soego_s28_r4852}'
            # a104 # r4852
            jump soego_s26

        'soego_s28_r4853{#soego_s28_r4853}' if soegoLogic.r4853_condition(): # '«Неважно. Мне нужно идти. Прощай».{#soego_s28_r4853}'
            # a105 # r4853
            jump dialogues_dispose

        'soego_s28_r4854{#soego_s28_r4854}' if soegoLogic.r4854_condition(): # '«Неважно. Мне нужно идти. Прощай».{#soego_s28_r4854}'
            # a106 # r4854
            jump soego_s17


# s29 # say4855
label soego_s29: # from 26.5
    'soego_s29{#soego_s29}'
    # nr 'Ты уже готов сказать это, но вдруг останавливаешься. Глядя на Соэго, ты чувствуешь странное покалывающее чувство… почему-то тебе кажется, что не следует ничего говорить.{#soego_s29_1}'

    menu:
        'soego_s29_r4856{#soego_s29_r4856}': # '«Я слышал о тебе кое-что странное, Соэго. Что ты похож на крысу».{#soego_s29_r4856}'
            # a107 # r4856
            jump soego_s30

        'soego_s29_r4857{#soego_s29_r4857}': # '«Э… я хотел бы у тебя кое-что спросить».{#soego_s29_r4857}'
            # a108 # r4857
            jump soego_s26

        'soego_s29_r4858{#soego_s29_r4858}' if soegoLogic.r4858_condition(): # '«Неважно. Мне нужно идти. Прощай».{#soego_s29_r4858}'
            # a109 # r4858
            jump dialogues_dispose

        'soego_s29_r4859{#soego_s29_r4859}' if soegoLogic.r4859_condition(): # '«Неважно. Мне нужно идти. Прощай».{#soego_s29_r4859}'
            # a110 # r4859
            jump soego_s17


# s30 # say4860
label soego_s30: # from 26.4 29.0
    'soego_s30{#soego_s30}'
    # nr 'На минуту Соэго в тишине изучает тебя. В его глазах вспыхивает красный огонек, и он издает легкое шипение.{#soego_s30_1}'
    # soego '«Кажется, ты злоупотребляешь нашим гостеприимством».{#soego_s30_2}'
    # nr 'Неожиданно он делает шаг назад, затем быстро хлопает в ладони три раза. В ответ во всем Морге раздается звон огромного железного колокола.{#soego_s30_3}'

    menu:
        'soego_s30_r4861{#soego_s30_r4861}': # '«Что за?.. Что ты делаешь?»{#soego_s30_r4861}'
            # a111 # r4861
            $ soegoLogic.r4861_action()
            jump dialogues_dispose

        'soego_s30_r4862{#soego_s30_r4862}': # '«Ну хорошо. Приготовься к смерти, Соэго».{#soego_s30_r4862}'
            # a112 # r4862
            $ soegoLogic.r4862_action()
            jump dialogues_dispose


# s31 # say4863
label soego_s31: # from 26.3
    'soego_s31{#soego_s31}'
    # nr 'Соэго удается слабо улыбнуться, уголки его рта слегка подрагивают.{#soego_s31_1}'
    # soego '«Я немного приболел… небольшая лихорадка, ничего страшного. Иногда из-за нее трудно… заснуть».{#soego_s31_2}'

    menu:
        'soego_s31_r4864{#soego_s31_r4864}': # '«Я могу чем-нибудь помочь?»{#soego_s31_r4864}'
            # a113 # r4864
            $ soegoLogic.r4864_action()
            jump soego_s32

        'soego_s31_r4865{#soego_s31_r4865}': # '«О. У меня есть другие вопросы…»{#soego_s31_r4865}'
            # a114 # r4865
            jump soego_s26

        'soego_s31_r4866{#soego_s31_r4866}' if soegoLogic.r4866_condition(): # '«Ясно. Что ж, мне нужно идти. Прощай».{#soego_s31_r4866}'
            # a115 # r4866
            jump dialogues_dispose

        'soego_s31_r4867{#soego_s31_r4867}' if soegoLogic.r4867_condition(): # '«Ясно. Что ж, мне нужно идти. Прощай».{#soego_s31_r4867}'
            # a116 # r4867
            jump soego_s17


# s32 # say4868
label soego_s32: # from 31.0
    'soego_s32{#soego_s32}'
    # nr 'Соэго качает головой.{#soego_s32_1}'
    # soego '«Нет-нет, спасибо за заботу… Я переживу».{#soego_s32_2}'
    # nr 'Он немного хмурится.{#soego_s32_3}'
    # soego '«Тебе нужно что-либо еще?»{#soego_s32_4}'

    menu:
        'soego_s32_r4869{#soego_s32_r4869}': # '«Да. У меня есть еще вопросы…»{#soego_s32_r4869}'
            # a117 # r4869
            jump soego_s26

        'soego_s32_r4870{#soego_s32_r4870}' if soegoLogic.r4870_condition(): # '«Нет, не хочу тебя больше беспокоить. Спасибо за информацию».{#soego_s32_r4870}'
            # a118 # r4870
            jump dialogues_dispose

        'soego_s32_r4871{#soego_s32_r4871}' if soegoLogic.r4871_condition(): # '«Нет, не хочу тебя больше беспокоить. Спасибо за информацию».{#soego_s32_r4871}'
            # a119 # r4871
            jump soego_s17


# s33 # say4872
label soego_s33: # from 26.6
    'soego_s33{#soego_s33}'
    # soego '«Фарод? Ну конечно же, я знаю его».{#soego_s33_1}'
    # nr 'Он хмурится, в его глазах появляется красный блеск.{#soego_s33_2}'
    # soego '«Отвратительный человек. Никакого уважения к мертвым, и еще меньше — к живым. Сборщик».{#soego_s33_3}'

    menu:
        'soego_s33_r4873{#soego_s33_r4873}': # '«Сборщик?»{#soego_s33_r4873}'
            # a120 # r4873
            jump soego_s34

        'soego_s33_r4874{#soego_s33_r4874}': # '«Ты знаешь, где его можно найти?»{#soego_s33_r4874}'
            # a121 # r4874
            jump soego_s36

        'soego_s33_r4875{#soego_s33_r4875}': # '«О. У меня есть другие вопросы…»{#soego_s33_r4875}'
            # a122 # r4875
            jump soego_s26

        'soego_s33_r4876{#soego_s33_r4876}' if soegoLogic.r4876_condition(): # '«Понятно. Кажется, мне пора идти».{#soego_s33_r4876}'
            # a123 # r4876
            jump dialogues_dispose

        'soego_s33_r4877{#soego_s33_r4877}' if soegoLogic.r4877_condition(): # '«Понятно. Кажется, мне пора идти».{#soego_s33_r4877}'
            # a124 # r4877
            jump soego_s17


# s34 # say4878
label soego_s34: # from 33.0 36.0
    'soego_s34{#soego_s34}'
    # soego '«Сборщики находят трупы и доставляют их сюда, в Морг. Затем мы заботимся о том, чтобы тела были похоронены надлежащим образом».{#soego_s34_1}'

    menu:
        'soego_s34_r4879{#soego_s34_r4879}' if soegoLogic.r4879_condition(): # '«А если сборщик находит тело… мое, к примеру… он может принести его сюда и продать его вам?»{#soego_s34_r4879}'
            # a125 # r4879
            jump soego_s35

        'soego_s34_r4880{#soego_s34_r4880}': # '«А этот сборщик, Фарод… ты не знаешь, где я могу найти его?»{#soego_s34_r4880}'
            # a126 # r4880
            jump soego_s36

        'soego_s34_r4881{#soego_s34_r4881}': # '«О. У меня есть другие вопросы…»{#soego_s34_r4881}'
            # a127 # r4881
            jump soego_s26

        'soego_s34_r4882{#soego_s34_r4882}' if soegoLogic.r4882_condition(): # '«Ясно. Что ж, мне нужно идти. Прощай».{#soego_s34_r4882}'
            # a128 # r4882
            jump dialogues_dispose

        'soego_s34_r4883{#soego_s34_r4883}' if soegoLogic.r4883_condition(): # '«Ясно. Что ж, мне нужно идти. Прощай».{#soego_s34_r4883}'
            # a129 # r4883
            jump soego_s17


# s35 # say4884
label soego_s35: # from 34.0
    'soego_s35{#soego_s35}'
    # soego '«Да».{#soego_s35_1}'

    menu:
        'soego_s35_r4885{#soego_s35_r4885}': # '«Хм-м. Выходит, мне крайне важно найти этого Фарода. Ты не знаешь, где я могу найти его?»{#soego_s35_r4885}'
            # a130 # r4885
            jump soego_s36

        'soego_s35_r4886{#soego_s35_r4886}': # '«О. У меня есть другие вопросы…»{#soego_s35_r4886}'
            # a131 # r4886
            jump soego_s26

        'soego_s35_r4887{#soego_s35_r4887}' if soegoLogic.r4887_condition(): # '«Спасибо за информацию. Прощай».{#soego_s35_r4887}'
            # a132 # r4887
            jump dialogues_dispose

        'soego_s35_r4888{#soego_s35_r4888}' if soegoLogic.r4888_condition(): # '«Спасибо за информацию. Прощай».{#soego_s35_r4888}'
            # a133 # r4888
            jump soego_s17


# s36 # say4889
label soego_s36: # from 33.1 34.1 35.0
    'soego_s36{#soego_s36}'
    # soego '«Я знаю, что он живет в Улье, в трущобах вокруг Морга, но точнее сказать не могу. Другие сборщики могут знать, если они соизволят говорить с тобой».{#soego_s36_1}'

    menu:
        'soego_s36_r4890{#soego_s36_r4890}': # '«Еще раз, чем занимаются сборщики?»{#soego_s36_r4890}'
            # a134 # r4890
            jump soego_s34

        'soego_s36_r4891{#soego_s36_r4891}': # '«О. У меня есть другие вопросы…»{#soego_s36_r4891}'
            # a135 # r4891
            jump soego_s26

        'soego_s36_r4892{#soego_s36_r4892}' if soegoLogic.r4892_condition(): # '«Спасибо за информацию. Прощай».{#soego_s36_r4892}'
            # a136 # r4892
            jump dialogues_dispose

        'soego_s36_r4893{#soego_s36_r4893}' if soegoLogic.r4893_condition(): # '«Спасибо за информацию. Прощай».{#soego_s36_r4893}'
            # a137 # r4893
            jump soego_s17


# s37 # say4894
label soego_s37: # from 26.7
    'soego_s37{#soego_s37}'
    # soego '«Дневник?»{#soego_s37_1}'
    # nr 'Соэго выглядит растерянным.{#soego_s37_2}'
    # soego '«Нет, мне он не попадался».{#soego_s37_3}'

    menu:
        'soego_s37_r4895{#soego_s37_r4895}': # '«Ладно, неважно. У меня есть другие вопросы…»{#soego_s37_r4895}'
            # a138 # r4895
            jump soego_s26

        'soego_s37_r4896{#soego_s37_r4896}' if soegoLogic.r4896_condition(): # '«Все равно спасибо. Прощай».{#soego_s37_r4896}'
            # a139 # r4896
            jump dialogues_dispose

        'soego_s37_r4897{#soego_s37_r4897}' if soegoLogic.r4897_condition(): # '«Все равно спасибо. Прощай».{#soego_s37_r4897}'
            # a140 # r4897
            jump soego_s17


# s38 # say4898
label soego_s38: # - # IF WEIGHT #9 /* Triggers after states #: 59 58 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") !Global("Appearance","GLOBAL",1) Global("Gate_Open","GLOBAL",0) Global("Soego","GLOBAL",0)
    'soego_s38{#soego_s38}'
    # nr 'Перед тобой сильно уставший мужчина в черной одежде. Его худощавое лицо очень бледно, похоже, он не высыпается: плечи поникли, под красными глазами огромные мешки. Он настолько погружен в раздумья, что даже не замечает тебя.{#soego_s38_1}'

    menu:
        'soego_s38_r66706{#soego_s38_r66706}' if soegoLogic.r66706_condition(): # '«Приветствую…»{#soego_s38_r66706}'
            # a141 # r66706
            $ soegoLogic.j63982_s38_r66706_action()
            $ soegoLogic.r66706_action()
            jump soego_s39

        'soego_s38_r66707{#soego_s38_r66707}' if soegoLogic.r66707_condition(): # '«Приветствую…»{#soego_s38_r66707}'
            # a142 # r66707
            $ soegoLogic.j63982_s38_r66707_action()
            $ soegoLogic.r66707_action()
            jump soego_s113

        'soego_s38_r66708{#soego_s38_r66708}': # 'Оставить его в раздумьях.{#soego_s38_r66708}'
            # a143 # r66708
            jump dialogues_dispose


# s39 # say4904
label soego_s39: # from 38.0
    $ soegoLogic.talk()
    'soego_s39_1{#soego_s39_1}'
    $ soegoLogic.set_know_soego_name()
    $ achievement_meet_soego.grant()
    'soego_s39_2{#soego_s39_2}'
    # soego '«Приветствую…»{#soego_s39_1}'
    # nr 'Человек поворачивается к тебе лицом и слегка кивает. Внезапно ты замечаешь, что его глаза не налиты кровью, а просто имеют красный оттенок.{#soego_s39_2}'
    # soego '«Я Соэго. Чем я могу…»{#soego_s39_3}'
    # nr 'Неожиданно он замечает твои шрамы, при этом уголки его рта начинают подрагивать.{#soego_s39_4}'
    # soego '«Прошу прощения, ты потерялся?»{#soego_s39_5}'

    menu:
        'soego_s39_r4905{#soego_s39_r4905}': # '«Да».{#soego_s39_r4905}'
            # a144 # r4905
            jump soego_s40

        'soego_s39_r4906{#soego_s39_r4906}': # '«Нет».{#soego_s39_r4906}'
            # a145 # r4906
            jump soego_s41

        'soego_s39_r4907{#soego_s39_r4907}': # '«Нет, я не потерялся. У меня есть несколько вопросов…»{#soego_s39_r4907}'
            # a146 # r4907
            jump soego_s41

        'soego_s39_r4908{#soego_s39_r4908}': # '«Нет. Я просто искал выход. Прощай».{#soego_s39_r4908}'
            # a147 # r4908
            jump soego_s41


# s40 # say4909
label soego_s40: # from 39.0
    'soego_s40{#soego_s40}'
    # soego '«Тогда ладно…»{#soego_s40_1}'
    # nr 'Уголки рта Соэго снова начинают подрагивать, словно в предвкушении.{#soego_s40_2}'
    # soego '«Позволь мне позвать охрану, она выпроводит тебя. Подожди минуточку».{#soego_s40_3}'
    # nr 'Кажется, вот-вот он позовет охрану.{#soego_s40_4}'

    menu:
        'soego_s40_r4910{#soego_s40_r4910}' if soegoLogic.r4910_condition(): # '«Секундочку! Пожалуйста… не надо звать охрану. Я пришел сюда на похороны, и просто заблудился в этих залах… Ты не можешь указать мне выход наружу?»{#soego_s40_r4910}'
            # a148 # r4910
            jump soego_s8

        'soego_s40_r4911{#soego_s40_r4911}': # '«Нет! Я не потерялся. Я оговорился».{#soego_s40_r4911}'
            # a149 # r4911
            jump soego_s50

        'soego_s40_r4912{#soego_s40_r4912}' if soegoLogic.r4912_condition(): # 'Свернуть ему шею до того, как он сможет позвать на помощь.{#soego_s40_r4912}'
            # a150 # r4912
            jump soego_s19

        'soego_s40_r4913{#soego_s40_r4913}' if soegoLogic.r4913_condition(): # 'Свернуть ему шею до того, как он сможет позвать на помощь.{#soego_s40_r4913}'
            # a151 # r4913
            jump soego_s22

        'soego_s40_r4914{#soego_s40_r4914}': # 'Уйти. Быстро.{#soego_s40_r4914}'
            # a152 # r4914
            jump soego_s18

        'soego_s40_r4915{#soego_s40_r4915}': # 'Подождать.{#soego_s40_r4915}'
            # a153 # r4915
            jump soego_s18


# s41 # say4916
label soego_s41: # from 39.1 39.2 39.3
    'soego_s41{#soego_s41}'
    # soego '«Не помню, чтобы я тебя впускал».{#soego_s41_1}'
    # nr 'Соэго подозрительно смотрит на тебя, его глаза горят красными факелами.{#soego_s41_2}'
    # soego '«Могу ли я поинтересоваться, что ты здесь делаешь?»{#soego_s41_3}'

    menu:
        'soego_s41_r4917{#soego_s41_r4917}' if soegoLogic.r4917_condition(): # '«Я был здесь на похоронах, отдавал дань уважения. Я уже готов уйти… вот только, кажется, я заблудился. Ты не поможешь мне найти выход?»{#soego_s41_r4917}'
            # a154 # r4917
            jump soego_s8

        'soego_s41_r4918{#soego_s41_r4918}': # '«Это тебя не касается».{#soego_s41_r4918}'
            # a155 # r4918
            jump soego_s6

        'soego_s41_r4919{#soego_s41_r4919}': # '«Я очнулся на одной из плит в вашей препараторской».{#soego_s41_r4919}'
            # a156 # r4919
            jump soego_s42

        'soego_s41_r4920{#soego_s41_r4920}': # '«Я хочу повидаться кое с кем».{#soego_s41_r4920}'
            # a157 # r4920
            jump soego_s43

        'soego_s41_r4921{#soego_s41_r4921}' if soegoLogic.r4921_condition(): # '«Я пришел сюда на похороны, но, похоже, произошла ошибка».{#soego_s41_r4921}'
            # a158 # r4921
            jump soego_s53

        'soego_s41_r4922{#soego_s41_r4922}': # 'Наклониться вперед, будто собираясь прошептать ему что-то, а затем, когда он наклоняется в ответ, свернуть ему шею.{#soego_s41_r4922}'
            # a159 # r4922
            jump soego_s51

        'soego_s41_r4923{#soego_s41_r4923}': # 'Уйти. Быстро.{#soego_s41_r4923}'
            # a160 # r4923
            jump soego_s18


# s42 # say4924
label soego_s42: # from 41.2 50.2 115.0
    'soego_s42{#soego_s42}'
    # nr 'Он выглядит удивленным.{#soego_s42_1}'
    # soego '«Ты… очнулся на одной из плит наверху?»{#soego_s42_2}'

    menu:
        'soego_s42_r4925{#soego_s42_r4925}': # '«Ой, нет. Я оговорился».{#soego_s42_r4925}'
            # a161 # r4925
            jump soego_s50

        'soego_s42_r4926{#soego_s42_r4926}': # '«Да. Я знаю, в это трудно поверить, но это правда. Я очнулся на одной из ваших плит наверху».{#soego_s42_r4926}'
            # a162 # r4926
            $ soegoLogic.r4926_action()
            jump soego_s7


# s43 # say4927
label soego_s43: # from 41.3 50.3
    'soego_s43{#soego_s43}'
    # nr 'Соэго кивает.{#soego_s43_1}'
    # soego '«С кем ты хочешь увидеться? Я буду рад тебе показать дорогу».{#soego_s43_2}'

    menu:
        'soego_s43_r4928{#soego_s43_r4928}': # '«Это не твое дело».{#soego_s43_r4928}'
            # a163 # r4928
            jump soego_s6

        'soego_s43_r4929{#soego_s43_r4929}' if soegoLogic.r4929_condition(): # '«Я хочу повидаться с Дхоллом».{#soego_s43_r4929}'
            # a164 # r4929
            jump soego_s44

        'soego_s43_r4930{#soego_s43_r4930}' if soegoLogic.r4930_condition(): # '«Я хочу повидаться с Дейонаррой».{#soego_s43_r4930}'
            # a165 # r4930
            jump soego_s47

        'soego_s43_r4931{#soego_s43_r4931}' if soegoLogic.r4931_condition(): # 'Ложь: «Э… с Аданом. Он все еще работает здесь, или?..»{#soego_s43_r4931}'
            # a166 # r4931
            $ soegoLogic.r4931_action()
            jump soego_s49

        'soego_s43_r4932{#soego_s43_r4932}' if soegoLogic.r4932_condition(): # 'Ложь: «Э… с Аданом. Он все еще работает здесь, или?..»{#soego_s43_r4932}'
            # a167 # r4932
            jump soego_s49

        'soego_s43_r4933{#soego_s43_r4933}': # '«Ой, ни с кем. Я оговорился».{#soego_s43_r4933}'
            # a168 # r4933
            jump soego_s50


# s44 # say4934
label soego_s44: # from 43.1
    'soego_s44{#soego_s44}'
    # soego '«Дхолла? Писаря Дхолла можно найти в приемной комнате на верхнем этаже».{#soego_s44_1}'
    # nr 'Уголки рта Соэго начинают подрагивать.{#soego_s44_2}'
    # soego '«Он очень занят, а здоровье его подорвано. Если у тебя к нему не срочное дело, то лучше не беспокоить его».{#soego_s44_3}'

    menu:
        'soego_s44_r4935{#soego_s44_r4935}': # '«Что не так с Дхоллом?»{#soego_s44_r4935}'
            # a169 # r4935
            jump soego_s46

        'soego_s44_r4936{#soego_s44_r4936}': # '«В приемной комнате?»{#soego_s44_r4936}'
            # a170 # r4936
            jump soego_s45

        'soego_s44_r4937{#soego_s44_r4937}': # '«Хорошо. Я не буду долго задерживать его. Прощай».{#soego_s44_r4937}'
            # a171 # r4937
            jump soego_s62


# s45 # say4938
label soego_s45: # from 44.1
    'soego_s45{#soego_s45}'
    # soego '«Да… в приемную комнату доставляются все тела из города. Их записывают, а затем подготавливают к погребению».{#soego_s45_1}'

    menu:
        'soego_s45_r4939{#soego_s45_r4939}': # '«Что не так с Дхоллом?»{#soego_s45_r4939}'
            # a172 # r4939
            jump soego_s46

        'soego_s45_r4940{#soego_s45_r4940}': # '«Спасибо за разъяснения. Я постараюсь, чтобы мой визит к Дхоллу был коротким. Прощай».{#soego_s45_r4940}'
            # a173 # r4940
            jump soego_s62


# s46 # say4941
label soego_s46: # from 44.0 45.0
    'soego_s46{#soego_s46}'
    # soego '«О, с ним ничего плохого. Дхолл…»{#soego_s46_1}'
    # nr 'Соэго клацает зубами.{#soego_s46_2}'
    # soego '«Очень *стар*. Его ревностная каталогизация мертвых довела его до ручки. Несомненно, смерть незамедлительно последует за его изнурительной болезнью».{#soego_s46_3}'

    menu:
        'soego_s46_r4942{#soego_s46_r4942}': # '«Хорошо. Я не буду долго задерживать его. Прощай».{#soego_s46_r4942}'
            # a174 # r4942
            jump soego_s62


# s47 # say4943
label soego_s47: # from 43.2 53.2
    'soego_s47{#soego_s47}'
    # soego '«Дейонарру? В северо-западном мемориальном зале погребена женщина с таким именем. Ты ее ищешь?»{#soego_s47_1}'

    menu:
        'soego_s47_r4944{#soego_s47_r4944}': # '«Да… ты можешь сказать, что с ней произошло?»{#soego_s47_r4944}'
            # a175 # r4944
            jump soego_s48

        'soego_s47_r4945{#soego_s47_r4945}': # '«Да. Мне нужно ее проведать».{#soego_s47_r4945}'
            # a176 # r4945
            jump soego_s62


# s48 # say4946
label soego_s48: # from 47.0
    'soego_s48{#soego_s48}'
    # soego '«Я не знаю, но она здесь уже достаточно долго. Ее отец может знать, что произошло с ней… он часто приходит сюда из своих апартаментов в Верхнем районе. Это он захотел поместить ее здесь в мемориальном зале».{#soego_s48_1}'

    menu:
        'soego_s48_r4947{#soego_s48_r4947}': # '«Спасибо за разъяснения. Пойду, проведаю ее».{#soego_s48_r4947}'
            # a177 # r4947
            jump soego_s62


# s49 # say4948
label soego_s49: # from 43.3 43.4 53.3 53.4
    'soego_s49{#soego_s49}'
    # soego '«Адан…»{#soego_s49_1}'
    # nr 'Глаза Соэго сужаются, красный блеск, который ты в них видел, казалось бы, усиливается.{#soego_s49_2}'
    # soego '«В этих залах Морга нет никого, живого или мертвого, носящего подобное имя».{#soego_s49_3}'
    # nr 'Его рот подергивается, и, к твоей неожиданности, он начинает принюхиваться.{#soego_s49_4}'

    menu:
        'soego_s49_r4949{#soego_s49_r4949}': # '«Э… значит, я ошибся».{#soego_s49_r4949}'
            # a178 # r4949
            jump soego_s50


# s50 # say4950
label soego_s50: # from 40.1 42.0 43.5 49.0 53.1 57.1
    'soego_s50{#soego_s50}'
    # nr 'Уголки рта Соэго снова подергиваются, а глаза сверкают.{#soego_s50_1}'
    # soego '«Тогда что ты здесь делаешь?»{#soego_s50_2}'

    menu:
        'soego_s50_r4951{#soego_s50_r4951}' if soegoLogic.r4951_condition(): # '«Я был здесь на похоронах, отдавал дань уважения. Я уже готов уйти… вот только, кажется, я заблудился. Ты не поможешь мне найти выход?»{#soego_s50_r4951}'
            # a179 # r4951
            jump soego_s8

        'soego_s50_r4952{#soego_s50_r4952}': # '«Это не твое дело».{#soego_s50_r4952}'
            # a180 # r4952
            jump soego_s6

        'soego_s50_r4953{#soego_s50_r4953}': # '«Я очнулся на одной из плит в вашей препараторской».{#soego_s50_r4953}'
            # a181 # r4953
            jump soego_s42

        'soego_s50_r4954{#soego_s50_r4954}': # '«Я хочу повидаться кое с кем».{#soego_s50_r4954}'
            # a182 # r4954
            jump soego_s43

        'soego_s50_r4955{#soego_s50_r4955}' if soegoLogic.r4955_condition(): # '«Я пришел на похороны».{#soego_s50_r4955}'
            # a183 # r4955
            jump soego_s53

        'soego_s50_r4956{#soego_s50_r4956}': # 'Наклониться вперед, будто собираясь прошептать ему что-то, а затем, когда он наклоняется в ответ, свернуть ему шею.{#soego_s50_r4956}'
            # a184 # r4956
            jump soego_s51

        'soego_s50_r5028{#soego_s50_r5028}': # 'Убежать от него.{#soego_s50_r5028}'
            # a185 # r5028
            jump soego_s18


# s51 # say4957
label soego_s51: # from 41.5 50.5 53.5
    'soego_s51{#soego_s51}'
    # nr 'Соэго хмурится, когда ты наклоняешься вперед. Ты замечаешь, что он что-то вынюхивает, что-то проверяя. Неожиданно его глаза сужаются. Похоже, он готов позвать стражу.{#soego_s51_1}'

    menu:
        'soego_s51_r4958{#soego_s51_r4958}' if soegoLogic.r4958_condition(): # 'Свернуть ему шею до того, как он сможет позвать на помощь.{#soego_s51_r4958}'
            # a186 # r4958
            jump soego_s19

        'soego_s51_r4959{#soego_s51_r4959}' if soegoLogic.r4959_condition(): # 'Свернуть ему шею до того, как он сможет позвать на помощь.{#soego_s51_r4959}'
            # a187 # r4959
            jump soego_s52


# s52 # say4960
label soego_s52: # from 51.1
    'soego_s52{#soego_s52}'
    # nr 'До того, как ты смог дотянуться до Соэго, он отскакивает назад. В его глазах вспыхивает красный огонек, он скалит зубы. Шипя, он быстро хлопает в ладони три раза. В ответ во всем Морге раздается звон огромного железного колокола.{#soego_s52_1}'

    menu:
        'soego_s52_r4961{#soego_s52_r4961}': # '«Ну хорошо…»{#soego_s52_r4961}'
            # a188 # r4961
            $ soegoLogic.r4961_action()
            jump dialogues_dispose


# s53 # say4962
label soego_s53: # from 41.4 50.4
    'soego_s53{#soego_s53}'
    # soego '«Кого хоронили? Возможно, служба проводится в другом месте Морга».{#soego_s53_1}'

    menu:
        'soego_s53_r4963{#soego_s53_r4963}': # '«Ты не понял… хоронили МЕНЯ».{#soego_s53_r4963}'
            # a189 # r4963
            jump soego_s57

        'soego_s53_r4964{#soego_s53_r4964}': # '«Прошу прощения… Я оговорился. Мне неизвестно имя усопшего».{#soego_s53_r4964}'
            # a190 # r4964
            jump soego_s50

        'soego_s53_r4965{#soego_s53_r4965}' if soegoLogic.r4965_condition(): # '«Ее зовут Дейонарра».{#soego_s53_r4965}'
            # a191 # r4965
            jump soego_s47

        'soego_s53_r4967{#soego_s53_r4967}' if soegoLogic.r4967_condition(): # 'Ложь: «Его зовут… э, Адан».{#soego_s53_r4967}'
            # a192 # r4967
            $ soegoLogic.r4967_action()
            jump soego_s49

        'soego_s53_r4968{#soego_s53_r4968}' if soegoLogic.r4968_condition(): # 'Ложь: «Его зовут… э, Адан».{#soego_s53_r4968}'
            # a193 # r4968
            jump soego_s49

        'soego_s53_r4969{#soego_s53_r4969}': # 'Наклониться вперед, будто собираясь прошептать ему что-то, а затем свернуть ему шею.{#soego_s53_r4969}'
            # a194 # r4969
            jump soego_s51

        'soego_s53_r4970{#soego_s53_r4970}': # 'Убежать от него.{#soego_s53_r4970}'
            # a195 # r4970
            jump soego_s18


# s54 # say4966
label soego_s54: # from 7.0 25.0
    'soego_s54{#soego_s54}'
    # soego '«Ну…»{#soego_s54_1}'
    # nr 'Соэго отводит глаза в сторону. Кажется, он смущен.{#soego_s54_2}'
    # soego '«Кажется, произошла какая-то ошибка. Или тебя принесли твои кровные родственники, или тленные, или…»{#soego_s54_3}'
    # nr 'Соэго неожиданно умолкает, как будто ему в голову пришла неприятная мысль.{#soego_s54_4}'
    # soego '«Или один из *сборщиков*».{#soego_s54_5}'

    menu:
        'soego_s54_r4971{#soego_s54_r4971}': # '«Сборщиков?»{#soego_s54_r4971}'
            # a196 # r4971
            jump soego_s55


# s55 # say4972
label soego_s55: # from 54.0
    'soego_s55{#soego_s55}'
    # soego '«Да, сборщиков… банды собирателей, которые приносят нам мертвые тела. Они могли решить, что ты мертв».{#soego_s55_1}'
    # nr 'Соэго хрипит, его глаза приобретают блеск.{#soego_s55_2}'
    # soego '«Они были так ослеплены медью, что не позаботились проверить тело перед тем, как доставить тебя сюда».{#soego_s55_3}'
    # nr 'Соэго изучает тебя.{#soego_s55_4}'
    # soego '«Тебе несказанно повезло, что ты выжил… иначе ты мог достичь Истинной Смерти раньше положенного срока».{#soego_s55_5}'

    menu:
        'soego_s55_r4973{#soego_s55_r4973}': # '«Значит, произошла ошибка… Я хочу уйти отсюда. Немедленно».{#soego_s55_r4973}'
            # a197 # r4973
            jump soego_s56


# s56 # say4974
label soego_s56: # from 55.0 59.1
    'soego_s56{#soego_s56}'
    # nr 'Соэго кивает, уголки его рта начинают подрагивать.{#soego_s56_1}'
    # soego '«Ну… ладно, ладно. Позволь мне открыть главные ворота».{#soego_s56_2}'

    menu:
        'soego_s56_r4975{#soego_s56_r4975}' if soegoLogic.r4975_condition(): # '«Хорошо».{#soego_s56_r4975}'
            # a198 # r4975
            $ soegoLogic.r4975_action()
            jump dialogues_dispose

        'soego_s56_r4976{#soego_s56_r4976}' if soegoLogic.r4976_condition(): # '«Хорошо».{#soego_s56_r4976}'
            # a199 # r4976
            jump soego_s9


# s57 # say4977
label soego_s57: # from 53.0
    'soego_s57{#soego_s57}'
    # soego '«Тебя?»{#soego_s57_1}'

    menu:
        'soego_s57_r4978{#soego_s57_r4978}': # '«Да, *меня*. Я пробудился на одной из ваших плит наверху».{#soego_s57_r4978}'
            # a200 # r4978
            jump soego_s7

        'soego_s57_r4979{#soego_s57_r4979}': # '«Прошу прощения… Я ошибся».{#soego_s57_r4979}'
            # a201 # r4979
            jump soego_s50


# s58 # say4980
label soego_s58: # - # IF WEIGHT #6 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Gate_Open","GLOBAL",1)
    $ soegoLogic.talk()
    'soego_s58{#soego_s58}'
    # nr 'При твоем приближении Соэго вынюхивает воздух и поднимает взгляд. Увидев тебя, он хмурится.{#soego_s58_1}'
    # soego '«Я уже открыл для тебя ворота. Почему ты все еще здесь?»{#soego_s58_2}'

    menu:
        'soego_s58_r4981{#soego_s58_r4981}': # '«Перед тем, как уйти, я хочу задать несколько вопросов».{#soego_s58_r4981}'
            # a202 # r4981
            jump soego_s26

        'soego_s58_r4982{#soego_s58_r4982}': # '«Я как раз направляюсь к воротам. Прощай».{#soego_s58_r4982}'
            # a203 # r4982
            jump dialogues_dispose


# s59 # say4983
label soego_s59: # - # IF WEIGHT #7 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Soego","GLOBAL",1) Global("Gate_Open","GLOBAL",0)
    $ soegoLogic.talk()
    'soego_s59{#soego_s59}'
    # nr 'При твоем приближении Соэго вынюхивает воздух и поднимает взгляд. Увидев тебя, он слегка кивает.{#soego_s59_1}'
    # soego '«Ты нашел то, что искал?»{#soego_s59_2}'

    menu:
        'soego_s59_r4984{#soego_s59_r4984}' if soegoLogic.r4984_condition(): # '«Да, спасибо. Прошу прощения, я, кажется, заблудился в этих залах… Ты не поможешь мне найти выход?»{#soego_s59_r4984}'
            # a204 # r4984
            jump soego_s60

        'soego_s59_r4985{#soego_s59_r4985}' if soegoLogic.r4985_condition(): # '«Да. Мне пора идти. Ты можешь указать, где выход?»{#soego_s59_r4985}'
            # a205 # r4985
            jump soego_s56

        'soego_s59_r4986{#soego_s59_r4986}': # '«Да, я как раз направляюсь к воротам. Прощай».{#soego_s59_r4986}'
            # a206 # r4986
            jump dialogues_dispose


# s60 # say4987
label soego_s60: # from 59.0
    'soego_s60{#soego_s60}'
    # nr 'Соэго кивает, уголки его рта немого подрагивают.{#soego_s60_1}'
    # soego '«Ну почему же… конечно. Эти залы *могут* запутать посетителей. Позволь мне открыть для тебя ворота».{#soego_s60_2}'

    menu:
        'soego_s60_r4988{#soego_s60_r4988}' if soegoLogic.r4988_condition(): # '«Спасибо».{#soego_s60_r4988}'
            # a207 # r4988
            $ soegoLogic.r4988_action()
            jump dialogues_dispose

        'soego_s60_r4989{#soego_s60_r4989}' if soegoLogic.r4989_condition(): # '«Спасибо».{#soego_s60_r4989}'
            # a208 # r4989
            jump soego_s9


# s61 # say4990
label soego_s61: # from 13.2
    'soego_s61{#soego_s61}'
    # soego '«Очень странно»{#soego_s61_1}'
    # nr 'В глазах Соэго вспыхивает красный огонек, уголки рта начинают подрагивать, будто в предвкушении.{#soego_s61_2}'
    # soego '«Может…»{#soego_s61_3}'
    # nr 'Он широко ухмыляется, показывая ряд острых грязных зубов.{#soego_s61_4}'
    # soego '«Может, мне стоит позвать охрану? Да… да, пожалуй, я так и сделаю».{#soego_s61_5}'

    menu:
        'soego_s61_r4991{#soego_s61_r4991}' if soegoLogic.r4991_condition(): # '«Постой! Я потерялся… Я просто заблудился в этих залах и теперь не могу найти выход. Ты можешь мне помочь?»{#soego_s61_r4991}'
            # a209 # r4991
            jump soego_s8

        'soego_s61_r4992{#soego_s61_r4992}' if soegoLogic.r4992_condition(): # '«Стой! Не надо звать стражу! Я просто хочу выбраться отсюда… ты поможешь мне?»{#soego_s61_r4992}'
            # a210 # r4992
            jump soego_s13

        'soego_s61_r4993{#soego_s61_r4993}' if soegoLogic.r4993_condition(): # 'Свернуть ему шею до того, как он сможет позвать на помощь.{#soego_s61_r4993}'
            # a211 # r4993
            jump soego_s19

        'soego_s61_r4994{#soego_s61_r4994}' if soegoLogic.r4994_condition(): # 'Свернуть ему шею до того, как он сможет позвать на помощь.{#soego_s61_r4994}'
            # a212 # r4994
            jump soego_s22

        'soego_s61_r4995{#soego_s61_r4995}': # '«Давай, зови их. Буду рад с ними встретиться».{#soego_s61_r4995}'
            # a213 # r4995
            jump soego_s18


# s62 # say4996
label soego_s62: # from 44.2 45.1 46.0 47.1 48.0
    'soego_s62{#soego_s62}'
    # nr 'Соэго кивает… но его рот снова дергается. Похоже, он этого даже не замечает.{#soego_s62_1}'
    # soego '«Возвращайся, когда воздашь все почести, и я открою для тебя главные ворота. Уже пробило девять ударов — закончи свои дела побыстрее».{#soego_s62_2}'

    menu:
        'soego_s62_r4997{#soego_s62_r4997}': # '«Пожалуй, отложу это до следующего раза. Ты мог бы меня отсюда выпустить?»{#soego_s62_r4997}'
            # a214 # r4997
            jump soego_s8

        'soego_s62_r4998{#soego_s62_r4998}': # '«Спасибо. Я скоро вернусь».{#soego_s62_r4998}'
            # a215 # r4998
            jump dialogues_dispose


# s63 # say21653
label soego_s63: # - # IF WEIGHT #4 /* Triggers after states #: 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR1500") !Global("CR_Vic","GLOBAL",1)
    $ soegoLogic.talk()
    'soego_s63{#soego_s63}'
    # soego '«А, еще один из живущих. Большинство из тех, кто заходит так глубоко в катакомбы, убивают упыри. Тебе повезло».{#soego_s63_1}'

    menu:
        'soego_s63_r21655{#soego_s63_r21655}' if soegoLogic.r21655_condition(): # '«Ты Соэго, из Морга. Что ты здесь делаешь?»{#soego_s63_r21655}'
            # a216 # r21655
            $ soegoLogic.r21655_action()
            jump soego_s72

        'soego_s63_r21656{#soego_s63_r21656}' if soegoLogic.r21656_condition(): # '«Кто ты?»{#soego_s63_r21656}'
            # a217 # r21656
            $ soegoLogic.r21656_action()
            jump soego_s64

        'soego_s63_r21657{#soego_s63_r21657}' if soegoLogic.r21657_condition(): # '«Где я?»{#soego_s63_r21657}'
            # a218 # r21657
            $ soegoLogic.r21657_action()
            jump soego_s77

        'soego_s63_r21658{#soego_s63_r21658}' if soegoLogic.r21658_condition(): # '«Почему из меня сделали заключенного?»{#soego_s63_r21658}'
            # a219 # r21658
            $ soegoLogic.r21658_action()
            jump soego_s78

        'soego_s63_r21660{#soego_s63_r21660}' if soegoLogic.r21660_condition(): # '«Возможно. Прощай».{#soego_s63_r21660}'
            # a220 # r21660
            $ soegoLogic.r21660_action()
            jump soego_s71


# s64 # say21661
label soego_s64: # from 63.1 77.0 78.0
    'soego_s64{#soego_s64}'
    # soego '«Я Соэго, фрактотум тленных. Я занимаюсь здесь миссионерской деятельностью»{#soego_s64_1}'
    # nr ', — он делает полупоклон.{#soego_s64_2}'

    menu:
        'soego_s64_r21662{#soego_s64_r21662}': # '«Миссионерской?»{#soego_s64_r21662}'
            # a221 # r21662
            jump soego_s65

        'soego_s64_r21663{#soego_s64_r21663}' if soegoLogic.r21663_condition(): # '«Что здесь делают тленные?»{#soego_s64_r21663}'
            # a222 # r21663
            jump soego_s66

        'soego_s64_r64595{#soego_s64_r64595}': # '«Где я?»{#soego_s64_r64595}'
            # a223 # r64595
            jump soego_s77

        'soego_s64_r64596{#soego_s64_r64596}': # '«Почему из меня сделали заключенного?»{#soego_s64_r64596}'
            # a224 # r64596
            jump soego_s78

        'soego_s64_r21665{#soego_s64_r21665}': # '«Здравствуй и прощай».{#soego_s64_r21665}'
            # a225 # r21665
            jump soego_s71


# s65 # say21666
label soego_s65: # from 64.0 72.2 73.2 74.0 101.3 104.1
    'soego_s65{#soego_s65}'
    # soego '«Да, я пришел в эти катакомбы, когда услышал, что здесь бродит *беспокойная* нежить. Надеюсь, я смогу спасти их».{#soego_s65_1}'

    menu:
        'soego_s65_r21667{#soego_s65_r21667}': # '«Спасти?»{#soego_s65_r21667}'
            # a226 # r21667
            jump soego_s67

        'soego_s65_r64597{#soego_s65_r64597}': # '«Где я?»{#soego_s65_r64597}'
            # a227 # r64597
            jump soego_s77

        'soego_s65_r64599{#soego_s65_r64599}': # '«Почему из меня сделали заключенного?»{#soego_s65_r64599}'
            # a228 # r64599
            jump soego_s78

        'soego_s65_r21669{#soego_s65_r21669}': # '«Это все, что я хотел узнать. Прощай».{#soego_s65_r21669}'
            # a229 # r21669
            jump soego_s71


# s66 # say21670
label soego_s66: # from 64.1 72.3 73.3 74.1 101.4 104.2 109.2
    'soego_s66{#soego_s66}'
    # soego '«Я здесь один. Я пришел в эти катакомбы, когда услышал, что здесь бродит *беспокойная* нежить. Надеюсь, я смогу спасти их».{#soego_s66_1}'

    menu:
        'soego_s66_r21671{#soego_s66_r21671}': # '«Спасти?»{#soego_s66_r21671}'
            # a230 # r21671
            jump soego_s67

        'soego_s66_r64600{#soego_s66_r64600}': # '«Где я?»{#soego_s66_r64600}'
            # a231 # r64600
            jump soego_s77

        'soego_s66_r64601{#soego_s66_r64601}': # '«Почему из меня сделали заключенного?»{#soego_s66_r64601}'
            # a232 # r64601
            jump soego_s78

        'soego_s66_r21673{#soego_s66_r21673}': # '«Это все, что я хотел узнать. Прощай».{#soego_s66_r21673}'
            # a233 # r21673
            jump soego_s71


# s67 # say21674
label soego_s67: # from 65.0 66.0
    'soego_s67{#soego_s67}'
    # soego '«Да, чувства связывают их с этой ложной жизнью. Я надеюсь убедить их забыть свои чувства, покинуть эту ложную жизнь и достичь Истинной Смерти».{#soego_s67_1}'

    menu:
        'soego_s67_r21675{#soego_s67_r21675}': # '«Ложную жизнь?»{#soego_s67_r21675}'
            # a234 # r21675
            jump soego_s68

        'soego_s67_r21676{#soego_s67_r21676}': # '«Истинной Смерти?»{#soego_s67_r21676}'
            # a235 # r21676
            jump soego_s69

        'soego_s67_r21767{#soego_s67_r21767}': # '«Ты хочешь, чтобы они умерли?»{#soego_s67_r21767}'
            # a236 # r21767
            jump soego_s70

        'soego_s67_r64602{#soego_s67_r64602}': # '«Где я?»{#soego_s67_r64602}'
            # a237 # r64602
            jump soego_s77

        'soego_s67_r64603{#soego_s67_r64603}': # '«Почему из меня сделали заключенного?»{#soego_s67_r64603}'
            # a238 # r64603
            jump soego_s78

        'soego_s67_r21770{#soego_s67_r21770}': # '«Это все, что я хотел узнать. Прощай».{#soego_s67_r21770}'
            # a239 # r21770
            jump soego_s71


# s68 # say21771
label soego_s68: # from 67.0 69.0 70.0
    'soego_s68{#soego_s68}'
    # soego '«Эти… мертвецы… они так близки к Истинной Смерти… но они все еще цепляются за эту жизнь. Ложную жизнь, которая является ложью существования на этом плане».{#soego_s68_1}'

    menu:
        'soego_s68_r21772{#soego_s68_r21772}': # '«Истинной Смерти?»{#soego_s68_r21772}'
            # a240 # r21772
            jump soego_s69

        'soego_s68_r21774{#soego_s68_r21774}': # '«Ты хочешь, чтобы они умерли?»{#soego_s68_r21774}'
            # a241 # r21774
            jump soego_s70

        'soego_s68_r64604{#soego_s68_r64604}': # '«Где я?»{#soego_s68_r64604}'
            # a242 # r64604
            jump soego_s77

        'soego_s68_r64605{#soego_s68_r64605}': # '«Почему из меня сделали заключенного?»{#soego_s68_r64605}'
            # a243 # r64605
            jump soego_s78

        'soego_s68_r21776{#soego_s68_r21776}': # '«Это все, что я хотел узнать. Прощай».{#soego_s68_r21776}'
            # a244 # r21776
            jump soego_s71


# s69 # say21777
label soego_s69: # from 67.1 68.0 70.1
    'soego_s69{#soego_s69}'
    # soego '«Полное отсутствие чувств, Истинная Смерть — это истинная жизнь за пределами тени этого существования. Это место, которого должны достичь все эти мертвецы, чтобы стать свободными».{#soego_s69_1}'

    menu:
        'soego_s69_r21779{#soego_s69_r21779}': # '«А что это за „ложная жизнь“, про которую ты говорил?»{#soego_s69_r21779}'
            # a245 # r21779
            jump soego_s68

        'soego_s69_r21780{#soego_s69_r21780}': # '«Ты хочешь, чтобы они умерли?»{#soego_s69_r21780}'
            # a246 # r21780
            jump soego_s70

        'soego_s69_r64606{#soego_s69_r64606}': # '«Где я?»{#soego_s69_r64606}'
            # a247 # r64606
            jump soego_s77

        'soego_s69_r64607{#soego_s69_r64607}': # '«Почему из меня сделали заключенного?»{#soego_s69_r64607}'
            # a248 # r64607
            jump soego_s78

        'soego_s69_r21784{#soego_s69_r21784}': # '«Это все, что я хотел узнать. Прощай».{#soego_s69_r21784}'
            # a249 # r21784
            jump soego_s71


# s70 # say21786
label soego_s70: # from 67.2 68.1 69.1
    'soego_s70{#soego_s70}'
    # soego '«Я хочу, чтобы они переступили пределы этого плана бытия и освободились от чувств. Это спасет их».{#soego_s70_1}'

    menu:
        'soego_s70_r21788{#soego_s70_r21788}': # '«А что это за „ложная жизнь“, про которую ты говорил?»{#soego_s70_r21788}'
            # a250 # r21788
            jump soego_s68

        'soego_s70_r21790{#soego_s70_r21790}': # '«Ты что-то говорил об „Истинной Смерти“»?{#soego_s70_r21790}'
            # a251 # r21790
            jump soego_s69

        'soego_s70_r64608{#soego_s70_r64608}': # '«Где я?»{#soego_s70_r64608}'
            # a252 # r64608
            jump soego_s77

        'soego_s70_r64609{#soego_s70_r64609}': # '«Почему из меня сделали заключенного?»{#soego_s70_r64609}'
            # a253 # r64609
            jump soego_s78

        'soego_s70_r21794{#soego_s70_r21794}': # '«Это все, что я хотел узнать. Прощай».{#soego_s70_r21794}'
            # a254 # r21794
            jump soego_s71


# s71 # say21799
label soego_s71: # from 63.4 64.4 65.3 66.3 67.5 68.4 69.4 70.4 72.6 73.6 74.4 77.2 78.2 79.5 80.1 81.0 101.5 104.3 109.5 110.3 112.1
    'soego_s71{#soego_s71}'
    # soego '«Подожди минуту. Не нападай на здешнюю нежить: если ты не будешь их беспокоить, они не причинят тебе вреда. Будешь враждебно к ним относиться, и они начнут защищаться… а их очень много. И еще: если тебе нужно отдохнуть, ты можешь приходить сюда».{#soego_s71_1}'

    menu:
        'soego_s71_r21800{#soego_s71_r21800}' if soegoLogic.r21800_condition(): # '«Погоди… а сейчас можно отдохнуть?»{#soego_s71_r21800}'
            # a255 # r21800
            $ soegoLogic.j21805_s71_r21800_action()
            jump soego_s84

        'soego_s71_r64569{#soego_s71_r64569}' if soegoLogic.r64569_condition(): # '«Погоди… а сейчас можно отдохнуть?»{#soego_s71_r64569}'
            # a256 # r64569
            $ soegoLogic.j21805_s71_r64569_action()
            jump soego_s84

        'soego_s71_r64570{#soego_s71_r64570}': # 'Уйти.{#soego_s71_r64570}'
            # a257 # r64570
            $ soegoLogic.j21805_s71_r64570_action()
            jump dialogues_dispose


# s72 # say21806
label soego_s72: # from 63.0
    'soego_s72{#soego_s72}'
    # soego '«Память тебе не изменяет. Я больше не работаю в Морге… теперь я занимаюсь здесь миссионерской деятельностью».{#soego_s72_1}'

    menu:
        'soego_s72_r64547{#soego_s72_r64547}' if soegoLogic.r64547_condition(): # '«Но я думал, что сломал тебе шею…»{#soego_s72_r64547}'
            # a258 # r64547
            jump soego_s73

        'soego_s72_r21808{#soego_s72_r21808}' if soegoLogic.r21808_condition(): # '«Но я думал, что *убил* тебя…»{#soego_s72_r21808}'
            # a259 # r21808
            jump soego_s73

        'soego_s72_r21809{#soego_s72_r21809}': # '«Миссионерской?»{#soego_s72_r21809}'
            # a260 # r21809
            jump soego_s65

        'soego_s72_r21811{#soego_s72_r21811}' if soegoLogic.r21811_condition(): # '«Что здесь делают тленные?»{#soego_s72_r21811}'
            # a261 # r21811
            jump soego_s66

        'soego_s72_r64610{#soego_s72_r64610}': # '«Где я?»{#soego_s72_r64610}'
            # a262 # r64610
            jump soego_s77

        'soego_s72_r64611{#soego_s72_r64611}': # '«Почему из меня сделали заключенного?»{#soego_s72_r64611}'
            # a263 # r64611
            jump soego_s78

        'soego_s72_r21813{#soego_s72_r21813}': # '«Это все, что я хотел узнать. Прощай».{#soego_s72_r21813}'
            # a264 # r21813
            jump soego_s71


# s73 # say21814
label soego_s73: # from 72.0 72.1 109.0 109.1
    'soego_s73{#soego_s73}'
    # soego '«Нанесенное тобой увечье было несмертельным. Я быстро восстановился… и понял, что хочу быть подальше от Морга».{#soego_s73_1}'

    menu:
        'soego_s73_r21815{#soego_s73_r21815}' if soegoLogic.r21815_condition(): # '«Соэго, я свернул тебе шею… разве это не смертельно?»{#soego_s73_r21815}'
            # a265 # r21815
            jump soego_s101

        'soego_s73_r21816{#soego_s73_r21816}': # '«Ты не сердишься?»{#soego_s73_r21816}'
            # a266 # r21816
            jump soego_s74

        'soego_s73_r21817{#soego_s73_r21817}': # '«Хм… Ты говорил, что ты миссионер?»{#soego_s73_r21817}'
            # a267 # r21817
            jump soego_s65

        'soego_s73_r21818{#soego_s73_r21818}' if soegoLogic.r21818_condition(): # '«Тогда ладно. Что здесь делают тленные?»{#soego_s73_r21818}'
            # a268 # r21818
            jump soego_s66

        'soego_s73_r64612{#soego_s73_r64612}': # '«Ладно… Так где же я?»{#soego_s73_r64612}'
            # a269 # r64612
            jump soego_s77

        'soego_s73_r64613{#soego_s73_r64613}': # '«Понятно… Почему из меня сделали заключенного?»{#soego_s73_r64613}'
            # a270 # r64613
            jump soego_s78

        'soego_s73_r21820{#soego_s73_r21820}': # '«Забудь; это все, что я хотел узнать. Farewell».{#soego_s73_r21820}'
            # a271 # r21820
            jump soego_s71


# s74 # say21821
label soego_s74: # from 73.1 101.2 104.0
    'soego_s74{#soego_s74}'
    # soego '«Нет… а должен? Я был немного расстроен, я не собирался уходить оттуда. Однако тебе все равно не стоит возвращаться в Морг: немногие знакомые мне фрактотумы будут рады повстречать тебя».{#soego_s74_1}'

    menu:
        'soego_s74_r64614{#soego_s74_r64614}': # '«Ты говорил, что ты миссионер?»{#soego_s74_r64614}'
            # a272 # r64614
            jump soego_s65

        'soego_s74_r21823{#soego_s74_r21823}' if soegoLogic.r21823_condition(): # '«Что здесь делают тленные?»{#soego_s74_r21823}'
            # a273 # r21823
            jump soego_s66

        'soego_s74_r64615{#soego_s74_r64615}': # '«Где я?»{#soego_s74_r64615}'
            # a274 # r64615
            jump soego_s77

        'soego_s74_r64616{#soego_s74_r64616}': # '«Почему из меня сделали заключенного?»{#soego_s74_r64616}'
            # a275 # r64616
            jump soego_s78

        'soego_s74_r21825{#soego_s74_r21825}': # '«Это все, что я хотел узнать. Прощай».{#soego_s74_r21825}'
            # a276 # r21825
            jump soego_s71


# s75 # say21716
label soego_s75: # -
    'soego_s75{#soego_s75}'
    # nr 'Null node.{#soego_s75_1}'

    jump dialogues_dispose


# s76 # say21832
label soego_s76: # -
    'soego_s76{#soego_s76}'
    # nr 'Null node.{#soego_s76_1}'

    jump dialogues_dispose


# s77 # say21837
label soego_s77: # from 63.2 64.2 65.1 66.1 67.3 68.2 69.2 70.2 72.4 73.4 74.2 78.1 109.3
    'soego_s77{#soego_s77}'
    # soego '«Ты в катакомбах Мертвых Народов. Сюда тебя привела стража».{#soego_s77_1}'

    menu:
        'soego_s77_r21840{#soego_s77_r21840}': # '«А кто ты?»{#soego_s77_r21840}'
            # a277 # r21840
            jump soego_s64

        'soego_s77_r21841{#soego_s77_r21841}': # '«Почему из меня сделали заключенного?»{#soego_s77_r21841}'
            # a278 # r21841
            jump soego_s78

        'soego_s77_r21843{#soego_s77_r21843}': # '«Это все, что я хотел узнать. Прощай».{#soego_s77_r21843}'
            # a279 # r21843
            jump soego_s71


# s78 # say21844
label soego_s78: # from 63.3 64.3 65.2 66.2 67.4 68.3 69.3 70.3 72.5 73.5 74.3 77.1 109.4
    'soego_s78{#soego_s78}'
    # soego '«Не знаю. Поспрашивай здешних „жителей“».{#soego_s78_1}'

    menu:
        'soego_s78_r21847{#soego_s78_r21847}': # '«А кто ты?»{#soego_s78_r21847}'
            # a280 # r21847
            jump soego_s64

        'soego_s78_r21848{#soego_s78_r21848}': # '«Где я?»{#soego_s78_r21848}'
            # a281 # r21848
            jump soego_s77

        'soego_s78_r21850{#soego_s78_r21850}': # '«Возможно. Прощай».{#soego_s78_r21850}'
            # a282 # r21850
            jump soego_s71


# s79 # say21851
label soego_s79: # - # IF WEIGHT #2 /* Triggers after states #: 82 95 even though they appear after this state */ ~  CreatureInArea("AR1500") Global("CR_Vic","GLOBAL",1)
    $ soegoLogic.talk()
    'soego_s79{#soego_s79}'
    # soego '«О, к нам подоспела подмога! Меня, как агента Многоединого, предупредили о твоем приходе. Нам нужно, чтобы ты попытался пробраться в тронный зал Безмолвного Короля и убил его. Сделай это, и Многоединый вознаградит тебя».{#soego_s79_1}'

    menu:
        'soego_s79_r66181{#soego_s79_r66181}' if soegoLogic.r66181_condition(): # '«Соэго… Эморик хотел знать, где ты».{#soego_s79_r66181}'
            # a283 # r66181
            $ soegoLogic.r66181_action()
            jump soego_s110

        'soego_s79_r21852{#soego_s79_r21852}' if soegoLogic.r21852_condition(): # '«Погоди, ты Соэго? Эморик искал тебя».{#soego_s79_r21852}'
            # a284 # r21852
            $ soegoLogic.r21852_action()
            jump soego_s110

        'soego_s79_r64623{#soego_s79_r64623}' if soegoLogic.r64623_condition(): # '«Постой… разве я не сломал тебе шею в Морге?»{#soego_s79_r64623}'
            # a285 # r64623
            $ soegoLogic.r64623_action()
            jump soego_s112

        'soego_s79_r64624{#soego_s79_r64624}' if soegoLogic.r64624_condition(): # '«Постой… Я думал, что *убил* тебя в Морге…»{#soego_s79_r64624}'
            # a286 # r64624
            $ soegoLogic.r64624_action()
            jump soego_s112

        'soego_s79_r21853{#soego_s79_r21853}' if soegoLogic.r21853_condition(): # '«Как мне добраться до Безмолвного Короля?»{#soego_s79_r21853}'
            # a287 # r21853
            $ soegoLogic.r21853_action()
            jump soego_s80

        'soego_s79_r21854{#soego_s79_r21854}' if soegoLogic.r21854_condition(): # '«Понятно. Тогда прощай».{#soego_s79_r21854}'
            # a288 # r21854
            $ soegoLogic.r21854_action()
            jump soego_s71


# s80 # say21858
label soego_s80: # from 79.4 110.2 112.0
    'soego_s80{#soego_s80}'
    # soego '«Не знаю… Я здесь уже много времени, но так и не смог найти способ попасть в его тронный зал. Может быть, тебе повезет больше, без той ненависти и фанатизма, которые направлены на меня».{#soego_s80_1}'

    menu:
        'soego_s80_r21860{#soego_s80_r21860}': # '«Ненависти и фанатизма?»{#soego_s80_r21860}'
            # a289 # r21860
            jump soego_s81

        'soego_s80_r21862{#soego_s80_r21862}': # '«Понятно. Тогда прощай».{#soego_s80_r21862}'
            # a290 # r21862
            jump soego_s71


# s81 # say21864
label soego_s81: # from 80.0
    'soego_s81{#soego_s81}'
    # soego '«Взгляды моей фракции популярны, но не все их принимают. Многие важные персоны этой цивилизации не питают к ним теплых чувств».{#soego_s81_1}'

    menu:
        'soego_s81_r21870{#soego_s81_r21870}': # '«Понятно. Тогда прощай».{#soego_s81_r21870}'
            # a291 # r21870
            jump soego_s71


# s82 # say21913
label soego_s82: # - # IF WEIGHT #1 /* Triggers after states #: 95 even though they appear after this state */ ~  CreatureInArea("AR1500") Global("Met_Soego2","GLOBAL",1)
    $ soegoLogic.talk()
    'soego_s82{#soego_s82}'
    # soego '«А, рад встрече».{#soego_s82_1}'

    menu:
        'soego_s82_r24206{#soego_s82_r24206}' if soegoLogic.r24206_condition(): # '«Безмолвный Король мертв, и уже давно. Нет *никакого* Безмолвного Короля».{#soego_s82_r24206}'
            # a292 # r24206
            $ soegoLogic.r24206_action()
            jump soego_s94

        'soego_s82_r21915{#soego_s82_r21915}' if soegoLogic.r21915_condition(): # '«Безмолвный Король мертв, и уже давно. Нет *никакого* Безмолвного Короля».{#soego_s82_r21915}'
            # a293 # r21915
            $ soegoLogic.r21915_action()
            jump soego_s94

        'soego_s82_r21914{#soego_s82_r21914}' if soegoLogic.r21914_condition(): # '«Ты Соэго? Эморик тебя искал».{#soego_s82_r21914}'
            # a294 # r21914
            $ soegoLogic.r21914_action()
            jump soego_s109

        'soego_s82_r21916{#soego_s82_r21916}' if soegoLogic.r21916_condition(): # '«Я был в твоей комнате и видел твой дневник».{#soego_s82_r21916}'
            # a295 # r21916
            $ soegoLogic.r21916_action()
            jump soego_s100

        'soego_s82_r21917{#soego_s82_r21917}' if soegoLogic.r21917_condition(): # '«В одном из коридоров неподалеку я встретил скелета, который находится на грани принятия Истинной Смерти».{#soego_s82_r21917}'
            # a296 # r21917
            $ soegoLogic.r21917_action()
            jump soego_s97

        'soego_s82_r21920{#soego_s82_r21920}' if soegoLogic.r21920_condition(): # '«Мне нужно отдохнуть».{#soego_s82_r21920}'
            # a297 # r21920
            jump soego_s84

        'soego_s82_r21922{#soego_s82_r21922}' if soegoLogic.r21922_condition(): # '«Нам нужно отдохнуть».{#soego_s82_r21922}'
            # a298 # r21922
            jump soego_s84

        'soego_s82_r21924{#soego_s82_r21924}': # '«У меня есть несколько вопросов…»{#soego_s82_r21924}'
            # a299 # r21924
            jump soego_s83

        'soego_s82_r21925{#soego_s82_r21925}': # '«Я просто проходил мимо. Прощай».{#soego_s82_r21925}'
            # a300 # r21925
            jump dialogues_dispose


# s83 # say21943
label soego_s83: # from 82.7 88.0 89.1 90.0 91.1 92.0 94.1 94.3 111.0
    'soego_s83{#soego_s83}'
    # soego '«Я отвечу, если смогу».{#soego_s83_1}'

    menu:
        'soego_s83_r21944{#soego_s83_r21944}' if soegoLogic.r21944_condition(): # '«Расскажи мне о Харгримме».{#soego_s83_r21944}'
            # a301 # r21944
            jump soego_s88

        'soego_s83_r21945{#soego_s83_r21945}' if soegoLogic.r21945_condition(): # '«Расскажи мне об Акасте».{#soego_s83_r21945}'
            # a302 # r21945
            jump soego_s89

        'soego_s83_r21946{#soego_s83_r21946}' if soegoLogic.r21946_condition(): # '«Расскажи мне о Тухлой Мери».{#soego_s83_r21946}'
            # a303 # r21946
            jump soego_s90

        'soego_s83_r21947{#soego_s83_r21947}' if soegoLogic.r21947_condition(): # '«Расскажи мне о Безмолвном Короле».{#soego_s83_r21947}'
            # a304 # r21947
            jump soego_s91

        'soego_s83_r21948{#soego_s83_r21948}' if soegoLogic.r21948_condition(): # '«Что тебе известно об этой „цивилизации“?»{#soego_s83_r21948}'
            # a305 # r21948
            jump soego_s92

        'soego_s83_r21949{#soego_s83_r21949}' if soegoLogic.r21949_condition(): # '«Что тебе известно об этой „цивилизации“?»{#soego_s83_r21949}'
            # a306 # r21949
            jump soego_s93

        'soego_s83_r21951{#soego_s83_r21951}': # '«Неважно. Прощай».{#soego_s83_r21951}'
            # a307 # r21951
            jump dialogues_dispose


# s84 # say21954
label soego_s84: # from 71.0 71.1 82.5 82.6
    'soego_s84{#soego_s84}'
    # soego '«Конечно. Здесь ты будешь в безопасности».{#soego_s84_1}'

    menu:
        'soego_s84_r21956{#soego_s84_r21956}': # '«Спасибо…»{#soego_s84_r21956}'
            # a308 # r21956
            $ soegoLogic.r21956_action()
            jump dialogues_dispose


# s85 # say21958
label soego_s85: # -
    'soego_s85{#soego_s85}'
    # nr 'Null Node.{#soego_s85_1}'

    jump dialogues_dispose


# s86 # say21963
label soego_s86: # -
    'soego_s86{#soego_s86}'
    # nr 'Null Node.{#soego_s86_1}'

    jump dialogues_dispose


# s87 # say21969
label soego_s87: # -
    'soego_s87{#soego_s87}'
    # nr 'Null Node.{#soego_s87_1}'

    jump dialogues_dispose


# s88 # say21975
label soego_s88: # from 83.0 91.0
    'soego_s88{#soego_s88}'
    # soego '«Упрямец, и все же он поражает своей верностью и преданностью долгу. Здесь он мой сильнейший противник, и он уже многие годы не дает распасться этой цивилизации. Его страсти являются результатом его верности и преданности долгу… замечательные качества, однако направлены не в то русло».{#soego_s88_1}'

    menu:
        'soego_s88_r21976{#soego_s88_r21976}': # '«У меня есть другие вопросы…»{#soego_s88_r21976}'
            # a309 # r21976
            jump soego_s83

        'soego_s88_r21977{#soego_s88_r21977}': # '«Это все, что я хотел узнать. Прощай».{#soego_s88_r21977}'
            # a310 # r21977
            jump dialogues_dispose


# s89 # say21978
label soego_s89: # from 83.1
    'soego_s89{#soego_s89}'
    # soego '«Акаста — животное. Боюсь, что Безмолвный Король — единственный, кто держит ее под контролем». Если его устранят, упыри разорят катакомбы».{#soego_s89_1}'

    menu:
        'soego_s89_r21979{#soego_s89_r21979}': # '«Расскажи мне о Безмолвном Короле».{#soego_s89_r21979}'
            # a311 # r21979
            $ soegoLogic.r21979_action()
            jump soego_s91

        'soego_s89_r21980{#soego_s89_r21980}': # '«У меня есть другие вопросы…»{#soego_s89_r21980}'
            # a312 # r21980
            jump soego_s83

        'soego_s89_r21981{#soego_s89_r21981}': # '«Это все, что я хотел узнать. Прощай».{#soego_s89_r21981}'
            # a313 # r21981
            jump dialogues_dispose


# s90 # say21982
label soego_s90: # from 83.2
    'soego_s90{#soego_s90}'
    # soego '«Тухлая Мери — добрая душа, хоть и медлительная. Я почти ничего не понимаю из того, что она говорит, но она и другие зомби не склонны к насилию».{#soego_s90_1}'

    menu:
        'soego_s90_r21983{#soego_s90_r21983}': # '«У меня есть другие вопросы…»{#soego_s90_r21983}'
            # a314 # r21983
            jump soego_s83

        'soego_s90_r21984{#soego_s90_r21984}': # '«Это все, что я хотел узнать. Прощай».{#soego_s90_r21984}'
            # a315 # r21984
            jump dialogues_dispose


# s91 # say21985
label soego_s91: # from 83.3 89.0
    'soego_s91{#soego_s91}'
    # soego '«Я никогда не видел Безмолвного Короля. Хотел бы я что-нибудь о нем рассказать, но никогда с ним не встречался. Его тронный зал, предположительно, находится за красными дверями, но я не могу получить туда доступ… Харгримм, скелет-жрец, не даст мне его».{#soego_s91_1}'

    menu:
        'soego_s91_r21986{#soego_s91_r21986}': # '«Расскажи мне о Харгримме».{#soego_s91_r21986}'
            # a316 # r21986
            $ soegoLogic.r21986_action()
            jump soego_s88

        'soego_s91_r21987{#soego_s91_r21987}': # '«У меня есть другие вопросы…»{#soego_s91_r21987}'
            # a317 # r21987
            jump soego_s83

        'soego_s91_r21988{#soego_s91_r21988}': # '«Это все, что я хотел узнать. Прощай».{#soego_s91_r21988}'
            # a318 # r21988
            jump dialogues_dispose


# s92 # say21989
label soego_s92: # from 83.4
    'soego_s92{#soego_s92}'
    # soego '«Думаю, они здесь уже много веков, пекутся о тех, кто скончался в их залах. Подобная преданность долгу больше не нужна… да она почти что преступна».{#soego_s92_1}'

    menu:
        'soego_s92_r21990{#soego_s92_r21990}': # '«У меня есть другие вопросы…»{#soego_s92_r21990}'
            # a319 # r21990
            jump soego_s83

        'soego_s92_r21991{#soego_s92_r21991}': # '«Это все, что я хотел узнать. Прощай».{#soego_s92_r21991}'
            # a320 # r21991
            jump dialogues_dispose


# s93 # say21992
label soego_s93: # from 83.5
    'soego_s93{#soego_s93}'
    # soego '«Думаю, они здесь уже много веков, пекутся о тех, кто скончался в их залах. Подобная преданность долгу больше не нужна… да она почти что преступна».{#soego_s93_1}'

    jump morte_s220  # EXTERN


# s94 # say21993
label soego_s94: # from 82.0 82.1
    'soego_s94{#soego_s94}'
    # soego '«Что? Это правда? Ах, Многоединый наверняка вознаградит тебя за такие вести…»{#soego_s94_1}'

    menu:
        'soego_s94_r25248{#soego_s94_r25248}' if soegoLogic.r25248_condition(): # '«Многоединый?»{#soego_s94_r25248}'
            # a321 # r25248
            $ soegoLogic.j25254_s94_r25248_action()
            jump soego_s111

        'soego_s94_r25252{#soego_s94_r25252}' if soegoLogic.r25252_condition(): # '«Интересно. У меня есть другие вопросы…»{#soego_s94_r25252}'
            # a322 # r25252
            $ soegoLogic.j25254_s94_r25252_action()
            jump soego_s83

        'soego_s94_r25253{#soego_s94_r25253}' if soegoLogic.r25253_condition(): # '«Возможно. Прощай».{#soego_s94_r25253}'
            # a323 # r25253
            $ soegoLogic.j25254_s94_r25253_action()
            jump dialogues_dispose

        'soego_s94_r21994{#soego_s94_r21994}' if soegoLogic.r21994_condition(): # '«Хорошо. У меня есть несколько вопросов…»{#soego_s94_r21994}'
            # a324 # r21994
            $ soegoLogic.j21996_s94_r21994_action()
            jump soego_s83

        'soego_s94_r21995{#soego_s94_r21995}' if soegoLogic.r21995_condition(): # '«Тогда я расскажу ему сам. Прощай».{#soego_s94_r21995}'
            # a325 # r21995
            $ soegoLogic.j21996_s94_r21995_action()
            jump dialogues_dispose


# s95 # say21997
label soego_s95: # - # IF WEIGHT #0 ~  CreatureInArea("AR1500") GlobalGT("Soego_Exposed","GLOBAL",0)
    $ soegoLogic.talk()
    'soego_s95{#soego_s95}'
    # soego '«Ах ты… сволочь!»{#soego_s95_1}'

    menu:
        'soego_s95_r21998{#soego_s95_r21998}': # '«Чт…»{#soego_s95_r21998}'
            # a326 # r21998
            $ soegoLogic.r21998_action()
            jump dialogues_dispose


# s96 # say22003
label soego_s96: # -
    $ soegoLogic.talk()
    'soego_s96{#soego_s96}'
    # soego '«Э… эта дверь ведет в мои личные покои. Прошу туда не входить».{#soego_s96_1}'

    menu:
        'soego_s96_r22004{#soego_s96_r22004}': # 'Уйти.{#soego_s96_r22004}'
            # a327 # r22004
            jump dialogues_dispose


# s97 # say22005
label soego_s97: # from 82.4
    'soego_s97{#soego_s97}'
    # soego '«О! Пойду поговорю с ним!»{#soego_s97_1}'

    menu:
        'soego_s97_r22006{#soego_s97_r22006}': # '«Прощай».{#soego_s97_r22006}'
            # a328 # r22006
            jump dialogues_dispose


# s98 # say22007
label soego_s98: # -
    $ soegoLogic.talk()
    'soego_s98{#soego_s98}'
    # soego '«Нет, я уже иду».{#soego_s98_1}'

    menu:
        'soego_s98_r22008{#soego_s98_r22008}': # '«Прощай».{#soego_s98_r22008}'
            # a329 # r22008
            jump dialogues_dispose


# s99 # say22009
label soego_s99: # -
    $ soegoLogic.talk()
    'soego_s99{#soego_s99}'
    # soego '«К сожалению, нет. Но все еще образуется».{#soego_s99_1}'

    menu:
        'soego_s99_r22010{#soego_s99_r22010}': # '«Понятно. Прощай».{#soego_s99_r22010}'
            # a330 # r22010
            jump dialogues_dispose


# s100 # say22011
label soego_s100: # from 82.3
    'soego_s100{#soego_s100}'
    # nr 'Соэго некоторое время молчит.{#soego_s100_1}'
    # soego '«Все ясно».{#soego_s100_2}'
    # nr 'Неожиданно он начинает превращаться…{#soego_s100_3}'

    menu:
        'soego_s100_r22012{#soego_s100_r22012}': # '«Какого?..»{#soego_s100_r22012}'
            # a331 # r22012
            $ soegoLogic.r22012_action()
            jump dialogues_dispose


# s101 # say22014
label soego_s101: # from 73.0
    'soego_s101{#soego_s101}'
    # soego '«Э… твоя память тебе изменяет. Конечно, моя шея слегка побаливала… она немного вывернута. Но сломана? Вряд ли».{#soego_s101_1}'

    menu:
        'soego_s101_r22015{#soego_s101_r22015}' if soegoLogic.r22015_condition(): # '«Позволь не согласиться. Что ты такое, Соэго?»{#soego_s101_r22015}'
            # a332 # r22015
            jump soego_s106

        'soego_s101_r22016{#soego_s101_r22016}' if soegoLogic.r22016_condition(): # '«Позволь не согласиться. Что ты такое, Соэго?»{#soego_s101_r22016}'
            # a333 # r22016
            jump soego_s103

        'soego_s101_r22018{#soego_s101_r22018}': # '«Ты не сердишься?»{#soego_s101_r22018}'
            # a334 # r22018
            jump soego_s74

        'soego_s101_r22019{#soego_s101_r22019}': # '«Ты говорил, что ты миссионер?»{#soego_s101_r22019}'
            # a335 # r22019
            jump soego_s65

        'soego_s101_r22020{#soego_s101_r22020}' if soegoLogic.r22020_condition(): # '«Что здесь делают тленные?»{#soego_s101_r22020}'
            # a336 # r22020
            jump soego_s66

        'soego_s101_r22022{#soego_s101_r22022}': # '«Это все, что я хотел узнать. Прощай».{#soego_s101_r22022}'
            # a337 # r22022
            jump soego_s71


# s102 # say22023
label soego_s102: # -
    $ soegoLogic.talk()
    'soego_s102{#soego_s102}'
    # nr 'Он вырывается из твоей хватки со сверхъестественной скоростью. Фыркая и плюясь, он шипит.{#soego_s102_1}'
    # soego '«Глупая тварь, ты напал на агента коллективного разума черепных крыс!»{#soego_s102_2}'
    # nr 'Внезапно он начинает пугающе преображаться…{#soego_s102_3}'

    menu:
        'soego_s102_r22024{#soego_s102_r22024}': # '«Какого?..»{#soego_s102_r22024}'
            # a338 # r22024
            $ soegoLogic.r22024_action()
            jump dialogues_dispose


# s103 # say22026
label soego_s103: # from 101.1
    'soego_s103{#soego_s103}'
    # soego '«Глупый вопрос! Ты очнулся на препараторской плите в Морге… ты сам мне об этом рассказал. Несомненно, мое ранение было получше того, из-за которого сборщики перепутали тебя с трупом, не так ли?»{#soego_s103_1}'

    menu:
        'soego_s103_r22027{#soego_s103_r22027}': # '«Все так, но… неважно».{#soego_s103_r22027}'
            # a339 # r22027
            jump soego_s104

        'soego_s103_r22028{#soego_s103_r22028}': # '«У меня… особый случай».{#soego_s103_r22028}'
            # a340 # r22028
            jump soego_s105

        'soego_s103_r22029{#soego_s103_r22029}': # '«Нет. Что-то здесь не так, и я очень скоро выясню это».{#soego_s103_r22029}'
            # a341 # r22029
            jump soego_s104


# s104 # say22032
label soego_s104: # from 103.0 103.2 105.0 105.1 106.1 107.0
    'soego_s104{#soego_s104}'
    # soego '«Ну и ладно»{#soego_s104_1}'
    # nr ', — он пожимает плечами.{#soego_s104_2}'

    menu:
        'soego_s104_r22033{#soego_s104_r22033}': # '«Ты не злишься насчет того, что произошло?»{#soego_s104_r22033}'
            # a342 # r22033
            jump soego_s74

        'soego_s104_r22034{#soego_s104_r22034}': # '«Ты говорил, что ты миссионер?»{#soego_s104_r22034}'
            # a343 # r22034
            jump soego_s65

        'soego_s104_r22035{#soego_s104_r22035}' if soegoLogic.r22035_condition(): # '«Так что же тленные делают здесь?»{#soego_s104_r22035}'
            # a344 # r22035
            jump soego_s66

        'soego_s104_r22038{#soego_s104_r22038}': # '«Я уже должен идти. Прощай».{#soego_s104_r22038}'
            # a345 # r22038
            jump soego_s71


# s105 # say22039
label soego_s105: # from 103.1
    'soego_s105{#soego_s105}'
    # nr 'Он улыбается.{#soego_s105_1}'
    # soego '«У каждого свои причуды. Уверен, этого ты не станешь отрицать?»{#soego_s105_2}'

    menu:
        'soego_s105_r22040{#soego_s105_r22040}': # '«Все так, но… неважно».{#soego_s105_r22040}'
            # a346 # r22040
            jump soego_s104

        'soego_s105_r22041{#soego_s105_r22041}': # '«Нет. Что-то здесь не так, и я очень скоро выясню это».{#soego_s105_r22041}'
            # a347 # r22041
            jump soego_s104


# s106 # say22043
label soego_s106: # from 101.0
    'soego_s106{#soego_s106}'
    # soego '«Что я такое?.. Что за вопрос такой?»{#soego_s106_1}'

    menu:
        'soego_s106_r22044{#soego_s106_r22044}': # '«Ты слышал меня. Ты ведь не обычный тленный… что ты *такое*, Соэго?»{#soego_s106_r22044}'
            # a348 # r22044
            jump soego_s107

        'soego_s106_r22045{#soego_s106_r22045}': # '«Забудь. Неважно».{#soego_s106_r22045}'
            # a349 # r22045
            jump soego_s104


# s107 # say22047
label soego_s107: # from 106.0
    'soego_s107{#soego_s107}'
    # nr 'Соэго бросает на тебя угрюмый взгляд.{#soego_s107_1}'
    # soego '«Я не понимаю, о *чем* ты говоришь».{#soego_s107_2}'

    menu:
        'soego_s107_r22048{#soego_s107_r22048}': # '«Что-то здесь не так, и я очень скоро выясню это».{#soego_s107_r22048}'
            # a350 # r22048
            jump soego_s104


# s108 # say22050
label soego_s108: # - # IF WEIGHT #3 ~  Global("Dustman_Initiation","GLOBAL",5) GlobalLT("Soego","GLOBAL",3) !Global("CR_Vic","GLOBAL",1)
    $ soegoLogic.talk()
    'soego_s108{#soego_s108}'
    # soego '«А, еще один из живущих. Большинство из тех, кто заходит так глубоко в катакомбы, убивают упыри. Тебе повезло».{#soego_s108_1}'

    menu:
        'soego_s108_r22051{#soego_s108_r22051}' if soegoLogic.r22051_condition(): # '«Ты Соэго? Эморик тебя искал».{#soego_s108_r22051}'
            # a351 # r22051
            $ soegoLogic.r22051_action()
            jump soego_s109

        'soego_s108_r66173{#soego_s108_r66173}' if soegoLogic.r66173_condition(): # '«Соэго… Эморик хотел знать, где ты».{#soego_s108_r66173}'
            # a352 # r66173
            $ soegoLogic.r66173_action()
            jump soego_s109


# s109 # say22053
label soego_s109: # from 82.2 108.0 108.1
    'soego_s109{#soego_s109}'
    # soego '«Да, это я. Я занимаюсь здесь миссионерской деятельностью для тленных».{#soego_s109_1}'

    menu:
        'soego_s109_r64617{#soego_s109_r64617}' if soegoLogic.r64617_condition(): # '«Хорошо. Но… я думал, что сломал тебе шею…»{#soego_s109_r64617}'
            # a353 # r64617
            jump soego_s73

        'soego_s109_r64618{#soego_s109_r64618}' if soegoLogic.r64618_condition(): # '«Хорошо. Но… я думал, что *убил* тебя…»{#soego_s109_r64618}'
            # a354 # r64618
            jump soego_s73

        'soego_s109_r22054{#soego_s109_r22054}': # '«Здесь есть другие тленные?»{#soego_s109_r22054}'
            # a355 # r22054
            jump soego_s66

        'soego_s109_r50792{#soego_s109_r50792}': # '«Где я?»{#soego_s109_r50792}'
            # a356 # r50792
            jump soego_s77

        'soego_s109_r50793{#soego_s109_r50793}': # '«Почему из меня сделали заключенного?»{#soego_s109_r50793}'
            # a357 # r50793
            jump soego_s78

        'soego_s109_r22056{#soego_s109_r22056}': # '«Я уже должен идти. Прощай».{#soego_s109_r22056}'
            # a358 # r22056
            jump soego_s71


# s110 # say22057
label soego_s110: # from 79.0 79.1
    'soego_s110{#soego_s110}'
    # soego '«Да, это я».{#soego_s110_1}'

    menu:
        'soego_s110_r64625{#soego_s110_r64625}' if soegoLogic.r64625_condition(): # '«Постой… разве я не сломал тебе шею в Морге?»{#soego_s110_r64625}'
            # a359 # r64625
            jump soego_s112

        'soego_s110_r64626{#soego_s110_r64626}' if soegoLogic.r64626_condition(): # '«Постой… Я думал, что *убил* тебя в Морге…»{#soego_s110_r64626}'
            # a360 # r64626
            jump soego_s112

        'soego_s110_r22058{#soego_s110_r22058}' if soegoLogic.r22058_condition(): # '«Хорошо. Так как же мне добраться до Безмолвного Короля?»{#soego_s110_r22058}'
            # a361 # r22058
            $ soegoLogic.j21857_s110_r22058_action()
            jump soego_s80

        'soego_s110_r22060{#soego_s110_r22060}' if soegoLogic.r22060_condition(): # '«Хорошо. Прощай».{#soego_s110_r22060}'
            # a362 # r22060
            jump soego_s71


# s111 # say25249
label soego_s111: # from 94.0
    'soego_s111{#soego_s111}'
    # soego '«Да, коллективный разум черепных крыс. Иди на восток от Катакомб плачущих камней. Там ты найдешь дорогу».{#soego_s111_1}'

    menu:
        'soego_s111_r25250{#soego_s111_r25250}': # '«Интересно. У меня есть другие вопросы…»{#soego_s111_r25250}'
            # a363 # r25250
            jump soego_s83

        'soego_s111_r25251{#soego_s111_r25251}': # '«Возможно. Прощай».{#soego_s111_r25251}'
            # a364 # r25251
            jump dialogues_dispose


# s112 # say64620
label soego_s112: # from 79.2 79.3 110.0 110.1
    'soego_s112{#soego_s112}'
    # nr 'Он отмахивается от твоих слов.{#soego_s112_1}'
    # soego '«Ничто, для меня это ничто. Я уже был благославлен ликантропией — любые раны восстанавливаются очень быстро».{#soego_s112_2}'

    menu:
        'soego_s112_r64621{#soego_s112_r64621}': # '«Понятно… Так как мне добраться до Безмолвного Короля?»{#soego_s112_r64621}'
            # a365 # r64621
            jump soego_s80

        'soego_s112_r64622{#soego_s112_r64622}': # '«Хорошо… Тогда прощай».{#soego_s112_r64622}'
            # a366 # r64622
            jump soego_s71


# s113 # say66709
label soego_s113: # from 38.1
    $ soegoLogic.talk()
    'soego_s113{#soego_s113}'
    # soego '«Приветствую…»{#soego_s113_1}'
    # nr 'Человек поворачивается к тебе лицом и делает небольшой поклон. Внезапно ты замечаешь, что его глаза не налиты кровью, а просто имеют красный оттенок.{#soego_s113_2}'
    # soego '«Я Соэго. Чем могу помочь?»{#soego_s113_3}'

    menu:
        'soego_s113_r66712{#soego_s113_r66712}': # '«Я хотел бы покинуть Морг. Ты не поможешь мне?»{#soego_s113_r66712}'
            # a367 # r66712
            jump soego_s114

        'soego_s113_r66713{#soego_s113_r66713}': # '«У меня есть несколько вопросов…»{#soego_s113_r66713}'
            # a368 # r66713
            jump soego_s114

        'soego_s113_r66714{#soego_s113_r66714}': # '«Я просто проходил мимо. Прощай».{#soego_s113_r66714}'
            # a369 # r66714
            jump dialogues_dispose


# s114 # say66710
label soego_s114: # from 113.0 113.1
    'soego_s114{#soego_s114}'
    # nr 'Пока ты произносишь фразу, губы Соэго неожиданно раскрываются, обнажая ряд грязных и острых зубов. Он наклоняется вперед, обнюхивая тебя.{#soego_s114_1}'

    menu:
        'soego_s114_r66715{#soego_s114_r66715}': # '«Эй… какого черта ты меня обнюхиваешь?»{#soego_s114_r66715}'
            # a370 # r66715
            jump soego_s115

        'soego_s114_r66716{#soego_s114_r66716}' if soegoLogic.r66716_condition(): # 'Свернуть ему шею, пока он наклоняется вперед.{#soego_s114_r66716}'
            # a371 # r66716
            jump soego_s22

        'soego_s114_r66717{#soego_s114_r66717}' if soegoLogic.r66717_condition(): # 'Свернуть ему шею, пока он наклоняется вперед.{#soego_s114_r66717}'
            # a372 # r66717
            jump soego_s19

        'soego_s114_r66718{#soego_s114_r66718}': # '«Неважно… Прощай».{#soego_s114_r66718}'
            # a373 # r66718
            jump soego_s17


# s115 # say66711
label soego_s115: # from 114.0
    'soego_s115{#soego_s115}'
    # soego '«Твоя одежда… эта мантия. Она не так пахнет. Она не твоя».{#soego_s115_1}'
    # nr 'Губы Соэго растягиваются в странной улыбке, глаза горят диким огнем.{#soego_s115_2}'
    # soego '«Кто ты *такой*?»{#soego_s115_3}'

    menu:
        'soego_s115_r66719{#soego_s115_r66719}': # '«Я… одолжил эту мантию. Я очнулся на одной из плит наверху в препараторской».{#soego_s115_r66719}'
            # a374 # r66719
            jump soego_s42

        'soego_s115_r66720{#soego_s115_r66720}': # '«Ты прав. Эта мантия не моя, но чья она — это не твое дело».{#soego_s115_r66720}'
            # a375 # r66720
            jump soego_s6

        'soego_s115_r66721{#soego_s115_r66721}' if soegoLogic.r66721_condition(): # 'Свернуть ему шею до того, как он сможет позвать на помощь.{#soego_s115_r66721}'
            # a376 # r66721
            jump soego_s22

        'soego_s115_r66722{#soego_s115_r66722}' if soegoLogic.r66722_condition(): # 'Свернуть ему шею до того, как он сможет позвать на помощь.{#soego_s115_r66722}'
            # a377 # r66722
            jump soego_s19

        'soego_s115_r66723{#soego_s115_r66723}': # '«Это неважно. Мне пора идти».{#soego_s115_r66723}'
            # a378 # r66723
            jump soego_s17
