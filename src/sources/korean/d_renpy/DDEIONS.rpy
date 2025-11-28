init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.deionarra_logic import DeionarraLogic
    deionarraLogic = DeionarraLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DDEIONS.DLG
# ###


# s0 # say69459
label deionarra_s0: # from 5.2 9.5 10.8 11.3 12.3 13.4 14.2 25.3 27.4 28.4 30.2 31.3 32.2 41.4 41.5 42.3 42.4 43.4 44.4
    nr '"나는 당신을 죽음의 전당에서 기다리겠어요, 내 사랑." 그녀는 미소를 짓는다, 하지만 그 미소에는 슬픔만이 가득할 뿐이다. 그녀는 눈을 감고 희미한 소리와 함께 사라진다.~ [DEN008B]{#deionarra_s0_1}'

    menu:
        '떠난다.{#deionarra_s0_r701}' if deionarraLogic.r701_condition():
            # a0 # r701
            $ deionarraLogic.r701_action()
            jump deionarra_dispose

        '떠난다.{#deionarra_s0_r699}' if deionarraLogic.r699_condition():
            # a1 # r699
            $ deionarraLogic.r699_action()
            jump morte_s105  # EXTERN

        '떠난다.{#deionarra_s0_r9616}' if deionarraLogic.r9616_condition():
            # a2 # r9616
            $ deionarraLogic.r9616_action()
            jump deionarra_dispose


# s1 # say5
label deionarra_s1: # - # IF WEIGHT #0 ~  Global("Deionarra","GLOBAL",0) !Global("Current_Area","GLOBAL",1203) !Global("Current_Area","GLOBAL",1200)
    nr '당신 앞에는 놀랄 정도로 아름다운 유령이 서 있다. 그녀는 팔을 포개 놓고 있으며 그녀의 눈은 감겨 있다. 그녀는 길고 흐르는 듯한 머리를 지니고 있으며, 그녀의 가운은 희미한 바람에 살랑거리는 것 같다. 당신이 보고 있는 동안 그녀는 약간 움직이며 눈을 깜박이기 시작한다.{#deionarra_s1_1}'

    menu:
        '"안녕하시오…?"{#deionarra_s1_r703}':
            # a3 # r703
            jump deionarra_s2

        '기다린다.{#deionarra_s1_r704}':
            # a4 # r704
            jump deionarra_s2

        '혼령이 눈치채기 전에 떠난다.{#deionarra_s1_r705}':
            # a5 # r705
            $ deionarraLogic.r705_action()
            jump deionarra_dispose


# s2 # say706
label deionarra_s2: # from 1.0 1.1
    nr '그녀는 천천히 눈을 뜬다, 그리고 잠시 동안 혼란스러운 듯 눈을 깜박인다, 마치 자신이 어디 있는지 잘 모르겠다는 듯. 그녀는 주변을 천천히 둘러보다가 당신을 보게 된다. 그녀의 평화롭던 표정은 악귀와 같은 표정으로 돌변한다. "당신! 당신은 왜 이 곳에 온 거죠! 당신이 가져온 불행을 직접 구경하고 싶었던 건가요? 아니면 죽어서도 난 당신에게 티끌만한 쓸모라도 있는 건가요? 그녀는 목소리를 낮춘다. "… 내 사랑."~ [DEN001]{#deionarra_s2_1}'

    menu:
        '"당신은 누구요?"{#deionarra_s2_r707}':
            # a6 # r707
            $ deionarraLogic.r707_action()
            jump deionarra_s3

        '"„내 사랑?“ 내가 당신을 아오?"{#deionarra_s2_r708}' if deionarraLogic.r708_condition():
            # a7 # r708
            $ deionarraLogic.r708_action()
            jump deionarra_s3

        '"„내 사랑?“ 내가 당신을 아오?"{#deionarra_s2_r709}' if deionarraLogic.r709_condition():
            # a8 # r709
            $ deionarraLogic.r709_action()
            jump deionarra_s3


# s3 # say710
label deionarra_s3: # from 2.0 2.1 2.2 10.0
    nr '혼령은 애걸하는 듯한 손짓을 한다. "어째서 정신의 도둑들은 계속 당신 기억으로부터 내 이름을 훔쳐 가는 거죠? 내 이름을 *기억*하지 못하시나요, 내 사랑?" 유령은 그녀의 팔을 내뻗는다. "생각하세요…" 그녀의 목소리는 다시 절박해진다. "데이오나라 라는 이름은 분명히 당신 안에서 어떤 기억을 불러낼 거예요."{#deionarra_s3_1}'

    menu:
        '"미안하오. 난 기억을 잃었소."{#deionarra_s3_r711}':
            # a9 # r711
            jump deionarra_s6

        '거짓말: "그래… 그렇소. 그 이름은 어쩐지 귀에 익소."{#deionarra_s3_r712}':
            # a10 # r712
            $ deionarraLogic.r712_action()
            jump deionarra_s7

        '"기억이 되살아날 것 같기도 하오… 얘기를 더 해주시오. 아마 당신의 말이 내 정신으로부터 그림자들을 몰아낼 수 있을지도 모르오, 데이오나라.{#deionarra_s3_r713}' if deionarraLogic.r713_condition():
            # a11 # r713
            jump deionarra_s9

        '"기억이 되살아날 것 같기도 하오… 얘기를 더 해주시오. 아마 당신의 말이 내 정신으로부터 그림자들을 몰아낼 수 있을지도 모르오, 데이오나라.{#deionarra_s3_r714}' if deionarraLogic.r714_condition():
            # a12 # r714
            jump deionarra_s9

        '"아니오. 안녕히 계시오… 데이오나라."{#deionarra_s3_r1308}' if deionarraLogic.r1308_condition():
            # a13 # r1308
            jump deionarra_s15

        '"그렇지 않소. 안녕히 계시오, 데이오나라."{#deionarra_s3_r6080}' if deionarraLogic.r6080_condition():
            # a14 # r6080
            jump deionarra_s26


# s4 # say715
label deionarra_s4: # - # IF WEIGHT #1 ~  Global("Deionarra","GLOBAL",2) !Global("Current_Area","GLOBAL",1203) !Global("Current_Area","GLOBAL",1200)
    nr '데이오나라는 다시 한 번 실체화한다.. 이번에 그녀의 얼굴은 절박함으로 가득 차 있으며, 무엇을 잡으려는 듯 팔을 내뻗고 있다. 그녀가 다시 희미해짐에 따라 그녀 얼굴의 절박함은 분노로 변한다. "당신이 또 왔군요! 왜 내게 계속 고통을 주는 거죠?"~ [DEN002]{#deionarra_s4_1}'

    menu:
        '"나는 많은 것을 알아야만 하오. 당신에게 물어보고 싶은 것들이 있소…"{#deionarra_s4_r765}':
            # a15 # r765
            jump deionarra_s33

        '"더 이상 당신을 괴롭히지 않으리다. 안녕히 계시오."{#deionarra_s4_r1307}':
            # a16 # r1307
            jump deionarra_s26


# s5 # say716
label deionarra_s5: # - # IF WEIGHT #2 ~  Global("Deionarra","GLOBAL",1) !Global("Current_Area","GLOBAL",1203) !Global("Current_Area","GLOBAL",1200)
    nr '데이오나라는 다시 한 번 실체화한다.. 이번에 그녀의 얼굴은 절박함으로 가득 차 있으며, 무엇을 잡으려는 듯 팔을 내뻗고 있다. 그녀가 다시 희미해짐에 따라 그녀 얼굴의 절박함은 안도로 변한다. "내 사랑… 내게로 돌아와 주셨군요! 혹시 기억이 돌아온 건가요?"~ [DEN003A]{#deionarra_s5_1}'

    menu:
        '"당신에게 물어볼 것이 좀 있소…"{#deionarra_s5_r766}':
            # a17 # r766
            jump deionarra_s10

        '"아직 아니오. 안녕히 계시오, 데이오나라."{#deionarra_s5_r767}' if deionarraLogic.r767_condition():
            # a18 # r767
            jump deionarra_s15

        '"아직 아니오. 안녕히 계시오, 데이오나라."{#deionarra_s5_r1309}' if deionarraLogic.r1309_condition():
            # a19 # r1309
            jump deionarra_s0


# s6 # say717
label deionarra_s6: # from 3.0
    nr '"그럼 내가 우려했던 대로군요. 당신은 나에 대한 기억을 완전히 잃어버렸군요… 이제 당신에게는 나에 대한 기억을 버렸듯이 날 아무런 거리낌없이 버릴 구실이 있군요!"{#deionarra_s6_1}'

    menu:
        '"„귀찮은 존재?" “당신을 버려?" 나는 당신을 모르오, 혼령… 내 기억은 사라져 버렸소. 말해주시오… 당신은 누구요? 나에 대해 무엇을 아시오?"{#deionarra_s6_r720}':
            # a20 # r720
            jump deionarra_s11

        '"기억이 되살아날 것 같기도 하오… 얘기를 더 해주시오. 아마 당신의 말이 내 정신으로부터 그림자들을 몰아낼 수 있을지도 모르오, 데이오나라.{#deionarra_s6_r718}' if deionarraLogic.r718_condition():
            # a21 # r718
            jump deionarra_s9

        '"기억이 되살아날 것 같기도 하오… 얘기를 더 해주시오. 아마 당신의 말이 내 정신으로부터 그림자들을 몰아낼 수 있을지도 모르오, 데이오나라.{#deionarra_s6_r719}' if deionarraLogic.r719_condition():
            # a22 # r719
            jump deionarra_s9

        '"만약 내가 과거에 당신을 버렸다면, 지금 다시 한 번 당신을 버려야 할 것 같소. 안녕히 계시오, 혼령."{#deionarra_s6_r721}' if deionarraLogic.r721_condition():
            # a23 # r721
            jump deionarra_s15

        '"떠나야겠소, 데이오나라. 안녕히 계시오."{#deionarra_s6_r1310}' if deionarraLogic.r1310_condition():
            # a24 # r1310
            jump deionarra_s15

        '"만약 내가 과거에 당신을 버렸다면, 지금 다시 한 번 당신을 버려야 할 것 같소. 안녕히 계시오, 혼령."{#deionarra_s6_r1311}' if deionarraLogic.r1311_condition():
            # a25 # r1311
            jump deionarra_s26

        '"떠나야겠소, 데이오나라. 안녕히 계시오."{#deionarra_s6_r764}' if deionarraLogic.r764_condition():
            # a26 # r764
            jump deionarra_s26


# s7 # say722
label deionarra_s7: # from 3.1
    nr '"그래요…" 그녀는 기대에 부푼 듯하다. "내 이름이 어떤 기억들을 불러내지요?"{#deionarra_s7_1}'

    menu:
        '"아무 것도 없소. 내가 거짓말을 했소."{#deionarra_s7_r700}':
            # a27 # r700
            $ deionarraLogic.r700_action()
            jump deionarra_s8

        '거짓말: "당신 이름은 내게 정열적인 생각을 떠오르게 하오, 하지만 그 내용은 명확하지 않소. 아마 당신이 내게 얘기를 더 해준다면…"{#deionarra_s7_r702}':
            # a28 # r702
            $ deionarraLogic.r702_action()
            jump deionarra_s9

        '"잘은 모르겠소… 하지만 당신과 얘기를 하다보니 기억이 되살아날 것 같기도 하오. 얘기를 더 해주시오. 아마 당신의 말이 내 정신으로부터 그림자들을 몰아낼 수 있을지도 모르오, 데이오나라.{#deionarra_s7_r723}' if deionarraLogic.r723_condition():
            # a29 # r723
            jump deionarra_s9

        '"잘은 모르겠소… 하지만 당신과 얘기를 하다보니 기억이 되살아날 것 같기도 하오. 얘기를 더 해주시오. 아마 당신의 말이 내 정신으로부터 그림자들을 몰아낼 수 있을지도 모르오, 데이오나라.{#deionarra_s7_r724}' if deionarraLogic.r724_condition():
            # a30 # r724
            jump deionarra_s9

        '"떠나야겠소, 데이오나라. 안녕히 계시오."{#deionarra_s7_r1312}' if deionarraLogic.r1312_condition():
            # a31 # r1312
            jump deionarra_s15

        '"떠나야겠소, 데이오나라. 안녕히 계시오."{#deionarra_s7_r6084}' if deionarraLogic.r6084_condition():
            # a32 # r6084
            jump deionarra_s26


# s8 # say725
label deionarra_s8: # from 7.0 47.2
    nr '데이오나라의 얼굴이 악귀처럼 변한다. "이 나병에 걸린 개 같으니! 내 가슴의 배신자! 난 당신을 저주하고 싶어요, 하지만 내 저주 없이도 이미 당신의 화신들은 예외없이 고통에 쫓기고 있어요! 꺼지세요! 그녀는 두 팔을 포개고 눈을 감는다.{#deionarra_s8_1}'

    menu:
        '"좋소…"{#deionarra_s8_r747}' if deionarraLogic.r747_condition():
            # a33 # r747
            $ deionarraLogic.r747_action()
            jump deionarra_dispose

        '"좋소…"{#deionarra_s8_r1313}' if deionarraLogic.r1313_condition():
            # a34 # r1313
            $ deionarraLogic.r1313_action()
            jump morte_s105  # EXTERN

        '떠난다.{#deionarra_s8_r13255}' if deionarraLogic.r13255_condition():
            # a35 # r13255
            $ deionarraLogic.r13255_action()
            jump deionarra_dispose


# s9 # say726
label deionarra_s9: # from 3.2 3.3 6.1 6.2 7.1 7.2 7.3
    nr '"아, 마침내 운명의 여신이 자비를 베푸는군요! 죽음조차도 날 당신 마음으로부터 날 내몰 수는 없어요, 내 사랑! 보이지 않으시나요? 당신 기억은 돌아올 거예요! 말씀만 하세요, 내가 도와드릴 테니!"{#deionarra_s9_1}'

    menu:
        '"당신은 내가 누군지 아시오?"{#deionarra_s9_r729}':
            # a36 # r729
            jump deionarra_s11

        '"여기가 어딘지 말해줄 수 있겠소?"{#deionarra_s9_r730}':
            # a37 # r730
            jump deionarra_s12

        '"난 이 곳에서 탈출해야 하오. 날 도와줄 수 있겠소?"{#deionarra_s9_r731}' if deionarraLogic.r731_condition():
            # a38 # r731
            jump deionarra_s43

        '"난 이 곳에서 탈출해야 하오. 날 도와줄 수 있겠소?"{#deionarra_s9_r732}' if deionarraLogic.r732_condition():
            # a39 # r732
            jump deionarra_s44

        '"지금은 아무런 용건도 없소, 데이오나라, 하지만 반드시 돌아오겠소. 안녕히 계시오."{#deionarra_s9_r1314}' if deionarraLogic.r1314_condition():
            # a40 # r1314
            jump deionarra_s15

        '"지금은 아무런 용건도 없소, 데이오나라, 하지만 꼭 돌아오리다. 안녕히 계시오."{#deionarra_s9_r6127}' if deionarraLogic.r6127_condition():
            # a41 # r6127
            jump deionarra_s0


# s10 # say733
label deionarra_s10: # from 5.0 11.1 12.1 13.1 14.0 25.1 27.2 28.0 30.0 31.1 32.0 34.1 35.1 36.0 41.1 42.0 43.1 44.2 74.0
    nr '"무엇을 알고 싶나요?"{#deionarra_s10_1}'

    menu:
        '"당신은 누구요?"{#deionarra_s10_r734}':
            # a42 # r734
            jump deionarra_s3

        '"내가 누군지 말해줄 수 있겠소?"{#deionarra_s10_r735}':
            # a43 # r735
            jump deionarra_s11

        '"여기가 어딘지 말해줄 수 있겠소?"{#deionarra_s10_r736}':
            # a44 # r736
            jump deionarra_s12

        '"난 이 곳에서 탈출해야 하오. 날 도와줄 수 있겠소?"{#deionarra_s10_r737}' if deionarraLogic.r737_condition():
            # a45 # r737
            jump deionarra_s43

        '"난 이 곳에서 탈출해야 하오. 날 도와줄 수 있겠소?"{#deionarra_s10_r738}' if deionarraLogic.r738_condition():
            # a46 # r738
            jump deionarra_s44

        '"당신이 전에 말한 영상은 무엇이오?{#deionarra_s10_r768}' if deionarraLogic.r768_condition():
            # a47 # r768
            jump deionarra_s22

        '"당신이 내게 건 저주를 풀어 줄 수 있겠소?"{#deionarra_s10_r1315}' if deionarraLogic.r1315_condition():
            # a48 # r1315
            jump deionarra_s41

        '"지금은 아무런 용건도 없소, 데이오나라, 하지만 꼭 돌아오리다. 안녕히 계시오."{#deionarra_s10_r6107}' if deionarraLogic.r6107_condition():
            # a49 # r6107
            jump deionarra_s15

        '"지금은 아무런 용건도 없소, 데이오나라, 하지만 꼭 돌아오리다. 안녕히 계시오."{#deionarra_s10_r6128}' if deionarraLogic.r6128_condition():
            # a50 # r6128
            jump deionarra_s0


# s11 # say739
label deionarra_s11: # from 6.0 9.0 10.1
    nr '"당신은 저주와 축복을 동시에 받은 존재예요, 내 사랑. 그리고 당신은 늘 내 마음과 가슴 가까이에 있는 분이에요."{#deionarra_s11_1}'

    menu:
        '"„축복받고 저주받은?“ 그게 무슨 뜻이오?"{#deionarra_s11_r740}':
            # a51 # r740
            jump deionarra_s13

        '"당신에게 질문할 것들이 더 있소…"{#deionarra_s11_r741}':
            # a52 # r741
            jump deionarra_s10

        '"난 떠나야만 하오. 잘 있으시오, 데이오나라."{#deionarra_s11_r742}' if deionarraLogic.r742_condition():
            # a53 # r742
            jump deionarra_s15

        '"난 떠나야만 하오. 잘 있으시오, 데이오나라."{#deionarra_s11_r1316}' if deionarraLogic.r1316_condition():
            # a54 # r1316
            jump deionarra_s0


# s12 # say743
label deionarra_s12: # from 9.1 10.2
    nr '"당신이 어디 계시느냐고요? 당신은 이 곳에 나와 함께 있어요, 내 사랑… 우리 두 사람이 모두 살아 있었을 때처럼. 하지만 이제는 영원한 경계가 우릴 갈라 놓고 있어요."{#deionarra_s12_1}'

    menu:
        '"„영원한 경계?"{#deionarra_s12_r744}':
            # a55 # r744
            jump deionarra_s14

        '"당신에게 질문할 것들이 더 있소…"{#deionarra_s12_r745}':
            # a56 # r745
            jump deionarra_s10

        '"난 떠나야만 하오. 잘 있으시오, 데이오나라."{#deionarra_s12_r746}' if deionarraLogic.r746_condition():
            # a57 # r746
            jump deionarra_s15

        '"난 떠나야만 하오. 잘 있으시오, 데이오나라."{#deionarra_s12_r792}' if deionarraLogic.r792_condition():
            # a58 # r792
            jump deionarra_s0


# s13 # say748
label deionarra_s13: # from 11.0
    nr '"당신의 저주의 본질은 명백해요, 내 사랑. 스스로를 보세요," 그녀는 당신을 가리킨다. "죽음이 당신을 거부해요. 당신 기억은 당신을 저버렸어요. 잠시 멈추고 생각해본 적은 없나요?"{#deionarra_s13_1}'

    menu:
        '"실은 아직도 나는 내게 일어난 일을 파악하려고 노력 중이오. 그 밖에 내게 나 자신에 대해 또 뭘 얘기해줄 수가 있겠소?"{#deionarra_s13_r749}':
            # a59 # r749
            jump deionarra_s27

        '"그 밖에도 물어보고 싶은 것들이 좀 있소…"{#deionarra_s13_r750}':
            # a60 # r750
            jump deionarra_s10

        '"기억에 관한 건 제쳐두고… 죽음이 날 거부했다고 한다면… 어째서 그게 저주요?"{#deionarra_s13_r751}':
            # a61 # r751
            jump deionarra_s25

        '"난 떠나야만 하오. 잘 있으시오, 데이오나라."{#deionarra_s13_r790}' if deionarraLogic.r790_condition():
            # a62 # r790
            jump deionarra_s15

        '"난 떠나야만 하오. 잘 있으시오, 데이오나라."{#deionarra_s13_r1318}' if deionarraLogic.r1318_condition():
            # a63 # r1318
            jump deionarra_s0


# s14 # say752
label deionarra_s14: # from 12.0
    nr '데이오나라는 슬퍼하는 듯하다. "그건 당신이 결코 넘지 못할 경계예요, 내 사랑. 그것은 당신과 내 잔재 사이에 서 있는 경계예요…"{#deionarra_s14_1}'

    menu:
        '"알겠소… 다른 질문에 좀 대답해주었으면 하오…"{#deionarra_s14_r753}':
            # a64 # r753
            jump deionarra_s10

        '"난 떠나야만 하오. 잘 있으시오, 데이오나라."{#deionarra_s14_r755}' if deionarraLogic.r755_condition():
            # a65 # r755
            jump deionarra_s15

        '"난 떠나야만 하오. 잘 있으시오, 데이오나라."{#deionarra_s14_r1319}' if deionarraLogic.r1319_condition():
            # a66 # r1319
            jump deionarra_s0


# s15 # say756
label deionarra_s15: # from 3.4 5.1 6.3 6.4 7.4 9.4 10.7 11.2 12.2 13.3 14.1 25.2 27.3 28.1 28.3 30.1 31.2 32.1 41.2 41.3 42.1 42.2 43.3 44.3 47.3
    nr '"기다리세요… 나는 당신과 여행하는 동안 많은 것을 배웠어요, 내 사랑, 그리고 당신이 잃어버린 것도 난 간직하고 있어요. 난 당신에게 내가 아는 것 전부를 밝히지는 않았어요. 당신은 기억의 불꽃을 찾아 어둠 속에서 헤매고 있지만… 나는 뚜렷하게 볼 수가 있어요."{#deionarra_s15_1}'

    menu:
        '"당신이 뭘 알던 간에 그건 나중에 들어도 되오. 안녕히 계시오."{#deionarra_s15_r757}':
            # a67 # r757
            jump deionarra_s26

        '"당신이 얘기할 수 있는 것들 중 대체 어떤 것이 내게 중요하다는 거요?"{#deionarra_s15_r758}':
            # a68 # r758
            jump deionarra_s17

        '"그리고 당신은 볼 수 있으나 난 볼 수가 없다는 건 대체 어떤 것이오?"{#deionarra_s15_r759}':
            # a69 # r759
            jump deionarra_s17

        '"난 떠나야만 하오. 잘 있으시오, 데이오나라."{#deionarra_s15_r761}':
            # a70 # r761
            jump deionarra_s26


# s16 # say762
label deionarra_s16: # from 20.0 21.0
    nr '데이오나라는 놀란 듯하다, 그리고 그녀의 어조는 마치 간청이라는 하는 것처럼 바뀐다. "난… 당신으로부터 맹세를 받아내려는 건 아니에요. 단지 난 당신이 경계를 넘어 나와 함께 하기를 너무나도 오랫동안 기다렸을…"{#deionarra_s16_1}'

    menu:
        '"데이오나라, 만약 당신이 내게 맹세를 강요할 생각이 아니라면 그렇게 하지 마시오. 자, 내게 당신이 본 영상에 대해 말해주시오, 그리고 맹세나 약속 따위에 대해서는 더 이상 얘기하지 않을 것이오.{#deionarra_s16_r763}':
            # a71 # r763
            jump deionarra_s40


# s17 # say769
label deionarra_s17: # from 15.1 15.2
    nr '"망각의 냉기가 우리를 천천히 엄습함에 따라 시간조차도 그 손을 늦추고 있어요. 앞으로 벌어질 일들이 벌떼처럼 내 시야를 스쳐 지나가고 있어요. 당신 모습도 보여요, 내 사랑 자금과 같은 당신 모습이 보여요. 그리고…" 데이오나라는 조용해진다.{#deionarra_s17_1}'

    menu:
        '"왜 갑자기 조용해진 거요? 열변을 토하다 지치기라도 한 거요?"{#deionarra_s17_r770}':
            # a72 # r770
            jump deionarra_s18

        '"그건 무엇이오? 당신에게 어떤 것이 보이는 거요?"{#deionarra_s17_r771}':
            # a73 # r771
            jump deionarra_s18

        '"나는 미래의 영상 따위에는 관심이 없소. 안녕히 계시오."{#deionarra_s17_r772}':
            # a74 # r772
            jump deionarra_s19


# s18 # say773
label deionarra_s18: # from 17.0 17.1
    nr '"내겐 당신을 기다리고 있는 운명이 보여요. 그것은 이 지점에서 시작하여 전 차원에 파문처럼 퍼져 나가고 있어요. 당신에게 내가 보고 있는 것들을 말씀 드릴까요?{#deionarra_s18_1}'

    menu:
        '"말해주시오."{#deionarra_s18_r774}':
            # a75 # r774
            jump deionarra_s20

        '"나는 알고 싶지 않소. 미래는 때가 되면 우리 앞에 그 모습을 드러낼 것이오."{#deionarra_s18_r775}':
            # a76 # r775
            jump deionarra_s19


# s19 # say776
label deionarra_s19: # from 17.2 18.1
    nr '"당신은 항상 그랬어요, 내 사랑. 당신은 늘 죽음의 부름에 귀를 기울이지 않았어요. 당신이 다음에 거부할 대상은 시간이 될 건가요?" 그녀는 눈을 감고 희미한 소리와 함께 사라진다.{#deionarra_s19_1}'

    menu:
        '떠난다.{#deionarra_s19_r803}' if deionarraLogic.r803_condition():
            # a77 # r803
            $ deionarraLogic.r803_action()
            jump deionarra_dispose

        '떠난다.{#deionarra_s19_r6085}' if deionarraLogic.r6085_condition():
            # a78 # r6085
            $ deionarraLogic.r6085_action()
            jump morte_s105  # EXTERN

        '떠난다.{#deionarra_s19_r13256}' if deionarraLogic.r13256_condition():
            # a79 # r13256
            $ deionarraLogic.r13256_action()
            jump deionarra_dispose


# s20 # say777
label deionarra_s20: # from 18.0
    nr '"먼저, 내게 약속을 해주세요. 돌아오겠다고 약속해 주세요. 그리고 나와 함께 있을 수 있는 방법을 모색하겠다고."{#deionarra_s20_1}'

    menu:
        '"내가 한때 사랑했던 여인이 계시에 대한 약속을 가지고 내게 공갈을 하여 약속을 강요하려 하다니 그건 정말 믿기 힘든 일이오. 당신은 날 믿지 못하오, 데이오나라?"{#deionarra_s20_r778}' if deionarraLogic.r778_condition():
            # a80 # r778
            jump deionarra_s16

        '"그러한 약속의 대가는 너무나도 크오."{#deionarra_s20_r779}':
            # a81 # r779
            jump deionarra_s21

        '거짓말: "나는 당신을 구하거나 당신과 함께할 수 있는 방법을 찾아내겠다고 맹세하오."{#deionarra_s20_r780}':
            # a82 # r780
            $ deionarraLogic.r780_action()
            jump deionarra_s22

        '"나는 그런 약속을 하지 않을 것이오, 망령! 미래를 가지고 날 괴롭히지 마시오… 조용히 하던지 아니면 사라지시오!"{#deionarra_s20_r781}':
            # a83 # r781
            jump deionarra_s26

        '"최선을… 다하리다."{#deionarra_s20_r782}':
            # a84 # r782
            jump deionarra_s40

        '맹세: "나는 당신을 구하거나 당신과 함께할 수 있는 방법을 찾아내겠다고 맹세하오."{#deionarra_s20_r6093}':
            # a85 # r6093
            $ deionarraLogic.r6093_action()
            jump deionarra_s22


# s21 # say783
label deionarra_s21: # from 20.1
    nr '데이오나라는 그녀의 팔을 접는다. "그건 그래요, 내 사랑. 하지만 불사의 대가는 별로 크지 않았던 것 같군요. 당신과 같은 사람에게 성실하기를 바라는 건 무리인가요?"{#deionarra_s21_1}'

    menu:
        '"내가 한때 사랑했던 여인이 계시에 대한 약속을 가지고 내게 공갈을 하여 약속을 강요하려 하다니 그건 정말 믿기 힘든 일이오. 당신은 날 믿지 못하오, 데이오나라?"{#deionarra_s21_r804}':
            # a86 # r804
            jump deionarra_s16

        '거짓말: "나는 당신을 구하거나 당신과 함께할 수 있는 방법을 찾아내겠다고 맹세하오."{#deionarra_s21_r805}':
            # a87 # r805
            $ deionarraLogic.r805_action()
            jump deionarra_s22

        '"나는 그런 약속을 하지 않을 것이오, 망령! 미래를 가지고 날 괴롭히지 마시오… 조용히 하던지 아니면 사라지시오!"{#deionarra_s21_r806}':
            # a88 # r806
            jump deionarra_s26

        '"최선을… 다하리다."{#deionarra_s21_r807}':
            # a89 # r807
            jump deionarra_s40

        '맹세: "나는 당신을 구하거나 당신과 함께할 수 있는 방법을 찾아내겠다고 맹세하오."{#deionarra_s21_r808}':
            # a90 # r808
            $ deionarraLogic.r808_action()
            jump deionarra_s22

        '"아마 그럴지도. 안녕히 계시오, 데이오나라."{#deionarra_s21_r6094}':
            # a91 # r6094
            jump deionarra_s26


# s22 # say784
label deionarra_s22: # from 10.5 20.2 20.5 21.1 21.4 40.0
    nr '"이것이 시간의 구속을 초월하여 내 눈에 들어온 광경이에요, 내 사랑…"~ [DEN020]{#deionarra_s22_1}'

    menu:
        '그녀가 계속하기를 기다린다.{#deionarra_s22_r786}':
            # a92 # r786
            $ deionarraLogic.r786_action()
            jump deionarra_s23


# s23 # say785
label deionarra_s23: # from 22.0
    nr '"당신은 세 적을 만나게 될 거예요, 하지만 그들 중 어느 누구도 최전성기의 당신만큼 위험하지는 않아요. 그들은 차원의 법칙에 의해 삶을 얻고 뒤틀려진 선, 악, 그리고 중립의 그림자들이에요."~ [DEN021]{#deionarra_s23_1}'

    menu:
        '그녀가 계속하기를 기다린다.{#deionarra_s23_r787}':
            # a93 # r787
            jump deionarra_s24


# s24 # say788
label deionarra_s24: # from 23.0
    nr '"당신은 그림자들조차도 미쳐 버린 슬픔과 후회로 만든 요새에 이르게 될 거예요. 그 곳에서 당신은 끔찍한 희생을 치르게 될 거예요, 내 사랑. 만사를 해결하기 위해서 당신은 스스로를 살아 있도록 만드는 것을 파괴하고 불사신이기를 포기해야만 해요."~ [DEN022]{#deionarra_s24_1}'

    menu:
        '"„내가 살아 있도록 해주는 것을 파괴하라?“"{#deionarra_s24_r789}':
            # a94 # r789
            jump deionarra_s29


# s25 # say791
label deionarra_s25: # from 13.2 29.0
    nr '"나는 죽음으로부터 생환할 수 있는 당신의 능력을 의심하지는 않아요. 하지만 당신이 죽을 때마다 당신의 기억과 정신은 약해져 가요. 당신은 기억을 잃었다고 말하고 있어요. 그건 수많은 죽음을 겪어서 생긴 부작용이 아닌가요? 만약 그렇다면 앞으로도 계속 죽을 경우 당신은 무엇을 잃게 되죠? 만약 당신이 완전히 발광하게 되면 당신은 스스로가 죽을 수 없다는 사실조차 모르게 될지도 몰라요. 그렇게 된다면 당신은 진정한 파멸을 맞이하게 될 거예요."{#deionarra_s25_1}'

    menu:
        '"„무수한 죽음?“ 얼마나 오랫동안 이런 일이 계속되어 왔소?"{#deionarra_s25_r812}':
            # a95 # r812
            jump deionarra_s30

        '"그 밖에도 물어보고 싶은 것들이 좀 있소…"{#deionarra_s25_r811}':
            # a96 # r811
            jump deionarra_s10

        '"안녕히 계시오, 데이오나라."{#deionarra_s25_r813}' if deionarraLogic.r813_condition():
            # a97 # r813
            jump deionarra_s15

        '"안녕히 계시오, 데이오나라."{#deionarra_s25_r1320}' if deionarraLogic.r1320_condition():
            # a98 # r1320
            jump deionarra_s0


# s26 # say793
label deionarra_s26: # from 3.5 4.1 6.5 6.6 7.5 15.0 15.3 20.3 21.2 21.5 28.2 47.4
    nr '데이오나라는 분노한 것 같다. "떠나세요, 당신이 이전에도 수백 번 그랬듯이! 당신은 내게 고통을 주기 위해서만 날 찾아오는 건가요? 떠나서 다시는 돌아오지 마세요!" 그녀는 눈을 감고 희미한 소리를 내며 사라진다.{#deionarra_s26_1}'

    menu:
        '떠난다.{#deionarra_s26_r6081}' if deionarraLogic.r6081_condition():
            # a99 # r6081
            $ deionarraLogic.r6081_action()
            jump deionarra_dispose

        '떠난다.{#deionarra_s26_r6082}' if deionarraLogic.r6082_condition():
            # a100 # r6082
            $ deionarraLogic.r6082_action()
            jump morte_s105  # EXTERN

        '떠난다.{#deionarra_s26_r13257}' if deionarraLogic.r13257_condition():
            # a101 # r13257
            $ deionarraLogic.r13257_action()
            jump deionarra_dispose


# s27 # say795
label deionarra_s27: # from 13.0
    nr '"나는 당신이 한때 날 사랑하고 있으며 죽음이 우리 둘을 데려갈 때까지 나를 사랑하겠다고 말했던 것을 기억하고 있어요. 나는 그 말을 믿었어요, 당신이 누구이며, 또 어떤 사람인지도 모르고."{#deionarra_s27_1}'

    menu:
        '"그리고 나는 대체 무엇이오?"{#deionarra_s27_r797}' if deionarraLogic.r797_condition():
            # a102 # r797
            jump deionarra_s28

        '"그리고 나는 무엇이오?"{#deionarra_s27_r66911}' if deionarraLogic.r66911_condition():
            # a103 # r66911
            jump deionarra_s72

        '"그 밖에도 물어보고 싶은 것들이 좀 있소…"{#deionarra_s27_r796}':
            # a104 # r796
            jump deionarra_s10

        '"안녕히 계시오, 데이오나라."{#deionarra_s27_r798}' if deionarraLogic.r798_condition():
            # a105 # r798
            jump deionarra_s15

        '"안녕히 계시오, 데이오나라."{#deionarra_s27_r1321}' if deionarraLogic.r1321_condition():
            # a106 # r1321
            jump deionarra_s0


# s28 # say799
label deionarra_s28: # from 27.0
    nr '"우리는 당신의 본질에 대해 이미 얘기를 했어요." 데이오나라는 냉담한 표정을 짓는다. "그 일에 대해서는 다시 얘기하지 않겠어요."{#deionarra_s28_1}'

    menu:
        '"좋소… 그 밖에도 질문할 것들이 좀 있소…"{#deionarra_s28_r800}':
            # a107 # r800
            jump deionarra_s10

        '"당신은 날 안다고 주장하고 있으나 당신이 나에 대해 아는 것들 중 알맹이가 있는 건 거의 없는 것 같소. 안녕히 계시오, 데이오나라."{#deionarra_s28_r801}' if deionarraLogic.r801_condition():
            # a108 # r801
            jump deionarra_s15

        '"당신은 날 안다고 주장하고 있으나 당신이 나에 대해 아는 것들 중 알맹이가 있는 건 거의 없는 것 같소. 안녕히 계시오, 데이오나라."{#deionarra_s28_r802}' if deionarraLogic.r802_condition():
            # a109 # r802
            jump deionarra_s26

        '"그럼 잘 있으시오, 데이오나라."{#deionarra_s28_r1322}' if deionarraLogic.r1322_condition():
            # a110 # r1322
            jump deionarra_s15

        '"그럼 잘 있으시오, 데이오나라."{#deionarra_s28_r1323}' if deionarraLogic.r1323_condition():
            # a111 # r1323
            jump deionarra_s0


# s29 # say809
label deionarra_s29: # from 24.0
    nr '"나는 당신이 아직 죽을 수 있을 때… 죽어야 한다는 것을 알아요. 윤회의 고리는 끊어져야만 해요, 내 사랑. 당신은 이러한 삶을 살아서는 안 되었어요. 당신은 자신이 빼앗긴 것을 찾은 후, 경계를 넘어 죽은 자들의 세계로 가야만 해요."~ [DEN023]{#deionarra_s29_1}'

    menu:
        '"„내가 아직 죽을 수 있을 때 죽어라?“"{#deionarra_s29_r810}':
            # a112 # r810
            $ deionarraLogic.j26087_s29_r810_action()
            jump deionarra_s25


# s30 # say814
label deionarra_s30: # from 25.0
    nr '"나도 그것이 오랫동안 계속되어왔다는 사실말고는 모르겠어요."{#deionarra_s30_1}'

    menu:
        '"그 밖에도 물어보고 싶은 것들이 좀 있소…"{#deionarra_s30_r815}':
            # a113 # r815
            jump deionarra_s10

        '"안녕히 계시오, 데이오나라."{#deionarra_s30_r816}' if deionarraLogic.r816_condition():
            # a114 # r816
            jump deionarra_s15

        '"안녕히 계시오, 데이오나라."{#deionarra_s30_r1324}' if deionarraLogic.r1324_condition():
            # a115 # r1324
            jump deionarra_s0


# s31 # say817
label deionarra_s31: # from 45.0
    nr '"전이문들은 존재에 생긴 구멍들로, 각 전이문은 다원 우주의 특정한 지점으로 통하고 있어요… 만약 당신이 적절한 열쇠를 찾을 수가 있다면, 그것들 중 하나를 통해 탈출 할 수 있을 거예요."{#deionarra_s31_1}'

    menu:
        '"열쇠?"{#deionarra_s31_r819}':
            # a116 # r819
            jump deionarra_s32

        '"그 밖에도 물어보고 싶은 것들이 좀 있소…"{#deionarra_s31_r818}':
            # a117 # r818
            jump deionarra_s10

        '"안녕히 계시오, 데이오나라."{#deionarra_s31_r820}' if deionarraLogic.r820_condition():
            # a118 # r820
            jump deionarra_s15

        '"안녕히 계시오, 데이오나라."{#deionarra_s31_r1325}' if deionarraLogic.r1325_condition():
            # a119 # r1325
            jump deionarra_s0


# s32 # say821
label deionarra_s32: # from 31.0
    nr '데이오나라는 기억을 해내려고 애쓰는 듯 잠시 말을 멈춘다, "당신이 적절한 „열쇠“를 지니고 있으면 전이문은 당신 앞에 그 모습을 드러낼 거예요. 불행히도 어떤 것이든 이러한 열쇠가 될 수 있어요.. 감정, 나뭇조각, 은박을 입힌 유리로 만든 대거, 천조각, 당신이 부르는 콧노래… 아마 이 곳에서 나가는 데 사용할 수 있는 열쇠를 아는 것은 더스트맨들뿐일 거예요."{#deionarra_s32_1}'

    menu:
        '"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소…"{#deionarra_s32_r824}':
            # a120 # r824
            jump deionarra_s10

        '"그럼 그들 중 한 사람에게 물어보겠소. 안녕히 계시오, 데이오나라."{#deionarra_s32_r823}' if deionarraLogic.r823_condition():
            # a121 # r823
            jump deionarra_s15

        '"그럼 그들 중 한 사람에게 물어보겠소. 안녕히 계시오, 데이오나라."{#deionarra_s32_r1326}' if deionarraLogic.r1326_condition():
            # a122 # r1326
            jump deionarra_s0


# s33 # say6083
label deionarra_s33: # from 4.0
    nr '"당신에게 해줄 대답 따위는 없어요! 당신의 불성실한 마음이 당신을 여기까지 인도했다면, 그것이 나머지 길도 인도하도록 하세요! 이제 내 앞에서 꺼져요!"{#deionarra_s33_1}'

    menu:
        '거짓말: "이건 내가 기억하고 있는 네이오나라가 아니오. 내가 사랑한 데이오나라는 자비롭고 친절하며… 도움을 필요로 하는 자를 결코 저버리지 않았소. 당신은 그토록 타락해 버린 거요?"{#deionarra_s33_r6129}' if deionarraLogic.r6129_condition():
            # a123 # r6129
            $ deionarraLogic.r6129_action()
            jump deionarra_s35

        '"내겐 당신 도움이 필요하오, 데이오나라. 내가 당신을 가장 절실히 필요로 할 때 날 저버리겠다는 거요?"{#deionarra_s33_r6130}':
            # a124 # r6130
            jump deionarra_s37

        '허풍: "좋소. 당신 의사를 존중하리다, 데이오나라… 이 곳을 떠나 다시는 돌아오지 않겠소."{#deionarra_s33_r6131}' if deionarraLogic.r6131_condition():
            # a125 # r6131
            $ deionarraLogic.r6131_action()
            jump deionarra_s34

        '허풍: "좋소. 당신 의사를 존중하리다, 데이오나라… 이 곳을 떠나 다시는 돌아오지 않겠소."{#deionarra_s33_r6132}' if deionarraLogic.r6132_condition():
            # a126 # r6132
            $ deionarraLogic.r6132_action()
            jump deionarra_s34

        '"당신에게 상처를 입혀 미안하오, 데이오나라. 난 이 곳을 떠날 것이며 내가 당신을 더 이상 괴롭히는 일은 없을 것이오."{#deionarra_s33_r6133}':
            # a127 # r6133
            $ deionarraLogic.r6133_action()
            jump deionarra_s34

        '조용히 떠난다.{#deionarra_s33_r6134}':
            # a128 # r6134
            jump deionarra_s48


# s34 # say6086
label deionarra_s34: # from 33.2 33.3 33.4
    nr '데이오나라의 표정에서 분노가 마치 눈 녹듯이 사라진다… 이러한 변화의 속도는 지금 그녀의 얼굴에 나타난 절박한 표정만큼이나 섬뜩하다. "아니에요! 기다리세요, 내 사랑!" 그녀는 애걸하는 목소리로 말한다. "제발 절 용서하세요, 이렇게 빌겠어요! 제발 떠나지 마세요!"{#deionarra_s34_1}'

    menu:
        '"데이오나라, 당신의 광분에 대한 내 인내심도 한계에 도달하려고 하고 있소. 만약 계속 얘기를 하려고 한다면 자신의 감정을 억제하시오, 아니면 우린 다시는 얘기를 하는 일이 없을 테니. 내 말을 알아듣겠소?"{#deionarra_s34_r6095}':
            # a129 # r6095
            $ deionarraLogic.r6095_action()
            jump deionarra_s36

        '"나는 당신을 용서하오. 지금 내게는 당신 도움이 필요하오, 데이오나라."{#deionarra_s34_r6096}':
            # a130 # r6096
            jump deionarra_s10


# s35 # say6087
label deionarra_s35: # from 33.0
    nr '데이오나라의 표정에서 분노가 마치 눈 녹듯이 사라진다… 이러한 변화의 속도는 지금 그녀의 얼굴에 나타난 절박한 표정만큼이나 섬뜩하다. "아니… 아니에요… 나는 아직도 당신이 기억하는 그대로의 데이오나라예요. 제발 절 용서하세요, 이렇게 빌겠어요."{#deionarra_s35_1}'

    menu:
        '"데이오나라, 당신의 광분에 대한 내 인내심도 한계에 도달하려고 하고 있소. 만약 계속 얘기를 하려고 한다면 자신의 감정을 억제하시오, 아니면 우린 다시는 얘기를 하는 일이 없을 테니. 내 말을 알아듣겠소?"{#deionarra_s35_r6097}':
            # a131 # r6097
            $ deionarraLogic.r6097_action()
            jump deionarra_s36

        '"나는 당신을 용서하오. 지금 내게는 당신 도움이 필요하오, 데이오나라."{#deionarra_s35_r6098}':
            # a132 # r6098
            jump deionarra_s10


# s36 # say6088
label deionarra_s36: # from 34.0 35.0
    nr '그녀의 목소리는 알아듣기 어려울 정도로 작은 속삭임으로 변한다. "그래요… 제발. 떠나지 마세요." 그녀의 애걸하는 듯한 표정은 당신을 전율시킨다… 공포 때문이 아니라 쾌락 때문에. 당신이 그녀를 교묘하게 조종한 것은 이번이 처음은 아니라는 생각이 든다.{#deionarra_s36_1}'

    menu:
        '"자, 들으시오, 데이오나라. 당신에게 물어볼 것들이 있소…"{#deionarra_s36_r6099}':
            # a133 # r6099
            jump deionarra_s10


# s37 # say6089
label deionarra_s37: # from 33.1 47.0
    nr '"*당신*을 저버렸다고?! 감히 당신이 내게 그런 말을 하는 건가요?!" 그녀는 팔을 바깥쪽으로 뻗으면서 호를 그린다, 그리고 팔을 다시 자신의 정면으로 가져온 후 양손의 집게손가락으로 당신을 가리킨다. 그녀는 어떤 주문을 영창하려는 것 같다. "감히 당신이…!"{#deionarra_s37_1}'

    menu:
        '"닥치시오! 내 말을 들으시오, 혼령! 나는 당신의 유희 때문에 인내심을 잃고--"{#deionarra_s37_r6100}':
            # a134 # r6100
            $ deionarraLogic.r6100_action()
            jump deionarra_s38

        '자신을 방어할 준비를 한다.{#deionarra_s37_r6101}':
            # a135 # r6101
            $ deionarraLogic.r6101_action()
            jump deionarra_s38


# s38 # say6090
label deionarra_s38: # from 37.0 37.1
    nr '"타버려요! 당신을 베이터의 업화가 안에서부터 삼키면서 태우듯이 타버려요! 타버려요, 그리고 그것조차도 당신에 대한 내 증오의 *일부*에 불과하다는 걸 아세요! 나는 당신을 저주해요, 난 당신이 자신의 비참한 삶이 아닌 삶의 사슬로부터 영원히 벗어나지 못하도록 저주해요. 당신같은 사람은 시름시름 시들어 가며 죽어야 해요, 그리고 당신의 정신은 그 썩은 몸뚱이 안에서 말라 죽어야 해요!"{#deionarra_s38_1}'

    menu:
        '"함부로 악담을 하지 마시오! 내 인내심-"{#deionarra_s38_r6102}':
            # a136 # r6102
            jump deionarra_s39

        '"데이오나라! 기다리시오, 나는 사과를 하러 왔소…"{#deionarra_s38_r6103}':
            # a137 # r6103
            jump deionarra_s39


# s39 # say6091
label deionarra_s39: # from 38.0 38.1
    nr '"한 번 건 저주는 풀 수가 없어요." 데이오나라는 속삭이듯 말한다. "이 사실을 아세요: 내게는 영원한 시간이 있어요, „내 사랑.“ 나는 당신이 명부로 오기를 기다리겠어요." 그녀는 미소를 짓는다, 하지만 즐거운 기색은 없다. "우리는 다시 함께 있게 될 거예요."{#deionarra_s39_1}'

    menu:
        '"잠깐 기다리시오! 얘기를 하고-"{#deionarra_s39_r6104}':
            # a138 # r6104
            jump deionarra_s48

        '"당신이 한 짓을 되돌려 놓으시오! 경고하--"{#deionarra_s39_r6105}':
            # a139 # r6105
            jump deionarra_s48


# s40 # say6092
label deionarra_s40: # from 16.0 20.4 21.3
    nr '데이오나라는 경직한다. 그녀 뭔가 말할 것이 있는 듯하나, 체념한 듯 한숨을 쉰다. "알겠어요, 내 사랑… 전과 마찬가지로 당신을 믿어야 할 것 같군요." 그녀는 눈을 감는다."{#deionarra_s40_1}'

    menu:
        '기다린다…{#deionarra_s40_r6106}':
            # a140 # r6106
            jump deionarra_s22


# s41 # say6108
label deionarra_s41: # from 10.6
    nr '데이오나라는 슬픈 듯 고개를 젓는다. "일단 건 저주는 풀 수가 없어요. 용서하세요, 내 사랑."{#deionarra_s41_1}'

    menu:
        '"그것을 제거할 수 있는 사람은 없소?"{#deionarra_s41_r6110}':
            # a141 # r6110
            jump deionarra_s42

        '"알겠소… 당신에게 물어보고 싶은 다른 질문이 있소…"{#deionarra_s41_r6111}':
            # a142 # r6111
            jump deionarra_s10

        '"용서를 구하기에는 이제 너무 늦은 것 같소. 안녕히 계시오, 데이오나라."{#deionarra_s41_r6112}' if deionarraLogic.r6112_condition():
            # a143 # r6112
            jump deionarra_s15

        '"아마 날 도울 수 있는 사람이 있을 것이오. 안녕히 계시오, 데이오나라."{#deionarra_s41_r6113}' if deionarraLogic.r6113_condition():
            # a144 # r6113
            jump deionarra_s15

        '"용서를 구하기에는 이제 너무 늦은 것 같소. 안녕히 계시오, 데이오나라."{#deionarra_s41_r6114}' if deionarraLogic.r6114_condition():
            # a145 # r6114
            jump deionarra_s0

        '"아마 날 도울 수 있는 사람이 있을 것이오. 안녕히 계시오, 데이오나라."{#deionarra_s41_r6115}' if deionarraLogic.r6115_condition():
            # a146 # r6115
            jump deionarra_s0


# s42 # say6109
label deionarra_s42: # from 41.0
    nr '"그렇다 해도 나는 그 방법을 알지 못해요." 데이오나라는 희망에 부픈 듯하다. "하지만 나보다 강력한 마력을 지닌 사람이라면 그 저주를 풀 수 있을지도 몰라요. 다시 한 번 당신의 용서를 구하겠어요. 내 사랑. 나는 내가 무슨 짓을 하고 있었는지 몰랐어요."{#deionarra_s42_1}'

    menu:
        '"당신에게 물어보고 싶은 다른 질문이 있소…"{#deionarra_s42_r6116}':
            # a147 # r6116
            jump deionarra_s10

        '"용서를 구하기에는 이제 너무 늦은 것 같소. 안녕히 계시오, 데이오나라."{#deionarra_s42_r6117}' if deionarraLogic.r6117_condition():
            # a148 # r6117
            jump deionarra_s15

        '"아마 날 도울 수 있는 사람이 있을 것이오. 안녕히 계시오, 데이오나라."{#deionarra_s42_r6118}' if deionarraLogic.r6118_condition():
            # a149 # r6118
            jump deionarra_s15

        '"용서를 구하기에는 이제 너무 늦은 것 같소. 안녕히 계시오, 데이오나라."{#deionarra_s42_r6119}' if deionarraLogic.r6119_condition():
            # a150 # r6119
            jump deionarra_s0

        '"아마 날 도울 수 있는 사람이 있을 것이오. 안녕히 계시오, 데이오나라."{#deionarra_s42_r6120}' if deionarraLogic.r6120_condition():
            # a151 # r6120
            jump deionarra_s0


# s43 # say6121
label deionarra_s43: # from 9.2 10.3 44.0
    nr '"떠난다고요…?" 데이오나의 목소리는 낮아졌다가 다시 올라간다. "*떠난다고요?!*" 당신 때문에 여기 갇힌 내게 어떻게 하면 여기를 떠날 수 있느냐고 묻는 건가요?"{#deionarra_s43_1}'

    menu:
        '"그렇소, 나는 이 곳에서 탈출해야 하오. 혹시 나가는 방법을 알고 있소?"{#deionarra_s43_r6137}':
            # a152 # r6137
            jump deionarra_s47

        '"내 요구에 대해 사과하오. 나는 당신을 화나게 할 생각은 없었소. 제발, 당신에게 할 다른 질문들이 있소…"{#deionarra_s43_r6138}':
            # a153 # r6138
            jump deionarra_s10

        '"데이오나라, 난 위험에 처했소. 날 안전한 곳으로 안내해 줄 수 있겠소? 당신과 다시 얘기를 나누기 위해 가능한 한 빨리 돌아오리다."{#deionarra_s43_r6139}' if deionarraLogic.r6139_condition():
            # a154 # r6139
            jump deionarra_s46

        '"난 떠나야만 하오. 잘 있으시오, 데이오나라."{#deionarra_s43_r6140}' if deionarraLogic.r6140_condition():
            # a155 # r6140
            jump deionarra_s15

        '"난 떠나야만 하오. 잘 있으시오, 데이오나라."{#deionarra_s43_r6141}' if deionarraLogic.r6141_condition():
            # a156 # r6141
            jump deionarra_s0


# s44 # say6122
label deionarra_s44: # from 9.3 10.4
    nr '당신은 데이오나라에게 질문을 하려다 목구멍에서 멈춘다. 만약 그녀에게 탈출로에 대해서 물으면 그녀가 당신이 자신을 버리려고 한다고 느낄지도 모른다는 생각이 든다. 만약 당신이 그녀에게 여기서 나갈 방법에 대해 묻고 싶다면 세심한 주의를 기울여야 할 것 같다.{#deionarra_s44_1}'

    menu:
        '"이 곳에서 나갈 수 있는 방법을 얘기해줄 수 있겠소?"{#deionarra_s44_r6142}':
            # a157 # r6142
            jump deionarra_s43

        '"데이오나라, 난 위험에 처했소. 날 안전한 곳으로 안내해 줄 수 있겠소? 당신과 다시 얘기를 나누기 위해 가능한 한 빨리 돌아오리다."{#deionarra_s44_r6143}':
            # a158 # r6143
            jump deionarra_s46

        '"당신에게 질문할 것들이 더 있소…"{#deionarra_s44_r6144}':
            # a159 # r6144
            jump deionarra_s10

        '"난 떠나야만 하오. 잘 있으시오, 데이오나라."{#deionarra_s44_r6145}' if deionarraLogic.r6145_condition():
            # a160 # r6145
            jump deionarra_s15

        '"난 떠나야만 하오. 잘 있으시오, 데이오나라."{#deionarra_s44_r6146}' if deionarraLogic.r6146_condition():
            # a161 # r6146
            jump deionarra_s0


# s45 # say6123
label deionarra_s45: # from 46.0 46.1
    nr '"이 장소에는 인간의 눈으로는 볼 수 없는 문들이 많이 감추어져 있어요. 당신은 이러한 전이문들 중 하나를 탈출하는 데 이용할 수 있을 거예요."{#deionarra_s45_1}'

    menu:
        '"전이문?"{#deionarra_s45_r6124}':
            # a162 # r6124
            jump deionarra_s31


# s46 # say6125
label deionarra_s46: # from 43.2 44.1 47.1
    nr '"위험에 처했다고요?" 데이오나라는 걱정하는 듯하다. "물론이에요, 내 사랑, 난 최선을 다해 당신을 돕겠어요…" 그녀는 잠시 눈을 감는다, 그리고 당신은 에테르의 미풍이 그녀의 몸을 통과함에 따라 그녀의 머리카락이 바람에 날리는 것을 본다. 잠시 후 바람은 가라앉고 그녀는 천천히 눈을 뜬다. "아마 방법이 있을 것 같아요."{#deionarra_s46_1}'

    menu:
        '"그래서?"{#deionarra_s46_r6147}' if deionarraLogic.r6147_condition():
            # a163 # r6147
            jump deionarra_s45

        '"그래서?"{#deionarra_s46_r6148}' if deionarraLogic.r6148_condition():
            # a164 # r6148
            $ deionarraLogic.r6148_action()
            jump deionarra_s45


# s47 # say6135
label deionarra_s47: # from 43.0
    nr '"당신은 내가 죽은 후에 와서 날 *다시* 버리기 위해 내 도움이 필요하다는 건가요?" 그녀의 얼굴은 분노로 타오르고 있다. "나는 당신을 위해 *죽었어요*, 내 사랑, 그리고 지금도 그 때문에 *고통받고* 있어요!"{#deionarra_s47_1}'

    menu:
        '"데이오나라, 제발… 내겐 당신 도움이 필요하오. 내가 당신을 가장 절실히 필요로 할 때 날 저버리겠다는 거요?"{#deionarra_s47_r6149}':
            # a165 # r6149
            jump deionarra_s37

        '"데이오나라, 이런 부탁을 하는 건 내가 위험에 처했기 때문이오. 날 안전한 곳으로 안내해 줄 수 있겠소? 당신과 다시 얘기를 나누기 위해 가능한 한 빨리 돌아오리다."{#deionarra_s47_r6150}' if deionarraLogic.r6150_condition():
            # a166 # r6150
            jump deionarra_s46

        '"관두시오. 그 밖에도 물어볼 것들이 있소…"{#deionarra_s47_r6151}':
            # a167 # r6151
            jump deionarra_s8

        '"난 떠나야만 하오. 잘 있으시오, 데이오나라."{#deionarra_s47_r6152}' if deionarraLogic.r6152_condition():
            # a168 # r6152
            jump deionarra_s15

        '"난 떠나야만 하오. 잘 있으시오, 데이오나라."{#deionarra_s47_r6153}' if deionarraLogic.r6153_condition():
            # a169 # r6153
            jump deionarra_s26


# s48 # say6136
label deionarra_s48: # from 33.5 39.0 39.1
    nr '데이오나라는 눈을 감는다, 그리고 미약한 바람과 함께 사라진다.{#deionarra_s48_1}'

    menu:
        '떠난다.{#deionarra_s48_r6154}' if deionarraLogic.r6154_condition():
            # a170 # r6154
            $ deionarraLogic.r6154_action()
            jump deionarra_dispose

        '떠난다.{#deionarra_s48_r6155}' if deionarraLogic.r6155_condition():
            # a171 # r6155
            $ deionarraLogic.r6155_action()
            jump morte_s105  # EXTERN

        '떠난다.{#deionarra_s48_r13258}' if deionarraLogic.r13258_condition():
            # a172 # r13258
            $ deionarraLogic.r13258_action()
            jump deionarra_dispose


# s49 # say63356
label deionarra_s49: # - # IF WEIGHT #3 ~  Global("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1203)
    nr '당신 앞에는 놀랄 정도로 아름다운 유령이 서 있다. 그녀는 길고 흐르는 듯한 머리를 지니고 있으며, 그녀의 가운은 희미한 바람에 살랑거리는 것 같다. 그녀의 시선이 당신에게 닿자 당신은 여러 쌍의 눈들이 당신을 동시에 쳐다보고 있는 듯한 기묘한 감각을 느낀다.{#deionarra_s49_1}'

    menu:
        '"당신은 데이오나라…?"{#deionarra_s49_r63357}':
            # a173 # r63357
            jump deionarra_s51


# s50 # say63358
label deionarra_s50: # - # IF WEIGHT #4 ~  GlobalGT("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1203)
    nr '당신 앞에는 데이오나라의 유령이 서 있다. 그녀는 길고 흐르는 듯한 머리를 지니고 있으며, 그녀의 가운은 희미한 바람에 살랑거리는 것 같다. 그녀의 시선이 당신에게 닿자 당신은 여러 쌍의 눈들이 당신을 동시에 쳐다보고 있는 듯한 기묘한 감각을 느낀다.{#deionarra_s50_1}'

    menu:
        '"데이오나라…?"{#deionarra_s50_r63359}':
            # a174 # r63359
            jump deionarra_s51


# s51 # say63360
label deionarra_s51: # from 49.0 50.0
    nr '"내 사랑, 마침내 당신을 *찾았군요*… 나는  당신이 수정에 의해 분열된 후 당신을 찾았어요 - 이 요새의 크기는 수천 킬로미터가 넘기 때문에 난 당신을 잃지는 않았을까 걱정했어요." 그녀는 당신을 살피며 몸에 새로운 상처는 없는지 확인한다. "괜찮으세요?"{#deionarra_s51_1}'

    menu:
        '"그런 것 같소. 수정이 날 나누긴 했으나 난 다시 하나가 되었소. 하지만 이제 난 여기 갇힌 신세요."{#deionarra_s51_r63362}':
            # a175 # r63362
            jump deionarra_s52


# s52 # say63363
label deionarra_s52: # from 51.0
    nr '"수정의 진정한 목적은 당신을 감금하는 것이었던 같아요. 하지만 나와 같은 존재에게는 아무런 장애물이 되지 못해요." 그녀는 눈을 감는다. "내 눈은 많은 곳을 보며, 나는 이 요새의 구석구석을 잘 알고 있어요."{#deionarra_s52_1}'

    jump deionarra_s53


# s53 # say63364
label deionarra_s53: # from 52.0 58.0 59.0
    nr '"만약 당신이 이 곳에 갇혔다면, 내 사랑, 내가 당신을 풀어 드리겠어요. 어디로 가고 싶으시죠?"{#deionarra_s53_1}'

    menu:
        '"나는 내 적을 찾아서 그를 물리치고 싶소."{#deionarra_s53_r63365}':
            # a176 # r63365
            jump deionarra_s54

        '"나는 내 죽음이 있는 곳으로 가 그것을 되찾고 싶소."{#deionarra_s53_r63366}':
            # a177 # r63366
            jump deionarra_s54

        '"나는 내 동료들과 합류하고 싶소."{#deionarra_s53_r63367}' if deionarraLogic.r63367_condition():
            # a178 # r63367
            jump deionarra_s54

        '"나는 내 동료들과 합류하고 싶소. 그들에게는 내가 필요로 하는 것들이 있소."{#deionarra_s53_r63368}' if deionarraLogic.r63368_condition():
            # a179 # r63368
            jump deionarra_s54

        '"나는 당신과 잠시 얘기를 나누고 싶소. 당신에게 당신이 어떻게… 그리고 왜 죽었는지 말해주고 싶소."{#deionarra_s53_r63369}' if deionarraLogic.r63369_condition():
            # a180 # r63369
            jump deionarra_s55


# s54 # say63370
label deionarra_s54: # from 53.0 53.1 53.2 53.3
    nr '"당신이 원하시는 대로 해 드리겠어요, 내 사랑." 그녀는 손을 내민다. "제 손을 잡으세요, 그러면 이 요새의 벽도 더 이상 당신을 가로막지 못할 거예요."{#deionarra_s54_1}'

    menu:
        '그녀의 손을 만진다…{#deionarra_s54_r63371}' if deionarraLogic.r63371_condition():
            # a181 # r63371
            $ deionarraLogic.r63371_action()
            jump deionarra_dispose

        '그녀의 손을 만진다…{#deionarra_s54_r64594}' if deionarraLogic.r64594_condition():
            # a182 # r64594
            $ deionarraLogic.r64594_action()
            jump deionarra_dispose


# s55 # say63372
label deionarra_s55: # from 53.4
    nr '"무슨 말씀을 하시는 거죠?"{#deionarra_s55_1}'

    menu:
        '진실: "내가 당신을 요새에 데려왔을 때 난 당신이 이 곳에서 죽기를 원했소. 나는 누군가 이 곳에 남아 이 장소와 나를 연결시켜 줄 사람이 필요했소. 나는 당신이 날 너무나도 사랑하기 때문에 죽음조차 뿌리치고 혼령이 될 것이라는 걸 알고 있었소. 그리고 그것이 지금 당신이 고통을 받고 있는 이유요."{#deionarra_s55_r63373}':
            # a183 # r63373
            $ deionarraLogic.r63373_action()
            jump deionarra_s56

        '거짓말: "당신이 이 요새에서 죽은 건 우릴 기다리고 있는 적 때문이었소. 그는 우리 사이를 갈라놓기 위해 당신이 죽기를 원했소. 나는 곧 그와 대적할 것이고 그에게 복수를 할 것이오."{#deionarra_s55_r63374}':
            # a184 # r63374
            $ deionarraLogic.r63374_action()
            jump deionarra_s58


# s56 # say63375
label deionarra_s56: # from 55.0
    nr '당신이 얘기를 할 때 데이오나라의 얼굴은 마치 가면과도 같다.{#deionarra_s56_1}'

    menu:
        '거짓말: "미안하오, 데이오나라."{#deionarra_s56_r63376}':
            # a185 # r63376
            $ deionarraLogic.r63376_action()
            jump deionarra_s57

        '진실: "미안하오, 데이오나라."{#deionarra_s56_r63377}':
            # a186 # r63377
            $ deionarraLogic.r63377_action()
            jump deionarra_s57

        '진실: "그건 어쩔 수가 없었소, 데이오나라. 당신이 고통을 받은 데 대해서는 정말 미안하오."{#deionarra_s56_r63378}':
            # a187 # r63378
            jump deionarra_s57


# s57 # say63379
label deionarra_s57: # from 56.0 56.1 56.2
    nr '"당신은 날 *사랑*하시나요? 만약 그렇다고 말씀하시면, 내 사랑, 지금까지 있었던 일들은 다 괜찮아요."{#deionarra_s57_1}'

    menu:
        '거짓말: "물론 나는 당신을 사랑하오. 죽음조차도 우리 사이는 갈라놓을 수가 없소."{#deionarra_s57_r63380}':
            # a188 # r63380
            $ deionarraLogic.r63380_action()
            jump deionarra_s58

        '진실: "처음에 나는 당신을 몰랐지만 어느새 당신을 사랑하게 되었소. 당신의 고통은 바로 내 고통이 되었으며, 내가 당신을 위해 할 수 있는 일이라면 무엇이든지 할 거라는 사실을 알게 되었소."{#deionarra_s57_r63381}':
            # a189 # r63381
            $ deionarraLogic.r63381_action()
            jump deionarra_s58

        '진실: "미안하오, 데이오나라. 아니오, 난 당신을 안 적이 없소. 아마 만약 다른 상황 아래서 만났더라면…"{#deionarra_s57_r63382}':
            # a190 # r63382
            $ deionarraLogic.r63382_action()
            jump deionarra_s59


# s58 # say63383
label deionarra_s58: # from 55.1 57.0 57.1
    nr '"그렇다면 당신을 돕겠어요, 내 사랑. 내가 어떻게 도와드리면 되는지 말씀하세요, 그럼 그렇게 하겠어요{#deionarra_s58_1}'

    menu:
        '"나는 이 곳에 갇혔소. 내가 탈출하도록 도와줄 수 있겠소?"{#deionarra_s58_r63384}':
            # a191 # r63384
            $ deionarraLogic.r63384_action()
            jump deionarra_s53


# s59 # say63385
label deionarra_s59: # from 57.2
    nr '"그렇다면… 이것으로 우리들 사이의 관계도 끝이군요, 내 사랑. 나는 오직 당신만을 위해 이 곳에 남았어요. 나는 당신을 마지막으로 한 번만 더 도와드리겠어요, 그리고 그 다음에는 운명에 순응하여 영원의 경계 너머로 떠나겠어요."{#deionarra_s59_1}'

    menu:
        '"그럼 당신에게 마지막으로 이 부탁만 하고 당신이 안식을 취할 수 있도록 조용히 떠나겠소: 나는 이 곳에 갇혔소. 날 도와줄 수 있겠소?"{#deionarra_s59_r63386}':
            # a192 # r63386
            jump deionarra_s53


# s60 # say63387
label deionarra_s60: # - # IF WEIGHT #6 /* Triggers after states #: 62 even though they appear after this state */ ~  Global("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1200) Global("1200_Cut_Scene_2","GLOBAL",0)
    nr '당신 앞에는 데이오나라의 유령이 서 있다. 그녀는 길고 흐르는 듯한 머리를 지니고 있으며, 그녀의 가운은 희미한 바람에 살랑거리는 것 같다. 그녀는 검은 돌로 만든 둑길의 가장자리에 서서 이 차원의 허공을 바라보고 있다.{#deionarra_s60_1}'

    menu:
        '"당신은 누구요?"{#deionarra_s60_r63388}':
            # a193 # r63388
            $ deionarraLogic.r63388_action()
            jump deionarra_s62

        '유령과 같은 존재를 그냥 내버려 둔다.{#deionarra_s60_r63389}':
            # a194 # r63389
            jump deionarra_dispose


# s61 # say63390
label deionarra_s61: # - # IF WEIGHT #7 /* Triggers after states #: 62 even though they appear after this state */ ~  GlobalGT("Deionarra","GLOBAL",0) Global("Current_Area","GLOBAL",1200) Global("1200_Cut_Scene_2","GLOBAL",0)
    nr '당신 앞에는 데이오나라의 유령이 서 있다. 그녀는 길고 흐르는 듯한 머리를 지니고 있으며, 그녀의 가운은 희미한 바람에 살랑거리는 것 같다. 그녀는 검은 돌로 만든 둑길의 가장자리에 서서 이 차원의 허공을 바라보고 있다.{#deionarra_s61_1}'

    menu:
        '"데이오나라…?{#deionarra_s61_r63391}':
            # a195 # r63391
            $ deionarraLogic.r63391_action()
            jump deionarra_s62

        '데이오나라를 그냥 내버려 둔다.{#deionarra_s61_r63392}':
            # a196 # r63392
            jump deionarra_dispose


# s62 # say63393
label deionarra_s62: # from 60.0 61.0 # IF WEIGHT #5 ~  Global("Current_Area","GLOBAL",1200) Global("1200_Cut_Scene_2","GLOBAL",1)
    nr '"내 사랑! 당신은 이 곳에 오시면 안돼요! 당장 떠나야 해요!{#deionarra_s62_1}'

    menu:
        '"왜? 당신은 누구요, 혼령? 이 곳은 어떤 곳이오?"{#deionarra_s62_r63394}' if deionarraLogic.r63394_condition():
            # a197 # r63394
            jump deionarra_s63

        '"데이오나라, 이 곳은 어디요? 이 곳이 그 요새요?"{#deionarra_s62_r63395}' if deionarraLogic.r63395_condition():
            # a198 # r63395
            jump deionarra_s63


# s63 # say63396
label deionarra_s63: # from 62.0 62.1
    nr '"이 곳은 후회의 요새예요. 이 곳은 내 죽음의 순간을 감금하고 있는 장소예요, 그리고 나는 여기서 멀리 떨어질 수가 없어요. 당신은 시길로 돌아갈 방법을 찾아야만 해요. 여기 머무르면 당신은 죽게 될 거예요, 내 사랑."{#deionarra_s63_1}'

    menu:
        '"나는 불사신이오, 혼령. 당신 경고는 고맙지만 죽음은 내게 있어 가장 하찮은 걱정거리에 불과하오."{#deionarra_s63_r63397}' if deionarraLogic.r63397_condition():
            # a199 # r63397
            jump deionarra_s64

        '"나는 불사신이오, 데이오나라. 이 곳에서도 별로 걱정할 건 없다고 생각하오."{#deionarra_s63_r63398}' if deionarraLogic.r63398_condition():
            # a200 # r63398
            jump deionarra_s64

        '"내 불사성은? 여기에서 조차도 난 불사신이지 않소…?{#deionarra_s63_r63399}':
            # a201 # r63399
            jump deionarra_s64


# s64 # say63400
label deionarra_s64: # from 63.0 63.1 63.2
    nr '그녀는 고개를 젓는다. "그렇지가 않아요, 내 사랑. 이 요새는 다른 곳과는 달라요 - 이 곳을 덮고 있는 장벽은 요새를 다른 차원들로부터 차단하고 있어요. 그것은 바로 당신의 불사성을 가로막고 있는 장벽이기도 해요.{#deionarra_s64_1}'

    menu:
        '"막? 기둥은 내게 만약 내가 죽으면 누군가가 내 대신 죽는다고 했소. 만약 내 대신 죽을 사람을 찾지 못하면-"{#deionarra_s64_r63401}' if deionarraLogic.r63401_condition():
            # a202 # r63401
            jump deionarra_s66

        '"어떻게 이 막이란 것이 장애물이 될 수가 있소? 말이 되질 않소."{#deionarra_s64_r63402}' if deionarraLogic.r63402_condition():
            # a203 # r63402
            jump deionarra_s65


# s65 # say63403
label deionarra_s65: # from 64.1
    nr '"이 곳을 지키고 있으면서 나는 당신의 불사성의 특성을 알게 되었어요, 내 사랑. 그것은 다른 자의 목숨을 갈망하는 괴물과도 같아요, 당신이 죽으면, 그것은 당신 대신 다른 사람의 목숨을 빼앗음으로서 당신이 살도록 해주어요. 당신 대신 죽은 영혼은 이 요새로 와서 그림자가 돼요. 이 곳의 장벽은 당신의 불사성이 다른 희생자를 찾는 것을 막고 있어요."{#deionarra_s65_1}'

    menu:
        '"그래… 만약 내가 죽으면 누군가가 나 대신 죽는다는 거군. 그리고 만약 나 *대신* 죽을 생명체를 찾지 못하면…"{#deionarra_s65_r63404}':
            # a204 # r63404
            jump deionarra_s66


# s66 # say63405
label deionarra_s66: # from 64.0 65.0
    nr '"만약 당신이 이 곳에서 죽는다면, 이 곳에는 살아 있는 생명체가 달리 없기 때문에 그걸로 끝이에요. 그러니 조심하셔야 해요. 빨리 이 저주받은 장소를 떠나 시길로 돌아가세요{#deionarra_s66_1}'

    menu:
        '"하지만 내 동료들이 이 곳에 있소, 그리고 그건 그들이 막 안에 있다는 뜻이오. 만약 내가 죽으면 *그들*은 어떻게 되오?"{#deionarra_s66_r63406}' if deionarraLogic.r63406_condition():
            # a205 # r63406
            jump deionarra_s67

        '"하지만 내 동료들 중 한 사람이 이 곳에 있소, 그리고 그건 그가 막 안에 있다는 뜻이오. 만약 내가 죽으면 내 동료는 어떻게 되오?"{#deionarra_s66_r63407}' if deionarraLogic.r63407_condition():
            # a206 # r63407
            jump deionarra_s67

        '"데이오나라, 뭐든지 좋으니 내게 도움이 될만한 사항을 얘기해줄 수 있겠소? 안에서는 어떤 것이 날 기라리고 있소?"{#deionarra_s66_r63408}' if deionarraLogic.r63408_condition():
            # a207 # r63408
            jump deionarra_s68

        '"혼령이여, 뭐든지 좋으니 내게 도움이 될만한 사항을 얘기해줄 수 있겠소? 안에서는 어떤 것이 날 기라리고 있소?"{#deionarra_s66_r63409}' if deionarraLogic.r63409_condition():
            # a208 # r63409
            jump deionarra_s68


# s67 # say63410
label deionarra_s67: # from 66.0 66.1
    nr '"내 사랑, 만약 당신이 이 곳에 살아 있는 생명체를 데리고 왔다면 그들은 심각한 위험에 처해 있어요 - 그림자들과 당신 양쪽 모두에 의해. 만약 당신이 여기서 죽는다면, 불사성은 요새 안에서 가장 가까운 곳에 있는 생명을 노릴 거예요, 그리고 그 또는 그녀가 당신 대신 죽게 되지요. 당신은 당장 여기를 떠나셔야 해요."{#deionarra_s67_1}'

    menu:
        '"난 돌아갈 수가 없소. 그러니 내게 도움이 될만한 사항을 얘기해줄 수 있겠소? 요새 안에서는 어떤 것이 날 기다리고 있소?"{#deionarra_s67_r63411}':
            # a209 # r63411
            jump deionarra_s68


# s68 # say63412
label deionarra_s68: # from 66.2 66.3 67.0
    nr '"요새 안에는 천연의 어둠은 없어요, 내 사랑, 단지 당신 대신 죽은 자들의 그림자들만이 있을 뿐이에요. 이 차원의 에너지가 그들을 움직이고 있으며, 그들의 당신에 대한 증오는 상상을 초월할 정도예요. 그들은 당신이 떠나는 것을 결코 허용하지 않을 거예요." 그녀는 요새의 벽을 흘긋 쳐다본다. "들어가지 마세요, 애원하겠어요!"{#deionarra_s68_1}'

    menu:
        '"하지만 내 동료들은 그 안에 있소. 난 그들을 내버려둘 수가 없소. 그들이 어디 있는지 혹시 짐작이라도 가오?"{#deionarra_s68_r63413}' if deionarraLogic.r63413_condition():
            # a210 # r63413
            jump deionarra_s69

        '"하지만 내 동료들 중 하나가 그 안에 있소. 난 떠날 수가 없소. 내 동료가 어디 있는지 혹시 짐작이라도 가오?"{#deionarra_s68_r63414}' if deionarraLogic.r63414_condition():
            # a211 # r63414
            jump deionarra_s69

        '"나는 요새 안으로 돌아가야만 하오. 난 돌아갈 수 없소."{#deionarra_s68_r63415}' if deionarraLogic.r63415_condition():
            # a212 # r63415
            $ deionarraLogic.j68117_s68_r63415_action()
            jump deionarra_s75


# s69 # say63416
label deionarra_s69: # from 68.0 68.1
    nr '"만약 당신이 다른 이들과 함께 왔다면, 그들은 도착하자마자  당신으로부터 격리되었을 거예요 - 산 자들을 나눈 뒤… 죽이는 것은 이 곳의 본질이에요." 그녀는 걱정이 되는 듯하다. "요새는 광활해요 - 당신 친구들을 찾기는 쉽지가 않을 거예요."{#deionarra_s69_1}'

    menu:
        '"나는 그들을 찾아야만 하오. 이 문제에 대해선 선택의 여지가 없소."{#deionarra_s69_r63417}':
            # a213 # r63417
            $ deionarraLogic.j68117_s69_r63417_action()
            jump deionarra_s75


# s70 # say63418
label deionarra_s70: # from 75.0
    nr '"한 가지가 더 있어요…" 데이오나라는 희미한 기억을 상기하려는 듯 잠시 멈춘다.  "방 안에는… 거대한 시계들이 있어요…" 그녀의 목소리는 한층 안정되고 확실해진다. "당신이 그 방에 갇혔을 때 당신으로 하여금 그 방에서 탈출할 수 있도록 해준 열쇠라고 당신이 전에 얘기한 적이 있는 시계들…" 그녀는 당신을 쳐다본다. "나는 내가 당신 가는 길을 막을 수 없다는 것을 잘 알아요, 내 사랑 -- 나는 당신을 지켜보면서 내 능력껏 당신을 돕겠어요."{#deionarra_s70_1}'

    menu:
        '"당신의 반지를 가져왔소, 데이오나라. 나는 당신이 내게 남긴 유증을 찾았소."{#deionarra_s70_r63419}' if deionarraLogic.r63419_condition():
            # a214 # r63419
            $ deionarraLogic.r63419_action()
            jump deionarra_s71

        '"고맙소, 혼령. 이만 가야겠소."{#deionarra_s70_r63420}' if deionarraLogic.r63420_condition():
            # a215 # r63420
            jump deionarra_dispose

        '"고맙소, 데이오나라. 이만 가야겠소."{#deionarra_s70_r63421}' if deionarraLogic.r63421_condition():
            # a216 # r63421
            jump deionarra_dispose


# s71 # say63422
label deionarra_s71: # from 70.0
    nr '"이 반지에는 아직도 내 일부가 담겨 있어요, 내 사랑. 당신이 그것을 지니고 계시면, 내 마음을 지니고 계신 것과 같아요." 그녀는 잠시 눈을 감는다, 그리고 당신은 갑자기 따뜻함이 당신 몸을 어루만지고 지나가는 것을 느낀다, 데이오나라는 눈을 뜨고 미소를 짓는다. "나는 당신이 그 반지를 가지고 돌아오실 줄 알고 있었어요. 이제 내 축복과 함께 반지를 가져가세요, 그리고 당신 심장 가까운 곳에 지니도록 하세요. 그것을 통해 내가 당신을 지키겠어요."{#deionarra_s71_1}'

    menu:
        '"고맙소, 데이오나라. 이만 가야겠소."{#deionarra_s71_r63423}' if deionarraLogic.r63423_condition():
            # a217 # r63423
            jump deionarra_dispose


# s72 # say66912
label deionarra_s72: # from 27.1
    nr '"당신… 나는…" 그녀의 몸이 갑자기 얼어붙은 듯 경직된다, 그리고 그녀는 자신의 목소리가 두려운 듯 천천히, 그리고 조심스럽게 말한다. "진실은 다음과 같아요: 당신은 죽음을 여러 번 죽는 사람이에요. 이러한 죽음들은 당신에게 살아 있는 생명에 대한 앎을 주었고, 당신 손 안에는 삶과… 죽음의 불꽃이 있어요. 당신 곁에서 죽는 사람들은 당신이 불러낼 수 있는 자신들의 흔적을 지니고 있어요…"{#deionarra_s72_1}'

    jump deionarra_s73


# s73 # say66913
label deionarra_s73: # from 72.0
    nr '데이오나라 말을 하자 당신은 후두부에서 뭔가가 기어가는 것 겉은 감각을 느낀다… 당신은 갑자기 손을 쳐다보고 싶다는 충동을 느낀다. 손을 들어 그것을 쳐다보자, 당신은 피가 천천히 당신의 팔 속을 흐르며 근육 속으로 유입되고, 근육은 다시 뼈에 힘을 주는 등의 신체 대사를 육안으로 볼 수가 있다.{#deionarra_s73_1}'

    menu:
        '"뭐…"{#deionarra_s73_r66914}':
            # a218 # r66914
            $ deionarraLogic.r66914_action()
            jump deionarra_s74


# s74 # say66915
label deionarra_s74: # from 73.0
    nr '그리고 당신은 데이오나라의 말이 *옳다는* 것을 깨닫는다. 갑자기 당신은 육체에 남은 가장 희미한 불꽃을 구슬러 그것을 다시 불러내는 방법을 깨닫는다… 이 생각은 당신을 두렵게 하는 동시에 호기심을 돋운다.  주: 당신은 사자를 소생시키는 방법을 기억해냈다. 이 능력을 사용하려면, 퀵 메뉴에서 특수 능력 버튼을 선택하면 된다. 이 능력은 당신이 있는 상황에서 죽은 파티 멤버에게만 효과가 있다. 이 능력은 당신과 여행을 함께 하지 않는 자에게는 효과가 없으며, 죽은 상태로 파티에서 제거된 캐릭터에게도 효과가 없다.{#deionarra_s74_1}'

    menu:
        '"그 밖에도… 물어볼 것들이 있소…"{#deionarra_s74_r66916}':
            # a219 # r66916
            jump deionarra_s10


# s75 # say68114
label deionarra_s75: # from 68.2 69.0
    nr '"좋아요, 내 사랑… 만약 가고자 하신다면, 이 사실을 아셔야 해요 - 요새의 입구를 지나면 무수한 그림자들이 기다리고 있는 대기실이 있어요. 당신은 그들이 무리로 당신을 공격할 기회를 주지 말고 신속하게 이동하셔야 해요, 아니면 목숨을 잃게 될 거예요!"{#deionarra_s75_1}'

    jump deionarra_s70
