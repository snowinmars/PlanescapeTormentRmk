init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.soego_logic import SoegoLogic
    soegoLogic = SoegoLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DSOEGO.DLG
# ###


# s0 # say1431
label soego_s0: # - # IF WEIGHT #8 /* Triggers after states #: 59 58 12 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Appearance","GLOBAL",1) Global("Gate_Open","GLOBAL",0) Global("Soego","GLOBAL",0)
    nr '당신 시야에 퇴색된 흑색 법복을 입은 피곤한 듯한 사내가 들어온다. 그의 가는 얼굴은 극도로 창백하며, 그는 거의 잠을 자지 못한 것처럼 보인다. 그의 어깨는 축 늘어졌으며, 그의 충혈된 눈 아래에는 살이 처져 있다. 그는 당신의 존재를 알아차리지 못하고 있는 듯하다. 아마 그는 당신을 언데드 노동자들 중 하나로 착각한 모양이다.{#soego_s0_}'

    menu:
        '"안녕하시오."{#soego_s0_r1432}':
            # a0 # r1432
            jump soego_s1

        '"당신은 누구요?"{#soego_s0_r1433}':
            # a1 # r1433
            jump soego_s1

        '"이 곳은 어떤 곳이오?"{#soego_s0_r1434}':
            # a2 # r1434
            jump soego_s1

        '"질문할 것들이 좀 있소…"{#soego_s0_r1435}':
            # a3 # r1435
            jump soego_s1

        '그를 그냥 내버려 두고 떠난다.{#soego_s0_r1436}':
            # a4 # r1436
            jump soego_dispose


# s1 # say1437
label soego_s1: # from 0.0 0.1 0.2 0.3
    nr '당신이 그에게 인사하자 그는 고개를 재빨리 쳐든다. "뭐라고… 했소? 방금 전에 당신이 내게 말을 했소?„{#soego_s1_}'

    menu:
        '"그래, 내가 말했소. 질문할 것들이 좀 있소.{#soego_s1_r1438}':
            # a5 # r1438
            $ soegoLogic.j63982_s1_r1438_action()
            jump soego_s2

        '"아니, 그런 적 없소.{#soego_s1_r1439}':
            # a6 # r1439
            $ soegoLogic.r1439_action()
            jump soego_s2

        '죽은듯이 조용히 한다.{#soego_s1_r1440}' if soegoLogic.r1440_condition():
            # a7 # r1440
            jump soego_s3

        '죽은듯이 조용히 한다.{#soego_s1_r1441}' if soegoLogic.r1441_condition():
            # a8 # r1441
            jump soego_s4

        '재빨리 떠난다.{#soego_s1_r1442}':
            # a9 # r1442
            jump soego_s5


# s2 # say1443
label soego_s2: # from 1.0 1.1 3.0 3.3 4.0 4.1
    nr '"신들이여!" 더스트맨은 팔짝 뛴 다음, 당신을 골똘히 바라본다. 당신은 그의 눈이 충혈된 것이라기보다는 약간의 붉은 색조를 띠고 있는 것이라는 사실을 깨닫는다. "이보시오, 당신 귀에는 거슬리겠지만 이 얘긴 꼭 해야겠소. 당신은 정말 좀비처럼 생겼소." 그는 가볍게 인사를 한다. "나는 소에고요." 그는 당신 흉터들을 쳐다보면서 말한다. "그런 모습을 하고 이 곳에는 무슨 용건이오?"{#soego_s2_}'

    menu:
        '"당신과는 상관없는 일이오."{#soego_s2_r1444}':
            # a10 # r1444
            jump soego_s6

        '"나도 내가 여기서 뭘 하고 있는지 모르겠소. 나는 위층의 철판에서 깨어났고… 내 기억은 흐릿하오."{#soego_s2_r1445}':
            # a11 # r1445
            jump soego_s7

        '"나는 이 곳의 홀을 돌아다니다가 길을 잃었는데 출구를 찾을 수가 없소. 날 도와주겠소?"{#soego_s2_r1446}' if soegoLogic.r1446_condition():
            # a12 # r1446
            jump soego_s8

        '"나는 이 곳에서 나가려 하고 있소."{#soego_s2_r1447}':
            # a13 # r1447
            jump soego_s13

        '"내겐 변화가 필요하오."{#soego_s2_r1448}':
            # a14 # r1448
            $ soegoLogic.r1448_action()
            jump soego_s16

        '내겐 정말 이럴 시간이 없소. 안녕히 계시오.{#soego_s2_r4999}':
            # a15 # r4999
            jump soego_s17


# s3 # say1449
label soego_s3: # from 1.2
    nr '더스트맨은 잠시 당신을 살펴본 후, 고개를 젓는다. "또 허깨비를 본 모양이야…" 그는 한숨을 쉬고 두 눈을 비빈다. "이 열병은 갈수록 심해지는 것 같군…"{#soego_s3_}'

    menu:
        '"그건 당신 상상이 아니오. 질문할 것이 좀 있소…"{#soego_s3_r1450}':
            # a16 # r1450
            $ soegoLogic.j63982_s3_r1450_action()
            jump soego_s2

        '그가 주의를 딴데로 돌리고 있을 때 그의 목을 부러트린다.{#soego_s3_r1451}' if soegoLogic.r1451_condition():
            # a17 # r1451
            jump soego_s19

        '그가 주의를 딴데로 돌리고 있을 때 그의 목을 부러트린다.{#soego_s3_r1452}' if soegoLogic.r1452_condition():
            # a18 # r1452
            jump soego_s22

        '"질문할 것이 좀 있소."{#soego_s3_r1453}':
            # a19 # r1453
            $ soegoLogic.j63982_s3_r1453_action()
            jump soego_s2

        '조용히 떠난다.{#soego_s3_r1454}':
            # a20 # r1454
            jump soego_dispose


# s4 # say1455
label soego_s4: # from 1.3
    nr '더스트맨은 당신을 조심스럽게 바라본 다음, 몸을 구부린다. 그가 입을 열자 더럽고 날카로운 이빨들이 보인다. 그리고 그는 마치 쥐처럼 당신 냄새를 맡기 시작한다.{#soego_s4_}'

    menu:
        '"어… 대체 왜 내 냄새를 맡는 거요?"{#soego_s4_r1456}':
            # a21 # r1456
            $ soegoLogic.r1456_action()
            jump soego_s2

        '"이것 보시오, 당신에게 질문할 것이 좀 있소…"{#soego_s4_r1457}':
            # a22 # r1457
            $ soegoLogic.r1457_action()
            jump soego_s2

        '그가 몸을 구부릴 때 그의 목을 부러트린다.{#soego_s4_r1458}' if soegoLogic.r1458_condition():
            # a23 # r1458
            jump soego_s19

        '그가 몸을 구부릴 때 그의 목을 부러트린다.{#soego_s4_r1459}' if soegoLogic.r1459_condition():
            # a24 # r1459
            jump soego_s22

        '재빨리 떠난다.{#soego_s4_r1460}':
            # a25 # r1460
            jump soego_s15


# s5 # say1461
label soego_s5: # from 1.4
    nr '당신이 떠나려고 돌아서자, 더스트맨은 약간의 쉿 소리를 낸 후 몸을 구부려 당신 냄새를 맡는다. "신들이여!" 더스트맨은 한 발짝 물러선 후 눈을 크게 뜬다. 당신은 그의 눈이 충혈된 것이라기보다는 약간의 붉은 색조를 띠고 있는 것이라는 사실을 깨닫는다. "이보시오, 당신 귀에는 거슬리겠지만 이 얘긴 꼭 해야겠소. 당신은 정말 좀비처럼 생겼소." 그는 가볍게 인사를 한다. "나는 소에고요. 그런 모습을 하고 이 곳에는 무슨 용건이오?"{#soego_s5_}'

    menu:
        '"당신과는 상관없는 일이오."{#soego_s5_r1462}':
            # a26 # r1462
            jump soego_s6

        '"나도 내가 여기서 뭘 하고 있는지 모르겠소. 나는 위층의 철판에서 깨어났고… 내 기억은 흐릿하오."{#soego_s5_r1463}':
            # a27 # r1463
            jump soego_s7

        '"나는 길을 잃어 출구를 찾고 있소. 날 도와줄 수 있겠소?"{#soego_s5_r1464}' if soegoLogic.r1464_condition():
            # a28 # r1464
            jump soego_s8

        '"나는 이 곳에서 나가려 하고 있소."{#soego_s5_r1465}':
            # a29 # r1465
            jump soego_s13

        '"내겐 변화가 필요했소."{#soego_s5_r1466}':
            # a30 # r1466
            $ soegoLogic.r1466_action()
            jump soego_s16

        '"내겐 이런 일에 허비할 시간이 없소. 안녕히 계시오."{#soego_s5_r1467}':
            # a31 # r1467
            jump soego_s17


# s6 # say1468
label soego_s6: # from 2.0 5.0 15.0 41.1 43.0 50.1 115.1
    nr '"아, 미안하지만 그건 내가 상관할 바요." 소에고의 눈은 붉은 색으로 번뜩이고, 무슨 기대라도 하는 듯 입의 한쪽 구석을 씰룩거린다. "아마…" 그는 날카롭고 더러운 이빨을 드러내며 조소한다. "경비병을 부른 것이 좋을 것 같소. 그래, 그게 좋겠군."{#soego_s6_}'

    menu:
        '"잠깐! 나는 길을 잃었소… 나는 이 곳의 홀을 돌아다니다가 길을 잃었는데 출구를 찾을 수가 없소. 날 도와주겠소?"{#soego_s6_r1469}' if soegoLogic.r1469_condition():
            # a32 # r1469
            jump soego_s8

        '"멈추시오! 경비병들을 부르지 마시오! 나는 이 곳에서 나가고 싶을 뿐이오… 날 도와줄 수 있겠소?"{#soego_s6_r1470}' if soegoLogic.r1470_condition():
            # a33 # r1470
            jump soego_s13

        '그가 미처 소리를 지르기 전에 그의 목을 부러트린다.{#soego_s6_r1471}' if soegoLogic.r1471_condition():
            # a34 # r1471
            jump soego_s19

        '그가 미처 소리를 지르기 전에 그의 목을 부러트린다.{#soego_s6_r1472}' if soegoLogic.r1472_condition():
            # a35 # r1472
            jump soego_s22

        '"그럼 그들을 부르시오. 난 그들을 만나고 싶소."{#soego_s6_r1473}':
            # a36 # r1473
            jump soego_s18


# s7 # say1474
label soego_s7: # from 2.1 5.1 13.3 15.1 42.1 57.0
    nr '"정말로?" 더스트맨은 당신을 세심히 조사한다. "당신은 *실제로* 준비 과정을 거친 것 같소. 당신의 어떻게 그런 고통을 견뎠는지 모르겠소… 당신은 고통을 받고 있소? 그런 것처럼 보이오."{#soego_s7_}'

    menu:
        '"애초에 어떻게 해서 내가 여기에 오게 된 것이오?"{#soego_s7_r1475}':
            # a37 # r1475
            jump soego_s54

        '"내겐 이런 일에 허비할 시간이 없소. 안녕히 계시오."{#soego_s7_r1476}':
            # a38 # r1476
            jump soego_s17


# s8 # say1477
label soego_s8: # from 2.2 5.2 6.0 13.0 15.2 16.0 17.0 26.0 40.0 41.0 50.0 61.0 62.0
    nr '소에고는 입의 한쪽 구석을 씰룩거리며 고개를 끄덕인다. "물론이오. 이 건물은 방문자들에게는 헷갈릴 수가 있소. 별 큰 문제는 아니오, 하지만 방문자는 종이 아홉 번 울린 후에는 시체안치소에서 머무를 수가 없소. 당신을 위해 내가 정문을 열어 주리다."{#soego_s8_}'

    menu:
        '"고맙소."{#soego_s8_r1478}' if soegoLogic.r1478_condition():
            # a39 # r1478
            $ soegoLogic.r1478_action()
            jump soego_dispose

        '"고맙소."{#soego_s8_r1479}' if soegoLogic.r1479_condition():
            # a40 # r1479
            jump soego_s9


# s9 # say1480
label soego_s9: # from 8.1 56.1 60.1
    nr '소에게는 벨트에 손을 뻗쳐 잠시 더듬더니 쉿 소리를 낸다. "열쇠!" 그의 눈은 밝은 빨간색으로 빛나고, 그는 분노하며 입술을 뒤로 만다. 그의 표정은 마치 동물과도 같다. "누가 내 열쇠를 훔쳤어!" 그는 당신을 향해 으르렁거린다. "당신이지! 당신이 이런 짓을 했지!"{#soego_s9_}'

    menu:
        '그에게 허풍을 떤다: "어… 기다리시오! 만약 내가 그것을 훔쳤다면 왜 당신에게 달라고 하겠소?"{#soego_s9_r1481}':
            # a41 # r1481
            jump soego_s18

        '거짓말: "무슨 얘기를 하는 거요? 나는 그 일과는 아무런 관련도 없소!"{#soego_s9_r1482}':
            # a42 # r1482
            $ soegoLogic.r1482_action()
            jump soego_s18

        '그가 미처 소리를 지르기 전에 그의 목을 부러트린다.{#soego_s9_r1483}' if soegoLogic.r1483_condition():
            # a43 # r1483
            jump soego_s19

        '그가 미처 소리를 지르기 전에 그의 목을 부러트린다.{#soego_s9_r1484}' if soegoLogic.r1484_condition():
            # a44 # r1484
            jump soego_s22

        '"만약 내가 그랬다면 어쩔 거요? 그 일에 대해 어떻게 할 생각이오?"{#soego_s9_r1485}':
            # a45 # r1485
            jump soego_s18


# s10 # say1486
label soego_s10: # -
    nr '소에고는 벨트에서 큰 열쇠를 빼낸 후 정문으로 걸어간다. 당신은 그의 기묘한 걸음걸이를 주목하지 않을 수가 없다… 그는 마치 균형을 잡으려는 듯 몸을 앞으로 구부라며 걷고 있다.{#soego_s10_}'

    menu:
        '"참 별나게도 걷는군."{#soego_s10_r1487}' if soegoLogic.r1487_condition():
            # a46 # r1487
            jump morte_s101  # EXTERN

        '그가 문을 열기를 기다린다.{#soego_s10_r1488}' if soegoLogic.r1488_condition():
            # a47 # r1488
            jump soego_s11


# s11 # say1489
label soego_s11: # from 10.1
    nr '일단 정문에 도달하자 그는 열쇠를 자물쇠에 넣고 돌린다. 잠시 후 자물쇠로부터 삐걱거리는 소리가 난다… 그 소리는 대리석 바닥에 반사되어 메인 홀 전체에 울려 퍼진다.{#soego_s11_}'

    menu:
        '그가 돌아오기를 기다린다.{#soego_s11_r1490}':
            # a48 # r1490
            $ soegoLogic.r1490_action()
            jump soego_s12


# s12 # say1491
label soego_s12: # from 11.0 # IF WEIGHT #5 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Gate_Open","GLOBAL",1) Global("Gate_Cut_Scene","AR0201",1)
    nr '"좋소. 이제 정문은 열렸소, 하지만 당신은 다시 들어올 수 없소."{#soego_s12_}'

    menu:
        '"떠나기 전에 당신에게 질문을 좀 해도 괜찮겠소?"{#soego_s12_r1492}':
            # a49 # r1492
            $ soegoLogic.r1492_action()
            jump soego_s26

        '"고맙소, 소에고. 이제 떠나도록 하겠소."{#soego_s12_r1493}':
            # a50 # r1493
            $ soegoLogic.r1493_action()
            jump soego_dispose


# s13 # say1494
label soego_s13: # from 2.3 5.3 6.1 15.3 16.1 17.1 26.1 61.1
    nr '"나가?" 소에고는 눈살을 찌푸린다. "당신은 어떻게 들어왔소?"{#soego_s13_}'

    menu:
        '"나는 장례식에 참석해 고인에게 추모의 뜻을 표하러 이 곳에 왔었소. 그런데 떠나려고 보니… 길을 잃어버렸지 않았겠소. 내가 출구를 찾도록 도와줄 수 있겠소?"{#soego_s13_r1495}' if soegoLogic.r1495_condition():
            # a51 # r1495
            jump soego_s8

        '"난 정말 모르오."{#soego_s13_r1496}' if soegoLogic.r1496_condition():
            # a52 # r1496
            jump soego_s14

        '"난 정말 모르오."{#soego_s13_r1497}' if soegoLogic.r1497_condition():
            # a53 # r1497
            jump soego_s61

        '"나는 위층의 철판에서 깨어났고… 내 기억은 흐릿하오."{#soego_s13_r1498}':
            # a54 # r1498
            jump soego_s7

        '"내겐 이럴 시간이 없소. 안녕히 계시오."{#soego_s13_r1499}':
            # a55 # r1499
            jump soego_s17


# s14 # say1500
label soego_s14: # from 13.1
    nr '고에고는 혀를 찬다. "정말 흥미롭군." 그는 다시 당신을 살펴본다. "당신은 계약자들 중 하나가 아니오?"{#soego_s14_}'

    menu:
        '"어, „계약된?“"{#soego_s14_r1501}':
            # a56 # r1501
            jump soego_s23

        '"내겐 이런 일에 허비할 시간이 없소. 안녕히 계시오."{#soego_s14_r1502}':
            # a57 # r1502
            jump soego_s17


# s15 # say1503
label soego_s15: # from 4.4
    nr '당신이 떠나려고 돌아서자, 더스트맨은 냄새를 맡는 것를 멈추고 약간의 쉿 소리를 낸다. "신들이여!" 더스트맨은 한 발짝 물러선 후 눈을 크게 뜬다. 당신은 그의 눈이 충혈된 것이라기보다는 약간의 붉은 색조를 띠고 있는 것이라는 사실을 깨닫는다. "이보시오, 당신 귀에는 거슬리겠지만 이 얘긴 꼭 해야겠소. 당신은 정말 좀비처럼 생겼소." 그는 가볍게 인사를 한다. "나는 소에고요. 그런 모습을 하고 이 곳에는 무슨 용건이오?"{#soego_s15_}'

    menu:
        '"당신과는 상관없는 일이오."{#soego_s15_r1504}':
            # a58 # r1504
            jump soego_s6

        '"나도 내가 여기서 뭘 하고 있는지 모르겠소. 나는 위층의 철판에서 깨어났고… 내 기억은 흐릿하오."{#soego_s15_r1505}':
            # a59 # r1505
            jump soego_s7

        '"나는 길을 잃어 출구를 찾고 있소. 날 도와줄 수 있겠소?"{#soego_s15_r1506}' if soegoLogic.r1506_condition():
            # a60 # r1506
            jump soego_s8

        '"나는 이 곳에서 나가려 하고 있소."{#soego_s15_r1508}':
            # a61 # r1508
            jump soego_s13

        '"내겐 변화가 필요했소."{#soego_s15_r1509}':
            # a62 # r1509
            $ soegoLogic.r1509_action()
            jump soego_s16

        '"내겐 이런 일에 허비할 시간이 없소. 안녕히 계시오."{#soego_s15_r1510}':
            # a63 # r1510
            jump soego_s17


# s16 # say1511
label soego_s16: # from 2.4 5.4 15.4
    nr '"알겠소…" 소에고의 눈은 붉은 색으로 번뜩이고, 무슨 기대라도 하는 듯 입의 한쪽 구석을 씰룩거린다. "아마…" 그는 날카롭고 더러운 이빨을 드러내며 조소한다. "경비병을 부르는 것이 좋을 것 같소. 그래, 그게 좋겠군."{#soego_s16_}'

    menu:
        '"잠깐! 나는 길을 잃었소… 나는 이 곳의 홀을 돌아다니다가 길을 잃었는데 출구를 찾을 수가 없소. 날 도와주겠소?"{#soego_s16_r1512}' if soegoLogic.r1512_condition():
            # a64 # r1512
            jump soego_s8

        '"멈추시오! 경비병들을 부르지 마시오! 나는 이 곳에서 나가고 싶을 뿐이오… 날 도와줄 수 있겠소?"{#soego_s16_r1513}' if soegoLogic.r1513_condition():
            # a65 # r1513
            jump soego_s13

        '그가 미처 소리를 지르기 전에 그의 목을 부러트린다.{#soego_s16_r1514}' if soegoLogic.r1514_condition():
            # a66 # r1514
            jump soego_s19

        '그가 미처 소리를 지르기 전에 그의 목을 부러트린다.{#soego_s16_r1515}' if soegoLogic.r1515_condition():
            # a67 # r1515
            jump soego_s22

        '"그럼 그들을 부르시오. 난 그들을 만나고 싶소."{#soego_s16_r1516}':
            # a68 # r1516
            jump soego_s18


# s17 # say1517
label soego_s17: # from 2.5 5.5 7.1 13.4 14.1 15.5 23.2 24.2 25.2 26.9 27.4 28.2 29.3 31.3 32.2 33.4 34.4 35.3 36.3 37.2 114.3 115.4
    nr '당신이 떠나려고 돌아서자, 그는 화난 듯 쉿 소리를 낸다. 그러다 갑자기 그는 냉정을 되찾고 손을 들어 올린다. "아니, 미안하지만 당신은 여기를 떠날 수가 없소. 틀림없이 뭔가 잘못되었소. 이 건을 명확하게 해결하는 것이 좋을 것 같소." 그의 입술 한쪽이 약간 씰룩거리며 그의 두 눈이 번뜩인다. "…아마 경비병들이 도울 수 있을 거요. 그래… 그들을 불러야겠소."{#soego_s17_}'

    menu:
        '"잠깐! 나는 길을 잃었소… 나는 이 곳의 홀을 돌아다니다가 길을 잃었는데 출구를 찾을 수가 없소. 날 도와주겠소?"{#soego_s17_r1518}' if soegoLogic.r1518_condition():
            # a69 # r1518
            jump soego_s8

        '"멈추시오! 경비병들을 부르지 마시오! 나는 이 곳에서 나가고 싶을 뿐이오… 날 도와줄 수 있겠소?"{#soego_s17_r1520}' if soegoLogic.r1520_condition():
            # a70 # r1520
            jump soego_s13

        '그가 미처 소리를 지르기 전에 그의 목을 부러트린다.{#soego_s17_r1521}' if soegoLogic.r1521_condition():
            # a71 # r1521
            jump soego_s19

        '그가 미처 소리를 지르기 전에 그의 목을 부러트린다.{#soego_s17_r1522}' if soegoLogic.r1522_condition():
            # a72 # r1522
            jump soego_s22

        '"그럼 그들을 부르시오. 난 그들을 만나고 싶소."{#soego_s17_r1523}':
            # a73 # r1523
            jump soego_s18


# s18 # say1524
label soego_s18: # from 6.4 9.0 9.1 9.4 16.4 17.4 40.4 40.5 41.6 50.6 53.6 61.4
    nr '소에고는 한 걸음 물러선 후, 손뼉을 세게 세 번 친다. 그에 응답하듯 시체안치소 안에서 거대한 철제 종소리가 울려 퍼지기 시작한다.{#soego_s18_}'

    menu:
        '"그럼 좋소…"{#soego_s18_r1525}':
            # a74 # r1525
            $ soegoLogic.r1525_action()
            jump soego_dispose


# s19 # say1526
label soego_s19: # from 3.1 4.2 6.2 9.2 16.2 17.2 40.2 51.0 61.2 114.2 115.3
    nr '그가 입도 뻥끗하기 전에 당신은 양손으로 그의 관자놀이를 꽉 조인다, 그리고 그의 목을 왼쪽으로 세게 비튼다.{#soego_s19_}'

    menu:
        '"당신 동료들에게 알리도록 내버려둘 수는 없지…"{#soego_s19_r1528}':
            # a75 # r1528
            $ soegoLogic.r1528_action()
            jump soego_s20


# s20 # say1529
label soego_s20: # from 19.0
    nr '그의 목이 부러지면서 *우지직* 소리가 난다… 하지만 그는 힘없이 늘어지는 대신 비명을 지르며 당신 손아귀에서 벗어난다!{#soego_s20_}'

    menu:
        '"뭐…?!"{#soego_s20_r1530}' if soegoLogic.r1530_condition():
            # a76 # r1530
            $ soegoLogic.r1530_action()
            jump morte_s100  # EXTERN

        '"뭐…?!"{#soego_s20_r1531}' if soegoLogic.r1531_condition():
            # a77 # r1531
            $ soegoLogic.r1531_action()
            jump soego_s21


# s21 # say1532
label soego_s21: # from 20.1
    nr '더스트맨도 당신만큼이나 충격을 받은 모양이다. 그는 정신이 나간 듯한 눈을 하고 있으며, 그의 목구멍에서는 꼴꼴 소리가 나고 있다… 그의 목이 부자연스러운 각도로 휜 것을 볼 때 당신이 그의 목을 부러트린 건 틀림없다, 하지만 그는 여전히 살아 있다! 당신이 놀란 채로 바라보는 동안 그는 힘없이 손뼉을 세 번 친다. 그에 응답하듯 시체안치소 안에서 거대한 철제 종소리가 울려 퍼지기 시작한다.{#soego_s21_}'

    menu:
        '"그럼 좋소…"{#soego_s21_r1533}':
            # a78 # r1533
            $ soegoLogic.r1533_action()
            jump soego_dispose


# s22 # say1534
label soego_s22: # from 3.2 4.3 6.3 9.3 16.3 17.3 40.3 61.3 114.1 115.2
    nr '*무언가가* 그에게 위험을 알린 듯하다. 당신이 미처 돌격하기도 전에 그는 한 걸음 물러선다. 그는 이빨을 드러내고 있으며 눈은 빨갛게 빛나고 있다. 그는 쉿 소리를 내며 손뼉을 세게 세 번 친다. 그에 응답하듯 시체안치소 안에서 거대한 철제 종소리가 울려 퍼지기 시작한다.{#soego_s22_}'

    menu:
        '"그럼 좋소…"{#soego_s22_r1535}':
            # a79 # r1535
            $ soegoLogic.r1535_action()
            jump soego_dispose


# s23 # say4792
label soego_s23: # from 14.0
    nr '"더스트맨이 사후에 계약자의 사체를 사용하는 것을 허용하는 계약서에 서명한 사람들이 있소. 당신은 기이한 사고에 말려들어 그렇게 되었을 가능성이 높소. 당신은 우리가 소유하고 있는 보통 좀비들보다 훨씬 똑똑한 것 같소."{#soego_s23_}'

    menu:
        '"사람들이 죽은 후에 자신들의 시체를 당신들에게 판단 말이오?"{#soego_s23_r4793}':
            # a80 # r4793
            jump soego_s24

        '"아. 다른 질문이 있소…"{#soego_s23_r4794}':
            # a81 # r4794
            jump soego_s26

        '"내겐 이런 일에 허비할 시간이 없소. 안녕히 계시오."{#soego_s23_r4795}':
            # a82 # r4795
            jump soego_s17


# s24 # say4796
label soego_s24: # from 23.0
    nr '"그렇소. 많은 사람들은 소액의 돈을 받고 진정한 죽음에 도달하면 필요없게 될 육체를 기꺼이 팔고 있소."{#soego_s24_}'

    menu:
        '"당신들은 이러한 시체들을 어디에 쓰는 거요?"{#soego_s24_r4797}':
            # a83 # r4797
            jump soego_s25

        '"알겠소… 당신에게 다른 질문을 좀 해도 괜찮겠소?"{#soego_s24_r4798}':
            # a84 # r4798
            jump soego_s25

        '"정보를 주어 고맙소. 안녕히 계시오."{#soego_s24_r4799}':
            # a85 # r4799
            jump soego_s17


# s25 # say4800
label soego_s25: # from 24.0 24.1
    nr '"좀비들은 시체안치소에서 허드렛일을 하오. 그들은 시체를 나르고, 바닥을 청소하며, 매장을 위해 시체를 준비하는 등 상대적으로 간단한 일들을 담당하오. 불행히도 그들은 조금이라도 복잡한 지시는 이해하고 실행할 수가 없소."{#soego_s25_}'

    menu:
        '"그래, "계약되었던„ 아니던 간에 만약 내가 죽지 않았었다면 어떻게 해서 이 곳에 오게 된 거요?"{#soego_s25_r4801}':
            # a86 # r4801
            jump soego_s54

        '"알겠소… 당신에게 다른 질문을 좀 해도 괜찮겠소?"{#soego_s25_r4802}':
            # a87 # r4802
            jump soego_s26

        '"정보를 주어 고맙소. 안녕히 계시오."{#soego_s25_r4803}':
            # a88 # r4803
            jump soego_s17


# s26 # say4804
label soego_s26: # from 12.0 23.1 25.1 27.2 28.0 29.1 31.1 32.0 33.2 34.2 35.1 36.1 37.0 58.0
    nr '소에고는 고개를 끄덕인다. "질문을 해도 좋소."{#soego_s26_}'

    menu:
        '"난 여길 떠나고 싶소. 나를 출구까지 안내해줄 수 있겠소?"{#soego_s26_r4805}' if soegoLogic.r4805_condition():
            # a89 # r4805
            jump soego_s8

        '"날 여기서 나가게 해줄 수 있소?"{#soego_s26_r4806}' if soegoLogic.r4806_condition():
            # a90 # r4806
            jump soego_s13

        '"2층에 좀비로 변장한 인간이 있다는 사실을 아시오?"{#soego_s26_r4807}' if soegoLogic.r4807_condition():
            # a91 # r4807
            jump soego_s27

        '"실례가 아니라면 묻겠는데… 괜찮소? 당신은 피곤해 보이오."{#soego_s26_r4809}':
            # a92 # r4809
            $ soegoLogic.r4809_action()
            jump soego_s31

        '"당신이 소에고군, 그렇소? 나는 당신이 더스트맨치고는 좀 이상하다고 들었소. 사람들이 당신은 쥐를 좋아한다고 하더군."{#soego_s26_r4810}' if soegoLogic.r4810_condition():
            # a93 # r4810
            $ soegoLogic.r4810_action()
            jump soego_s30

        '"당신이 소에고군, 그렇소? 나는 당신이 더스트맨치고는 좀 이상하다고 들었소. 사람들이 당신은 쥐를 좋아한다고 하더군."{#soego_s26_r4811}' if soegoLogic.r4811_condition():
            # a94 # r4811
            jump soego_s29

        '"파로드란 이름의 사람을 아시오?"{#soego_s26_r4832}' if soegoLogic.r4832_condition():
            # a95 # r4832
            jump soego_s33

        '"나는 일지를 잃어버렸소. 혹시 본 적이 있소?"{#soego_s26_r4833}' if soegoLogic.r4833_condition():
            # a96 # r4833
            jump soego_s37

        '"관두시오. 이만 실례해야겠소. 안녕히 계시오."{#soego_s26_r4834}' if soegoLogic.r4834_condition():
            # a97 # r4834
            jump soego_dispose

        '"관두시오. 이만 실례해야겠소. 안녕히 계시오."{#soego_s26_r4835}' if soegoLogic.r4835_condition():
            # a98 # r4835
            jump soego_s17


# s27 # say4808
label soego_s27: # from 26.2
    nr '"뭐라고 했소?"{#soego_s27_}'

    menu:
        '"좀비로 변장한 사람이 위층에 있소. 내 생각으로 그는 더스트맨을 염탐하고 있는 것 같소."{#soego_s27_r4836}' if soegoLogic.r4836_condition():
            # a99 # r4836
            $ soegoLogic.r4836_action()
            jump soego_s28

        '"좀비로 변장한 사람이 위층에 있소. 내 생각으로 그는 더스트맨을 염탐하고 있는 것 같소."{#soego_s27_r4837}' if soegoLogic.r4837_condition():
            # a100 # r4837
            $ soegoLogic.r4837_action()
            jump soego_s28

        '"관두시오. 다른 질문을 하겠소…"{#soego_s27_r4838}':
            # a101 # r4838
            jump soego_s26

        '"관두시오. 이만 실례해야겠소. 안녕히 계시오."{#soego_s27_r4839}' if soegoLogic.r4839_condition():
            # a102 # r4839
            jump soego_dispose

        '"관두시오. 이만 실례해야겠소. 안녕히 계시오."{#soego_s27_r916}' if soegoLogic.r916_condition():
            # a103 # r916
            jump soego_s17


# s28 # say4840
label soego_s28: # from 27.0 27.1
    nr '"뭐라고? 누가 왜 그런…?" 그의 목소리는 듣기 어려울 정도로 낮아진다, 그리고 그가 입술을 뒤로 말자 마치 톱니와도 같은 이빨들이 드러난다. "*아나키스트.*" 그의 눈을 붉게 번뜩인다. "아나키스트가 *이 곳에* 침투하나니." 그는 갑자기 당신이 여기 있다는 사실을 기억한 듯 냉정을 되찾는다. "내게 이 사실을 알려 주어 고맙소. 경비병들에게 이 사태에 대해 조치를 취하도록 알리겠소."{#soego_s28_}'

    menu:
        '"괜찮소. 그 밖에도 질문할 것들이 좀 있소…"{#soego_s28_r4852}':
            # a104 # r4852
            jump soego_s26

        '"관두시오. 이만 실례해야겠소. 안녕히 계시오."{#soego_s28_r4853}' if soegoLogic.r4853_condition():
            # a105 # r4853
            jump soego_dispose

        '"관두시오. 이만 실례해야겠소. 안녕히 계시오."{#soego_s28_r4854}' if soegoLogic.r4854_condition():
            # a106 # r4854
            jump soego_s17


# s29 # say4855
label soego_s29: # from 26.5
    nr '당신은 얘기를 하려다가 갑자기 멈춘다. 소에고를 바라보고 있자니 이상한 느낌이 온다…이유는 알 수 없으나 그에게 아무 말도 해서는 안된다는 생각이 든다.{#soego_s29_}'

    menu:
        '"나는 당신이 좀 이상하다고 들었소. 사람들이 당신은 쥐를 좋아한다고 하더군."{#soego_s29_r4856}':
            # a107 # r4856
            jump soego_s30

        '"어… 당신에게 물어볼 것이 있소."{#soego_s29_r4857}':
            # a108 # r4857
            jump soego_s26

        '"관두시오. 이만 실례해야겠소. 안녕히 계시오."{#soego_s29_r4858}' if soegoLogic.r4858_condition():
            # a109 # r4858
            jump soego_dispose

        '"관두시오. 이만 실례해야겠소. 안녕히 계시오."{#soego_s29_r4859}' if soegoLogic.r4859_condition():
            # a110 # r4859
            jump soego_s17


# s30 # say4860
label soego_s30: # from 26.4 29.0
    nr '그는 잠시 입을 다물고 당신을 관찰한다. 그의 눈은 붉은 색으로 번뜩이고 있으며, 그는 작은 쉿 소리를 내고 있다. "당신은 여기 너무 오래 머무른 것 같소." 갑작스럽게 그는 한 걸음 물러선 후, 손뼉을 세게 세 번 친다. 그에 응답하듯 시체안치소 안에서 거대한 철제 종소리가 울려 퍼지기 시작한다.{#soego_s30_}'

    menu:
        '"뭐…? 대체 뭘 하고 있는 거요?"{#soego_s30_r4861}':
            # a111 # r4861
            $ soegoLogic.r4861_action()
            jump soego_dispose

        '"그럼 좋소. 죽을 준비를 하시오, 소에고."{#soego_s30_r4862}':
            # a112 # r4862
            $ soegoLogic.r4862_action()
            jump soego_dispose


# s31 # say4863
label soego_s31: # from 26.3
    nr '소에고는 힘없이 웃는다, 그리고 그의 입 한쪽 구석은 약하게 씰룩거린다. "나는 최근 몸이 좋지 않소… 가벼운 열병에 걸렸소, 그뿐이오. 그 때문에 때때로 잠을 잘 수가 없소."{#soego_s31_}'

    menu:
        '"내가 할 수 있는 일은 없겠소?"{#soego_s31_r4864}':
            # a113 # r4864
            $ soegoLogic.r4864_action()
            jump soego_s32

        '"아. 다른 질문이 있소…"{#soego_s31_r4865}':
            # a114 # r4865
            jump soego_s26

        '"알겠소. 이만 실례해야겠소. 안녕히 계시오."{#soego_s31_r4866}' if soegoLogic.r4866_condition():
            # a115 # r4866
            jump soego_dispose

        '"알겠소. 이만 실례해야겠소. 안녕히 계시오."{#soego_s31_r4867}' if soegoLogic.r4867_condition():
            # a116 # r4867
            jump soego_s17


# s32 # say4868
label soego_s32: # from 31.0
    nr '소에고는 고개를 젓는다. "괜찮소. 걱정을 해주어 고맙소… 난 견딜 수 있소." 그는 얼굴을 약간 찌푸린다. "그 밖에 내게 원하는 건 있소?"{#soego_s32_}'

    menu:
        '"그렇소. 그 밖에도 질문할 것들이 좀 있소…"{#soego_s32_r4869}':
            # a117 # r4869
            jump soego_s26

        '"아니오, 당신을 더 이상 귀찮게 하지 않겠소. 정보를 주어 고맙소."{#soego_s32_r4870}' if soegoLogic.r4870_condition():
            # a118 # r4870
            jump soego_dispose

        '"아니오, 당신을 더 이상 귀찮게 하지 않겠소. 정보를 주어 고맙소."{#soego_s32_r4871}' if soegoLogic.r4871_condition():
            # a119 # r4871
            jump soego_s17


# s33 # say4872
label soego_s33: # from 26.6
    nr '"파로드? 물론 나는 그를 아오." 그는 눈살을 찌푸린다, 그리고 그의 눈은 붉게 빛난다. "악귀같은 자요. 죽은 자를 존중할 주 모르는 위인이오, 산 자에 대해서는 말할 필요도 없고. 그는 수집자로 하이에나와 마찬가지요."{#soego_s33_}'

    menu:
        '"수집자?"{#soego_s33_r4873}':
            # a120 # r4873
            jump soego_s34

        '"그가 어디에 있는지 혹시 아시오?"{#soego_s33_r4874}':
            # a121 # r4874
            jump soego_s36

        '"아. 다른 질문이 있소…"{#soego_s33_r4875}':
            # a122 # r4875
            jump soego_s26

        '"알겠소. 나는 이만 실례하는 것이 좋을 듯하오."{#soego_s33_r4876}' if soegoLogic.r4876_condition():
            # a123 # r4876
            jump soego_dispose

        '"알겠소. 나는 이만 실례하는 것이 좋을 듯하오."{#soego_s33_r4877}' if soegoLogic.r4877_condition():
            # a124 # r4877
            jump soego_s17


# s34 # say4878
label soego_s34: # from 33.0 36.0
    nr '"수집자는 시체를 모아 시체안치소로 가져옴으로서 생계를 유지하오. 우리는 그러한 사체들이 제대로 매장되도록 만전을 기하오."{#soego_s34_}'

    menu:
        '"그래, 만약 어떤 수집자가 시체를… 예를 들어 내 시체를… 발견했다면, 이 곳으로 가져와 당신들에게 팔았겠군."{#soego_s34_r4879}' if soegoLogic.r4879_condition():
            # a125 # r4879
            jump soego_s35

        '"그래 이 파로드란 수집자… 당신은 혹시 그가 어디 있는지 아시오?"{#soego_s34_r4880}':
            # a126 # r4880
            jump soego_s36

        '"아. 다른 질문이 있소…"{#soego_s34_r4881}':
            # a127 # r4881
            jump soego_s26

        '"알겠소. 이만 실례해야겠소. 안녕히 계시오."{#soego_s34_r4882}' if soegoLogic.r4882_condition():
            # a128 # r4882
            jump soego_dispose

        '"알겠소. 이만 실례해야겠소. 안녕히 계시오."{#soego_s34_r4883}' if soegoLogic.r4883_condition():
            # a129 # r4883
            jump soego_s17


# s35 # say4884
label soego_s35: # from 34.0
    nr '"그렇소."{#soego_s35_}'

    menu:
        '"흠… 갑자기 이 파로드란 사람을 찾는 일이 극히 중요하게 느껴지는군. 당신은 혹시 그가 어디 있는지 아시오?"{#soego_s35_r4885}':
            # a130 # r4885
            jump soego_s36

        '"아. 다른 질문이 있소…"{#soego_s35_r4886}':
            # a131 # r4886
            jump soego_s26

        '"정보를 주어 고맙소. 안녕히 계시오."{#soego_s35_r4887}' if soegoLogic.r4887_condition():
            # a132 # r4887
            jump soego_dispose

        '"정보를 주어 고맙소. 안녕히 계시오."{#soego_s35_r4888}' if soegoLogic.r4888_condition():
            # a133 # r4888
            jump soego_s17


# s36 # say4889
label soego_s36: # from 33.1 34.1 35.0
    nr '"나는 그가 시체안치소 밖의 빈민굴인 벌통에 산다는 걸 아나, 정확히 어디에 사는지는 모르오. 수집자들 중에 아는 사람들이 있을지도 모르오, 하지만 그들이 당신에게 털어놓을지 모르겠소."{#soego_s36_}'

    menu:
        '"수집자들이 어떤 일을 하는지 다시 얘기해주겠소?"{#soego_s36_r4890}':
            # a134 # r4890
            jump soego_s34

        '"아. 다른 질문이 있소…"{#soego_s36_r4891}':
            # a135 # r4891
            jump soego_s26

        '"정보를 주어 고맙소. 안녕히 계시오."{#soego_s36_r4892}' if soegoLogic.r4892_condition():
            # a136 # r4892
            jump soego_dispose

        '"정보를 주어 고맙소. 안녕히 계시오."{#soego_s36_r4893}' if soegoLogic.r4893_condition():
            # a137 # r4893
            jump soego_s17


# s37 # say4894
label soego_s37: # from 26.7
    nr '"일지?" 소에고는 혼란스러운 듯하다. "아니, 본 적이 없소."{#soego_s37_}'

    menu:
        '"그럼 관두시오. 그 밖에도 질문할 것들이 좀 있소…"{#soego_s37_r4895}':
            # a138 # r4895
            jump soego_s26

        '"어쨌든 고맙소. 안녕히 계시오."{#soego_s37_r4896}' if soegoLogic.r4896_condition():
            # a139 # r4896
            jump soego_dispose

        '"어쨌든 고맙소. 안녕히 계시오."{#soego_s37_r4897}' if soegoLogic.r4897_condition():
            # a140 # r4897
            jump soego_s17


# s38 # say4898
label soego_s38: # - # IF WEIGHT #9 /* Triggers after states #: 59 58 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") !Global("Appearance","GLOBAL",1) Global("Gate_Open","GLOBAL",0) Global("Soego","GLOBAL",0)
    nr '당신 시야에 흑색 법복을 입은 피곤한 듯한 사내가 들어온다. 그의 가는 얼굴은 극도로 창백하며, 그는 거의 잠을 자지 못한 것처럼 보인다. 그의 어깨는 축 늘어졌으며, 그의 충혈된 눈 아래에는 살이 처져 있다. 그는 얼마나 생각에 몰두하고 있는지 당신의 존재를 알아차리지 못하고 있는 듯하다.{#soego_s38_}'

    menu:
        '"안녕하시오…"{#soego_s38_r66706}' if soegoLogic.r66706_condition():
            # a141 # r66706
            $ soegoLogic.r66706_action()
            jump soego_s39

        '"안녕하시오…"{#soego_s38_r66707}' if soegoLogic.r66707_condition():
            # a142 # r66707
            $ soegoLogic.r66707_action()
            jump soego_s113

        '그가 생각을 하도록 내버려 둔다.{#soego_s38_r66708}':
            # a143 # r66708
            jump soego_dispose


# s39 # say4904
label soego_s39: # from 38.0
    nr '"안녕하시오…" 사내는 당신을 향해 몸을 돌린 후 가볍게 인사한다. 당신은 그의 눈이 충혈된 것이라기보다는 약간의 붉은 색조를 띠고 있는 것이라는 사실을 갑자기 깨닫는다. "나는 소에고요. 내가 어떻게…" 그는 갑자기 당신의 흉터를 눈치챈 것 같다, 그리고 입 한쪽 구석을 씰룩거린다. "미안하오, 하지만 당신은 길을 잃었소?"{#soego_s39_}'

    menu:
        '"그렇소."{#soego_s39_r4905}':
            # a144 # r4905
            jump soego_s40

        '"아니오."{#soego_s39_r4906}':
            # a145 # r4906
            jump soego_s41

        '"아니오, 나는 길을 잃지 않았소. 물어볼 것이 좀 있소…"{#soego_s39_r4907}':
            # a146 # r4907
            jump soego_s41

        '"아니오. 난 출구를 찾고 있었을 뿐이오. 안녕히 계시오."{#soego_s39_r4908}':
            # a147 # r4908
            jump soego_s41


# s40 # say4909
label soego_s40: # from 39.0
    nr '"그럼…" 소에고의 입은 무슨 기대라도 하듯 다시 씰룩거린다. "그럼 당신을 밖으로 안내할 경비병을 부르도록 하겠소. 잠깐만 서 계시오." 그는 곧 경비병들을 부를 것 같다.{#soego_s40_}'

    menu:
        '"잠깐! 제발… 경비병들을 부를 필요는 없소. 나는 장례식에 참석하러 왔다가 길을 잃었소… 내게 나가는 길을 안내해 줄 수 있겠소?"{#soego_s40_r4910}' if soegoLogic.r4910_condition():
            # a148 # r4910
            jump soego_s8

        '"아니오! 나는 길을 잃지 않았소. 내가 말을 잘못했소."{#soego_s40_r4911}':
            # a149 # r4911
            jump soego_s50

        '그가 미처 소리를 지르기 전에 그의 목을 부러트린다.{#soego_s40_r4912}' if soegoLogic.r4912_condition():
            # a150 # r4912
            jump soego_s19

        '그가 미처 소리를 지르기 전에 그의 목을 부러트린다.{#soego_s40_r4913}' if soegoLogic.r4913_condition():
            # a151 # r4913
            jump soego_s22

        '재빨리 떠난다.{#soego_s40_r4914}':
            # a152 # r4914
            jump soego_s18

        '기다린다.{#soego_s40_r4915}':
            # a153 # r4915
            jump soego_s18


# s41 # say4916
label soego_s41: # from 39.1 39.2 39.3
    nr '"나는 당신을 들여보낸 기억이 없소." 소에고는 의심스러운 눈으로 당신을 바라본다. 그리고 그의 눈은 횃불의 빛을 받아 붉게 빛난다. "당신이 여기서 뭘 하고 있는지 물어도 괜찮겠소?"{#soego_s41_}'

    menu:
        '"나는 장례식에 참석해 고인에게 추모의 뜻을 표하러 이 곳에 왔었소. 그런데 떠나려고 보니… 길을 잃어버렸지 않았겠소. 내가 출구를 찾도록 도와줄 수 있겠소?"{#soego_s41_r4917}' if soegoLogic.r4917_condition():
            # a154 # r4917
            jump soego_s8

        '"당신과는 상관없는 일이오."{#soego_s41_r4918}':
            # a155 # r4918
            jump soego_s6

        '"나는 당신네 준비실에 있는 철판 위에서 깨어났소."{#soego_s41_r4919}':
            # a156 # r4919
            jump soego_s42

        '"누굴 좀 만나러 왔소."{#soego_s41_r4920}':
            # a157 # r4920
            jump soego_s43

        '"나는 이 곳에 장례식 때문에 왔소, 하지만 뭔가 착오가 있었던 듯하오."{#soego_s41_r4921}' if soegoLogic.r4921_condition():
            # a158 # r4921
            jump soego_s53

        '그에게 뭔가 속삭이려는 것처럼 몸을 기울인 후, 그가 몸을 구부리면 그의 목을 부러트린다.{#soego_s41_r4922}':
            # a159 # r4922
            jump soego_s51

        '재빨리 떠난다.{#soego_s41_r4923}':
            # a160 # r4923
            jump soego_s18


# s42 # say4924
label soego_s42: # from 41.2 50.2 115.0
    nr '그는 놀란 듯하다. "당신은… 위층의 철판 위에서 일어났단 말이오?"{#soego_s42_}'

    menu:
        '"어, 아니오. 말을 잘못했소."{#soego_s42_r4925}':
            # a161 # r4925
            jump soego_s50

        '"그렇소. 믿기 어려우리라는 건 알지만 사실이오. 난 위층에 있는 철판들 중 한 곳에서 깨어났소."{#soego_s42_r4926}':
            # a162 # r4926
            $ soegoLogic.r4926_action()
            jump soego_s7


# s43 # say4927
label soego_s43: # from 41.3 50.3
    nr '소에고는 고개를 끄덕인다. "당신은 누구를 만나러 왔소? 내가 기꺼이 안내해 드리리다."{#soego_s43_}'

    menu:
        '"당신과는 상관없는 일이오."{#soego_s43_r4928}':
            # a163 # r4928
            jump soego_s6

        '"나는 달을 만나러 왔소."{#soego_s43_r4929}' if soegoLogic.r4929_condition():
            # a164 # r4929
            jump soego_s44

        '"나는 데이오나라를 만나러 왔소."{#soego_s43_r4930}' if soegoLogic.r4930_condition():
            # a165 # r4930
            jump soego_s47

        '거짓말: "어… 아단. 그는 아직도 여기서 일하오, 아니면…?"{#soego_s43_r4931}' if soegoLogic.r4931_condition():
            # a166 # r4931
            $ soegoLogic.r4931_action()
            jump soego_s49

        '거짓말: "어… 아단. 그는 아직도 여기서 일하오, 아니면…?"{#soego_s43_r4932}' if soegoLogic.r4932_condition():
            # a167 # r4932
            jump soego_s49

        '"어, 아무도 아니오. 말을 잘못했소."{#soego_s43_r4933}':
            # a168 # r4933
            jump soego_s50


# s44 # say4934
label soego_s44: # from 43.1
    nr '"달? 서기인 달이라면 위층의 접수실에 있소." 소에고의 입 한쪽 구석이 잠시 씰룩거린다. "그는 상당히 바쁘며, 그의 건강 역시 악화되고 있소. 중요한 용건이 아니라면 그를 방해하지 않는 것이 좋을 거요."{#soego_s44_}'

    menu:
        '"달에게 무슨 문제라도 있소?"{#soego_s44_r4935}':
            # a169 # r4935
            jump soego_s46

        '"접수실?"{#soego_s44_r4936}':
            # a170 # r4936
            jump soego_s45

        '"알겠소. 그와의 만남은 가능한 한 짧게 갖도록 하겠소. 안녕히 계시오."{#soego_s44_r4937}':
            # a171 # r4937
            jump soego_s62


# s45 # say4938
label soego_s45: # from 44.1
    nr '"그렇소. 접수실은 이 도시의 시체가 이 곳으로 온 후 가는 장소요. 거기서 시체들은 장부에 기록되고 매장을 위한 준비를 받게 되오."{#soego_s45_}'

    menu:
        '"달에게 무슨 문제라도 있소?"{#soego_s45_r4939}':
            # a172 # r4939
            jump soego_s46

        '"안내를 해주어 고맙소. 달과의 만남은 가능한 한 짧게 갖도록 하겠소. 안녕히 계시오."{#soego_s45_r4940}':
            # a173 # r4940
            jump soego_s62


# s46 # say4941
label soego_s46: # from 44.0 45.0
    nr '"달에게 특별히 잘못된 곳은 없소. 달은…" 소에고는 이빨을 딸깍거린다. "…늙었을 뿐이오. 죽은 자들을 기록하는 그의 오랜 헌신도 이제 종점에 도착하려 하고 있소. 그가 걸린 소모성의 질병 때문에 그는 조만간 사망할 거요."{#soego_s46_}'

    menu:
        '"알겠소. 그와의 만남은 가능한 한 짧게 갖도록 하겠소. 안녕히 계시오."{#soego_s46_r4942}':
            # a174 # r4942
            jump soego_s62


# s47 # say4943
label soego_s47: # from 43.2 53.2
    nr '"데이오나라? 북서쪽의 기념 홀에 그런 이름을 가진 여인이 안장되었소. 달신이 찾는 여자가 그녀요?"{#soego_s47_}'

    menu:
        '"그렇소… 그녀에게 어떤 일이 일어났는지 말해줄 수 있겠소?"{#soego_s47_r4944}':
            # a175 # r4944
            jump soego_s48

        '"그렇소 이제 가서 애도의 뜻을 표하도록 하겠소."{#soego_s47_r4945}':
            # a176 # r4945
            jump soego_s62


# s48 # say4946
label soego_s48: # from 47.0
    nr '"모르겠소, 하지만 그녀는 이 곳에 상당히 오래 전부터 있었소. 그녀의 아버지라면 그녀에게 어떤 일이 일어났었는지 알지 모르오… 그는 상부 구역에 있는 사무실로부터 이 곳을 자주 방문하오. 그녀가 이 곳의 기념 홀에 안장된 것은 그의 희망에 의한 것이었소."{#soego_s48_}'

    menu:
        '"안내를 해주어 고맙소. 가서 애도의 뜻을 표하도록 하겠소."{#soego_s48_r4947}':
            # a177 # r4947
            jump soego_s62


# s49 # say4948
label soego_s49: # from 43.3 43.4 53.3 53.4
    nr '"아단…" 소에고는 눈을 가늘게 뜬다, 그러자 당신이 아까 본 그의 눈의 붉은 색조는 한층 더 강조된다. "산 자든 죽은 자든 간에 그런 이름을 가진 사람은 시체안치소에는 없소."{#soego_s49_}'

    menu:
        '"어… 그럼 내가 말을 잘못한 모양이오."{#soego_s49_r4949}':
            # a178 # r4949
            jump soego_s50


# s50 # say4950
label soego_s50: # from 40.1 42.0 43.5 49.0 53.1 57.1
    nr '소에고의 입 한 구석은 다시 씰룩거리고, 그의 눈은 번뜩인다. "그럼 당신이 여기 온 용건은 무엇이오?"{#soego_s50_}'

    menu:
        '"나는 장례식에 참석해 고인에게 추모의 뜻을 표하러 이 곳에 왔었소. 그런데 떠나려고 보니… 길을 잃어버렸지 않았겠소. 내가 출구를 찾도록 도와줄 수 있겠소?"{#soego_s50_r4951}' if soegoLogic.r4951_condition():
            # a179 # r4951
            jump soego_s8

        '"당신과는 상관없는 일이오."{#soego_s50_r4952}':
            # a180 # r4952
            jump soego_s6

        '"나는 당신네 준비실에 있는 철판 위에서 깨어났소."{#soego_s50_r4953}':
            # a181 # r4953
            jump soego_s42

        '"누굴 좀 만나러 왔소."{#soego_s50_r4954}':
            # a182 # r4954
            jump soego_s43

        '"나는 장례식 때문에 이 곳에 왔소."{#soego_s50_r4955}' if soegoLogic.r4955_condition():
            # a183 # r4955
            jump soego_s53

        '그에게 뭔가 속삭이려는 것처럼 몸을 기울인 후, 그가 몸을 구부리면 그의 목을 부러트린다.{#soego_s50_r4956}':
            # a184 # r4956
            jump soego_s51

        '도망친다.{#soego_s50_r5028}':
            # a185 # r5028
            jump soego_s18


# s51 # say4957
label soego_s51: # from 41.5 50.5 53.5
    nr '당신이 몸을 구부리자 소에고는 눈살을 찌푸린다, 그리고 당신은 그가 무슨 시험이라도 하듯 공기 냄새를 맡고 있다는 것을 알아챈다. 그는 마치 당장이라도 경비병들을 부를 것처럼 눈을 가늘게 뜬다.{#soego_s51_}'

    menu:
        '그가 미처 소리를 지르기 전에 그의 목을 부러트린다.{#soego_s51_r4958}' if soegoLogic.r4958_condition():
            # a186 # r4958
            jump soego_s19

        '그가 미처 소리를 지르기 전에 그의 목을 부러트린다.{#soego_s51_r4959}' if soegoLogic.r4959_condition():
            # a187 # r4959
            jump soego_s52


# s52 # say4960
label soego_s52: # from 51.1
    nr '당신이 돌격하자 그는 한 걸음 물러선다. 그는 이빨을 드러내고 있으며 눈은 빨갛게 빛나고 있다. 그는 쉿 소리를 내며 손뼉을 세게 세 번 친다. 그에 응답하듯 시체안치소 안에서 거대한 철제 종소리가 울려 퍼지기 시작한다.{#soego_s52_}'

    menu:
        '"그럼 좋소…"{#soego_s52_r4961}':
            # a188 # r4961
            $ soegoLogic.r4961_action()
            jump soego_dispose


# s53 # say4962
label soego_s53: # from 41.4 50.4
    nr '"누구의 장례식이라고 했소? 아마 당신이 참석하려는 장례식은 시체안치소의 다른 곳에서 거행되고 있을지도 모르오."{#soego_s53_}'

    menu:
        '"당신은 내 말을 이해하지 못한 것 같군… 내 말은 당신들 착오 때문에 내가 장례식을 당하게 될 뻔했다는 얘기요."{#soego_s53_r4963}':
            # a189 # r4963
            jump soego_s57

        '"미안하오… 내가 말을 잘못했소. 난 고인의 이름을 모르오."{#soego_s53_r4964}':
            # a190 # r4964
            jump soego_s50

        '"고인의 이름은 데이오나라요."{#soego_s53_r4965}' if soegoLogic.r4965_condition():
            # a191 # r4965
            jump soego_s47

        '거짓말: "이름은… 어, 아단이오."{#soego_s53_r4967}' if soegoLogic.r4967_condition():
            # a192 # r4967
            $ soegoLogic.r4967_action()
            jump soego_s49

        '거짓말: "이름은… 어, 아단이오."{#soego_s53_r4968}' if soegoLogic.r4968_condition():
            # a193 # r4968
            jump soego_s49

        '마치 그에게 뭔가 속삭이려는 것처럼 몸을 기울인 후 그의 목을 부러트린다.{#soego_s53_r4969}':
            # a194 # r4969
            jump soego_s51

        '도망친다.{#soego_s53_r4970}':
            # a195 # r4970
            jump soego_s18


# s54 # say4966
label soego_s54: # from 7.0 25.0
    nr '"글쎄…" 소에고는 당신을 흘긋 본다. 그는 혼란스러운 듯하다. "분명히 착오가 있었던 모양이오. 당신은 이 곳에 데려온 건 당신의 육친, 다른 더스트맨, 또는…" 소에고는 불쾌한 생각이 갑자기 든 것처럼 쉿 소리를 낸다. "또는 수집자들 중 하나일 것이오."{#soego_s54_}'

    menu:
        '"수집자들?"{#soego_s54_r4971}':
            # a196 # r4971
            jump soego_s55


# s55 # say4972
label soego_s55: # from 54.0
    nr '"그렇소, 수집자들… 죽은 자의 유해를 우리에게 가져오는 하이에나 같은 자들의 무리요. 그들은 당신이 죽었다고 생각했을지도 모르오…" 그는 쉿 소리를 낸 후 눈을 번뜩인다. "…그리고 그들은 돈에 눈이 먼 자들이라 당신을 데려오기 전에 확인하려고 하지도 않았을 거요." 소에고는 당신을 살펴본다. "당신이 깨어난 것은 불행한 일이오… 아니면 진정한 죽음에 때가 되기도 전에 도달했을 텐데."{#soego_s55_}'

    menu:
        '"그럼 무슨 착오가 있었던 모양이오… 그리고 난 여길 떠나고 싶소. 지금 당장."{#soego_s55_r4973}':
            # a197 # r4973
            jump soego_s56


# s56 # say4974
label soego_s56: # from 55.0 59.1
    nr '소에고는 고개를 끄덕인다, 그리고 그의 입 한쪽 구석은 씰룩거린다. "물론이오. 당신을 위해 정문을 열어 주리다."{#soego_s56_}'

    menu:
        '"좋소."{#soego_s56_r4975}' if soegoLogic.r4975_condition():
            # a198 # r4975
            $ soegoLogic.r4975_action()
            jump soego_dispose

        '"좋소."{#soego_s56_r4976}' if soegoLogic.r4976_condition():
            # a199 # r4976
            jump soego_s9


# s57 # say4977
label soego_s57: # from 53.0
    nr '"당신?"{#soego_s57_}'

    menu:
        '"그래, *나* 말이오. 나는 위층에 있는 철판들 중 한 곳에서 깨어났소."{#soego_s57_r4978}':
            # a200 # r4978
            jump soego_s7

        '"미안하오… 내가 말을 잘못했소."{#soego_s57_r4979}':
            # a201 # r4979
            jump soego_s50


# s58 # say4980
label soego_s58: # - # IF WEIGHT #6 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Gate_Open","GLOBAL",1)
    nr '당신이 다가가자 그는 공기 냄새를 맡은 후 당신을 올려다 본다. 당신을 보자 그는 눈살을 찌푸린다. "난 당신을 위해 정문을 열어 주었소. 왜 아직도 여기 있는 거요?"{#soego_s58_}'

    menu:
        '"내가 떠나기 전에 당신에게 물어보고 싶은 것들이 좀 있소."{#soego_s58_r4981}':
            # a202 # r4981
            jump soego_s26

        '"나는 이제 정문으로 향하도록 하겠소. 안녕히 계시오."{#soego_s58_r4982}':
            # a203 # r4982
            jump soego_dispose


# s59 # say4983
label soego_s59: # - # IF WEIGHT #7 /* Triggers after states #: 63 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR0201") Global("Soego","GLOBAL",1) Global("Gate_Open","GLOBAL",0)
    nr '당신이 다가가자 그는 공기 냄새를 맡은 후 당신을 올려다 본다. 당신을 보자 그는 가볍게 인사한다. "찾던 것을 찾았소?"{#soego_s59_}'

    menu:
        '"그래, 고맙소. 미안하지만 나는 이 곳에서 길을 잃었소… 내가 출구를 찾도록 도와줄 수 있겠소?"{#soego_s59_r4984}' if soegoLogic.r4984_condition():
            # a204 # r4984
            jump soego_s60

        '"그렇소. 지금 곧 떠나고 싶소. 날 출구까지 안내해 줄 수 있겠소?"{#soego_s59_r4985}' if soegoLogic.r4985_condition():
            # a205 # r4985
            jump soego_s56

        '"그렇소, 그리고 지금 난 정문으로 향하고 있소. 안녕히 계시오."{#soego_s59_r4986}':
            # a206 # r4986
            jump soego_dispose


# s60 # say4987
label soego_s60: # from 59.0
    nr '소에고는 고개를 끄덕인다, 그리고 그의 입 한쪽 구석은 씰룩거린다. "물론이오. 당신을 위해 정문을 열어 주리다."{#soego_s60_}'

    menu:
        '"고맙소."{#soego_s60_r4988}' if soegoLogic.r4988_condition():
            # a207 # r4988
            $ soegoLogic.r4988_action()
            jump soego_dispose

        '"고맙소."{#soego_s60_r4989}' if soegoLogic.r4989_condition():
            # a208 # r4989
            jump soego_s9


# s61 # say4990
label soego_s61: # from 13.2
    nr '"이건 정말 이상하군." 소에고의 눈은 붉은 색으로 번뜩이고, 무슨 기대라도 하는 듯 입의 한쪽 구석을 씰룩거린다. "아마…" 그는 날카롭고 더러운 이빨을 드러내며 조소한다. "경비병을 부르는 것이 좋을 것 같소. 그래, 그게 좋겠군."{#soego_s61_}'

    menu:
        '"잠깐! 나는 길을 잃었소… 나는 이 곳의 홀을 돌아다니다가 길을 잃었는데 출구를 찾을 수가 없소. 날 도와주겠소?"{#soego_s61_r4991}' if soegoLogic.r4991_condition():
            # a209 # r4991
            jump soego_s8

        '"멈추시오! 경비병들을 부르지 마시오! 나는 이 곳에서 나가고 싶을 뿐이오… 날 도와줄 수 있겠소?"{#soego_s61_r4992}' if soegoLogic.r4992_condition():
            # a210 # r4992
            jump soego_s13

        '그가 미처 소리를 지르기 전에 그의 목을 부러트린다.{#soego_s61_r4993}' if soegoLogic.r4993_condition():
            # a211 # r4993
            jump soego_s19

        '그가 미처 소리를 지르기 전에 그의 목을 부러트린다.{#soego_s61_r4994}' if soegoLogic.r4994_condition():
            # a212 # r4994
            jump soego_s22

        '"그럼 그들을 부르시오. 난 그들을 만나고 싶소."{#soego_s61_r4995}':
            # a213 # r4995
            jump soego_s18


# s62 # say4996
label soego_s62: # from 44.2 45.1 46.0 47.1 48.0
    nr '소에고는 고개를 끄덕인다… 그리고 그의 입 한쪽 구석은 다시 씰룩거린다. 그는 자신의 그런 습관을 모르는 듯하다. "고인에게 애도의 뜻을 표하고 나면 돌아오시오, 그러면 당신을 위해 정문을 열어 주겠소. 종이 아홉 번 울린 후니 서둘러 용무를 끝내시오."{#soego_s62_}'

    menu:
        '"생각해 보니 다른 기회에 하는 것이 좋을 것 같소. 지금 당장 날 내보내 줄 수 있겠소?"{#soego_s62_r4997}':
            # a214 # r4997
            jump soego_s8

        '"고맙소. 돌아오도록 하겠소."{#soego_s62_r4998}':
            # a215 # r4998
            jump soego_dispose


# s63 # say21653
label soego_s63: # - # IF WEIGHT #4 /* Triggers after states #: 108 79 82 95 even though they appear after this state */ ~  CreatureInArea("AR1500") !Global("CR_Vic","GLOBAL",1)
    nr '"아, 또 다른 산 자로군. 지하 묘지의 이토록 깊숙한 곳까지 내려오는 자는 대부분 굴들에게 죽임을 당하는데 당신은 운이 좋소."{#soego_s63_}'

    menu:
        '"당신은 시체안치소의 소에고가 아니오? 여기서 뭘 하고 있는 거요?"{#soego_s63_r21655}' if soegoLogic.r21655_condition():
            # a216 # r21655
            $ soegoLogic.r21655_action()
            jump soego_s72

        '"당신은 누구요?"{#soego_s63_r21656}' if soegoLogic.r21656_condition():
            # a217 # r21656
            $ soegoLogic.r21656_action()
            jump soego_s64

        '"여기는 어디요?"{#soego_s63_r21657}' if soegoLogic.r21657_condition():
            # a218 # r21657
            $ soegoLogic.r21657_action()
            jump soego_s77

        '"왜 내가 이 곳에 감금된 거요?"{#soego_s63_r21658}' if soegoLogic.r21658_condition():
            # a219 # r21658
            $ soegoLogic.r21658_action()
            jump soego_s78

        '"아마 그럴지도. 안녕히 계시오."{#soego_s63_r21660}' if soegoLogic.r21660_condition():
            # a220 # r21660
            $ soegoLogic.r21660_action()
            jump soego_s71


# s64 # say21661
label soego_s64: # from 63.1 77.0 78.0
    nr '"나는 더스트맨의 당원인 소에고요. 나는 이 곳에 선교사로서 왔소." 그는 고개를 반쯤 숙여 인사한다.{#soego_s64_}'

    menu:
        '"선교사?"{#soego_s64_r21662}':
            # a221 # r21662
            jump soego_s65

        '"더스트맨이 이런 곳에서 뭘 하는 거요?"{#soego_s64_r21663}' if soegoLogic.r21663_condition():
            # a222 # r21663
            jump soego_s66

        '"여기는 어디요?"{#soego_s64_r64595}':
            # a223 # r64595
            jump soego_s77

        '"왜 내가 이 곳에 감금된 거요?"{#soego_s64_r64596}':
            # a224 # r64596
            jump soego_s78

        '"안녕하시오, 그리고 안녕히 계시오."{#soego_s64_r21665}':
            # a225 # r21665
            jump soego_s71


# s65 # say21666
label soego_s65: # from 64.0 72.2 73.2 74.0 101.3 104.1
    nr '"그렇소, 나는 자아를 지닌 언데드들이 이 곳에 있다는 소문을 듣고 이 지하 묘지로 왔소. 나는 그들을 구원하고자 하오."{#soego_s65_}'

    menu:
        '"그들을 구원한다?"{#soego_s65_r21667}':
            # a226 # r21667
            jump soego_s67

        '"여기는 어디요?"{#soego_s65_r64597}':
            # a227 # r64597
            jump soego_s77

        '"왜 내가 이 곳에 감금된 거요?"{#soego_s65_r64599}':
            # a228 # r64599
            jump soego_s78

        '"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."{#soego_s65_r21669}':
            # a229 # r21669
            jump soego_s71


# s66 # say21670
label soego_s66: # from 64.1 72.3 73.3 74.1 101.4 104.2 109.2
    nr '"나밖에 없소. 나는 자아를 지닌 언데드들이 이 곳에 있다는 소문을 듣고 이 지하 묘지로 왔소. 나는 그들을 구원하고자 하오."{#soego_s66_}'

    menu:
        '"그들을 구원한다?"{#soego_s66_r21671}':
            # a230 # r21671
            jump soego_s67

        '"여기는 어디요?"{#soego_s66_r64600}':
            # a231 # r64600
            jump soego_s77

        '"왜 내가 이 곳에 감금된 거요?"{#soego_s66_r64601}':
            # a232 # r64601
            jump soego_s78

        '"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."{#soego_s66_r21673}':
            # a233 # r21673
            jump soego_s71


# s67 # say21674
label soego_s67: # from 65.0 66.0
    nr '"그렇소, 열정은 그들을 거짓된 현생에 묶어두고 있소. 내가 그들이 이러한 열정을 포기하고 거짓된 현생을 떠나 진정한 죽음에 도달하도록 가르칠 수 있다면 좋겠소."{#soego_s67_}'

    menu:
        '"거짓된 삶?"{#soego_s67_r21675}':
            # a234 # r21675
            jump soego_s68

        '"진정한 죽음?"{#soego_s67_r21676}':
            # a235 # r21676
            jump soego_s69

        '"당신은 그들이 죽기를 바라오?"{#soego_s67_r21767}':
            # a236 # r21767
            jump soego_s70

        '"여기는 어디요?"{#soego_s67_r64602}':
            # a237 # r64602
            jump soego_s77

        '"왜 내가 이 곳에 감금된 거요?"{#soego_s67_r64603}':
            # a238 # r64603
            jump soego_s78

        '"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."{#soego_s67_r21770}':
            # a239 # r21770
            jump soego_s71


# s68 # say21771
label soego_s68: # from 67.0 69.0 70.0
    nr '"이 죽은 자들은… 진정한 죽음으로부터 너무나도 가까운 곳에 있소… 그럼에도 그들은 아직도 현생에 매달리고 있소. 이 그릇된 삶은 이 차원에 묶어두려는 허위로 가득한 환상에 불과하오."{#soego_s68_}'

    menu:
        '"진정한 죽음?"{#soego_s68_r21772}':
            # a240 # r21772
            jump soego_s69

        '"당신은 그들이 죽기를 바라오?"{#soego_s68_r21774}':
            # a241 # r21774
            jump soego_s70

        '"여기는 어디요?"{#soego_s68_r64604}':
            # a242 # r64604
            jump soego_s77

        '"왜 내가 이 곳에 감금된 거요?"{#soego_s68_r64605}':
            # a243 # r64605
            jump soego_s78

        '"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."{#soego_s68_r21776}':
            # a244 # r21776
            jump soego_s71


# s69 # say21777
label soego_s69: # from 67.1 68.0 70.1
    nr '"진정한 죽음은 일체의 열정이 없는 상태로, 이 존재의 그림자의 피안에 존재하는 진정한 삶이오. 그 곳은 죽은 자들이 스스로를 해방시키기 위해 도달해야만 하는 곳이오."{#soego_s69_}'

    menu:
        '"당신이 얘기한 „거짓된 삶“이란 무엇이오?"{#soego_s69_r21779}':
            # a245 # r21779
            jump soego_s68

        '"당신은 그들이 죽기를 바라오?"{#soego_s69_r21780}':
            # a246 # r21780
            jump soego_s70

        '"여기는 어디요?"{#soego_s69_r64606}':
            # a247 # r64606
            jump soego_s77

        '"왜 내가 이 곳에 감금된 거요?"{#soego_s69_r64607}':
            # a248 # r64607
            jump soego_s78

        '"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."{#soego_s69_r21784}':
            # a249 # r21784
            jump soego_s71


# s70 # say21786
label soego_s70: # from 67.2 68.1 69.1
    nr '"나는 그들이 열정을 버리고 이 존재의 차원을 초월하기를 바라오. 그것만이 그들을 구원할 수 있소."{#soego_s70_}'

    menu:
        '"당신이 얘기한 „거짓된 삶“이란 무엇이오?"{#soego_s70_r21788}':
            # a250 # r21788
            jump soego_s68

        '"당신은 „진정한 죽음“에 대해 얘기를 했소?{#soego_s70_r21790}':
            # a251 # r21790
            jump soego_s69

        '"여기는 어디요?"{#soego_s70_r64608}':
            # a252 # r64608
            jump soego_s77

        '"왜 내가 이 곳에 감금된 거요?"{#soego_s70_r64609}':
            # a253 # r64609
            jump soego_s78

        '"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."{#soego_s70_r21794}':
            # a254 # r21794
            jump soego_s71


# s71 # say21799
label soego_s71: # from 63.4 64.4 65.3 66.3 67.5 68.4 69.4 70.4 72.6 73.6 74.4 77.2 78.2 79.5 80.1 81.0 101.5 104.3 109.5 110.3 112.1
    nr '"가기 전에 잠시 내 말에 귀를 기울이시오. 이 지하 묘지 안에서는 언데드를 결코 공격하지 마시오. 당신이 평화적으로 나오는 한 그들은 당신을 해치지 않을 것이오. 만약 당신이 적대적으로 나온다면 그들도 자신들을 방어할 것이오… 그리고 그들의 수는 매우 많소. 마지막으로 만약 휴식할 곳이 필요하다면 이 곳으로 돌아와도 좋소."{#soego_s71_}'

    menu:
        '"기다리시오… 지금 휴식을 취해도 괜찮겠소?"{#soego_s71_r21800}' if soegoLogic.r21800_condition():
            # a255 # r21800
            $ soegoLogic.j21805_s71_r21800_action()
            jump soego_s84

        '"기다리시오… 지금 휴식을 취해도 괜찮겠소?"{#soego_s71_r64569}' if soegoLogic.r64569_condition():
            # a256 # r64569
            $ soegoLogic.j21805_s71_r64569_action()
            jump soego_s84

        '떠난다.{#soego_s71_r64570}':
            # a257 # r64570
            $ soegoLogic.j21805_s71_r64570_action()
            jump soego_dispose


# s72 # say21806
label soego_s72: # from 63.0
    nr '"당신은 기억력이 좋은 것 같소. 나는 더 이상 시체안치소에서 근무하지 않소… 대신 나는 이 지역에 선교사로 파견되었소."{#soego_s72_}'

    menu:
        '"하지만 난 분명히 당신 목을 부러트렸는데…"{#soego_s72_r64547}' if soegoLogic.r64547_condition():
            # a258 # r64547
            jump soego_s73

        '"하지만 난 내가 당신을 *죽였다고* 생각했는데…"{#soego_s72_r21808}' if soegoLogic.r21808_condition():
            # a259 # r21808
            jump soego_s73

        '"전도사?"{#soego_s72_r21809}':
            # a260 # r21809
            jump soego_s65

        '"더스트맨이 이런 곳에서 뭘 하는 거요?"{#soego_s72_r21811}' if soegoLogic.r21811_condition():
            # a261 # r21811
            jump soego_s66

        '"여기는 어디요?"{#soego_s72_r64610}':
            # a262 # r64610
            jump soego_s77

        '"왜 내가 이 곳에 감금된 거요?"{#soego_s72_r64611}':
            # a263 # r64611
            jump soego_s78

        '"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."{#soego_s72_r21813}':
            # a264 # r21813
            jump soego_s71


# s73 # say21814
label soego_s73: # from 72.0 72.1 109.0 109.1
    nr '"당신이 내게 입힌 상처는 치명상이 아니었소. 나는 금새 회복했고… 시체안치소에서 떨어져 있고 싶다는 생각이 들었소."{#soego_s73_}'

    menu:
        '"소에고, 난 당신 목을 부러트렸소… 그건 치명상이 아니오?"{#soego_s73_r21815}' if soegoLogic.r21815_condition():
            # a265 # r21815
            jump soego_s101

        '"당신은 화가 나지 않소?"{#soego_s73_r21816}':
            # a266 # r21816
            jump soego_s74

        '"흠… 그래, 당신은 자신이 전도사라고 했소?"{#soego_s73_r21817}':
            # a267 # r21817
            jump soego_s65

        '"그럼 좋소. 더스트맨이 이런 곳에서 뭘 하는 거요?"{#soego_s73_r21818}' if soegoLogic.r21818_condition():
            # a268 # r21818
            jump soego_s66

        '"좋소… 그래 여긴 어디요?"{#soego_s73_r64612}':
            # a269 # r64612
            jump soego_s77

        '"알겠소… 왜 내가 이 곳에 감금된 거요?"{#soego_s73_r64613}':
            # a270 # r64613
            jump soego_s78

        '"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."{#soego_s73_r21820}':
            # a271 # r21820
            jump soego_s71


# s74 # say21821
label soego_s74: # from 73.1 101.2 104.0
    nr '"아니… 그래야만 하오? 나는 아직 내가 이 세상을 떠날 때가 되지 않았다는 사실에 다소 실망했소. 그렇지만 당신은 시체안치소로는 돌아가지 않는 것이 좋을 거요, 내 동료 당원들은 당신을 별로 반기지 않을 테니까.{#soego_s74_}'

    menu:
        '"당신은 자신이 전도사라고 했소?"{#soego_s74_r64614}':
            # a272 # r64614
            jump soego_s65

        '"더스트맨이 이런 곳에서 뭘 하는 거요?"{#soego_s74_r21823}' if soegoLogic.r21823_condition():
            # a273 # r21823
            jump soego_s66

        '"여기는 어디요?"{#soego_s74_r64615}':
            # a274 # r64615
            jump soego_s77

        '"왜 내가 이 곳에 감금된 거요?"{#soego_s74_r64616}':
            # a275 # r64616
            jump soego_s78

        '"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."{#soego_s74_r21825}':
            # a276 # r21825
            jump soego_s71


# s75 # say21716
label soego_s75: # -
    nr 'Null node.{#soego_s75_}'

    jump soego_dispose


# s76 # say21832
label soego_s76: # -
    nr 'Null node.{#soego_s76_}'

    jump soego_dispose


# s77 # say21837
label soego_s77: # from 63.2 64.2 65.1 66.1 67.3 68.2 69.2 70.2 72.4 73.4 74.2 78.1 109.3
    nr '"당신은 죽은 자의 왕국의 지하 묘지에 있소. 위병들이 당신을 이 곳으로 데려왔소."{#soego_s77_}'

    menu:
        '"그리고 당신은 누구였더라?"{#soego_s77_r21840}':
            # a277 # r21840
            jump soego_s64

        '"왜 내가 이 곳에 감금된 거요?"{#soego_s77_r21841}':
            # a278 # r21841
            jump soego_s78

        '"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."{#soego_s77_r21843}':
            # a279 # r21843
            jump soego_s71


# s78 # say21844
label soego_s78: # from 63.3 64.3 65.2 66.2 67.4 68.3 69.3 70.3 72.5 73.5 74.3 77.1 109.4
    nr '"모르겠소. 이 곳의 „시민들“에게 물어보시오."{#soego_s78_}'

    menu:
        '"그리고 당신은 누구였더라?"{#soego_s78_r21847}':
            # a280 # r21847
            jump soego_s64

        '"여기는 어디요?"{#soego_s78_r21848}':
            # a281 # r21848
            jump soego_s77

        '"아마 그럴지도. 안녕히 계시오."{#soego_s78_r21850}':
            # a282 # r21850
            jump soego_s71


# s79 # say21851
label soego_s79: # - # IF WEIGHT #2 /* Triggers after states #: 82 95 even though they appear after this state */ ~  CreatureInArea("AR1500") Global("CR_Vic","GLOBAL",1)
    nr '"아, 우리의 대의에 협조할 사람이 오셨군! 여럿이-모여-하나의 첩자인 나는 당신이 온다는 소식을 이미 들어 알고 있었소. 당신은 우리를 위해 침묵의 왕의 알현실로 들어갈 방법을 찾아내 그를 죽여야만 하오. 이 일을 해내면 여럿이-모여-하나가 당신에게 상을 내릴 거요."{#soego_s79_}'

    menu:
        '"소에고… 에모릭이 당신이 어디 있는지를 알고 싶어하고 있소."{#soego_s79_r66181}' if soegoLogic.r66181_condition():
            # a283 # r66181
            $ soegoLogic.r66181_action()
            jump soego_s110

        '"기다리시오, 당신이 소에고요? 에모릭이 당신의 소재를 알고 싶어하고 있소."{#soego_s79_r21852}' if soegoLogic.r21852_condition():
            # a284 # r21852
            $ soegoLogic.j21856_s79_r21852_action()
            $ soegoLogic.r21852_action()
            jump soego_s110

        '"잠깐만 기다리시오… 내가 시체안치소에서 당신 목을 부러트리지 않았었소?"{#soego_s79_r64623}' if soegoLogic.r64623_condition():
            # a285 # r64623
            $ soegoLogic.r64623_action()
            jump soego_s112

        '"잠깐만 기다리시오… 난 내가 시체안치소에 당신을 죽였다고 생각했는데…"{#soego_s79_r64624}' if soegoLogic.r64624_condition():
            # a286 # r64624
            $ soegoLogic.r64624_action()
            jump soego_s112

        '"어떻게 하면 침묵의 왕이 있는 곳으로 갈 수가 있소?"{#soego_s79_r21853}' if soegoLogic.r21853_condition():
            # a287 # r21853
            $ soegoLogic.r21853_action()
            jump soego_s80

        '"알겠소. 그럼 안녕히 계시오."{#soego_s79_r21854}' if soegoLogic.r21854_condition():
            # a288 # r21854
            $ soegoLogic.r21854_action()
            jump soego_s71


# s80 # say21858
label soego_s80: # from 79.4 110.2 112.0
    nr '"모르겠소… 내가 이 곳에 온지도 꽤 되었지만 아직도 그의 알현실로 들어갈 방법은 찾아내지 못했소. 당신은 나처럼 편견과 증오의 대상이 아니니 아마 해낼 수 있을지도 모르오."{#soego_s80_}'

    menu:
        '"증오와 편견?"{#soego_s80_r21860}':
            # a289 # r21860
            jump soego_s81

        '"알겠소. 그럼 안녕히 계시오."{#soego_s80_r21862}':
            # a290 # r21862
            jump soego_s71


# s81 # say21864
label soego_s81: # from 80.0
    nr '"내 당파의 사상을 모든 사람들이 다 좋아하는 건 아니오. 특히 이 곳의 우두머리들은 내 사상을 달갑게 여기지 않소."{#soego_s81_}'

    menu:
        '"알겠소. 그럼 안녕히 계시오."{#soego_s81_r21870}':
            # a291 # r21870
            jump soego_s71


# s82 # say21913
label soego_s82: # - # IF WEIGHT #1 /* Triggers after states #: 95 even though they appear after this state */ ~  CreatureInArea("AR1500") Global("Met_Soego2","GLOBAL",1)
    nr '"아, 다시 만나 반갑소."{#soego_s82_}'

    menu:
        '"침묵의 왕은 죽었소, 그것도 아주 오래 전에. 침묵의 왕은 존재하지 않소."{#soego_s82_r24206}' if soegoLogic.r24206_condition():
            # a292 # r24206
            $ soegoLogic.r24206_action()
            jump soego_s94

        '"침묵의 왕은 죽었소, 그것도 아주 오래 전에. 침묵의 왕은 존재하지 않소."{#soego_s82_r21915}' if soegoLogic.r21915_condition():
            # a293 # r21915
            $ soegoLogic.j21926_s82_r21915_action()
            $ soegoLogic.r21915_action()
            jump soego_s94

        '"당신이 소에고요? 에모릭이 당신의 소재를 알고 싶어하고 있소."{#soego_s82_r21914}' if soegoLogic.r21914_condition():
            # a294 # r21914
            $ soegoLogic.r21914_action()
            jump soego_s109

        '"나는 당신 방에서 당신의 일지를 보았소."{#soego_s82_r21916}' if soegoLogic.r21916_condition():
            # a295 # r21916
            $ soegoLogic.j21926_s82_r21916_action()
            $ soegoLogic.r21916_action()
            jump soego_s100

        '"나는 이 곳의 복도들 중 한 곳에서 진정한 죽음을 추구하려고 하기 일보직전인 스켈레톤을 만났소."{#soego_s82_r21917}' if soegoLogic.r21917_condition():
            # a296 # r21917
            $ soegoLogic.r21917_action()
            jump soego_s97

        '"나는 휴식을 취해야겠소."{#soego_s82_r21920}' if soegoLogic.r21920_condition():
            # a297 # r21920
            jump soego_s84

        '"우리는 휴식을 취해야겠소."{#soego_s82_r21922}' if soegoLogic.r21922_condition():
            # a298 # r21922
            jump soego_s84

        '"질문하고 싶은 것이 좀 있소…"{#soego_s82_r21924}':
            # a299 # r21924
            jump soego_s83

        '"그냥 지나다가 들렸을 뿐이오. 안녕히 계시오."{#soego_s82_r21925}':
            # a300 # r21925
            jump soego_dispose


# s83 # say21943
label soego_s83: # from 82.7 88.0 89.1 90.0 91.1 92.0 94.1 94.3 111.0
    nr '"내가 대답할 수 있는 거라면 대답하리다."{#soego_s83_}'

    menu:
        '"하그림에 대해 얘기해주시오."{#soego_s83_r21944}' if soegoLogic.r21944_condition():
            # a301 # r21944
            jump soego_s88

        '"아카스트에 대해 얘기해주시오."{#soego_s83_r21945}' if soegoLogic.r21945_condition():
            # a302 # r21945
            jump soego_s89

        '"썩은 메리에 대해 얘기해주시오."{#soego_s83_r21946}' if soegoLogic.r21946_condition():
            # a303 # r21946
            jump soego_s90

        '"침묵의 왕에 대해 얘기해주시오."{#soego_s83_r21947}' if soegoLogic.r21947_condition():
            # a304 # r21947
            jump soego_s91

        '"당신은 이 „문명“에 대해 어떤 것을 아시오?"{#soego_s83_r21948}' if soegoLogic.r21948_condition():
            # a305 # r21948
            jump soego_s92

        '"당신은 이 „문명“에 대해 어떤 것을 아시오?"{#soego_s83_r21949}' if soegoLogic.r21949_condition():
            # a306 # r21949
            jump soego_s93

        '"관두시오. 그럼 안녕히 계시오."{#soego_s83_r21951}':
            # a307 # r21951
            jump soego_dispose


# s84 # say21954
label soego_s84: # from 71.0 71.1 82.5 82.6
    nr '"물론이오. 이 방에서는 안전하게 휴식을 취할 수가 있소."{#soego_s84_}'

    menu:
        '"고맙소…"{#soego_s84_r21956}':
            # a308 # r21956
            $ soegoLogic.r21956_action()
            jump soego_dispose


# s85 # say21958
label soego_s85: # -
    nr 'Null Node.{#soego_s85_}'

    jump soego_dispose


# s86 # say21963
label soego_s86: # -
    nr 'Null Node.{#soego_s86_}'

    jump soego_dispose


# s87 # say21969
label soego_s87: # -
    nr 'Null Node.{#soego_s87_}'

    jump soego_dispose


# s88 # say21975
label soego_s88: # from 83.0 91.0
    nr '"고집불통이오, 하지만 그의 경건함과 책무에 대한 헌신은 존경할만 하오. 그는 이 곳에서의 내 최대의 라이벌이오, 그리고 그는 이 문명을 오랜 세월 동안 유지시켜 왔소. 그의 열정은 그의 경건함과 책무에 대한 헌신으로부터 나온다오… 존경할만하기는 하나 그 대상이 잘못되었소."{#soego_s88_}'

    menu:
        '"그 밖에도 물어보고 싶은 것들이 좀 있소…"{#soego_s88_r21976}':
            # a309 # r21976
            jump soego_s83

        '"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."{#soego_s88_r21977}':
            # a310 # r21977
            jump soego_dispose


# s89 # say21978
label soego_s89: # from 83.1
    nr '"아키스트는 야수만도 못한 자요. 오직 침묵의 왕의 권위만이 그녀가 날뛰는 것을 막고 있쏘. 만약 그가 사라진다면 굴들이 이 지하 묘지 전체를 유린할 것이오."{#soego_s89_}'

    menu:
        '"침묵의 왕에 대해 얘기해주시오."{#soego_s89_r21979}':
            # a311 # r21979
            $ soegoLogic.r21979_action()
            jump soego_s91

        '"그 밖에도 물어보고 싶은 것들이 좀 있소…"{#soego_s89_r21980}':
            # a312 # r21980
            jump soego_s83

        '"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."{#soego_s89_r21981}':
            # a313 # r21981
            jump soego_dispose


# s90 # say21982
label soego_s90: # from 83.2
    nr '"썩은 메리는 느리기는 하지만 마음씨가 고운 사람이오. 나는 그녀가 하는 말을 거의 이해하지 못하오, 하지만 그녀나 그녀의 좀비들은 폭력적이지 않소."{#soego_s90_}'

    menu:
        '"그 밖에도 물어보고 싶은 것들이 좀 있소…"{#soego_s90_r21983}':
            # a314 # r21983
            jump soego_s83

        '"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."{#soego_s90_r21984}':
            # a315 # r21984
            jump soego_dispose


# s91 # say21985
label soego_s91: # from 83.3 89.0
    nr '"나는 침묵의 왕을 본 적이 없소. 그에 대해 당신에게 얘기해줄 수 있었으면 좋겠으나 나 자신도 그를 본 적이 없소. 그의 알현실은 진홍색 문 뒤에 있으리라고 생각되나, 나는 그 곳에 들어갈 허가를 받지 못했소… 스켈레톤 사제인 하그림이 그걸 허락하지 않소."{#soego_s91_}'

    menu:
        '"하그림에 대해 얘기해주시오."{#soego_s91_r21986}':
            # a316 # r21986
            $ soegoLogic.r21986_action()
            jump soego_s88

        '"그 밖에도 물어보고 싶은 것들이 좀 있소…"{#soego_s91_r21987}':
            # a317 # r21987
            jump soego_s83

        '"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."{#soego_s91_r21988}':
            # a318 # r21988
            jump soego_dispose


# s92 # say21989
label soego_s92: # from 83.4
    nr '"내 생각에 그들은 이 곳에서 여러 세기 동안 있었던 것 같소, 그들의 왕국에서 죽어간 자들을 보살피며 말이오. 책무에 대한 그러한 헌신은 더 이상 필요하지 않소… 아니, 그건 오히려 범죄적인 행위요."{#soego_s92_}'

    menu:
        '"그 밖에도 물어보고 싶은 것들이 좀 있소…"{#soego_s92_r21990}':
            # a319 # r21990
            jump soego_s83

        '"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."{#soego_s92_r21991}':
            # a320 # r21991
            jump soego_dispose


# s93 # say21992
label soego_s93: # from 83.5
    nr '"내 생각에 그들은 이 곳에서 여러 세기 동안 있었던 것 같소, 그들의 왕국에서 죽어간 자들을 보살피며 말이오. 책무에 대한 그러한 헌신은 더 이상 필요하지 않소… 아니, 그건 오히려 범죄적인 행위요."{#soego_s93_}'

    jump morte_s220  # EXTERN


# s94 # say21993
label soego_s94: # from 82.0 82.1
    nr '"뭐라고? 그게 사실이오? 아, 그 정보를 가져가면 여럿이-모여-하나가 그대에게 상을 내릴 것이오…"{#soego_s94_}'

    menu:
        '"여럿이-모여-하나?"{#soego_s94_r25248}' if soegoLogic.r25248_condition():
            # a321 # r25248
            $ soegoLogic.j25254_s94_r25248_action()
            jump soego_s111

        '"흥미롭군. 그 밖에도 물어볼 것들이 있소…"{#soego_s94_r25252}' if soegoLogic.r25252_condition():
            # a322 # r25252
            $ soegoLogic.j25254_s94_r25252_action()
            jump soego_s83

        '"아마 그럴지도. 안녕히 계시오."{#soego_s94_r25253}' if soegoLogic.r25253_condition():
            # a323 # r25253
            $ soegoLogic.j25254_s94_r25253_action()
            jump soego_dispose

        '"좋소. 질문할 것들이 좀 있소."{#soego_s94_r21994}' if soegoLogic.r21994_condition():
            # a324 # r21994
            $ soegoLogic.j21996_s94_r21994_action()
            jump soego_s83

        '"그럼 내가 그에게 직접 얘기하겠소. 안녕히 계시오."{#soego_s94_r21995}' if soegoLogic.r21995_condition():
            # a325 # r21995
            $ soegoLogic.j21996_s94_r21995_action()
            jump soego_dispose


# s95 # say21997
label soego_s95: # - # IF WEIGHT #0 ~  CreatureInArea("AR1500") GlobalGT("Soego_Exposed","GLOBAL",0)
    nr '"이 개자식!"{#soego_s95_}'

    menu:
        '"뭐-"{#soego_s95_r21998}':
            # a326 # r21998
            $ soegoLogic.r21998_action()
            jump soego_dispose


# s96 # say22003
label soego_s96: # -
    nr '"에… 그 문은 내 개인 방으로 통하는 문이오. 그 방에는 들어가지 마시오."{#soego_s96_}'

    menu:
        '떠난다.{#soego_s96_r22004}':
            # a327 # r22004
            jump soego_dispose


# s97 # say22005
label soego_s97: # from 82.4
    nr '"오! 당장 가서 그와 얘기하겠소!"{#soego_s97_}'

    menu:
        '"안녕히 계시오."{#soego_s97_r22006}':
            # a328 # r22006
            jump soego_dispose


# s98 # say22007
label soego_s98: # -
    nr '"아니, 가는 중이오.{#soego_s98_}'

    menu:
        '"안녕히 계시오."{#soego_s98_r22008}':
            # a329 # r22008
            jump soego_dispose


# s99 # say22009
label soego_s99: # -
    nr '"불행히도 아니오. 하지만 그렇게 될 가능성은 있소."{#soego_s99_}'

    menu:
        '"알겠소. 안녕히 계시오."{#soego_s99_r22010}':
            # a330 # r22010
            jump soego_dispose


# s100 # say22011
label soego_s100: # from 82.3
    nr '소에고는 잠시 멈춘다. "알겠소." 그는 갑자기 놀라운 변신을 시작한다…{#soego_s100_}'

    menu:
        '"대체 무슨…?"{#soego_s100_r22012}':
            # a331 # r22012
            $ soegoLogic.r22012_action()
            jump soego_dispose


# s101 # say22014
label soego_s101: # from 73.0
    nr '"어… 당신은 기억력이 나쁜 모양이오. 물론 나는 목을 다쳤소. 하지만 삐었을 뿐 부러진 건 아니오."{#soego_s101_}'

    menu:
        '"내 생각은 다르오. 당신은 대체 뭐요, 소에고?"{#soego_s101_r22015}' if soegoLogic.r22015_condition():
            # a332 # r22015
            jump soego_s106

        '"내 생각은 다르오. 당신은 대체 뭐요, 소에고?"{#soego_s101_r22016}' if soegoLogic.r22016_condition():
            # a333 # r22016
            jump soego_s103

        '"당신은 화가 나지 않소?"{#soego_s101_r22018}':
            # a334 # r22018
            jump soego_s74

        '"흠… 그래, 당신은 자신이 전도사라고 했소?"{#soego_s101_r22019}':
            # a335 # r22019
            jump soego_s65

        '"더스트맨이 이런 곳에서 뭘 하는 거요?"{#soego_s101_r22020}' if soegoLogic.r22020_condition():
            # a336 # r22020
            jump soego_s66

        '"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."{#soego_s101_r22022}':
            # a337 # r22022
            jump soego_s71


# s102 # say22023
label soego_s102: # -
    nr '그는 초자연적인 속도로 당신 손아귀로부터 벗어난다. 그는 침을 뱉으며 냉소한다 "감히 크래니움 랫 정신 집합체의 대리인을 공격하다니 어리석군!" 그는 갑자기 놀라운 변신을 시작한다…{#soego_s102_}'

    menu:
        '"대체 무슨…?"{#soego_s102_r22024}':
            # a338 # r22024
            $ soegoLogic.j21856_s102_r22024_action()
            $ soegoLogic.r22024_action()
            jump soego_dispose


# s103 # say22026
label soego_s103: # from 101.1
    nr '"말도 안 되는 질문이오! 당신은 시체안치소의 철판 위에서 깨어났소… 그건 당신 스스로 내게 해준 얘기요. 내 상처도 수집자가 당신을 시체라고 착각하게 만든 상처들보다는 심하지 않았을 것이오, 아니 그렇소?"{#soego_s103_}'

    menu:
        '"틀린 얘기는 아니오, 하지만… 관둡시다."{#soego_s103_r22027}':
            # a339 # r22027
            jump soego_s104

        '"내 상태는… 특이하오."{#soego_s103_r22028}':
            # a340 # r22028
            jump soego_s105

        '"아니오. 뭔가가 분명히 잘못되었소, 그리고 난 그것이 무엇인지 곧 알아낼 거요."{#soego_s103_r22029}':
            # a341 # r22029
            jump soego_s104


# s104 # say22032
label soego_s104: # from 103.0 103.2 105.0 105.1 106.1 107.0
    nr '그는 어깨를 으쓱한다. "좋소."{#soego_s104_}'

    menu:
        '"당신은 그 일에 대해 화가 나지도 않소?"{#soego_s104_r22033}':
            # a342 # r22033
            jump soego_s74

        '"흠… 그래, 당신은 자신이 전도사라고 했소?"{#soego_s104_r22034}':
            # a343 # r22034
            jump soego_s65

        '"그래 더스트맨이 이런 곳에서 뭘 하는 거요?"{#soego_s104_r22035}' if soegoLogic.r22035_condition():
            # a344 # r22035
            jump soego_s66

        '"이만 실례하도록 하겠소. 안녕히 계시오."{#soego_s104_r22038}':
            # a345 # r22038
            jump soego_s71


# s105 # say22039
label soego_s105: # from 103.1
    nr '그는 미소짓는다. "모든 사람에게는 제각기 특이한 점이 있기 마련이오. 설마 그걸 부정하겠소?"{#soego_s105_}'

    menu:
        '"틀린 얘기는 아니오, 하지만… 관둡시다."{#soego_s105_r22040}':
            # a346 # r22040
            jump soego_s104

        '"아니오. 뭔가가 분명히 잘못되었소, 그리고 난 그것이 무엇인지 곧 알아낼 거요."{#soego_s105_r22041}':
            # a347 # r22041
            jump soego_s104


# s106 # say22043
label soego_s106: # from 101.0
    nr '"내가 무엇이냐고? 그건 대체 어떤 종류의 질문이오?"{#soego_s106_}'

    menu:
        '"당신은 내 말뜻이 뭔지 알 거요. 당신은 평범한 더스트맨이 아니오. 당신 *정체*는 무엇이오, 소에고?"{#soego_s106_r22044}':
            # a348 # r22044
            jump soego_s107

        '"관두시오. 관두시오."{#soego_s106_r22045}':
            # a349 # r22045
            jump soego_s104


# s107 # say22047
label soego_s107: # from 106.0
    nr '소에고는 당신을 노려본다. "나는 당신이 *무슨* 말을 하는지 모르겠소."{#soego_s107_}'

    menu:
        '"뭔가가 분명히 잘못되었소, 그리고 난 그것이 무엇인지 곧 알아낼 거요."{#soego_s107_r22048}':
            # a350 # r22048
            jump soego_s104


# s108 # say22050
label soego_s108: # - # IF WEIGHT #3 ~  Global("Dustman_Initiation","GLOBAL",5) GlobalLT("Soego","GLOBAL",3) !Global("CR_Vic","GLOBAL",1)
    nr '"아, 또 다른 산 자로군. 지하 묘지의 이토록 깊숙한 곳까지 내려오는 자는 대부분 굴들에게 죽임을 당하는데 당신은 운이 좋소."{#soego_s108_}'

    menu:
        '"당신이 소에고요? 에모릭이 당신의 소재를 알고 싶어하고 있소."{#soego_s108_r22051}' if soegoLogic.r22051_condition():
            # a351 # r22051
            $ soegoLogic.j22052_s108_r22051_action()
            $ soegoLogic.r22051_action()
            jump soego_s109

        '"소에고… 에모릭이 당신이 어디 있는지를 알고 싶어하고 있소."{#soego_s108_r66173}' if soegoLogic.r66173_condition():
            # a352 # r66173
            $ soegoLogic.r66173_action()
            jump soego_s109


# s109 # say22053
label soego_s109: # from 82.2 108.0 108.1
    nr '"그렇소, 내가 그 사람이오. 나는 더스트맨의 선교사로서 이 곳에 왔소."{#soego_s109_}'

    menu:
        '"좋소. 하지만… 난 내가 당신 목을 부러트렸다고 생각했는데…"{#soego_s109_r64617}' if soegoLogic.r64617_condition():
            # a353 # r64617
            jump soego_s73

        '"좋소. 하지만… 난 내가 당신을 죽였다고 생각했는데…"{#soego_s109_r64618}' if soegoLogic.r64618_condition():
            # a354 # r64618
            jump soego_s73

        '"이 곳에 당신말고 다른 더스트맨도 있소?"{#soego_s109_r22054}':
            # a355 # r22054
            jump soego_s66

        '"여기는 어디요?"{#soego_s109_r50792}':
            # a356 # r50792
            jump soego_s77

        '"왜 내가 이 곳에 감금된 거요?"{#soego_s109_r50793}':
            # a357 # r50793
            jump soego_s78

        '"이만 실례하도록 하겠소. 안녕히 계시오."{#soego_s109_r22056}':
            # a358 # r22056
            jump soego_s71


# s110 # say22057
label soego_s110: # from 79.0 79.1
    nr '"그렇소, 내가 그 사람이오."{#soego_s110_}'

    menu:
        '"잠깐만 기다리시오… 내가 시체안치소에서 당신 목을 부러트리지 않았었소?"{#soego_s110_r64625}' if soegoLogic.r64625_condition():
            # a359 # r64625
            jump soego_s112

        '"잠깐만 기다리시오… 난 내가 시체안치소에 당신을 죽였다고 생각했는데…"{#soego_s110_r64626}' if soegoLogic.r64626_condition():
            # a360 # r64626
            jump soego_s112

        '"좋소. 자, 어떻게 하면 침묵의 왕이 있는 곳으로 갈 수가 있소?"{#soego_s110_r22058}' if soegoLogic.r22058_condition():
            # a361 # r22058
            $ soegoLogic.j21857_s110_r22058_action()
            jump soego_s80

        '"좋소. 안녕히 계시오."{#soego_s110_r22060}' if soegoLogic.r22060_condition():
            # a362 # r22060
            jump soego_s71


# s111 # say25249
label soego_s111: # from 94.0
    nr '"그렇소, 크래니움 랫의 정신 집합체요. 눈물을 흘리는 돌의 서쪽에 있는 지하 묘지로 가시오. 그 곳에 가면 길을 찾을 수 있을 것이오."{#soego_s111_}'

    menu:
        '"흥미롭군. 그 밖에도 물어볼 것들이 있소…"{#soego_s111_r25250}':
            # a363 # r25250
            jump soego_s83

        '"아마 그럴지도. 안녕히 계시오."{#soego_s111_r25251}':
            # a364 # r25251
            jump soego_dispose


# s112 # say64620
label soego_s112: # from 79.2 79.3 110.0 110.1
    nr '그는 손을 저어 당신 말을 가로막는다. "아무 것도 아니었소. 나는 이미 수인화의 축복을 받았기 때문에 그런 상처는 금방 나았소."{#soego_s112_}'

    menu:
        '"알겠소… 그래, 어떻게 하면 침묵의 왕이 있는 곳에 갈 수가 있소?"{#soego_s112_r64621}':
            # a365 # r64621
            jump soego_s80

        '"좋소… 그럼 안녕히 계시오."{#soego_s112_r64622}':
            # a366 # r64622
            jump soego_s71


# s113 # say66709
label soego_s113: # from 38.1
    nr '"안녕하시오…" 사내는 당신을 향해 몸을 돌린 후 가볍게 인사한다. 당신은 그의 눈이 충혈된 것이라기보다는 약간의 붉은 색조를 띠고 있는 것이라는 사실을 갑자기 깨닫는다. "나는 소에고요. 내가 어떻게 도와드리면 되겠소?"{#soego_s113_}'

    menu:
        '"나는 시체안치소에서 나가고 싶소. 날 도와줄 수 있겠소?"{#soego_s113_r66712}':
            # a367 # r66712
            jump soego_s114

        '"질문할 것들이 좀 있소…"{#soego_s113_r66713}':
            # a368 # r66713
            jump soego_s114

        '"그냥 지나가고 있었을 뿐이오. 안녕히 계시오."{#soego_s113_r66714}':
            # a369 # r66714
            jump soego_dispose


# s114 # say66710
label soego_s114: # from 113.0 113.1
    nr '당신이 말을 반쯤 끝냈을 때, 소에고가 갑자기 입을 연다, 그러자 더럽고 날카로운 이빨들이 드러난다. 그는 당신에게 다가와 킁킁거리며 냄새를 맡는다.{#soego_s114_}'

    menu:
        '"어… 내 냄새를 맡는 이유가 대체 뭐요?"{#soego_s114_r66715}':
            # a370 # r66715
            jump soego_s115

        '그가 몸을 구부릴 때 목을 부러트린다.{#soego_s114_r66716}' if soegoLogic.r66716_condition():
            # a371 # r66716
            jump soego_s22

        '그가 몸을 구부릴 때 목을 부러트린다.{#soego_s114_r66717}' if soegoLogic.r66717_condition():
            # a372 # r66717
            jump soego_s19

        '"관두시오… 안녕히 계시오."{#soego_s114_r66718}':
            # a373 # r66718
            jump soego_s17


# s115 # say66711
label soego_s115: # from 114.0
    nr '"당신 옷… 이 법복… 냄새가 다르오. 그건 당신 것이 아니오." 소에고는 입가에 기묘한 미소를 띄운다, 그리고 그의 눈은 야수와 같은 눈빛으로 번득인다. "당신은 대체 누구요."{#soego_s115_}'

    menu:
        '"나는 평화롭게 이 곳을 떠나기 위해 이 법복을 훔쳤을 뿐이오. 나는 위층의 준비실들 중 하나에서 눈을 떴소."{#soego_s115_r66719}':
            # a374 # r66719
            jump soego_s42

        '"당신 말이 맞소. 이 법복은 내 것이 아니오, 하지만 그것이 원래 누구 것이었는지 당신이 알 바가 아니오."{#soego_s115_r66720}':
            # a375 # r66720
            jump soego_s6

        '그가 도와달라고 외치기 전에 그의 목을 부러트린다.{#soego_s115_r66721}' if soegoLogic.r66721_condition():
            # a376 # r66721
            jump soego_s22

        '그가 도와달라고 외치기 전에 그의 목을 부러트린다.{#soego_s115_r66722}' if soegoLogic.r66722_condition():
            # a377 # r66722
            jump soego_s19

        '"상관없는 일이오. 이만 떠나도록 하겠소."{#soego_s115_r66723}':
            # a378 # r66723
            jump soego_s17
