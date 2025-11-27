init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.morte_logic import MorteLogic
    morteLogic = MorteLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DMORTE.DLG
# ###


# s0 # say986
label morte_s0: # -
    nr '"이봐, 대장. 괜찮아? 시체흉내를 내고 있는 거야, 아니면 더스티들을 속이려는 거야? 난 대장이 정말로 죽은 줄 알았다고."{#morte_s0_}'

    menu:
        '"자네는 누군가?"{#morte_s0_r987}':
            # a0 # r987
            jump morte_s1

        '말하는 해골을 무시하고 방을 둘러본다.{#morte_s0_r989}':
            # a1 # r989
            jump morte_dispose

        '심호흡하고 머리를 흔든 후 당신에게 말을 걸고 있는 해골을 무시한다.{#morte_s0_r988}':
            # a2 # r988
            jump morte_dispose

        '"자네가 하고 싶은 말들이 무수히 많다는 건 나도 아네, 모트, 하지만 입을 좀 닥치고 날 그냥 따르게."{#morte_s0_r17833}':
            # a3 # r17833
            $ morteLogic.r17833_action()
            jump morte_dispose


# s1 # say990
label morte_s1: # from 0.0 29.0 31.0
    nr '"나?" 해골은 화가 난 듯하다. "*당신*부터 먼저 대답하는 게 어때, 이 상처딱지 덩어리야? 당신은 누구지?"{#morte_s1_}'

    menu:
        '"모르… 겠네."{#morte_s1_r992}':
            # a4 # r992
            jump morte_s2

        '"모르겠네… 기억을 할 수가 없어."{#morte_s1_r995}':
            # a5 # r995
            jump morte_s3

        '"네가 자네에게 먼저 물었네, 해골."{#morte_s1_r993}':
            # a6 # r993
            jump morte_s4

        '해골을 무시하고 방을 둘러본다.{#morte_s1_r991}':
            # a7 # r991
            jump morte_dispose


# s2 # say997
label morte_s2: # from 1.0 4.0 5.0
    nr '"당신은 자기가 누군지도 모르는 거야? 그냥 „엿먹고 늘어져, 얼간아“라고 했을 수도 있잖아. 그건 괜찮아… 당신 머리는 텅 비었다고 치자고. 아무려면 어때. 나는 모트라고. 뭐 일단 인사는 해 두도록 하지.{#morte_s2_}'

    menu:
        '"여기가 어딘가, 모트?"{#morte_s2_r998}':
            # a8 # r998
            jump morte_s6

        '"어떻게 하면 여기서 빠져나갈 수 있는지 아나?"{#morte_s2_r1006}' if morteLogic.r1006_condition():
            # a9 # r1006
            jump morte_s21

        '"난 어떻게 이 곳에 오게 되었나?"{#morte_s2_r1080}':
            # a10 # r1080
            jump morte_s20

        '모트를 무시하고 방을 둘러본다.{#morte_s2_r1087}':
            # a11 # r1087
            jump morte_dispose


# s3 # say999
label morte_s3: # from 1.1 4.1 5.1
    nr '"당신은 *기억*을 못해? 유별난 밤이었던 모양이군. 당신이 자신이 아무도 해치지 않았기를 바라는 게 좋을 걸… 내 이름은 모트라고. 일단 인사는 해 두도록 하지." 그는 잠시 말을 멈춘다." 이건 꼭 물어봐야겠는데, 당신은 자학증세가 있는 센세이트들 중 하나야, 아니면 누가 당신 몸에 그런 상처들을 낸 거야?"{#morte_s3_}'

    menu:
        '"센세이트?"{#morte_s3_r1000}':
            # a12 # r1000
            jump morte_s12

        '"흉터?"{#morte_s3_r1001}':
            # a13 # r1001
            jump morte_s13

        '모트를 무시하고 방을 둘러본다.{#morte_s3_r1002}':
            # a14 # r1002
            jump morte_dispose


# s4 # say1003
label morte_s4: # from 1.2
    nr '"그래, 내가 나중에 물었어. 당신 이름은 뭐지?"{#morte_s4_}'

    menu:
        '"모르겠소…"{#morte_s4_r1004}':
            # a15 # r1004
            jump morte_s2

        '"모르겠네… 기억을 할 수가 없어."{#morte_s4_r1005}':
            # a16 # r1005
            jump morte_s3

        '"자네가 먼저 말하게, 해골."{#morte_s4_r1007}':
            # a17 # r1007
            jump morte_s5

        '해골을 무시하고 방을 둘러본다.{#morte_s4_r994}':
            # a18 # r994
            jump morte_dispose


# s5 # say1008
label morte_s5: # from 4.2
    nr '"정말 당신은 젖은 로프만큼이나 빡빡하군. 좋아, 좋아… 여기선 내가 참지… 나는 모트, 모트 릭터스그린이라고. 자 이제 내게 어떤 불행한 이름이 당신이라는 소유주를 가지고 있는지 말해주겠어?"{#morte_s5_}'

    menu:
        '"모르… 겠네."{#morte_s5_r1009}':
            # a19 # r1009
            jump morte_s2

        '"모르겠네… 아무 것도 기억을 할 수가 없어."{#morte_s5_r1010}':
            # a20 # r1010
            jump morte_s3

        '모트를 무시하고 방을 둘러본다.{#morte_s5_r1011}':
            # a21 # r1011
            jump morte_dispose


# s6 # say1012
label morte_s6: # from 2.0 29.1 31.1
    nr '"우린 시체안치소라고 불리는 쓰레기 더미 속에 있지… 그건 임신한 거미만큼이나 매력적인 모양새의 커다란 검은 건물이라고."{#morte_s6_}'

    menu:
        '"시체안치소?„ 난 죽었나?"{#morte_s6_r1013}':
            # a22 # r1013
            jump morte_s7

        '"어떻게 하면 여기서 나갈 수가 있나?"{#morte_s6_r1015}' if morteLogic.r1015_condition():
            # a23 # r1015
            jump morte_s21

        '모트를 무시하고 방을 둘러본다.{#morte_s6_r1085}':
            # a24 # r1085
            jump morte_dispose


# s7 # say1014
label morte_s7: # from 6.0 9.0
    nr '"글쎄, 그건 나도 모르겠어… 하지만 시체안치소는 이 도시의 시체들을 처리하는 곳이지. 시체들은 운이 좋으면 매장되거나 화장되고, 운이 나쁘면 부활되어 노에로 일하게 되지. 별로 있고 싶은 곳이 아니야. 만약 내가 당신이라면 가장 가까운 출구를 찾아 당장 도망치겠어."{#morte_s7_}'

    menu:
        '"미안하네… „시체안치소?“ 여긴 뭐 하는 곳인가?"{#morte_s7_r1016}':
            # a25 # r1016
            jump morte_s10

        '"죽음으로부터 노예로서 부활?"{#morte_s7_r1017}':
            # a26 # r1017
            jump morte_s9

        '"내가 아직 걸을 수 있을 때?"{#morte_s7_r1018}':
            # a27 # r1018
            jump morte_s11

        '"사람들이 시체를 이 곳으로 운반해 온다는 건가? 나도 그렇게 해서 여기 오게 된 건가?"{#morte_s7_r1019}' if morteLogic.r1019_condition():
            # a28 # r1019
            jump morte_s8

        '모트를 무시하고 방을 둘러본다.{#morte_s7_r1020}':
            # a29 # r1020
            jump morte_dispose


# s8 # say1021
label morte_s8: # from 7.3
    nr '그는 잠시 말을 멈춘다. "그래, 그런 모양이야. 아마 어떤 불한당이 당신을 죽은 걸로 생각하고 이 곳에 가져온 거겠지. 당신의 시체 흉내에는 나도 속을 뻔했다고… 당신을 이 곳으로 끌고 온 자를 찾아 놈에게 물어보는 건 어때?" 모트는 고개를 끄덕인다. "최근에 죽은 사람치고는 괜찮은 생각이군… 아직 당신 뇌가 멀쩡하다니 다행한 일이야."{#morte_s8_}'

    menu:
        '"무엇 때문에 날 이 곳에 데려온 건가?"{#morte_s8_r1029}':
            # a30 # r1029
            jump morte_s14

        '"그 밖에도 물어보고 싶은 것들이 좀 있네…"{#morte_s8_r1030}':
            # a31 # r1030
            jump morte_s31

        '모트를 무시하고 방을 둘러본다.{#morte_s8_r1137}':
            # a32 # r1137
            jump morte_dispose


# s9 # say1022
label morte_s9: # from 7.1
    nr '"그래, 참 멋진 삶이지… 포름알데히드의 지속적인 사용과 떨어진 사지를 꿰매는 일만 제외한다면 천국이라고."{#morte_s9_}'

    menu:
        '"나는 이 곳에 있어야 하는 건가? 난 죽었나?"{#morte_s9_r1113}':
            # a33 # r1113
            jump morte_s7

        '"내 모습이 어떤가? 흉터가 심한가?"{#morte_s9_r1114}':
            # a34 # r1114
            jump morte_s13

        '"관두게. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s9_r1115}':
            # a35 # r1115
            jump morte_s31

        '모트를 무시하고 방을 둘러본다.{#morte_s9_r1116}':
            # a36 # r1116
            jump morte_dispose


# s10 # say1023
label morte_s10: # from 7.0
    nr '"어… 내가 말했듯이 시체안치소라고. 괜찮아, 대장? 별로 좋아 보이지 않는데."{#morte_s10_}'

    menu:
        '"나는 이 곳에 있어야 하는 건가? 난 죽었나?"{#morte_s10_r1109}':
            # a37 # r1109
            jump morte_s16

        '"내 모습이 어떤가? 얼마나 흉터가 심한가?"{#morte_s10_r1110}':
            # a38 # r1110
            jump morte_s13

        '"관두게. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s10_r1111}':
            # a39 # r1111
            jump morte_s31

        '모트를 무시하고 방을 둘러본다.{#morte_s10_r1112}':
            # a40 # r1112
            jump morte_dispose


# s11 # say1024
label morte_s11: # from 7.2
    nr '"대장, 내가 보기에 대장이 그 철판에서 깨어날 확률은 희박했어. 난 대장이 마침내 가는 줄 알았다고 무슨 말인지 알겠어?"{#morte_s11_}'

    menu:
        '"혹시 난 죽었고 그래서 여기 있는 건가?"{#morte_s11_r1133}':
            # a41 # r1133
            jump morte_s16

        '"내 모습이 얼마나 흉칙한가?"{#morte_s11_r1134}':
            # a42 # r1134
            jump morte_s13

        '"관두게. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s11_r1135}':
            # a43 # r1135
            jump morte_s31

        '모트를 무시하고 방을 둘러본다.{#morte_s11_r1136}':
            # a44 # r1136
            jump morte_dispose


# s12 # say1025
label morte_s12: # from 3.0 33.0
    nr '"대장은 센세이트가 뭔지도 모른단 말이야? 오, 내가 멋들어지게 강의를 해주지! 그들은 다원 우주에서 오감으로 느낄 수 있는 건 모두 체험하겠다는 작자들로, 그 체험 중에는 물론… 아니, 지금은 일단 접어 두자고. 어쨌든 그 흉터들은 어떻게 된 거야?"{#morte_s12_}'

    menu:
        '"흉터?"{#morte_s12_r1027}':
            # a45 # r1027
            jump morte_s13

        '"관두게. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s12_r1028}':
            # a46 # r1028
            jump morte_s31

        '모트를 무시하고 방을 둘러본다.{#morte_s12_r1143}':
            # a47 # r1143
            jump morte_dispose


# s13 # say1026
label morte_s13: # from 3.1 9.1 10.1 11.1 12.0 33.1
    nr '"마치 누가 몸에 칼로 그림을 그리려고 했던 것 같아. 온몸에 흉터투성이야… 심지어는 등에까지…" 잠시 멈춘다. "대장 등에는 아예 문신 갤러리가 있군. 무슨 글이 적혀 있는 것 같은데…"{#morte_s13_}'

    menu:
        '"뭐라고 적혀 있나?"{#morte_s13_r1088}':
            # a48 # r1088
            $ morteLogic.r1088_action()
            jump morte_s34

        '"관두게. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s13_r1089}':
            # a49 # r1089
            jump morte_s31

        '모트를 무시하고 방을 둘러본다.{#morte_s13_r1090}':
            # a50 # r1090
            jump morte_dispose


# s14 # say1031
label morte_s14: # from 8.0 29.3
    nr '"이 도시에 사는 사람들의 일부는 거리에서 시체를 수거한 후 이 곳에 가지고 와서 돈을 받고 팔지. 별로 좋은 직업은 아니지만 다원 우주의 변기와도 같은 이 도시에서 사는 사람들에게는 선택의 폭이 별로 넓지 않거든."{#morte_s14_}'

    menu:
        '"징크(돈)? „징크(돈)“가 무엇인가?"{#morte_s14_r1032}':
            # a51 # r1032
            jump morte_s15

        '"관두게. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s14_r1033}':
            # a52 # r1033
            jump morte_s31

        '모트를 무시하고 방을 둘러본다.{#morte_s14_r1142}':
            # a53 # r1142
            jump morte_dispose


# s15 # say1034
label morte_s15: # from 14.0
    nr '"에… 돈. 징크는 돈의 속칭이야. 대장이 온 곳에는 돈도 없어?"{#morte_s15_}'

    menu:
        '"난 내가 어디서 왔는지 기억하지 못하네."{#morte_s15_r1035}':
            # a54 # r1035
            jump morte_s19

        '"관두게. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s15_r1036}':
            # a55 # r1036
            jump morte_s31

        '모트를 무시하고 방을 둘러본다.{#morte_s15_r1138}':
            # a56 # r1138
            jump morte_dispose


# s16 # say1037
label morte_s16: # from 10.0 11.0
    nr '그는 잠시 멈춘다. "모르겠어. 하지만 대장은 내게 말을 하고 있어… 이 근처에서 걸어다니는 시체들은 그러질 않거든. 내가 보기에 대장은 죽지도 않았는데 더스트들이 실수를 한건 같아. 무슨 계약서에 서명을 한 기억은 없어? 누군가를 언데드로 부활시키기 전에 녀석들은 각종 공문서들을 작성해야 하거든.{#morte_s16_}'

    menu:
        '"어… 계약서? 아니, 그런 것에 서명한 기억은 없네.{#morte_s16_r1038}':
            # a57 # r1038
            jump morte_s32

        '"죽음의 책(사망자 명단)?"{#morte_s16_r1039}':
            # a58 # r1039
            jump morte_s17

        '"합법적?"{#morte_s16_r1040}':
            # a59 # r1040
            jump morte_s18

        '"관두게. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s16_r1041}':
            # a60 # r1041
            jump morte_s31

        '모트를 무시하고 방을 둘러본다.{#morte_s16_r1150}':
            # a61 # r1150
            jump morte_dispose


# s17 # say1042
label morte_s17: # from 16.1 18.0
    nr '"그래, „사망자 명단.“ 몰라? 어, 그럴 수도 있겠지. „사망자 명단“에 대해서는 잊어버리자고. 대장은 살아 있으니까, 거기에는 없어."{#morte_s17_}'

    menu:
        '"자네가 말한 그 합법적… 계약서란 뭔가?"{#morte_s17_r1151}':
            # a62 # r1151
            jump morte_s18

        '"그 밖에도 물어보고 싶은 것들이 좀 있네…"{#morte_s17_r1152}':
            # a63 # r1152
            jump morte_s31

        '모트를 무시하고 방을 둘러본다.{#morte_s17_r1153}':
            # a64 # r1153
            jump morte_dispose


# s18 # say1043
label morte_s18: # from 16.2 17.0
    nr '"그래, 벽돌이라도 깨트리고 싶겠지. 법이 시길을 움직이고 있고, 무슨 계약에 서명하지 않고는 오줌도 눌 수가 없다니까."{#morte_s18_}'

    menu:
        '"자네가 말한 „죽음의 책(사망자 명단)“이란 뭔가?"{#morte_s18_r1154}':
            # a65 # r1154
            jump morte_s17

        '"관두게. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s18_r1155}':
            # a66 # r1155
            jump morte_s31

        '모트를 무시하고 방을 둘러본다.{#morte_s18_r1156}':
            # a67 # r1156
            jump morte_dispose


# s19 # say1044
label morte_s19: # from 15.0
    nr '"원 세상에 당신은 완전히 맛이 갔군. 자기가 어디서 왔는지 기억이나 하슈? 어딘가에 있는 백치들의 왕국에서 왕이 실종된 것이 틀림없군. 대장은 신을 모독하기라도 한 거야, 아니면 늘 이토록 무식했어?"{#morte_s19_}'

    menu:
        '"모르겠네… 아무 것도 기억을 할 수가 없어."{#morte_s19_r1139}':
            # a68 # r1139
            jump morte_s32

        '"관두게. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s19_r1140}':
            # a69 # r1140
            jump morte_s31

        '모트를 무시하고 방을 둘러본다.{#morte_s19_r1141}':
            # a70 # r1141
            jump morte_dispose


# s20 # say1045
label morte_s20: # from 2.2 31.2
    nr '"대장, 나도 몰라. 하지만 대장의 죽은 척하는 재주 하나만은 끝내주더군. 대장이 저기 누워 있었을 때 가슴도, 눈도, 그리고 다른 부위도 미동도 하지 않았어. 술이라도 마셨었어? 그게 사건의 진상이야?"{#morte_s20_}'

    menu:
        '"모르겠네… 아무 것도 기억을 할 수가 없어."{#morte_s20_r1097}':
            # a71 # r1097
            jump morte_s32

        '"관두게. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s20_r1098}':
            # a72 # r1098
            jump morte_s31

        '모트를 무시하고 방을 둘러본다.{#morte_s20_r1099}':
            # a73 # r1099
            jump morte_dispose


# s21 # say1046
label morte_s21: # from 2.1 6.1 29.2 30.0 31.3 34.2 35.1 36.1
    nr '"그래 그건 좋은 질문이군. 대장은 시간에 쫓기고 있어. 마약 더스트맨이 대장을 발견하면 대장의 소생 „문제“를 화장터에 대장을 던져 버림으로서 해결해줄 거라고. 계속 죽은 척을 해도 화장터로 가기는 마찬가지고. 모드론의 선택? 어떻게 할 거지?"{#morte_s21_}'

    menu:
        '"더스트맨?"{#morte_s21_r1047}':
            # a74 # r1047
            jump morte_s30

        '"탈출하겠네."{#morte_s21_r1048}':
            # a75 # r1048
            jump morte_s22

        '"나는 이… 더스트맨이란 사람들에게 내 상황을 설명하겠네."{#morte_s21_r1049}':
            # a76 # r1049
            jump morte_s25

        '"내가 어떻게 해야겠나?"{#morte_s21_r1050}' if morteLogic.r1050_condition():
            # a77 # r1050
            jump morte_s23

        '"왜 자네가 내게 말해주지 않나? 자네는 이미 대답을 알고 있는 것 같은데."{#morte_s21_r1051}' if morteLogic.r1051_condition():
            # a78 # r1051
            jump morte_s23

        '모트를 무시하고 방을 둘러본다.{#morte_s21_r1081}':
            # a79 # r1081
            jump morte_dispose


# s22 # say1052
label morte_s22: # from 21.1
    nr '"아, *좋은* 생각이군, 대장! 왜 *내*가 그 생각을 못했을까? 그런데 어떻게 탈출을 할 거야? 내가 대장한테 히트를 하나 주지. 헌데 약간의 협조가 필요해."{#morte_s22_}'

    menu:
        '"관심이 있네. 계속 말하게."{#morte_s22_r1053}':
            # a80 # r1053
            jump morte_s23

        '"관두게. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s22_r1054}':
            # a81 # r1054
            jump morte_s31

        '모트를 무시하고 방을 둘러본다.{#morte_s22_r1145}':
            # a82 # r1145
            jump morte_dispose


# s23 # say1055
label morte_s23: # from 21.3 21.4 22.0 26.0
    nr '"내가 보기에 대장은 이 곳에서 나가야 할 절실한 이유가 있어. 나는 기다려도 상관이 없지. 내가 직면하고 있는 위험은 지루해서 죽는 것 뿐이니까. 상부상조하자고."{#morte_s23_}'

    menu:
        '"계속 말하게…"{#morte_s23_r1058}':
            # a83 # r1058
            jump morte_s24

        '"자넨 손도 없네. 그런데 날 어떻게 도와주겠다는 건가?"{#morte_s23_r1059}':
            # a84 # r1059
            jump morte_s24

        '"관두게. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s23_r1060}':
            # a85 # r1060
            jump morte_s31

        '모트를 무시하고 방을 둘러본다.{#morte_s23_r1146}':
            # a86 # r1146
            jump morte_dispose


# s24 # say1061
label morte_s24: # from 23.0 23.1
    nr '"그렇게 보이지 않을지도 모르지만 난 대장이 여기서 나가는 걸 도울 수 있고 대장은 내가 여기서 나가는 걸 도울 수 있다고. 난 손이 없어 약간 불편한 처지지. 대장은 골이 빈 반면, 나는 이 토굴에서 빠져나가기에 충분한 경험과 노하우를 지니고 있거든. 우리가 서로 협력하면 둘 다 무사히 나갈 수 있지. 어때, 친구?"{#morte_s24_}'

    menu:
        '"좋네."{#morte_s24_r1057}':
            # a87 # r1057
            jump morte_s28

        '"좋네. 어째 자네와 나는 함께 여행할 운명이라는 불길한 예감이 드는군, 모트."{#morte_s24_r1062}':
            # a88 # r1062
            jump morte_s27

        '"관두시오. 다른 질문을 하겠소…"{#morte_s24_r1063}':
            # a89 # r1063
            jump morte_s31

        '"사양하겠네. 자네와 얘기하는 것만도 충분히 고통스럽네. 나갈 길은 내 스스로 찾겠네."{#morte_s24_r1147}':
            # a90 # r1147
            jump morte_dispose


# s25 # say1064
label morte_s25: # from 21.2
    nr '"아, *좋은* 생각이군, 대장! 왜 *내*가 그 생각을 못했을까?" 그는 조롱하는 어조로 말한다. "그런데 더스트맨 나으리, 나는 죽었고 당신네 시체안치소에 있는 철판 위에서 깨어났습니다. 날 도와주실 수 있겠습니까?" "그래, 그들이 참 잘도 도와주겠다. 아마 몇 초 정도 쳐다본 다음에는 경비병들을 불러서 대장을 전용 화로에 쳐 넣을 걸."{#morte_s25_}'

    menu:
        '"그건 좀 극단적인 것 같군… 왜 그들이 그런 짓을 하겠나?"{#morte_s25_r1065}':
            # a91 # r1065
            jump morte_s26

        '"글쎄, 날 쓰러트리려면 그들의 경비병들은 상당히 강해야 할 걸세."{#morte_s25_r1066}':
            # a92 # r1066
            jump morte_s26

        '"관두시오. 다른 질문을 하겠소…"{#morte_s25_r1067}':
            # a93 # r1067
            jump morte_s31

        '모트를 무시하고 방을 둘러본다.{#morte_s25_r1149}':
            # a94 # r1149
            jump morte_dispose


# s26 # say1068
label morte_s26: # from 25.0 25.1
    nr '"날 그냥 믿으라고… 대장이 스스로를 얼마나 강하다고 생각하든, 아니면 그들에게 무슨 말을 하든 그건 아무런 상관이 없어. 결국에는 그들이 대장을 잡아서 처리할 테니까. 대장이 아무리 강하다고 해도 밀폐된 무덤을 부수고 탈출하거나 불의 원소계에서 살아남을 정도로 강하지는 않아. 죽음으로부터 깨어나는 일 하나만 가지고도 여기 있는 친구들을 우려하게 만들고도 남는다고. 바보짓은 하지 말라고."{#morte_s26_}'

    menu:
        '"그래 자네 계획은…?{#morte_s26_r1069}':
            # a95 # r1069
            jump morte_s23

        '"관두게. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s26_r1070}':
            # a96 # r1070
            jump morte_s31

        '모트를 무시하고 방을 둘러본다.{#morte_s26_r1148}':
            # a97 # r1148
            jump morte_dispose


# s27 # say1071
label morte_s27: # from 24.1
    nr '"운명 따위는 엿이나 먹고 늘어지라고 해. 잘 들어, 대장. „운명“과 „나쁜“ „비참한“ 등의 부정적인 의미를 지닌 단어들이 한 문장에 동시에 나타나는 빈도가 얼마나 높은지 한 번 생각해 봐, 그럼 인생의 수수께끼들 중 하나가 풀릴 걸. 가장 좋은 선택은 운명보고 나가 뒈지라고 하는 거야, 늘 운명이 결코 허락하려고 하지 않는 선택지가 있는 법이니까.{#morte_s27_}'

    menu:
        '"염두에 두도록 하겠네."{#morte_s27_r1073}':
            # a98 # r1073
            jump morte_s28

        '"얘기는 그만 됐네. 그래 자네의 거창한 계획은?"{#morte_s27_r1074}':
            # a99 # r1074
            jump morte_s28


# s28 # say1072
label morte_s28: # from 24.0 27.0 27.1
    nr '"좋아… 그럼 이 곳을 어서 뜨자고. 여기서 나가는 문은 잠겨 있으니까 우린 열쇠를 찾아야 해. 아마 이 방에 있는 걸어다니는 시체들 중 하나가 가지고 있을 거야."{#morte_s28_}'

    menu:
        '"걸어다니는 시체들?"{#morte_s28_r1079}':
            # a100 # r1079
            $ morteLogic.r1079_action()
            jump morte_s240


# s29 # say996
label morte_s29: # -
    nr '"아, 그래 대장은 이 모트와 또 얘기가 하고 싶은 거야?"{#morte_s29_}'

    menu:
        '"자넨 누군가?"{#morte_s29_r1075}':
            # a101 # r1075
            jump morte_s1

        '"여기는 어딘가?"{#morte_s29_r1076}':
            # a102 # r1076
            jump morte_s6

        '"어떻게 하면 여기서 빠져나갈 수 있는지 아나?"{#morte_s29_r1077}' if morteLogic.r1077_condition():
            # a103 # r1077
            jump morte_s21

        '"난 어떻게 이 곳에 오게 되었나?"{#morte_s29_r1078}':
            # a104 # r1078
            jump morte_s14

        '모트를 무시하고 방을 둘러본다.{#morte_s29_r1086}':
            # a105 # r1086
            jump morte_dispose


# s30 # say1082
label morte_s30: # from 21.0
    nr '"더스티들? 그들은 이 곳을 관리하고 있지. 그들을 알아보는 건 쉽지. 예외없이 검은 법복을 입고 있는데다가 꼭 사후경직을 일으킨 것 같은 얼굴들을 하고 있으니까. 그들은 스스로를 더스트맨이라고 부르며 당파 행세를 하고 있지만 실제로는 악귀같은 죽음 숭배자에 불과하다고. 그들은 피하는 게 좋아."{#morte_s30_}'

    menu:
        '"그래, 어떻게 하면 여기서 빠져나갈 수가 있나?"{#morte_s30_r1083}' if morteLogic.r1083_condition():
            # a106 # r1083
            jump morte_s21

        '"관두게. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s30_r1084}':
            # a107 # r1084
            jump morte_s31

        '모트를 무시하고 방을 둘러본다.{#morte_s30_r1144}':
            # a108 # r1144
            jump morte_dispose


# s31 # say1091
label morte_s31: # from 8.1 9.2 10.2 11.2 12.1 13.1 14.1 15.1 16.3 17.1 18.1 19.1 20.1 22.1 23.2 24.2 25.2 26.1 30.1 32.1 33.2 34.3 35.2 36.2
    nr '"그래? *어떤* 질문 말이지?"{#morte_s31_}'

    menu:
        '"자넨 누군가?"{#morte_s31_r1092}':
            # a109 # r1092
            jump morte_s1

        '"여기는 어딘가?"{#morte_s31_r1093}':
            # a110 # r1093
            jump morte_s6

        '"난 어떻게 이 곳에 오게 되었나?"{#morte_s31_r1094}':
            # a111 # r1094
            jump morte_s20

        '"어떻게 하면 여기서 빠져나갈 수가 있나?"{#morte_s31_r1095}' if morteLogic.r1095_condition():
            # a112 # r1095
            jump morte_s21

        '모트를 무시하고 방을 둘러본다.{#morte_s31_r1096}':
            # a113 # r1096
            jump morte_dispose


# s32 # say1100
label morte_s32: # from 16.0 19.0 20.0
    nr '"*아무 것도* 기억을 못한다고? 그거 타나리 똥같은 헛소리군. 정말이야?"{#morte_s32_}'

    menu:
        '"그렇다네."{#morte_s32_r1101}':
            # a114 # r1101
            jump morte_s33

        '"관두게. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s32_r1102}':
            # a115 # r1102
            jump morte_s31

        '모트를 무시하고 방을 둘러본다.{#morte_s32_r1103}':
            # a116 # r1103
            jump morte_dispose


# s33 # say1104
label morte_s33: # from 32.0
    nr '"원 세상에… 어쨌든, 대장, 아마 대장 기억은 뇌 깊숙한 곳으로 가라앉은 것뿐일거라고. 운만 좋으면 다시 떠오를 거야, 날 믿으라고. 정말 요란한 밤이었던 모양이군. 누굴 해치거나 법을 어기는 일은 하지 안 했다면 좋으련만… 그래서 말인데, 당신은 자학증세가 있는 센세이트들 중 하나야, 아니면 누가 당신 몸에 그런 상처들을 낸 거야?"{#morte_s33_}'

    menu:
        '"센세이트?"{#morte_s33_r1105}':
            # a117 # r1105
            jump morte_s12

        '"흉터?"{#morte_s33_r1106}':
            # a118 # r1106
            jump morte_s13

        '"그 밖에도 물어보고 싶은 것들이 좀 있네…"{#morte_s33_r1107}':
            # a119 # r1107
            jump morte_s31

        '모트를 무시하고 방을 둘러본다.{#morte_s33_r1108}':
            # a120 # r1108
            jump morte_dispose


# s34 # say1117
label morte_s34: # from 13.0
    nr '"무슨 지시 사항인 것 같군…" 모트는 헛기침을 한다. "어디 볼까. 그 내용은…"  주: "네가 스틱스 강물을 몇 통이나 마신 듯한 기분인 것은 알지만, 정신을 차리고 집중해야 한다. 네 소지품들 중에는 이 중대사에 대해서 일부나마 밝혀 줄 일지가 한 권 있을 것이다. 만약 파로드가 이미 죽지 않았다면 그가 나머지 부분에 대해 설명해줄 수 있을 것이다,  절대로 이 피부조각이나 일지를 잃어서는 안 된다, 아니면 우린 다시 스틱스에 빠지는 신세가 될 테니까. 알겠나? 그리고 내 말을 믿게 - 뭘 하든 간에 네가 누구이며, 어떤 일이 네게 일어나고 있으며, 어디서 왔는지에 대해 말해서는 안돼. 그렇지 않으면 화장터로 직행하게 될 테니."{#morte_s34_}'

    menu:
        '"등이 아픈 것도 무리가 아니군. 자네 혹시 파로드란 자를 아나?"{#morte_s34_r1118}':
            # a121 # r1118
            jump morte_s36

        '"내가 여기서 누워 있었을 때 혹시 내 곁에서 어떤 일지 하나를 보지 못했나?"{#morte_s34_r1119}':
            # a122 # r1119
            jump morte_s35

        '"어떻게 하면 여기서 빠져나갈 수 있는지 아나?"{#morte_s34_r1120}' if morteLogic.r1120_condition():
            # a123 # r1120
            jump morte_s21

        '"그 밖에도 물어보고 싶은 것들이 좀 있네…"{#morte_s34_r1121}':
            # a124 # r1121
            jump morte_s31

        '모트를 무시하고 방을 둘러본다.{#morte_s34_r1122}':
            # a125 # r1122
            jump morte_dispose


# s35 # say1123
label morte_s35: # from 34.1 36.0
    nr '"아니… 여기 왔을 때 대장은 깨끗하게 털린 상태였어. 게다가 대장 몸에는 충분하고도 남을 정도의 일지가 적혀 있는 것 같군."{#morte_s35_}'

    menu:
        '"혹시 파로드란 자를 아나?"{#morte_s35_r1124}':
            # a126 # r1124
            jump morte_s36

        '"어떻게 하면 여기서 빠져나갈 수가 있나?"{#morte_s35_r1125}' if morteLogic.r1125_condition():
            # a127 # r1125
            jump morte_s21

        '"관두게. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s35_r1126}':
            # a128 # r1126
            jump morte_s31

        '모트를 무시하고 방을 둘러본다.{#morte_s35_r1127}':
            # a129 # r1127
            jump morte_dispose


# s36 # say1128
label morte_s36: # from 34.0 35.0
    nr '"내가 아는 사람은 아냐. 하지만 난 별로 아는 사람이 없으니까. 그래도 이 파로드란 자가 어디 있는지 아는 사람은 있을 거야… 물론 그건 우리가 이 곳에서 탈출한 후의 얘기지만."{#morte_s36_}'

    menu:
        '"내가 여기서 누워 있었을 때 혹시 내 곁에 어떤 일지가 하나 있지 않았었나?"{#morte_s36_r1129}':
            # a130 # r1129
            jump morte_s35

        '"어떻게 하면 여기서 빠져나갈 수가 있나?"{#morte_s36_r1130}' if morteLogic.r1130_condition():
            # a131 # r1130
            jump morte_s21

        '"관두게. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s36_r1131}':
            # a132 # r1131
            jump morte_s31

        '모트를 무시하고 방을 둘러본다.{#morte_s36_r1132}':
            # a133 # r1132
            jump morte_dispose


# s37 # say1818
label morte_s37: # -
    nr '"정말 좋은 향수 냄새군! 우린 우리가 찾고 있는 걸 아가씨 집에 놓고 온 모양이야."{#morte_s37_}'

    menu:
        '"실은 난 일지를 잃어버렸소."{#morte_s37_r1820}':
            # a134 # r1820
            jump harlotn_s2  # EXTERN

        '"아마 당신이 내가 잃어버린 걸 찾는 데 도움을 줄 수 있을지도 모르겠소, 아가씨."{#morte_s37_r1819}':
            # a135 # r1819
            jump harlotn_s3  # EXTERN

        '"잃어버린 건 없소, 하지만 물어볼 건 있소…"{#morte_s37_r1821}':
            # a136 # r1821
            jump harlotn_s9  # EXTERN

        '"실례해야겠소. 안녕히 계시오."{#morte_s37_r1822}':
            # a137 # r1822
            jump harlotn_s11  # EXTERN


# s38 # say1844
label morte_s38: # -
    nr '"대장, 내게 돈 좀 줄 수 있겠어? 내가… 을 한지는… 정말 오래 됐거든."{#morte_s38_}'

    menu:
        '"어… 글쎄, 나쁠 것도 없겠지…"{#morte_s38_r1845}':
            # a138 # r1845
            $ morteLogic.r1845_action()
            jump harlotn_s7  # EXTERN

        '"난 자네가 어떻게 그 일을 해낼지 물어볼 생각도 없네."{#morte_s38_r1846}':
            # a139 # r1846
            $ morteLogic.r1846_action()
            jump harlotn_s7  # EXTERN

        '"이봐… 우린 갈 길이 바쁘네, 모트. 잘 있으시오, 아가씨."{#morte_s38_r1847}':
            # a140 # r1847
            $ morteLogic.r1847_action()
            jump morte_dispose


# s39 # say2000
label morte_s39: # -
    nr '"돈을 달라는 얘기야."{#morte_s39_}'

    menu:
        '"오."{#morte_s39_r2001}':
            # a141 # r2001
            jump annah_s5  # EXTERN


# s40 # say2048
label morte_s40: # -
    nr '"네 꼬리나 몸이 판매용이 아니라는 건 참 다행한 일이군. 그 따위로는 입에 풀칠도 못할 테니."{#morte_s40_}'

    menu:
        '"어…"{#morte_s40_r2049}':
            # a142 # r2049
            jump annah_s13  # EXTERN


# s41 # say2067
label morte_s41: # -
    nr '"그년은 티플링이라고, 대장. 그것들은 마족의 피가 섞인 탓에 편집적이고 화를 잘 내지… 하지만 귀여운 꼬리로군. 그런 못생긴 년에게 달려 있다는 게 애석하지만."{#morte_s41_}'

    menu:
        '"와우, 자…"{#morte_s41_r2068}':
            # a143 # r2068
            jump annah_s17  # EXTERN

        '"야, 말 잘했네, 모트.{#morte_s41_r2069}':
            # a144 # r2069
            jump annah_s17  # EXTERN


# s42 # say2074
label morte_s42: # -
    nr '"내 턱을 아예 통째로 떼어내는 건 어때, 이년아? 내 귀에 들리는 건 벌통 쓰레기가 재잘거리는 소리뿐이군! 어디 한 번 덤벼 봐! 네년 다리를 물어서 뜯어내 버릴 테니."{#morte_s42_}'

    menu:
        '"그만하게!"{#morte_s42_r2076}':
            # a145 # r2076
            jump annah_s18  # EXTERN

        '"그만하게! 우린 떠나네."{#morte_s42_r2075}':
            # a146 # r2075
            jump annah_s14  # EXTERN


# s43 # say2079
label morte_s43: # -
    nr '"미미르란 말하는 백과사전이지. 그건 바로 나라고, 대장."{#morte_s43_}'

    menu:
        '"알았소."{#morte_s43_r2080}':
            # a147 # r2080
            $ morteLogic.r2080_action()
            jump annah_s21  # EXTERN


# s44 # say2348
label morte_s44: # -
    nr '"포기해, 대장. 기스와 얘기하려는 건 레이저바인과 사귀려는 것과 마찬가지라고."{#morte_s44_}'

    menu:
        '"기스?"{#morte_s44_r9029}' if morteLogic.r9029_condition():
            # a148 # r9029
            $ morteLogic.r9029_action()
            jump morte_s135

        '"기스?"{#morte_s44_r9030}' if morteLogic.r9030_condition():
            # a149 # r9030
            jump morte_s135

        '"나는 아직 떠날 생각이 없네. 나는 먼저 그에게 질문을 좀 해야겠네…"{#morte_s44_r9031}':
            # a150 # r9031
            jump gith_s7  # EXTERN

        '기스를 그냥 내버려 둔다.{#morte_s44_r9032}':
            # a151 # r9032
            jump morte_dispose


# s45 # say2354
label morte_s45: # -
    nr '"나라면 여기 있는 „모르는 게 약이다“라고 말하고 있는 것 같은 늙은이와 얘기하려는 데 시간을 낭비하지 않겠어. 여길 떠나자고, 대장."{#morte_s45_}'

    menu:
        '"나는 아직 떠날 생각이 없네. 나는 먼저 그에게 질문을 좀 해야겠네…"{#morte_s45_r9033}':
            # a152 # r9033
            jump gith_s7  # EXTERN

        '기스를 그냥 내버려 둔다.{#morte_s45_r9034}':
            # a153 # r9034
            jump morte_dispose


# s46 # say2601
label morte_s46: # externs zf916_s2 zf916_s1 zf916_s0
    nr '"잠깐. 대장은 그녀가 날 어떤 눈으로 쳐다보는지 봤어? 허? 보이지? 내 후두부를 바라보는 그녀의 시선이?"{#morte_s46_}'

    menu:
        '"자넨 대체 무슨 얘기를 하고 있는 건가?"{#morte_s46_r2603}':
            # a154 # r2603
            $ morteLogic.r2603_action()
            jump morte_s47

        '"저 „무덤 저편의 공허한 눈빛“을 얘기하는 건가?"{#morte_s46_r2602}':
            # a155 # r2602
            $ morteLogic.r2602_action()
            jump morte_s47


# s47 # say2604
label morte_s47: # from 46.0 46.1 121.1 121.2
    nr '"뭐… 눈이라도 먼 거야?! 그녀는 날 유혹하고 있었다고! 그녀는 정말 노골적으로 날 원했다고!"{#morte_s47_}'

    menu:
        '"아마 자네가 다른 곳으로 가기를 바랬던 거겠지. 그녀는 내게 너무 정신이 팔려 수다만 떠는 건방진 얼간이의 해골 따위에는 관심을 가질 틈조차 없었을 걸세."{#morte_s47_r2605}':
            # a156 # r2605
            $ morteLogic.r2605_action()
            jump morte_s49

        '"자넨 터무니 없는 공상을 하고 있군. 그녀는 좀비야. 시체, 즉 죽은 사람이란 말일세. 아마 그녀는 자네를 인식조차 할 수가 없을 걸세."{#morte_s47_r2606}':
            # a157 # r2606
            jump morte_s48

        '"자네와 자네 상상력은 좀 떨어져 지내야 할 것 같네."{#morte_s47_r2607}':
            # a158 # r2607
            jump morte_s48

        '"뭐든 간에, 모트. 가세."{#morte_s47_r2608}':
            # a159 # r2608
            jump morte_dispose


# s48 # say2609
label morte_s48: # from 47.1 47.2
    nr '"그래, 그래, 뭐든 간에. 나처럼 죽은 지 오래되면 신호를 감지할 수가 있다고. 대장이 느끼기에는 너무 미묘할지도 모르지만. 그러니 내가 죽은 지 얼마되지 않은 섹시한 계집들과 뜨거운 밤을 보낼 동안 대장은 „어?“ „뭐가 어떻게 돌아가고 있는 거지?“ „내 기-기억이 어디로 갔지“하며 멍하니 서 있을 수밖에."{#morte_s48_}'

    menu:
        '"뭐든 간에, 모트. 가세."{#morte_s48_r2610}':
            # a160 # r2610
            jump morte_dispose


# s49 # say2611
label morte_s49: # from 47.0
    nr '"당신? 말도 안돼. 저 세상으로 간 계집들은 육체적인 매력이나 몸통이 있는지 여부는 신경도 쓰지 않는다고. 그녀들은 기백이 있는 남자를 원한다고. 그건 바로 나야, 대장. 당신? 대장같은 시체는 동전만큼이나 흔하다고."{#morte_s49_}'

    menu:
        '"뭐든 간에, 모트. 가세."{#morte_s49_r2612}':
            # a161 # r2612
            jump morte_dispose


# s50 # say2709
label morte_s50: # -
    nr '"뭐? 뭐야? 이 계집이 대장을 귀찮게 하는 거야?"{#morte_s50_}'

    jump test_s7  # EXTERN


# s51 # say2711
label morte_s51: # -
    nr '"난 그걸 믿어. 그가 당신을 메인 메뉴로 돌려보내고 난 그냥 빼 주는 게 좋을 것 같군."{#morte_s51_}'

    jump test_s0  # EXTERN


# s52 # say2782
label morte_s52: # -
    nr '"이런 염병할! 다버스로군!"{#morte_s52_}'

    menu:
        '"뭐가 잘못됐나?"{#morte_s52_r2783}':
            # a162 # r2783
            jump morte_s53


# s53 # say2788
label morte_s53: # from 52.0
    nr '"그는 다버스야. 그들은 퍼즐과 같은 기호로 „말하지.“ 만약 그가 무슨 말을 하는지 모르겠다면 번역해 줄 토박이를 찾거나 그와 의사소통을 할 방법을 찾는 게 좋을 걸. 정말 짜증나는 놈들이지. 내 생각에 놈들은 말을 할 수 있으면서도 일부로 퍼즐을 내서 다른 사람들을 골탕먹이려는 것 같아."{#morte_s53_}'

    menu:
        '"„다버스“가 뭔가?"{#morte_s53_r2791}':
            # a163 # r2791
            jump morte_s54


# s54 # say2789
label morte_s54: # from 53.0
    nr '"들리는 얘기로는 그들은 레이디 오브 페인의 청소부라는군. 그들은 레이디의 기분에 따라 시길을 부수거나 수리하지. 그들은 시체 파리보다도 징그럽다고." 모트는 한숨을 쉰다. "하지만 다버스는 때려죽일 수도 없어, 그러면 레이디가… 화를 낼 테니."{#morte_s54_}'

    menu:
        '"„레이디 오브 페인?“ 그게 누군가?"{#morte_s54_r6952}' if morteLogic.r6952_condition():
            # a164 # r6952
            $ morteLogic.r6952_action()
            jump morte_s113

        '"레이디 오브 페인에 대해 내게 어떤 얘기를 해줄 수가 있나?"{#morte_s54_r6953}' if morteLogic.r6953_condition():
            # a165 # r6953
            jump morte_s113

        '"알겠네."{#morte_s54_r6954}' if morteLogic.r6954_condition():
            # a166 # r6954
            jump dabus_s3  # EXTERN


# s55 # say3473
label morte_s55: # externs eivene_s3
    nr '"내 생각에 그녀는 귀에 이상이 있는 것 같아, 대장. 관두고 그냥 가자고."{#morte_s55_}'

    menu:
        '"그녀의 손은 왜 저런 건가?"{#morte_s55_r3474}':
            # a167 # r3474
            $ morteLogic.j38205_s55_r3474_action()
            jump morte_s56

        '그녀를 가볍게 두드려 관심을 끈다.{#morte_s55_r3475}':
            # a168 # r3475
            jump eivene_s4  # EXTERN

        '그녀를 그냥 내버려 둔다.{#morte_s55_r3476}':
            # a169 # r3476
            jump morte_dispose


# s56 # say3477
label morte_s56: # from 55.0
    nr '"에… 그녀는 *티플링*이야, 대장. 조상이 옛날에 마족과 관계를 가진 탓에 몸에 마족의 피가 흐르고 있지. 그들 중 일부는 약간 미쳤고… 외관 역시 괴이하지."{#morte_s56_}'

    menu:
        '그녀를 가볍게 두드려 관심을 끈다.{#morte_s56_r3478}':
            # a170 # r3478
            jump eivene_s4  # EXTERN

        '그녀를 그냥 내버려 둔다.{#morte_s56_r3479}':
            # a171 # r3479
            jump morte_dispose


# s57 # say3480
label morte_s57: # externs eivene_s20
    nr '"내 생각에 그녀는 귀에 이상이 있는 것 같아, 대장. 관두고 그냥 가자고."{#morte_s57_}'

    menu:
        '"그녀의 손은 왜 저런 건가?"{#morte_s57_r3483}':
            # a172 # r3483
            $ morteLogic.j38205_s57_r3483_action()
            jump morte_s58

        '떠난다.{#morte_s57_r3484}':
            # a173 # r3484
            jump morte_dispose


# s58 # say3481
label morte_s58: # from 57.0
    nr '"에… 그녀는 *티플링*이야, 대장. 조상이 옛날에 마족과 관계를 가진 탓에 몸에 마족의 피가 다소 흐르고 있지. 그들 중 일부는 약간 미쳤고… 대개 외관 역시 괴이하지."{#morte_s58_}'

    menu:
        '떠난다.{#morte_s58_r3482}':
            # a174 # r3482
            jump morte_dispose


# s59 # say3487
label morte_s59: # externs eivene_s9
    nr '"대장에게 새로운 친구가 생긴 것 같군. 두 사람이 함께 시간을 보내거나, 또는…?{#morte_s59_}'

    menu:
        '"그만둬, 모트."{#morte_s59_r3488}':
            # a175 # r3488
            jump eivene_s11  # EXTERN

        '계속 좀비 흉내를 낸다.{#morte_s59_r3489}':
            # a176 # r3489
            jump eivene_s11  # EXTERN

        '그녀를 밀어 제친다.{#morte_s59_r3490}':
            # a177 # r3490
            jump eivene_s10  # EXTERN


# s60 # say3492
label morte_s60: # externs eivene_s13
    nr '"내게 코가 없다는 걸 감사하게 된 건 이번으로 태어나서 두 번째인 것 같군."{#morte_s60_}'

    jump eivene_s14  # EXTERN


# s61 # say3870
label morte_s61: # externs dust_s40
    nr '"이봐! 대체 뭘 하는 거야?"{#morte_s61_}'

    menu:
        '"나는 이 사람과 얘기를 하려던 중이었네. 무슨 문제라도?"{#morte_s61_r3871}':
            # a178 # r3871
            $ morteLogic.r3871_action()
            jump morte_s62

        '"아무 것도 아니네. 가세."{#morte_s61_r3872}':
            # a179 # r3872
            jump morte_dispose


# s62 # say3873
label morte_s62: # from 61.0
    nr '"만약 대장이 더스트맨과 주둥아리를 놀릴 생각이라면 난 좀 빼줘. 나하고 그들은 상성이 별로 좋지 않으니까… 그리고 대장도 그들과 가까이 하지 않는 게 좋아. 대장 말에 귀를기울이기 보다는 대장을 매장하거나 화장할 가능성이 더 크니까. 미친 짓 하지 말고 그냥 여기서 나가자고."{#morte_s62_}'

    menu:
        '"충고는 고맙네, 하지만 *그래도* 난 이 사람과 얘기를 하겠네."{#morte_s62_r3874}':
            # a180 # r3874
            $ morteLogic.r3874_action()
            jump morte_s64

        '"좋네, 가던 길이나 가세."{#morte_s62_r3875}':
            # a181 # r3875
            jump morte_dispose


# s63 # say3876
label morte_s63: # externs dust_s40
    nr '"이봐! 귀가 먹었어? 대체 뭘 하는 거야?"{#morte_s63_}'

    menu:
        '"이봐, 난 이 사람과 얘기를 할 거네. 무슨 문제라도 있나?"{#morte_s63_r3877}':
            # a182 # r3877
            $ morteLogic.r3877_action()
            jump morte_s64

        '"아무 것도 아니네. 가세."{#morte_s63_r3878}':
            # a183 # r3878
            jump morte_dispose


# s64 # say3879
label morte_s64: # from 62.0 63.0
    nr '"그럼 내 말을 듣지 말라고. 대장 장례식을 치르게 될 테니."{#morte_s64_}'

    menu:
        '"그래, 장송가를 부르고 싶으면 부르게, 하지만 지금은 조용히 하게."{#morte_s64_r3880}':
            # a184 # r3880
            jump dust_s3  # EXTERN

        '"자네 말이 맞네. 그 일은 관두고 그냥 가세."{#morte_s64_r3881}':
            # a185 # r3881
            jump morte_dispose


# s65 # say3964
label morte_s65: # -
    nr '"와우, 대장. 그건 파괴 행위야. 그 볼트들은 그 뼈들을 고정시키는 유일한 것들이라고. 이런 오래된 친구들에게는 이미 사령술도 별 효과가 없다고."{#morte_s65_}'

    menu:
        '"그래서?"{#morte_s65_r3965}':
            # a186 # r3965
            $ morteLogic.r3965_action()
            jump morte_s66

        '"아… 영구적인 대미지는 입히고 싶지 않았는데."{#morte_s65_r3966}':
            # a187 # r3966
            $ morteLogic.r3966_action()
            jump morte_s66

        '"그럼 좋네, 관두게. 아마 다른 기회에."{#morte_s65_r3967}':
            # a188 # r3967
            jump morte_s66


# s66 # say3968
label morte_s66: # from 65.0 65.1 65.2
    nr '"오, 문제가 된다는 얘긴 아니야." 모트는 기묘한 스타일로 아래 위로 움직이는 데 그건 어깨를 으쓱한다는 표현인 듯하다. "난 대장이 그걸 아는가 확인해 보려고 했을 뿐이야, 마음대로 하라고."{#morte_s66_}'

    menu:
        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#morte_s66_r3969}' if morteLogic.r3969_condition():
            # a189 # r3969
            jump skelw_s4  # EXTERN

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#morte_s66_r3970}' if morteLogic.r3970_condition():
            # a190 # r3970
            jump skelw_s5  # EXTERN

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#morte_s66_r3971}' if morteLogic.r3971_condition():
            # a191 # r3971
            jump skelw_s6  # EXTERN

        '관두게. 아마 다른 기회에.{#morte_s66_r3972}' if morteLogic.r3972_condition():
            # a192 # r3972
            $ morteLogic.r3972_action()
            jump morte_s67

        '관두게. 아마 다른 기회에.{#morte_s66_r3973}' if morteLogic.r3973_condition():
            # a193 # r3973
            jump morte_dispose


# s67 # say3974
label morte_s67: # from 66.3
    nr '"흠… 이 회색 수염이 내가 자기 몸을 빌려도 뭐라고 하지 않을지 모르겠군…"{#morte_s67_}'

    menu:
        '"회색 수염?"{#morte_s67_r3975}':
            # a194 # r3975
            jump morte_s68

        '"난 그가 이의를 제기할 입장이라고는 생각지 않네."{#morte_s67_r3976}':
            # a195 # r3976
            jump morte_s69

        '"자네에게 팔이 있었으면 지금의 두 배는 더 짜증스러웠을 거라는 생각이 드는군. 가세."{#morte_s67_r3977}':
            # a196 # r3977
            jump morte_s70


# s68 # say3978
label morte_s68: # from 67.0
    nr '"회색 수염… 대장도 알다시피 늙다리, 늙은이, 노인 등을 가리키는 말이야."{#morte_s68_}'

    menu:
        '"난 그가 이의를 제기할 입장이라고는 생각지 않네. 왜 그의 몸을 차지하지 않나?"{#morte_s68_r3979}':
            # a197 # r3979
            jump morte_s69

        '"자네에게 팔이 있었으면 지금의 두 배는 더 짜증스러웠을 거라는 생각이 드는군. 가세."{#morte_s68_r3980}':
            # a198 # r3980
            jump morte_s70


# s69 # say3981
label morte_s69: # from 67.1 68.0
    nr '모트는 잠시 그 스켈레톤을 살펴보더니 고개를 젓는다. "아니… 내겐 이것보다 신선한 놈이 필요해. 그리고 좀 더 품위가 있는 몸이… 이건 사방에 금하고 깨진 곳 투성이야 "{#morte_s69_}'

    menu:
        '"그럼 자넨 그렇지 않단 말인가?"{#morte_s69_r3982}':
            # a199 # r3982
            jump morte_s70

        '"그럼 좋네. 가세."{#morte_s69_r3983}':
            # a200 # r3983
            jump morte_dispose


# s70 # say3984
label morte_s70: # from 67.2 68.1 69.0 127.0
    nr '"아, 대장은 정말 웃기는군." 모트는 당신을 노려본다. "그리고 대장은 그런 말을 할 입장이 아니지. 대장이 근처에 있으면 거울들이 자비를 구한다고."{#morte_s70_}'

    menu:
        '"그래? 적어도 내겐 신체의 모든 부위가 다 있네."{#morte_s70_r3985}':
            # a201 # r3985
            jump morte_s71

        '"가세."{#morte_s70_r3986}':
            # a202 # r3986
            jump morte_dispose


# s71 # say3987
label morte_s71: # from 70.0
    nr '모트는 코방귀를 뀐다. 허파도 없이 어떻게 그런 일을 할 수가 있는지 당신으로서는 알 수가 없다.{#morte_s71_}'

    menu:
        '"자네에게 말해주겠는데, 모트, 팔을 흔들며 걸으면서 신선한 공기를 들이마시는 것보다 만족스러운 건 없다네. 몸이 있다는 건 멋진 일이네."{#morte_s71_r3988}':
            # a203 # r3988
            $ morteLogic.r3988_action()
            jump morte_s72

        '"가세."{#morte_s71_r3989}':
            # a204 # r3989
            jump morte_dispose


# s72 # say3990
label morte_s72: # from 71.0
    nr '"대장이 준비실을 탈출하도록 도와준 건 점점 더 커져만 가는 내 후회하는 일 목록에 방금 추가되었어." 모트는 다시 코방귀를 뀐다. "난 그냥 당신이 썩도록… 아니, 더 썩도록 내버려 두었어야 했어."{#morte_s72_}'

    menu:
        '"자네가 그렇게 느낀다니 반갑군. 가세."{#morte_s72_r3991}':
            # a205 # r3991
            jump morte_dispose


# s73 # say4018
label morte_s73: # externs giantsk_s9 giantsk_s8 giantsk_s7 giantsk_s6 giantsk_s5 giantsk_s4 giantsk_s1 giantsk_s0
    nr '모트는 히죽 웃는다.{#morte_s73_}'

    menu:
        '"어, 그건 예스인가, 아니면…"{#morte_s73_r4019}':
            # a206 # r4019
            jump morte_s74


# s74 # say4020
label morte_s74: # from 73.0
    nr '"아… 미안." 모트는 스켈레톤의 머리 쪽으로 이동하여 그것을 쳐다본 후, 아래쪽으로 내려오면서 갑옷과 칼을 살펴본다. "오, 예스! 그래, 좋았어! 이거면 될 것 같아."{#morte_s74_}'

    menu:
        '"그럼 좋네… 내가 이 놈으로부터 머리를 비틀어 빼내도록 잠깐만 기다리게."{#morte_s74_r4023}' if morteLogic.r4023_condition():
            # a207 # r4023
            jump giantsk_s2  # EXTERN

        '"그럼 좋네… 내가 이 놈으로부터 머리를 비틀어 빼내도록 잠깐만 기다리게."{#morte_s74_r4024}' if morteLogic.r4024_condition():
            # a208 # r4024
            jump giantsk_s3  # EXTERN

        '"모르겠네. 이 놈은 자네가 감당하기 어려울 것 같네."{#morte_s74_r4025}':
            # a209 # r4025
            jump morte_s75

        '"그것을 그냥 내버려두는 것이 좋을 것 같네."{#morte_s74_r4026}':
            # a210 # r4026
            jump morte_s75


# s75 # say4021
label morte_s75: # from 74.2 74.3
    nr '"그럼 대체 왜 내게 그걸 원하느냐고 물어본 거야? 자신의 잔인성을 배양하기 위한 연습이라도 한 거야?" 모트는 분노한 듯 아래위로 움직인다. "내가 대장을 위해 그토록 헌신했는데…"{#morte_s75_}'

    menu:
        '"그럼 좋네… 내가 이 놈으로부터 머리를 비틀어 빼내도록 잠깐만 기다리게."{#morte_s75_r4027}' if morteLogic.r4027_condition():
            # a211 # r4027
            jump giantsk_s2  # EXTERN

        '"그럼 좋네… 내가 이 놈으로부터 머리를 비틀어 빼내도록 잠깐만 기다리게."{#morte_s75_r4028}' if morteLogic.r4028_condition():
            # a212 # r4028
            jump giantsk_s3  # EXTERN

        '"나는 자네 안전을 생각했네, 모트. 나는 자네 머리를 이것에 달면 자네에게 해가 가지는 않을까 걱정했네."{#morte_s75_r4029}':
            # a213 # r4029
            $ morteLogic.r4029_action()
            jump morte_s76

        '"아무리 생각해도 그것을 그냥 내버려두는 것이 좋을 것 같네. 여기서 나가세"{#morte_s75_r4030}':
            # a214 # r4030
            jump morte_dispose


# s76 # say4022
label morte_s76: # from 75.2
    nr '모트는 당신을 잠시 응시한다. "뭐야, 우리가 예전에 결혼한 적이라도 있는 거야? „나는 자네가 다치는 걸 원하지 않아“하는 따위의 헛소리는 대체 뭐야?" 모트는 당신을 노려본다. 만약 대장이 정말 나에 대해 신경을 썼다면 내 머리를 저 자이언트 스켈레톤의 몸통에 부착할 방법을 찾으려고 했을 거라고."{#morte_s76_}'

    menu:
        '"그럼 좋네… 내가 이 놈으로부터 머리를 비틀어 빼내도록 잠깐만 기다리게."{#morte_s76_r4031}' if morteLogic.r4031_condition():
            # a215 # r4031
            jump giantsk_s2  # EXTERN

        '"그럼 좋네… 내가 이 놈으로부터 머리를 비틀어 빼내도록 잠깐만 기다리게."{#morte_s76_r4032}' if morteLogic.r4032_condition():
            # a216 # r4032
            jump giantsk_s3  # EXTERN

        '"미안하지만 난 자네에 대해 별 관심이 없네. 가세."{#morte_s76_r4033}':
            # a217 # r4033
            jump morte_dispose

        '"난 그걸 그냥 내버려두라고 했네. 이제 여기서 나가세."{#morte_s76_r4034}' if morteLogic.r4034_condition():
            # a218 # r4034
            jump morte_dispose


# s77 # say4134
label morte_s77: # -
    nr '"이봐! 대체 뭘 하는 거야?"{#morte_s77_}'

    menu:
        '"나는 이 사람과 얘기를 하려던 중이었네. 무슨 문제라도?"{#morte_s77_r4144}':
            # a219 # r4144
            $ morteLogic.r4144_action()
            jump morte_s78

        '"아무 것도 아니네. 가세."{#morte_s77_r4145}':
            # a220 # r4145
            $ morteLogic.r4145_action()
            jump morte_dispose


# s78 # say4135
label morte_s78: # from 77.0
    nr '"만약 대장이 더스트맨과 주둥아리를 놀릴 생각이라면 난 좀 빼줘. 나하고 그들은 상성이 별로 좋지 않으니까… 그리고 대장도 그들과 가까이 하지 않는 게 좋아. 대장 말에 귀를기울이기 보다는 대장을 매장하거나 화장할 가능성이 더 크니까. 미친 짓 하지 말고 그냥 여기서 나가자고."{#morte_s78_}'

    menu:
        '"충고는 고맙네, 하지만 *그래도* 난 이 사람과 얘기를 하겠네."{#morte_s78_r4142}':
            # a221 # r4142
            $ morteLogic.r4142_action()
            jump morte_s80

        '"좋네, 가던 길이나 가세."{#morte_s78_r4143}':
            # a222 # r4143
            $ morteLogic.r4143_action()
            jump morte_dispose


# s79 # say4136
label morte_s79: # -
    nr '"이봐! 귀가 먹었어? 대체 뭘 하는 거야?"{#morte_s79_}'

    menu:
        '"이봐, 난 이 사람과 얘기를 할 거네. 무슨 문제라도 있나?"{#morte_s79_r4140}':
            # a223 # r4140
            $ morteLogic.r4140_action()
            jump morte_s80

        '"아무 것도 아니네. 가세."{#morte_s79_r4141}':
            # a224 # r4141
            jump morte_dispose


# s80 # say4137
label morte_s80: # from 78.0 79.0
    nr '"그럼 내 말을 듣지 말라고. 대장 장례식을 치르게 될 테니."{#morte_s80_}'

    menu:
        '"그래, 장송가를 부르고 싶으면 부르게, 하지만 지금은 조용히 하게."{#morte_s80_r4138}':
            # a225 # r4138
            jump dustgu_s12  # EXTERN

        '"자네 말이 맞네. 그 일은 관두고 그냥 가세."{#morte_s80_r4139}':
            # a226 # r4139
            jump morte_dispose


# s81 # say4338
label morte_s81: # externs dustfem_s40
    nr '"이봐! 대체 뭘 하는 거야?"{#morte_s81_}'

    menu:
        '"나는 이 여자와 얘기를 하려던 중이었네. 무슨 문제라도?"{#morte_s81_r4339}':
            # a227 # r4339
            $ morteLogic.r4339_action()
            jump morte_s82

        '"아무 것도 아니네. 가세."{#morte_s81_r4340}':
            # a228 # r4340
            jump morte_dispose


# s82 # say4341
label morte_s82: # from 81.0
    nr '"만약 대장이 더스트맨과 주둥아리를 놀릴 생각이라면 난 좀 빼줘. 나하고 그들은 상성이 별로 좋지 않으니까… 그리고 대장도 그들과 가까이 하지 않는 게 좋아. 대장 말에 귀를기울이기 보다는 대장을 매장하거나 화장할 가능성이 더 크니까. 미친 짓 하지 말고 그냥 여기서 나가자고."{#morte_s82_}'

    menu:
        '"충고는 고맙네, 하지만 *그래도* 난 이 여자와 얘기를 하겠네."{#morte_s82_r4342}':
            # a229 # r4342
            $ morteLogic.r4342_action()
            jump morte_s84

        '"좋네, 가던 길이나 가세."{#morte_s82_r4343}':
            # a230 # r4343
            jump morte_dispose


# s83 # say4344
label morte_s83: # externs dustfem_s40
    nr '"이봐! 귀가 먹었어? 대체 뭘 하는 거야?"{#morte_s83_}'

    menu:
        '"이봐, 난 이 여자와 얘기를 할 거네. 무슨 문제라도 있나?"{#morte_s83_r4345}':
            # a231 # r4345
            $ morteLogic.r4345_action()
            jump morte_s84

        '"아무 것도 아니네. 가세."{#morte_s83_r4346}':
            # a232 # r4346
            jump morte_dispose


# s84 # say4347
label morte_s84: # from 82.0 83.0
    nr '"그럼 내 말을 듣지 말라고. 대장 장례식을 치르게 될 테니."{#morte_s84_}'

    menu:
        '"그래, 장송가를 부르고 싶으면 부르게, 하지만 지금은 조용히 하게."{#morte_s84_r4348}':
            # a233 # r4348
            jump dustfem_s3  # EXTERN

        '"자네 말이 맞네. 그 일은 관두고 그냥 가세."{#morte_s84_r4349}':
            # a234 # r4349
            jump morte_dispose


# s85 # say4675
label morte_s85: # externs vaxis_s9
    nr '모트는 대회에 끼어 들어 당신에게 속삭인다. "세상에… 얼간이는 *아나키스트*야. 아마 좀비로 변장하는 건 그 미치광이들로서도 처음일 걸."{#morte_s85_}'

    menu:
        '"아나키스트?"{#morte_s85_r4676}':
            # a235 # r4676
            $ morteLogic.j64512_s85_r4676_action()
            jump morte_s86


# s86 # say4677
label morte_s86: # from 85.0
    nr '"아나키스트…그들은 당파들 중 하나지…" 모트는 욕설을 퍼부으려고 하는 것 같다, 하지만 그는 곧 좀비가 당신들 둘을 바라보며 귀를 바짝 기울이고 있다는 사실을 눈치챈다. "…그들은, 어, 모든 사람들을 정부의 사슬로부터 *해방*시키려고 하지. 구체제를 붕괴시키고 아무런 질서도 없는 새로운 질서를 수립하려고 해."{#morte_s86_}'

    menu:
        '진실: "그것은 고귀한 일인 것 같네. 어떤 체제에도 파괴를 통한 쇄신이 때때로 필요하네."{#morte_s86_r4678}':
            # a236 # r4678
            $ morteLogic.r4678_action()
            jump vaxis_s11  # EXTERN

        '거짓말: "그것은 고귀한 일인 것 같네. 그러한 고상한 목적을 위해 헌신하는 아나키스트는 틀림없이 내 친구네."{#morte_s86_r4679}':
            # a237 # r4679
            $ morteLogic.r4679_action()
            jump vaxis_s11  # EXTERN

        '"그건 모순투성이인 것 같네."{#morte_s86_r4680}':
            # a238 # r4680
            jump vaxis_s10  # EXTERN

        '"그건 내가 들어본 것들 중 가장 한심한 사상이네."{#morte_s86_r4681}':
            # a239 # r4681
            jump vaxis_s10  # EXTERN

        '진실: "그건 누가 보기에도 건설적이지 않네. 진보를 위해서는 어느 정도의 체제와 법이 필요하네."{#morte_s86_r4682}':
            # a240 # r4682
            $ morteLogic.r4682_action()
            jump vaxis_s10  # EXTERN


# s87 # say4683
label morte_s87: # externs vaxis_s13
    nr '속삭인다: "그는 대장이 미친 건 아닌가 생각하고 있는 거야… 뭐 그건 나도 마찬가지지만. 이제 그만 „난 죽음에서 깨어났소“하는 잡소리는 집어치워. 대장은 날 정말 창피하게 만들고 있다고.{#morte_s87_}'

    menu:
        '"나 때문에 무안하나?"{#morte_s87_r4684}':
            # a241 # r4684
            jump morte_s88

        '"나는 이 시체가 무슨 얘기를 하는지 알고 싶었을 뿐이네. 알았나?"{#morte_s87_r4685}':
            # a242 # r4685
            jump morte_s88

        '"이 미친 장소에 정상적으로 말하거나 생긴 사람이 없다는 건 내 잘못이 아니네."{#morte_s87_r4686}' if morteLogic.r4686_condition():
            # a243 # r4686
            jump morte_s88

        '"이봐, 난 이 사내에게 거짓말을 하지 않을 것이네. 정작하게 말해주는 편이 낫네."{#morte_s87_r4687}':
            # a244 # r4687
            $ morteLogic.r4687_action()
            jump morte_s88


# s88 # say4688
label morte_s88: # from 87.0 87.1 87.2 87.3
    nr '모트는 한숨을 쉰다. "이봐, 대장… 정신 좀 차리라고. 모든 사람들에게 항상 진실만 얘기할 수는 없어. 우리가 만나는 모든 사기꾼들에게 봉이 되어줄 순 없잖아?"{#morte_s88_}'

    menu:
        '"도끼 사냥꾼?" "마크?" "대체 무슨- 관두게."{#morte_s88_r4689}':
            # a245 # r4689
            jump vaxis_s15  # EXTERN

        '"그만둬, 모트."{#morte_s88_r4690}':
            # a246 # r4690
            jump vaxis_s15  # EXTERN

        '"염두에 두도록 하겠네, 이 „좀비“와 얘기를 조금 더 하고 싶네."{#morte_s88_r4691}':
            # a247 # r4691
            jump vaxis_s15  # EXTERN


# s89 # say4692
label morte_s89: # externs vaxis_s23
    nr '"잠깐…" 모트는 놀란 듯하다. "이 얼간이는 *아나키스트*가 틀림없어. 헤, 아마 좀비로 변장하는 건 그 미치광이들로서도 처음일 걸."{#morte_s89_}'

    menu:
        '"아나키스트?"{#morte_s89_r4693}':
            # a248 # r4693
            $ morteLogic.j64512_s89_r4693_action()
            jump morte_s90


# s90 # say4694
label morte_s90: # from 89.0
    nr '"아나키스트… 그들은 권력자들을 염탐하고 약간이라도 질서나 통제의 냄새가 나는 것은 무엇이든 무너트리려는 데 시간을 낭비하는 당파지." 모트는 코방귀를 뀐다. "아나키스트는 일단 모든 조직과 체제가 붕괴되면 다원 우주의 모든 자들은 즐겁게 자유롭게 각기 자신만의 „진실“을 찾을 수 있을 거라고 믿지. 그들은 새로운 질서를 수립하기를 원해 -- 아무런 질서도 없는 질서를."{#morte_s90_}'

    menu:
        '진실: "그것은 고귀한 일인 것 같네. 어떤 체제에도 파괴를 통한 쇄신이 때때로 필요하네."{#morte_s90_r4695}':
            # a249 # r4695
            $ morteLogic.r4695_action()
            jump vaxis_s71  # EXTERN

        '"그건 모순투성이인 것 같네."{#morte_s90_r4696}':
            # a250 # r4696
            jump vaxis_s71  # EXTERN

        '"그건 내가 들어본 것들 중 가장 한심한 사상이네."{#morte_s90_r4697}':
            # a251 # r4697
            jump vaxis_s71  # EXTERN

        '"뭐든 간에."{#morte_s90_r4698}':
            # a252 # r4698
            jump vaxis_s71  # EXTERN

        '진실: "그건 누가 보기에도 건설적이지 않네. 진보를 위해서는 어느 정도의 체제와 법이 필요하네."{#morte_s90_r4699}':
            # a253 # r4699
            $ morteLogic.r4699_action()
            jump vaxis_s71  # EXTERN


# s91 # say4700
label morte_s91: # externs vaxis_s46
    nr '"그의 말로는 이 파로드란 작자가 더스트맨에게 많은 사자를… 시체를 팔고 있는 모양이야. 그게 수집자들이 하는 일이지. 그들은 시체를 모아서 더스트맨에게 팔지. 이 파로드란 자가 얼마나 많은 시체를 팔았는지, 더스트맨은 파로드가 벌통의 주민들을 미처 때가 되기도 전여 죽여서 가져오는 것은 아닌가 의심하는 것 같아."{#morte_s91_}'

    menu:
        '"알겠소. 그 밖에도 알고 싶은 것이 있소…"{#morte_s91_r4701}':
            # a254 # r4701
            jump vaxis_s43  # EXTERN

        '"이 파로드란 사람은 상인이군. 나중에 질문할 것이 생길지도 모르니 아무데도 가지 마시오."{#morte_s91_r4702}':
            # a255 # r4702
            jump morte_dispose


# s92 # say4703
label morte_s92: # externs vaxis_s47
    nr '"그는 누가 당신 물건을 강탈했는지 알고 싶어해. 그런 일이 있기는 있었을 거야."{#morte_s92_}'

    menu:
        '"알겠소. 그 밖에도 알고 싶은 것이 있소…"{#morte_s92_r4704}':
            # a256 # r4704
            jump vaxis_s43  # EXTERN

        '"그래, 이 도둑을 정말 만나고 싶군. 나중에 질문할 것이 생길지도 모르니 아무데도 가지 마시오."{#morte_s92_r4705}':
            # a257 # r4705
            jump morte_dispose


# s93 # say4706
label morte_s93: # externs vaxis_s39
    nr '"그래, *그들*은 정말 얼간이야."{#morte_s93_}'

    jump vaxis_s61  # EXTERN


# s94 # say4708
label morte_s94: # externs vaxis_s65
    nr '"이런 짓거리를 계속하고 있다니 믿을 수가 없군. 대장은 얼마나 더럽게 미친 거야?"{#morte_s94_}'

    menu:
        '"상당히 미친 것 같군…"{#morte_s94_r64535}' if morteLogic.r64535_condition():
            # a258 # r64535
            $ morteLogic.r64535_action()
            jump vaxis_s66  # EXTERN

        '"상당히 미친 것 같군…"{#morte_s94_r64534}' if morteLogic.r64534_condition():
            # a259 # r64534
            $ morteLogic.r64534_action()
            jump vaxis_s66  # EXTERN


# s95 # say4710
label morte_s95: # externs vaxis_s66
    nr '"그의 입을 더 단단히 꿰매 버릴 순 없겠어?"{#morte_s95_}'

    menu:
        '"크만둬, 머트 --"{#morte_s95_r4711}':
            # a260 # r4711
            jump vaxis_s67  # EXTERN

        '"음-음!"{#morte_s95_r4712}':
            # a261 # r4712
            jump vaxis_s67  # EXTERN


# s96 # say5029
label morte_s96: # -
    nr '"이봐! 대체 뭘 하는 거야?"{#morte_s96_}'

    menu:
        '"나는 이 사람과 얘기를 하려던 중이었네. 무슨 문제라도?"{#morte_s96_r5030}':
            # a262 # r5030
            $ morteLogic.r5030_action()
            jump morte_s97

        '"아무 것도 아니네. 가세."{#morte_s96_r5031}':
            # a263 # r5031
            jump morte_dispose


# s97 # say5032
label morte_s97: # from 96.0
    nr '"만약 대장이 더스트맨과 주둥아리를 놀릴 생각이라면 난 좀 빼줘. 나하고 그들은 상성이 별로 좋지 않으니까… 그리고 대장도 그들과 가까이 하지 않는 게 좋아. 대장 말에 귀를기울이기 보다는 대장을 매장하거나 화장할 가능성이 더 크니까. 미친 짓 하지 말고 그냥 여기서 나가자고."{#morte_s97_}'

    menu:
        '"충고는 고맙네, 하지만 *그래도* 난 이 사람과 얘기를 하겠네."{#morte_s97_r5033}':
            # a264 # r5033
            $ morteLogic.r5033_action()
            jump morte_s99

        '"좋네, 가던 길이나 가세."{#morte_s97_r5034}':
            # a265 # r5034
            jump morte_dispose


# s98 # say5035
label morte_s98: # -
    nr '"이봐! 귀가 먹었어? 대체 뭘 하는 거야?"{#morte_s98_}'

    menu:
        '"이봐, 난 이 사람과 얘기를 할 거네. 무슨 문제라도 있나?"{#morte_s98_r5036}':
            # a266 # r5036
            $ morteLogic.r5036_action()
            jump morte_s99

        '"아무 것도 아니네. 가세."{#morte_s98_r5037}':
            # a267 # r5037
            jump morte_dispose


# s99 # say5038
label morte_s99: # from 97.0 98.0
    nr '"그럼 내 말을 듣지 말라고. 대장 장례식을 치르게 될 테니."{#morte_s99_}'

    menu:
        '"그래, 장송가를 부르고 싶으면 부르게, 하지만 지금은 조용히 하게."{#morte_s99_r5039}':
            # a268 # r5039
            jump soego_s3  # EXTERN

        '"자네 말이 맞네. 그 일은 관두고 그냥 가세."{#morte_s99_r5040}':
            # a269 # r5040
            jump morte_dispose


# s100 # say5041
label morte_s100: # externs soego_s20
    nr '"뭘 하는 거야?! 만약 그를 죽일 거라면 빨리 해치우라고!{#morte_s100_}'

    menu:
        '"난 분명히 처치했네! 그의 목을 부러트렸다고! 그는 꼼짝할 수조차 없어!"{#morte_s100_r5042}':
            # a270 # r5042
            jump soego_s21  # EXTERN


# s101 # say5043
label morte_s101: # externs soego_s10
    nr '"적어도 그는 걸을 수가 있잖아. 모트는 코방귀를 뀐다. "떠다니는 것도 좋지만 누굴 걷어찰 수가 없잖아."{#morte_s101_}'

    jump soego_s11  # EXTERN


# s102 # say5049
label morte_s102: # externs dhall_s5
    nr '"와우, 대장! 무슨 짓을 하는 거야?"{#morte_s102_}'

    menu:
        '"나는 이 서기와 얘기를 하려던 참이었네. 그라면 내가 어떻게 이 곳에 오게 되었는지 알지도 모르네."{#morte_s102_r5050}':
            # a271 # r5050
            jump morte_s103


# s103 # say5052
label morte_s103: # from 102.0
    nr '"이봐, 더스티랑 얘기를 하는 건 자살…"{#morte_s103_}'

    jump dhall_s0  # EXTERN


# s104 # say5053
label morte_s104: # externs dhall_s0
    nr '"*특히* 아픈 더스티하고는 얘기를 하지 않는 게 좋아. 자, 어서 떠나자고. "여기서 빨리 떠날수록 우리에게 좋--"{#morte_s104_}'

    jump dhall_s1  # EXTERN


# s105 # say6071
label morte_s105: # externs deionarra_s8 deionarra_s48 deionarra_s26 deionarra_s19 deionarra_s0
    nr '"다시 돌아왔어, 대장? 날 버리다니 너무 하잖아."{#morte_s105_}'

    menu:
        '"난 괜찮네. 자넨 그 혼령이 누구였는지 아는가?"{#morte_s105_r6075}':
            # a272 # r6075
            $ morteLogic.r6075_action()
            jump morte_s106

        '"난 괜찮네. 가세."{#morte_s105_r6076}':
            # a273 # r6076
            jump morte_dispose


# s106 # say6072
label morte_s106: # from 105.0
    nr '"허? 혼령?"{#morte_s106_}'

    menu:
        '"나와 얘기한 유령 말일세. 그 여자."{#morte_s106_r6077}':
            # a274 # r6077
            jump morte_s107


# s107 # say6073
label morte_s107: # from 106.0
    nr '"대장이 어떤 여자와 얘기를 하고 있었다고? 어디?" 모트는 흥분한 듯 주위를 둘러본다. "그녀는 어떻게 생겼지?"{#morte_s107_}'

    menu:
        '"그녀는 관대의 바로 위에 있었네. 자넨 그녀를 보지 못했나?"{#morte_s107_r6078}':
            # a275 # r6078
            jump morte_s108


# s108 # say6074
label morte_s108: # from 107.0
    nr '"에… 아니, 대장은 거기서 그냥 두리번거리다가 마치 석상처럼 서 있었다고.. 나는 대장이 또 미친 건 아닌가 걱정을 했었디고."{#morte_s108_}'

    menu:
        '"난… 괜찮은 것 같네. 가세."{#morte_s108_r6079}':
            # a276 # r6079
            jump morte_dispose


# s109 # say6324
label morte_s109: # -
    nr '"내가 전에 했던 일이 생각나는군." 그는 좀 창피한 듯하다. "그래, 팔은 없었지만…"{#morte_s109_}'

    menu:
        '시체를 조사한다.{#morte_s109_r6325}' if morteLogic.r6325_condition():
            # a277 # r6325
            jump post_s3  # EXTERN

        '시체를 조사한다.{#morte_s109_r6326}' if morteLogic.r6326_condition():
            # a278 # r6326
            jump post_s4  # EXTERN

        '"흠… 다른 게시물에도 효과가 있을지 궁금하군…"{#morte_s109_r6327}' if morteLogic.r6327_condition():
            # a279 # r6327
            jump post_s5  # EXTERN

        '"흠… 다른 게시물에도 효과가 있을지 궁금하군…"{#morte_s109_r6328}' if morteLogic.r6328_condition():
            # a280 # r6328
            jump post_s5  # EXTERN

        '다른 게시물을 살펴본다.{#morte_s109_r6329}' if morteLogic.r6329_condition():
            # a281 # r6329
            jump post_s5  # EXTERN

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.{#morte_s109_r6330}' if morteLogic.r6330_condition():
            # a282 # r6330
            jump post_s2  # EXTERN

        '시체를 그냥 내버려 두고 떠난다.{#morte_s109_r6331}':
            # a283 # r6331
            jump morte_dispose


# s110 # say6609
label morte_s110: # externs s42_s3 s42_s0
    nr '"와우, 대장. 그건 파괴 행위야. 그 볼트들은 그 뼈들을 고정시키는 유일한 것들이라고. 이런 오래된 친구들에게는 이미 사령술도 별 효과가 없다고."{#morte_s110_}'

    menu:
        '"그래서?"{#morte_s110_r6658}':
            # a284 # r6658
            $ morteLogic.r6658_action()
            jump s42_s1  # EXTERN

        '"아… 영구적인 대미지는 입히고 싶지 않았는데."{#morte_s110_r6659}':
            # a285 # r6659
            $ morteLogic.r6659_action()
            jump s42_s1  # EXTERN

        '"그럼 좋네, 관두게. 아마 다른 기회에…"{#morte_s110_r6660}':
            # a286 # r6660
            jump s42_s1  # EXTERN


# s111 # say6610
label morte_s111: # externs s42_s3 s42_s2 s42_s0
    nr '"흠… 이 회색 수염이 내가 자기 몸을 빌려도 뭐라고 하지 않을지 모르겠군…"{#morte_s111_}'

    menu:
        '"„회색 수염?“"{#morte_s111_r6661}':
            # a287 # r6661
            jump s42_s1  # EXTERN

        '"나는 그가 이의를 제기할 입장이라고는 생각하지 않네."{#morte_s111_r6662}':
            # a288 # r6662
            jump s42_s1  # EXTERN

        '"자네에게 팔이 있었으면 지금의 두 배는 더 짜증스러웠을 거라는 생각이 드는군. 가세."{#morte_s111_r6663}':
            # a289 # r6663
            jump s42_s1  # EXTERN


# s112 # say6611
label morte_s112: # externs s42_s13
    nr '"그만두라고. 그의 팔은 곧 떨어질 거라고."{#morte_s112_}'

    menu:
        '양팔을 당신 가슴 위에서 교차시킨다.{#morte_s112_r6664}' if morteLogic.r6664_condition():
            # a290 # r6664
            jump s42_s4  # EXTERN

        '스켈레톤의 몸짓을 흉내낸다… 어떤 일이 일어나는지 지켜본다.{#morte_s112_r6665}' if morteLogic.r6665_condition():
            # a291 # r6665
            jump s42_s9  # EXTERN

        '"어…"{#morte_s112_r6666}':
            # a292 # r6666
            jump s42_s10  # EXTERN

        '스켈레톤을 그냥 내버려 둔다.{#morte_s112_r6667}':
            # a293 # r6667
            jump morte_dispose


# s113 # say6771
label morte_s113: # from 54.0 54.1
    nr '"그녀는 이 도시의 지배자야. 대장도 그녀를 보면 알 거야. 그녀의 얼굴 주변에는 칼날들이 달렸고, 그녀는 거인만큼이나 거대하며, 저 친구들처럼 공중에 떠다니지." 모트는 당신들 둘을 바라보고 있는 다버스를 가리킨다. "아무도 그녀에 대해서 자세히 알지는 못해… 그녀는 거의 말을 하지 않아. 대장이 알아야 할 건 그녀를 화나게 해서는 안 된다는 것 뿐이야. 이건 내 충고인데, 만약 그녀를 보게 되면 도망치라고."{#morte_s113_}'

    menu:
        '"알겠소."{#morte_s113_r2784}':
            # a294 # r2784
            jump dabus_s3  # EXTERN


# s114 # say6784
label morte_s114: # -
    nr '모트는 조롱한다. "이 떠다니는 염소 대가리들이 하는 말을 해석하느니 차라리 타나리 창자를 걸러내는 게 낫지. 통역을 원해? 시길 토박이를 찾아보라고."{#morte_s114_}'

    menu:
        '"알겠소."{#morte_s114_r6955}':
            # a295 # r6955
            jump dabus_s3  # EXTERN


# s115 # say6786
label morte_s115: # -
    nr '"아, 물론 그들에게도 이름이 있겠지."{#morte_s115_}'

    jump annah_s43  # EXTERN


# s116 # say6790
label morte_s116: # -
    nr '"웃기는군, 휜들링."{#morte_s116_}'

    menu:
        '"관두게, 모트 - 그에게 다른 질문을 좀 해줄 수 있겠소, 안나?"{#morte_s116_r6956}':
            # a296 # r6956
            jump annah_s40  # EXTERN

        '"관두게. 가세."{#morte_s116_r6957}':
            # a297 # r6957
            $ morteLogic.r6957_action()
            jump dabus_s6  # EXTERN


# s117 # say6794
label morte_s117: # -
    nr '모트는 조롱한다. "이 떠다니는 염소 대가리들이 하는 말을 해석하느니 차라리 타나리 창자를 걸러내는 게 났지. 통역을 원해? 여기 있는 휜들링 계집에게 부탁하라고." 그는 안나를 가리킨다. "그녀는 벌통 토박이니까."{#morte_s117_}'

    menu:
        '"아마 그럴지도…"{#morte_s117_r6958}':
            # a298 # r6958
            jump dabus_s3  # EXTERN


# s118 # say6797
label morte_s118: # -
    nr '모트는 조롱한다. "이 떠다니는 염소 대가리들이 하는 말을 해석하느니 차라리 타나리 창자를 걸러내는 게 났지. 통역을 원해?" 그는 다콘을 가리킨다. "여기 있는 „나는 잘났으니 너희들 따위와는 얘기를 안 해“하는 양반에게 부탁하라고."{#morte_s118_}'

    menu:
        '"아마 그럴지도…"{#morte_s118_r6959}':
            # a299 # r6959
            jump dabus_s3  # EXTERN


# s119 # say6800
label morte_s119: # -
    nr '모트는 조롱한다. "이 떠다니는 염소 대가리들이 하는 말을 해석하느니 차라리 타나리 창자를 걸러내는 게 났지. 통역을 원해? 타나리에게 부탁하라고." 그는 훨-후럼-그레이스를 가리킨다. "아마 그녀는 이 친구들하고 늘 대화를 나누고 있을 거라고."{#morte_s119_}'

    menu:
        '"아마 그럴지도…"{#morte_s119_r6960}':
            # a300 # r6960
            jump dabus_s3  # EXTERN


# s120 # say7040
label morte_s120: # -
    nr '당신이 돌아서자 모트가 당신을 쳐다보고 있다. "에? 에?"{#morte_s120_}'

    menu:
        '"뭔가?"{#morte_s120_r7055}':
            # a301 # r7055
            jump morte_s121


# s121 # say7041
label morte_s121: # from 120.0
    nr '"저 죽은 미인이 날 어떻게 쳐다보는지 봤어?" 모트는 잔뜩 기대라도 하듯 이빨을 딱딱거린다. "그녀는 자신의 관을 따뜻하게 해줄 행운아를 찾고 있었다고."{#morte_s121_}'

    menu:
        '"제발 다시 시작하지 말게."{#morte_s121_r7056}' if morteLogic.r7056_condition():
            # a302 # r7056
            $ morteLogic.r7056_action()
            jump morte_s122

        '"대체 무슨 얘기를 하는 건가?"{#morte_s121_r7057}' if morteLogic.r7057_condition():
            # a303 # r7057
            $ morteLogic.r7057_action()
            jump morte_s47

        '"무덤-저편의-공허한-눈빛 말인가?"{#morte_s121_r7058}' if morteLogic.r7058_condition():
            # a304 # r7058
            $ morteLogic.r7058_action()
            jump morte_s47


# s122 # say7042
label morte_s122: # from 121.0
    nr '모트는 당신을 무시하고 사색에 잠긴다. "나는 주목을 받는 게 싫지는 않아… 하지만 난 남들이 날 해골 이상의 존재로 봐주기를 원해, 이해하지? 내게는 동물적 본능 이상의 감정이 있어. 나는 사랑을 원한다고."{#morte_s122_}'

    menu:
        '"계속 그런 식으로 나오면 자네를 어디다 던져버리겠네."{#morte_s122_r7059}':
            # a305 # r7059
            jump morte_s123

        '"모트, 자네는 해골이네. 누가 봐도 자네는 해골이네. 현실을 받아들이게."{#morte_s122_r7060}':
            # a306 # r7060
            jump morte_s124

        '"이해하네. 이제 여기서 나가세, 알겠나?"{#morte_s122_r7061}':
            # a307 # r7061
            jump morte_dispose


# s123 # say7043
label morte_s123: # from 122.0
    nr '"와우, 대장…" 모트는 팔이 미치는 범위 밖으로 약각 물러난다. "여자들은 애인을 원하지 전사를 원하지 않는다고."{#morte_s123_}'

    menu:
        '"아마 자네는 이 우주에서 내가 로맨스에 내해 조언을 구할 *마지막* 사람일 걸세."{#morte_s123_r7062}':
            # a308 # r7062
            jump morte_s126

        '"뭐든 간에, 모트. 가세."{#morte_s123_r7063}':
            # a309 # r7063
            jump morte_dispose


# s124 # say7044
label morte_s124: # from 122.1
    nr '"그래, 난 해골에 불과할지도 모르지만 마음만은 따뜻하다고."{#morte_s124_}'

    menu:
        '"자네에겐 그게 없지 않나."{#morte_s124_r7064}':
            # a310 # r7064
            jump morte_s125

        '"뭐든 간에, 모트. 가세."{#morte_s124_r7065}':
            # a311 # r7065
            jump morte_dispose


# s125 # say7045
label morte_s125: # from 124.0
    nr '"뭐, 대장은 내 꿈과 포부에 침을 뱉으려고 내 삶에 껴든 거야?! 좋아, 그럼 그렇게 하라고. 내게 심장은 없을지 모르지만 영혼은 있다고."{#morte_s125_}'

    menu:
        '"실은 난 자네가… 관두게. 가세."{#morte_s125_r7066}':
            # a312 # r7066
            jump morte_dispose

        '"뭐든 간에, 모트. 가세."{#morte_s125_r7067}':
            # a313 # r7067
            jump morte_dispose


# s126 # say7046
label morte_s126: # from 123.0
    nr '"만약 대장에게 죽을 때 잃어버린 감각이 반만이라도 남아있었다면 그런 소린 안 할 걸." 모트는 지금까지보다 한층 더 찰난 체 하는 목소리로 말한다. "사랑에 대해서 나보다 잘 아는 사람이 있으면 나오라고 해."{#morte_s126_}'

    menu:
        '"뭐든 간에, 모트. 가세."{#morte_s126_r7068}':
            # a314 # r7068
            jump morte_dispose


# s127 # say7071
label morte_s127: # -
    nr '모트는 스켈레톤을 잠시 살펴본 후 고개를 젓는다. "아니… 이 놈은 너무 깨끗해… 살이 거의 남아있지 않잖아. 게다가 뼈에서 그 백색 도료를 다 제거하긴 힘들 것 같아."{#morte_s127_}'

    menu:
        '"그것이 „너무 깨끗한“지는 모르겠으나… 자네는 청결함에 대해 좀 배우는 것이 좋을 것 같네."{#morte_s127_r7076}':
            # a315 # r7076
            jump morte_s70

        '"그럼 좋네. 가세."{#morte_s127_r7077}':
            # a316 # r7077
            jump morte_dispose


# s128 # say7130
label morte_s128: # -
    nr '"그래!"{#morte_s128_}'

    jump hivef1_s8  # EXTERN


# s129 # say7187
label morte_s129: # -
    nr '"미미르는 말하는 백과사전이지. 그건 바로 나야, 대장."{#morte_s129_}'

    menu:
        '"알겠소. 너무 그렇게 고민하지 말게, 모트. 그녀 꼴을 보니 난 자네를 두 번째 죽음로부터 구하는 셈일세."{#morte_s129_r7483}':
            # a317 # r7483
            $ morteLogic.r7483_action()
            jump harlotn_s8  # EXTERN

        '"어서 여길 떠나세. 잘 있으시오, 아가씨."{#morte_s129_r7484}':
            # a318 # r7484
            jump morte_dispose


# s130 # say7188
label morte_s130: # -
    nr '모트는 창녀가 음탕한 욕설을 유수처럼 쏟아 내는 걸 최면이라도 걸린 듯 쳐다본다. 말사태가 끝난 후 모트는 잠시 조용히 있다가 당신 쪽으로 고개를 돌린다. "와우, 대장. 내 역설의 레퍼토리가 늘었어." 모트는 숨을 헐떡이는 정녀에게로 다시 고개를 돌린다. "난 사랑에 빠진 것 같아."~ [MRT387]{#morte_s130_}'

    menu:
        '떠난다.{#morte_s130_r7485}':
            # a319 # r7485
            $ morteLogic.r7485_action()
            jump morte_dispose


# s131 # say7775
label morte_s131: # -
    nr '"와우, 대장." 모트는 당신이 그 생물과 미쳐 얘기하기도 전에 말을 가로막는다. "관둬. 거리에서 아무 마족이나 붙잡고 말을 걸지 마. 놈을 그냥 내버려 두라고."{#morte_s131_}'

    menu:
        '"나는 그에게 뭘 좀 물어보고 싶네…"{#morte_s131_r7776}':
            # a320 # r7776
            jump morte_s132

        '그 생물을 그냥 내버려 둔다.{#morte_s131_r7777}':
            # a321 # r7777
            jump morte_dispose


# s132 # say7778
label morte_s132: # from 131.0
    nr '"아니, 안돼." 모트는 그 생물을 흘긋 보더니 다시 당신 쪽으로 고개를 돌리고 속삭이는 듯한 목소리로 말한다. "그들은 성질이 까다로워. 그냥 가자고."{#morte_s132_}'

    menu:
        '"난 위험을 감수하겠네."{#morte_s132_r7779}':
            # a322 # r7779
            jump bishab_s11  # EXTERN

        '그 생물을 그냥 내버려 둔다.{#morte_s132_r7780}':
            # a323 # r7780
            jump morte_dispose


# s133 # say7805
label morte_s133: # -
    nr '당신이 그 생물과 얘기하려고 하자 모트는 한숨을 쉰다.{#morte_s133_}'

    menu:
        '"뭔가?"{#morte_s133_r7806}':
            # a324 # r7806
            jump morte_s134


# s134 # say7807
label morte_s134: # from 133.0
    nr '"아, 아무 것도 아냐. 체험이 가장 좋은 선생이지." 모트는 고개를 끄덕여 그 생물을 가리킨다. "어서 하라고."{#morte_s134_}'

    menu:
        '"그러겠네."{#morte_s134_r7808}':
            # a325 # r7808
            jump bishab_s11  # EXTERN

        '"좋아, 관두게. 가세."{#morte_s134_r7809}':
            # a326 # r7809
            jump morte_dispose


# s135 # say2349
label morte_s135: # from 44.0 44.1
    nr '"그래, „기스“야…" 모트는 아직도 당신을 응시하고 있는 기스를 흘긋 본다. "다른 때 다시 얘기하자고."{#morte_s135_}'

    menu:
        '"나는 아직 떠날 생각이 없네. 나는 먼저 그에게 질문을 좀 해야겠네…"{#morte_s135_r9035}':
            # a327 # r9035
            jump gith_s7  # EXTERN

        '기스를 그냥 내버려 둔다.{#morte_s135_r9036}':
            # a328 # r9036
            jump morte_dispose


# s136 # say9860
label morte_s136: # -
    nr '"이봐, 대장… 대장은 그를 깨우기도 전에 먼저 죽일 거라고!"{#morte_s136_}'

    menu:
        '"자네가 옳네, 모트. 가세."{#morte_s136_r9882}':
            # a329 # r9882
            jump morte_dispose


# s137 # say11946
label morte_s137: # -
    nr '모트가 다가온다. "뭐야, 대장?"{#morte_s137_}'

    menu:
        '"이 이빨들이 보이나?"{#morte_s137_r11974}':
            # a330 # r11974
            jump morte_s138

        '"아무 것도 아니네. 신경 쓰지말게."{#morte_s137_r11975}':
            # a331 # r11975
            jump morte_dispose


# s138 # say11947
label morte_s138: # from 137.0
    nr '모트는 당신 손바닥을 쳐다본다. "왝!" 그는 역겨워 하는 것 같다. "정말 추악하게 생겼군, 안 그래?"{#morte_s138_}'

    jump morte_dispose


# s139 # say11948
label morte_s139: # -
    nr '"말도 안돼." 모트는 몸서리친다. "대장이라면 그런 걸 몸 안에 넣고 싶겠어?"{#morte_s139_}'

    menu:
        '"자, 모트, 그들을 좋아하는 것 같네. 그들이 자네를 쳐다보는 모습 좀 보게."{#morte_s139_r11976}':
            # a332 # r11976
            jump morte_s140

        '모트를 잡아 그의 입에 그 이빨들을 밀어 넣는다.{#morte_s139_r11977}':
            # a333 # r11977
            $ morteLogic.r11977_action()
            jump morte_s141

        '"그럼 관두게."{#morte_s139_r11978}':
            # a334 # r11978
            jump morte_dispose


# s140 # say11949
label morte_s140: # from 139.0
    nr '"그 작은 요물들이 내 가까이에 오기만 하면…" 모트는 잠시 멈춘다. "이빨을 어떻게 협박해야 하는지는 나도 모르겠는데…"{#morte_s140_}'

    menu:
        '이빨을 살펴본다.{#morte_s140_r11979}':
            # a335 # r11979
            jump morte_dispose

        '모트를 잡아 그의 입에 그 이빨들을 밀어 넣는다.{#morte_s140_r11980}':
            # a336 # r11980
            $ morteLogic.r11980_action()
            jump morte_s141

        '"그럼 관두게."{#morte_s140_r11981}':
            # a337 # r11981
            jump morte_dispose


# s141 # say11950
label morte_s141: # from 139.1 140.1
    nr '몸부림은 오래가지 않는다. 당신은 모트의 머리를 팔에 끼우고 누른다(달리 잡을 부위가 없으니까). 모트는 당신을 물어뜯어 당신으로부터 벗어나려고 하나, 이빨들은 당신 손에서 뛰쳐나와 모트의 입안으로 벌떼처럼 몰려 들어간다. 모트는 잉그레스의 이빨들이 그의 이빨들을 뽑아 내고 그 빈자리를 대신 채우는 동안 마구 악을 쓴다.{#morte_s141_}'

    menu:
        '"보라고, 모트. 그건 그리 나쁘지 않았지?"{#morte_s141_r11982}':
            # a338 # r11982
            $ morteLogic.r11982_action()
            jump morte_s143


# s142 # say11951
label morte_s142: # from 149.0
    nr '모트는 계속 악을 쓴다. 이빨들은 자리를 잡고 구멍을 뚫는 끔찍한 소리를 내면서 잇몸에 뿌리를 내리기 시작한다.{#morte_s142_}'

    menu:
        '"모트, 괜찮은가?"{#morte_s142_r11983}':
            # a339 # r11983
            $ morteLogic.r11983_action()
            jump morte_s143


# s143 # say11952
label morte_s143: # from 141.0 142.0
    nr '모트에게는 당신 소리가 들리지 않는 듯하다… 그는 계속해서 악을 쓴다. 그러더니 갑자기 이빨들을 서로 부딪히게 만든다. 그러나 그가 세 번 이빨을 으드득한 직후, 아랫니와 윗니가 서로 잠겨 그가 입을 열지 못하게 만든다.{#morte_s143_}'

    menu:
        '"와우!"{#morte_s143_r11984}':
            # a340 # r11984
            jump morte_s144


# s144 # say11953
label morte_s144: # from 143.0
    nr '모트는 눈을 크게 뜨고 당신에게 뭐라고 중얼거린다.{#morte_s144_}'

    menu:
        '"그럼… 자넨 그들이 마음에 드나?"{#morte_s144_r11985}' if morteLogic.r11985_condition():
            # a341 # r11985
            jump morte_s145

        '"모트, 자네 괜찮나?"{#morte_s144_r11986}' if morteLogic.r11986_condition():
            # a342 # r11986
            jump morte_s150


# s145 # say11954
label morte_s145: # from 144.0
    nr '이빨들은 갑자기 풀리고 모트는 심호흡을 한다. "난 대장에게 꼭 복수를 할 거야." 그가 말한다. "그건 정말 추잡한 짓이었어."{#morte_s145_}'

    menu:
        '"그들의 감촉은 어떤가?"{#morte_s145_r11987}':
            # a343 # r11987
            jump morte_s146


# s146 # say11955
label morte_s146: # from 145.0 150.0
    nr '모트는 실험 삼아 턱을 움직여 본다. "기묘하군. 하지만 과히 나쁘진 않은데." 갑자기 이빨은 길게 늘어나 송곳니가 된다. "오오! 그들은 변화할 수 있군!" 그것들은 보통 크기로 줄었다가, 다시 송곳니가 되었다가, 다시 보통 크기로 돌아온다… "내 마음에 들 것 같군…"{#morte_s146_}'

    menu:
        '"미안하네, 모트. 자네를 해칠 생각은 없었네."{#morte_s146_r11988}' if morteLogic.r11988_condition():
            # a344 # r11988
            jump morte_s147

        '"보게, 내가 옳았지?"{#morte_s146_r11989}' if morteLogic.r11989_condition():
            # a345 # r11989
            jump morte_s147


# s147 # say11956
label morte_s147: # from 146.0 146.1
    nr '"아, 하지만 복수는 할 거야." 모트는 대답한다. 그가 히죽 웃자 이빨은 다시 송곳니가 된다. "기다리시라고."{#morte_s147_}'

    menu:
        '"어… 복수는 아무에게도 도움이 되지 않네, 모트. 어… 가세.{#morte_s147_r11990}' if morteLogic.r11990_condition():
            # a346 # r11990
            jump morte_dispose

        '"나중에 내게 감사할 걸세. 두고 보라고."{#morte_s147_r11991}' if morteLogic.r11991_condition():
            # a347 # r11991
            jump morte_dispose


# s148 # say11957
label morte_s148: # -
    nr '"뭐야?" 모트는 가까이 와서 당신 손바닥을 들여다 본다. "이봐… 그것들은 무슨 계획을 하는 것 같군, 안 그래?"{#morte_s148_}'

    menu:
        '"그렇지, 그렇지 않--"{#morte_s148_r11992}':
            # a348 # r11992
            jump morte_s149


# s149 # say11958
label morte_s149: # from 148.0
    nr '그 다음에 일어난 일은 형용하기 어렵고… 보기에 정말 고통스럽다. 당신이 미처 손바닥을 접기 전에 이빨들은 당신 손에서 뛰쳐나와 모트의 입안으로 벌떼처럼 몰려 들어간다. 모트는 잉그레스의 이빨들이 그의 이빨들을 뽑아 내고 그 빈자리를 대신 채우는 동안 마구 악을 쓴다.{#morte_s149_}'

    menu:
        '"모트!"{#morte_s149_r11993}':
            # a349 # r11993
            jump morte_s142


# s150 # say11959
label morte_s150: # from 144.1
    nr '이빨들은 갑자기 풀리고 모트는 심호흡을 한다. "난 대장에게 꼭 복수를 할 거야! 모두 대장이 꾸민 일이지! 난 알아!"{#morte_s150_}'

    menu:
        '"보게, 그런 일이 일어나갈 바란 건 아니네… 난 자네에게 경고도 했네… 어… 그들의 감촉은 어떤가?"{#morte_s150_r11994}':
            # a350 # r11994
            jump morte_s146


# s151 # say12389
label morte_s151: # -
    nr '모트는 당신에게 속삭인다. "보스, 뭔가 낌새가 이상해. 아무 마족이나 휴가를 갈 정도로 블러드 워의 상황은 급변하지 않았다고. 그들은 뭔가를 *원하는* 게 틀림없어. 조심하라고." 그 동안에도 테가린은 계속 동료와 얘기를 하고 있다.{#morte_s151_}'

    jump tegarin_s12  # EXTERN


# s152 # say12449
label morte_s152: # -
    nr '"보스, 저 자식들이 무슨 음모를 꾸미고 있다는 건 그 어느 때보다도 명백해. 내가 듣기에 그들은 탈영을 했고, 베이터에서의 자신들의 지위를 향상시킬 방법을 모색하고 있는 것 같아. 놈들하고는 얘기하지 않는 게 좋아, 보스… 대장은 어떤 게임을 하는지 모르고, 잘못하면 문자 그대로 불타버릴 수도 있다고."{#morte_s152_}'

    menu:
        '"알았네, 모트. 이들 둘에게 몇 가지만 더 물어보겠네…"{#morte_s152_r12450}':
            # a351 # r12450
            jump aethel_s11  # EXTERN

        '"좋네, 모트. 그들과의 용건은 끝났네."{#morte_s152_r12451}':
            # a352 # r12451
            jump morte_dispose


# s153 # say12466
label morte_s153: # -
    nr '모트는 가까이 다가와 당신 귀에 대고 속삭인다. "그가 옳아, 대장… 왜 대장이 그렇게 화가 난 건지 모르겠군…"{#morte_s153_}'

    menu:
        '"좋소… 나는 질문을 하나만 하고 싶었을 뿐이오…"{#morte_s153_r12553}':
            # a353 # r12553
            jump baria_s4  # EXTERN

        '"닥쳐, 이 투덜거리는 햐골아! 그리고 너, 염소 괴물 -넌 죽어야겠다."{#morte_s153_r12554}':
            # a354 # r12554
            $ morteLogic.r12554_action()
            jump morte_dispose

        '"아니야… 그건 당신이었소, 그리고 당신은 그걸 후회하게 될 거요."{#morte_s153_r12555}':
            # a355 # r12555
            $ morteLogic.r12555_action()
            jump morte_dispose

        '"그럼 관두시오. 안녕히 계시오."{#morte_s153_r12556}':
            # a356 # r12556
            $ morteLogic.r12556_action()
            jump morte_dispose


# s154 # say12467
label morte_s154: # -
    nr '"그래, 그래! 좋아!"{#morte_s154_}'

    jump baria_s20  # EXTERN


# s155 # say12621
label morte_s155: # -
    nr '모트는 모든 관심이 자신에게 쏠리자 놀란 듯하다. "뭐야? 뭐야?" 만약 그에게 입술이 있었다면 그가 천진난만하게 휘파람을 불었을 것이라는 생각이 든다.{#morte_s155_}'

    menu:
        '"설명할 것이라도 있나, 모트?{#morte_s155_r12854}':
            # a357 # r12854
            jump morte_s156

        '"„미미르“가 뭔가?"{#morte_s155_r12855}' if morteLogic.r12855_condition():
            # a358 # r12855
            $ morteLogic.r12855_action()
            jump morte_s157

        '"그는 신경 쓰지 말게… 대답을 해줄 수가 있겠나?"{#morte_s155_r12856}':
            # a359 # r12856
            jump creed_s30  # EXTERN


# s156 # say12622
label morte_s156: # from 155.0
    nr '"이 사람 얘기를 듣자고, 어때?" 모트는 고개를 돌려 쥐 사냥꾼을 냉엄하게 바라본다.{#morte_s156_}'

    menu:
        '"아니, 어디 자네가 할 말을 들어보세, 모트."{#morte_s156_r12857}':
            # a360 # r12857
            jump morte_s158

        '"잠깐만 기다리시오… „미미르“가 뭔가?"{#morte_s156_r12858}' if morteLogic.r12858_condition():
            # a361 # r12858
            $ morteLogic.r12858_action()
            jump morte_s157

        '쥐 사냥꾼 쪽으로 돌아선다.{#morte_s156_r12859}':
            # a362 # r12859
            jump creed_s32  # EXTERN


# s157 # say12623
label morte_s157: # from 155.1 156.1
    nr '모트는 부끄러운 듯 눈알을 희번덕거린다. "그건… 말하는 백과사전이야. 별로 자랑스러운 건 아니야. 자, 이 친구가 하는 얘기를 듣자고, 좋아?"{#morte_s157_}'

    menu:
        '"알겠네."{#morte_s157_r12860}':
            # a363 # r12860
            $ morteLogic.r12860_action()
            jump creed_s32  # EXTERN

        '"아니, 충분히 들었소. 안녕히 계시오, 쥐 사냥꾼."{#morte_s157_r12861}':
            # a364 # r12861
            $ morteLogic.r12861_action()
            jump creed_s59  # EXTERN


# s158 # say12624
label morte_s158: # from 156.0
    nr '"이봐, 대장… 내가 왜 대장에게 뭘 숨기겠어? 나는 대장에게 필요한 건 모두 말했다고. 그냥 이 친구가 하는 얘기나 듣자고."{#morte_s158_}'

    menu:
        '"알겠네."{#morte_s158_r12862}':
            # a365 # r12862
            jump creed_s32  # EXTERN

        '"그럼 관두게. 가세. 안녕히 계시오, 쥐 사냥꾼."{#morte_s158_r12863}':
            # a366 # r12863
            jump creed_s59  # EXTERN


# s159 # say12625
label morte_s159: # -
    nr '"그래, 대장! 좋아!"{#morte_s159_}'

    jump creed_s40  # EXTERN


# s160 # say12626
label morte_s160: # -
    nr '"죽었어, 대장… 죽었단 말이야."{#morte_s160_}'

    menu:
        '"하지만 당신은 상당히 친절한 것 같소, 쥐 사냥꾼…"{#morte_s160_r12864}':
            # a367 # r12864
            jump creed_s49  # EXTERN

        '"이해하오. 다른 질문이 있소…"{#morte_s160_r12865}':
            # a368 # r12865
            jump creed_s15  # EXTERN

        '"정보를 주어 고맙소. 안녕히 계시오."{#morte_s160_r12866}':
            # a369 # r12866
            jump creed_s59  # EXTERN


# s161 # say12627
label morte_s161: # -
    nr '"죽었어, 대장… 죽었단 말이야."{#morte_s161_}'

    menu:
        '"아… 당신이 전에 한 죽은 쥐에 대해 돈을 지불하는 사람들에 관한 얘기는 정확히 어떤 것이었소?"{#morte_s161_r12867}':
            # a370 # r12867
            jump creed_s18  # EXTERN

        '"알겠소. 다른 질문이 있소…"{#morte_s161_r12868}':
            # a371 # r12868
            jump creed_s15  # EXTERN

        '"알겠소. 안녕히 계시오."{#morte_s161_r12869}':
            # a372 # r12869
            jump creed_s59  # EXTERN


# s162 # say13748
label morte_s162: # -
    nr '"가지가 너무 많이 꺾인 나무로군." 모트는 눈알을 희번덕거린다. "카오시텍츠와 얘기를 하는 건 무의미해, 대장. 놈들은 미치광이야."{#morte_s162_}'

    menu:
        '"카오시텍트?"{#morte_s162_r13774}' if morteLogic.r13774_condition():
            # a373 # r13774
            $ morteLogic.r13774_action()
            jump morte_s163

        '"카오시텍트가 어떤 자들인지 다시 말해주겠나?"{#morte_s162_r13775}' if morteLogic.r13775_condition():
            # a374 # r13775
            $ morteLogic.r13775_action()
            jump morte_s163

        '"그로부터 뭔가를 배울 수 있으리라 생각했는데. 관두세. 가세."{#morte_s162_r13776}' if morteLogic.r13776_condition():
            # a375 # r13776
            $ morteLogic.r13776_action()
            jump morte_dispose


# s163 # say13749
label morte_s163: # from 162.0 162.1
    nr '"그들은 우두머리가 오래 가지 못한다는 것 말고는… 아무런 규칙도 없는 „당파“야. 그들은 „카오스맨“이라고도 불려. 그 이유는 설명할 필요도 없겠지."{#morte_s163_}'

    menu:
        '"그들은 어떻게 새 멤버를 얻나?"{#morte_s163_r13777}':
            # a376 # r13777
            jump morte_s164

        '"알겠네. 가세."{#morte_s163_r13778}':
            # a377 # r13778
            jump morte_dispose


# s164 # say13750
label morte_s164: # from 163.0
    nr '"마치 파리가 꼬이는 것처럼 새로운 멤버들이 모여들어… 충분히 미쳤거나 혼돈스러운 놈들이 말이야. 아마 신규 멤버를 모집하는 자도 없을 거야… 하지만 녀석들에 대해 확실히 말할 수 있는 건 아무 것도 없으니까."{#morte_s164_}'

    menu:
        '"알겠네. 정보를 주어 고맙네."{#morte_s164_r13779}':
            # a378 # r13779
            jump morte_dispose


# s165 # say13828
label morte_s165: # -
    nr '"가지가 너무 많이 꺾인 나무로군." 모트는 눈알을 희번덕거린다. "카오시텍츠와 얘기를 하는 건 무의미해, 대장. 놈들은 미치광이야."{#morte_s165_}'

    menu:
        '"카오시텍트?"{#morte_s165_r13986}' if morteLogic.r13986_condition():
            # a379 # r13986
            $ morteLogic.r13986_action()
            jump morte_s166

        '"카오시텍트가 어떤 자들인지 다시 말해주겠나?"{#morte_s165_r13987}' if morteLogic.r13987_condition():
            # a380 # r13987
            $ morteLogic.r13987_action()
            jump morte_s166

        '"그로부터 뭔가를 배울 수 있으리라 생각했는데. 관두세. 가세."{#morte_s165_r13988}' if morteLogic.r13988_condition():
            # a381 # r13988
            $ morteLogic.r13988_action()
            jump morte_dispose


# s166 # say13829
label morte_s166: # from 165.0 165.1
    nr '"그들은 우두머리가 오래 가지 못한다는 것 말고는… 아무런 규칙도 없는 „당파“야. 그들은 „카오스맨“이라고도 불려. 그 이유는 설명할 필요도 없겠지."{#morte_s166_}'

    menu:
        '"그들은 어떻게 새 멤버를 얻나?"{#morte_s166_r13989}' if morteLogic.r13989_condition():
            # a382 # r13989
            jump morte_s167

        '"알겠네. 그럼 가세."{#morte_s166_r13990}':
            # a383 # r13990
            jump morte_dispose


# s167 # say13830
label morte_s167: # from 166.0
    nr '"마치 파리가 꼬이는 것처럼 새로운 멤버들이 모여들어… 충분히 미쳤거나 혼돈스러운 놈들이 말이야. 아마 신규 멤버를 모집하는 자도 없을 거야… 하지만 녀석들에 대해 확실히 말할 수 있는 건 아무 것도 없으니까."{#morte_s167_}'

    menu:
        '"알겠소. 정보를 주어 고맙소."{#morte_s167_r13991}':
            # a384 # r13991
            jump morte_dispose


# s168 # say14075
label morte_s168: # -
    nr '"좋아 그럼…" 모트는 당신에게 조용히 말한다. "가자고, 대장. 이 더스티는 비료나 되라고 하고."{#morte_s168_}'

    menu:
        '"좋네. 여기서 나가세."{#morte_s168_r14275}' if morteLogic.r14275_condition():
            # a385 # r14275
            jump await_s6  # EXTERN

        '"좋네, 여기서 나가세."{#morte_s168_r14276}' if morteLogic.r14276_condition():
            # a386 # r14276
            jump await_s6  # EXTERN

        '"좋네, 여기서 나가세."{#morte_s168_r14277}' if morteLogic.r14277_condition():
            # a387 # r14277
            jump await_s6  # EXTERN

        '"좋네, 여기서 나가세."{#morte_s168_r14278}' if morteLogic.r14278_condition():
            # a388 # r14278
            jump await_s15  # EXTERN


# s169 # say15339
label morte_s169: # -
    nr '"저 잘난 체하는 놈을 주 동강 내라고, 보스! 본때를 보여주라고!"{#morte_s169_}'

    jump adyzoel_s19  # EXTERN


# s170 # say15340
label morte_s170: # -
    nr '"그래, 대답을 해!"{#morte_s170_}'

    jump adyzoel_s13  # EXTERN


# s171 # say15341
label morte_s171: # -
    nr '"난 덩치가 큰 흉터투성이 사내에게 동전 열 닢을 걸겠어!" 모트는 가까이 다가와 속삭인다. "그건 대장이야. 우릴 실망시키지 말라고."{#morte_s171_}'

    jump adyzoel_s20  # EXTERN


# s172 # say15342
label morte_s172: # -
    nr '"좋아, 대장. 이번에는 놈을 혼내 주라고. 비겁하게 싸워도 좋아!"{#morte_s172_}'

    jump adyzoel_s19  # EXTERN


# s173 # say15343
label morte_s173: # -
    nr '"그래, 이 건방지고 잘난 체하는 엘리트주의자야… 그가 하는 말은 들었지!"{#morte_s173_}'

    jump adyzoel_s32  # EXTERN


# s174 # say15344
label morte_s174: # -
    nr '"*내*가 누구냐고? 흥! 난 네 아버지였을 수도 있지만 그 원숭이가 날 위층에서 때렸 거든."{#morte_s174_}'

    menu:
        '"모트, 조용하게."{#morte_s174_r15490}':
            # a389 # r15490
            jump morte_s175

        '모트가 계속하도록 내버려 둔다.{#morte_s174_r15491}':
            # a390 # r15491
            jump morte_s175


# s175 # say15345
label morte_s175: # from 174.0 174.1
    nr '"뭐가 문제지, 공주님? 할 말이 없나? 파리가 네 목구멍으로 들어가기 전에 그 내려간 턱이나 들어 올리라고! 그래, 무슨 말인지 알겠지? 네 야한 브래지어를 챙겨 가지고 네가 있어야 할 곳인 네 어머니의 역겨운 스커트 속으로 기어 들어가라고! 그리고 그년에게 내 안부를 전하는 걸 잊지 말도록!"{#morte_s175_}'

    menu:
        '"모트, 닥쳐. *당장.*"{#morte_s175_r15492}':
            # a391 # r15492
            $ morteLogic.r15492_action()
            jump morte_s176

        '모트가 계속하도록 내버려 둔다.{#morte_s175_r15493}':
            # a392 # r15493
            jump morte_s177


# s176 # say15346
label morte_s176: # from 175.0
    nr '"허? 미안해, 대장. 난 저런 자식을 보면 참을 수가 없어."{#morte_s176_}'

    jump adyzoel_s33  # EXTERN


# s177 # say15347
label morte_s177: # from 175.1
    nr '"내가 아는 게 그 정도라면 나는-"{#morte_s177_}'

    jump adyzoel_s33  # EXTERN


# s178 # say15348
label morte_s178: # -
    nr '"뭐? 난 미미르에 불과하다고, 대장! 난 „결투“를 할 수가 없어!"{#morte_s178_}'

    $ morteLogic.s178_action()
    jump adyzoel_s35  # EXTERN


# s179 # say15349
label morte_s179: # -
    nr '"그건… 일종의 말하는 백과사전이야. 그 일에 대해선 말하고 싶지가 않아. 좀 부끄럽거든, 정말이야."{#morte_s179_}'

    if morteLogic.s179_condition():
        $ morteLogic.s179_action()
        jump adyzoel_s36  # EXTERN
    menu:
        '"하지만 자네는 미미르가 아니네, 모트."{#morte_s179_r65537}' if morteLogic.r65537_condition():
            # a393 # r65537
            jump adyzoel_s36  # EXTERN


# s180 # say15350
label morte_s180: # -
    nr '"이봐, 대장… 놈을 그렇게 그냥 보내 줄 거여? 가서 그 좀스러운 방탕자를 혼내주자고! 대장이 놈을 잡으면 난 그의 눈을 공격할게!"{#morte_s180_}'

    menu:
        '"자네가 옳네, 놈을 해치우세."{#morte_s180_r15494}':
            # a394 # r15494
            jump adyzoel_s19  # EXTERN

        '"지금은 그럴 때가 아니네, 모트. 가세."{#morte_s180_r15495}':
            # a395 # r15495
            $ morteLogic.r15495_action()
            jump morte_dispose


# s181 # say16613
label morte_s181: # from 185.0
    nr '"허? 그래, 대장. 하라는 대로 하지."{#morte_s181_}'

    menu:
        '"고맙소. 질문할 것들이 좀 있소, 통곡자…"{#morte_s181_r16881}' if morteLogic.r16881_condition():
            # a396 # r16881
            jump mftree_s28  # EXTERN

        '"난 진지하네, 모트, 노력을 해볼 수 있겠나?"{#morte_s181_r16882}' if morteLogic.r16882_condition():
            # a397 # r16882
            $ morteLogic.r16882_action()
            jump morte_s182

        '"고맙네, 모트. 안녕히 계시오, 나무를-위해-통곡하는-자여."{#morte_s181_r16883}':
            # a398 # r16883
            jump morte_dispose


# s182 # say16614
label morte_s182: # from 181.1
    nr '모트는 조용히 당신을 바라보더니 고개를 끄덕인다. "그래, 할 수도 있겠지. 만약 그게 대장한테 중요하다면 하겠어."{#morte_s182_}'

    menu:
        '"고맙소. 안나? 도울 수 있겠소?"{#morte_s182_r16884}' if morteLogic.r16884_condition():
            # a399 # r16884
            $ morteLogic.r16884_action()
            jump annah_s99  # EXTERN

        '"고맙네. 이그너스?"{#morte_s182_r16885}' if morteLogic.r16885_condition():
            # a400 # r16885
            $ morteLogic.r16885_action()
            jump ignus_s11  # EXTERN

        '"고맙네. 그레이스, 고려해 보겠소?"{#morte_s182_r16886}' if morteLogic.r16886_condition():
            # a401 # r16886
            $ morteLogic.r16886_action()
            jump grace_s14  # EXTERN

        '"고맙네. 다콘, 이 사람을 도울 수가 있겠소?"{#morte_s182_r16887}' if morteLogic.r16887_condition():
            # a402 # r16887
            $ morteLogic.r16887_action()
            jump dakkon_s74  # EXTERN

        '"고맙네. 다콘: 이 사람을 도우시오."{#morte_s182_r16888}' if morteLogic.r16888_condition():
            # a403 # r16888
            $ morteLogic.r16888_action()
            jump dakkon_s75  # EXTERN

        '"고맙네. 노돔, 도울 수 있겠소?"{#morte_s182_r16889}' if morteLogic.r16889_condition():
            # a404 # r16889
            $ morteLogic.r16889_action()
            jump nordom_s1  # EXTERN

        '"고맙네. 베일로, 도와줄 수 있겠소?"{#morte_s182_r16890}' if morteLogic.r16890_condition():
            # a405 # r16890
            $ morteLogic.r16890_action()
            jump vhail_s1  # EXTERN

        '"고맙네. 질문할 것들이 좀 있소, 통곡자…"{#morte_s182_r16891}':
            # a406 # r16891
            jump mftree_s28  # EXTERN

        '"고맙네, 모트. 안녕히 계시오, 나무를-위해-통곡하는-자여."{#morte_s182_r16892}':
            # a407 # r16892
            jump morte_dispose


# s183 # say16615
label morte_s183: # -
    nr '"글쎄, 이런 짓이 무슨 소용이 있는지 *정말* 모르겠군. 그런다고 해서 이 나무들이 살아날 건 아니라고, 대장."{#morte_s183_}'

    jump nordom_s2  # EXTERN


# s184 # say16616
label morte_s184: # -
    nr '"이런 젠장. 이런 식으로 시간을 낭비한다니 믿을 수가 없군!"{#morte_s184_}'

    jump nordom_s3  # EXTERN


# s185 # say16617
label morte_s185: # -
    nr '"이봐, 대장. 난 별난 것들을 많이 봤어… 하지만 그런 일이 정말 *가능*하다니 정말 믿을 수가 없어."{#morte_s185_}'

    menu:
        '"고맙소, 노돔. 모트? 어떻게 생각하나?"{#morte_s185_r16893}' if morteLogic.r16893_condition():
            # a408 # r16893
            $ morteLogic.r16893_action()
            jump morte_s181

        '"고맙소, 노돔. 안나? 도울 수 있겠소?"{#morte_s185_r16894}' if morteLogic.r16894_condition():
            # a409 # r16894
            $ morteLogic.r16894_action()
            jump annah_s99  # EXTERN

        '"고맙소, 노돔. 이그너스?"{#morte_s185_r16895}' if morteLogic.r16895_condition():
            # a410 # r16895
            $ morteLogic.r16895_action()
            jump ignus_s11  # EXTERN

        '"고맙소, 노돔. 그레이스, 고려해 보겠소?"{#morte_s185_r16896}' if morteLogic.r16896_condition():
            # a411 # r16896
            $ morteLogic.r16896_action()
            jump grace_s14  # EXTERN

        '"고맙소, 노돔. 다콘, 이 사람을 도울 수가 있겠소?"{#morte_s185_r16897}' if morteLogic.r16897_condition():
            # a412 # r16897
            $ morteLogic.r16897_action()
            jump dakkon_s74  # EXTERN

        '"고맙소, 노돔. 다콘: 이 사람을 도우시오."{#morte_s185_r16898}' if morteLogic.r16898_condition():
            # a413 # r16898
            $ morteLogic.r16898_action()
            jump dakkon_s75  # EXTERN

        '"고맙소, 노돔. 베일로, 도와줄 수 있겠소?"{#morte_s185_r16899}' if morteLogic.r16899_condition():
            # a414 # r16899
            $ morteLogic.r16899_action()
            jump vhail_s1  # EXTERN

        '"고맙소, 노돔. 질문할 것들이 좀 있소, 통곡자…"{#morte_s185_r16900}':
            # a415 # r16900
            jump mftree_s28  # EXTERN

        '"정말 고맙소, 노돔. 안녕히 계시오, 나무를-위해-통곡하는-자여."{#morte_s185_r16901}':
            # a416 # r16901
            jump morte_dispose


# s186 # say16618
label morte_s186: # -
    nr '"오! 도저히 지켜볼 수가 없군!"{#morte_s186_}'

    jump ignus_s13  # EXTERN


# s187 # say17533
label morte_s187: # -
    nr '"나쁠 것 없지. 우리가 기분이 나쁠 때 놈을 걷어차면 참 재미있겠지, 안 그래?" 흠… 뭐 적어도 대장이 나 대신 걷어차 줄 수는 있겠지. 나도 그 뜨거운 석탄으로 쑤시면 4.5 미터를 뛴다는 걸 보고 싶어!"{#morte_s187_}'

    menu:
        '"어떻게 생각하오, 안나?"{#morte_s187_r17583}' if morteLogic.r17583_condition():
            # a417 # r17583
            jump annah_s107  # EXTERN

        '"한 마리 사겠소, 상인."{#morte_s187_r17584}' if morteLogic.r17584_condition():
            # a418 # r17584
            $ morteLogic.r17584_action()
            jump 300mer5_s5  # EXTERN

        '"돈을 낭비하지 않는 것이 좋을 것 같소. 질문할 것들이 좀 있소, 상인…"{#morte_s187_r17585}' if morteLogic.r17585_condition():
            # a419 # r17585
            jump 300mer5_s2  # EXTERN

        '"사지 않겠소, 상인. 안녕히 계시오."{#morte_s187_r17586}' if morteLogic.r17586_condition():
            # a420 # r17586
            jump morte_dispose

        '"내겐 그만한 돈이 없소, 상인, 하지만 물어볼 것들이 좀 있소…"{#morte_s187_r17587}' if morteLogic.r17587_condition():
            # a421 # r17587
            jump 300mer5_s2  # EXTERN

        '"관두시오, 상인. 내겐 그만한 돈이 없소. 안녕히 계시오."{#morte_s187_r17588}' if morteLogic.r17588_condition():
            # a422 # r17588
            jump morte_dispose


# s188 # say18801
label morte_s188: # -
    nr '모트는 시선을 그에게로 돌린다. "꺼져."{#morte_s188_}'

    menu:
        '"당신은 이 해골을 가질 수가 없소."{#morte_s188_r18802}':
            # a423 # r18802
            $ morteLogic.r18802_action()
            jump colylfn_s5  # EXTERN

        '"이건 당신 해골이 아니오."{#morte_s188_r18803}':
            # a424 # r18803
            jump colylfn_s6  # EXTERN

        '진실: "그래, 해골을 가져가시오."{#morte_s188_r18804}':
            # a425 # r18804
            jump colylfn_s9  # EXTERN

        '그가 방심하면 즉시 공격한다: "그래, 해골을 가져가시오."{#morte_s188_r18805}':
            # a426 # r18805
            jump colylfn_s10  # EXTERN

        '진실: "만약 당신이 그 해골이 당신 것이라는 걸 입증할 수 있다면, 그것을 당신에게 주겠소. 그게 당연하니까."{#morte_s188_r18578}':
            # a427 # r18578
            $ morteLogic.r18578_action()
            jump colylfn_s12  # EXTERN

        '"당신은 누구요?"{#morte_s188_r18807}':
            # a428 # r18807
            jump colylfn_s13  # EXTERN

        '"내가 당신에게서 그 해골을 돈주고 사겠소. 좋소?"{#morte_s188_r18808}':
            # a429 # r18808
            $ morteLogic.r18808_action()
            jump colylfn_s14  # EXTERN


# s189 # say18809
label morte_s189: # -
    nr '모트는 사내의 손가락을 엽기적인 담배처럼 이빨로 물고 있다. 그는 손가락을 문 채로 말한다. "또 날 건드리면 네놈 손도 무사하지 못할 걸."{#morte_s189_}'

    menu:
        '"모트! 이 자에게 그의 손가락을 돌려주게."{#morte_s189_r18810}':
            # a430 # r18810
            jump morte_s190

        '"운도 나쁘군. 꺼져, 이 잡종아."{#morte_s189_r18811}':
            # a431 # r18811
            jump colylfn_s11  # EXTERN

        '"그건 좋은 교훈이 될 거요. 안녕히 계시오."{#morte_s189_r18812}':
            # a432 # r18812
            jump colylfn_s11  # EXTERN


# s190 # say18813
label morte_s190: # from 189.0
    nr '모트는 손가락을 사내를 향해 내뱉는다. 그것은 사내의 가슴에 맞고 땅바닥에 떨어진다.{#morte_s190_}'

    menu:
        '"운도 나쁘군. 꺼져, 이 잡종아."{#morte_s190_r18814}':
            # a433 # r18814
            jump colylfn_s11  # EXTERN

        '"그건 좋은 교훈이 될 거요. 안녕히 계시오."{#morte_s190_r18815}':
            # a434 # r18815
            jump colylfn_s11  # EXTERN


# s191 # say18816
label morte_s191: # -
    nr '모트는 돌아서 당신을 향한다. "대장, 이 쓰레기에겐 아무 것도 주지 마."{#morte_s191_}'

    menu:
        '"나…"{#morte_s191_r18817}':
            # a435 # r18817
            jump colylfn_s15  # EXTERN


# s192 # say18818
label morte_s192: # -
    nr '모트는 사내 쪽으로 시선을 돌린다. "너한테 얘기한 게 아니야, 이 머저리야. 너한테 얘기할 때는 너같은 놈도 이해할 수 있도록 꿀꿀거려 줄 테니까 안심하라고."{#morte_s192_}'

    jump colylfn_s16  # EXTERN


# s193 # say18819
label morte_s193: # -
    nr '"대장, 그러지 마."{#morte_s193_}'

    menu:
        '그에게 동전 다섯 닢을 준다.{#morte_s193_r18820}' if morteLogic.r18820_condition():
            # a436 # r18820
            $ morteLogic.r18820_action()
            jump colylfn_s18  # EXTERN

        '그에게 동전 쉰 닢을 준다.{#morte_s193_r18821}' if morteLogic.r18821_condition():
            # a437 # r18821
            $ morteLogic.r18821_action()
            jump colylfn_s18  # EXTERN

        '그에게 동전 백 닢을 준다.{#morte_s193_r18822}' if morteLogic.r18822_condition():
            # a438 # r18822
            $ morteLogic.r18822_action()
            jump colylfn_s18  # EXTERN

        '그에게 동전 오백 닢을 준다.{#morte_s193_r18823}' if morteLogic.r18823_condition():
            # a439 # r18823
            $ morteLogic.r18823_action()
            jump colylfn_s18  # EXTERN

        '"난 당신에게 줄만한 돈이 없소."{#morte_s193_r18824}' if morteLogic.r18824_condition():
            # a440 # r18824
            jump colylfn_s19  # EXTERN

        '"내 제의는 없던 걸로 하겠소. 이건 당신 해골이 아니오, 그리고 당신에게 줄 생각도 없소."{#morte_s193_r18825}':
            # a441 # r18825
            jump colylfn_s6  # EXTERN


# s194 # say18826
label morte_s194: # -
    nr '"난 다원 우주에서 제일 멍청한 자와 떠다니고 있군."{#morte_s194_}'

    menu:
        '"… 그리고 뭐라고, 노란 손가락? 당신으로 부터 훔치면 *뭘* 어떻게 하겠다고?"{#morte_s194_r18827}':
            # a442 # r18827
            jump colylfn_s20  # EXTERN

        '"이제 그 문제는 해결됐으니 내 질문에나 대답해주시오, 노란 손가락."{#morte_s194_r18828}':
            # a443 # r18828
            jump colylfn_s23  # EXTERN

        '"안녕히 계시오, 노란 손가락."{#morte_s194_r18829}' if morteLogic.r18829_condition():
            # a444 # r18829
            jump colylfn_s41  # EXTERN

        '"안녕히 계시오, 노란 손가락."{#morte_s194_r18830}' if morteLogic.r18830_condition():
            # a445 # r18830
            $ morteLogic.r18830_action()
            jump morte_dispose


# s195 # say18831
label morte_s195: # -
    nr '"이봐, 대장!"{#morte_s195_}'

    jump colylfn_s52  # EXTERN


# s196 # say18832
label morte_s196: # -
    nr '"내가 떠 있는 곳에서도 별로 보기가 좋지 않군."{#morte_s196_}'

    menu:
        '그에게 동전 다섯 닢을 준다.{#morte_s196_r18833}' if morteLogic.r18833_condition():
            # a446 # r18833
            $ morteLogic.r18833_action()
            jump colylfn_s53  # EXTERN

        '그에게 동전 열 닢을 준다.{#morte_s196_r18834}' if morteLogic.r18834_condition():
            # a447 # r18834
            $ morteLogic.r18834_action()
            jump colylfn_s53  # EXTERN

        '그에게 동전 쉰 닢을 준다.{#morte_s196_r18835}' if morteLogic.r18835_condition():
            # a448 # r18835
            $ morteLogic.r18835_action()
            jump colylfn_s53  # EXTERN

        '그에게 동전 백 닢을 준다.{#morte_s196_r18836}' if morteLogic.r18836_condition():
            # a449 # r18836
            $ morteLogic.r18836_action()
            jump colylfn_s53  # EXTERN

        '"내가 했던 말을 취소하겠소. 떠나시오, 그리고 다시는 내 앞에 얼씬거리지 마시오."{#morte_s196_r18837}':
            # a450 # r18837
            jump colylfn_s61  # EXTERN


# s197 # say19031
label morte_s197: # -
    nr '"이봐, 덩치 큰 친구. 벽 속의 당신 친구는 잘 지내고 있어?"{#morte_s197_}'

    jump ojo_s11  # EXTERN


# s198 # say19032
label morte_s198: # -
    nr '모트는 고개를 숙인다. "대장 마음대로 하라고."{#morte_s198_}'

    menu:
        '"좋소. 오조, 질문할 것이 있소."{#morte_s198_r19033}':
            # a451 # r19033
            jump ojo_s12  # EXTERN

        '"괜찮네. 가세."{#morte_s198_r19034}':
            # a452 # r19034
            jump morte_dispose


# s199 # say19551
label morte_s199: # -
    nr '"와우, 대장… 정말 예쁘군, 안 그래? 아무 데서나 저런 미인을 만날 수 있는 건 아니라고."{#morte_s199_}'

    menu:
        '"여자든 아니든 간에 난 썩어가는 시체에게는 별 매력을 느끼지 못하네, 모트."{#morte_s199_r19666}':
            # a453 # r19666
            jump morte_s200

        '"글쎄, 만약 그 „역겹고, 구더기투성이이며, 그리고 썩어 가는“ 시체만 어떻게 할 수 있다면…"{#morte_s199_r19667}':
            # a454 # r19667
            jump morte_s201


# s200 # say19552
label morte_s200: # from 199.0
    nr '모트는 해골 안에서 눈알을 굴린다. "허! 언젠가는 대장도 내 말을 이해하게 될 거라고."{#morte_s200_}'

    menu:
        '그를 무시하고 좀비에게 인사한다.{#morte_s200_r19668}' if morteLogic.r19668_condition():
            # a455 # r19668
            jump zomcitf_s1  # EXTERN

        '그를 무시하고 좀비에게 인사한다.{#morte_s200_r19669}' if morteLogic.r19669_condition():
            # a456 # r19669
            jump zomcitf_s3  # EXTERN


# s201 # say19553
label morte_s201: # from 199.1
    nr '"그래, 보라고, 내가 얘기했… 이봐!" 모트는 돌아서 당신을 마주본다. "나한테 빈정대는 거야?"{#morte_s201_}'

    menu:
        '그를 무시하고 좀비에게 인사한다.{#morte_s201_r19670}' if morteLogic.r19670_condition():
            # a457 # r19670
            jump zomcitf_s1  # EXTERN

        '그를 무시하고 좀비에게 인사한다.{#morte_s201_r19671}' if morteLogic.r19671_condition():
            # a458 # r19671
            jump zomcitf_s3  # EXTERN


# s202 # say19681
label morte_s202: # -
    nr '" 에… 그… 것하고는 얘기하지 않는 게 좋을 걸."{#morte_s202_}'

    menu:
        '"왜지, 모트?"{#morte_s202_r19691}':
            # a459 # r19691
            jump morte_s203

        '"그럼 좋네. 가세."{#morte_s202_r19692}':
            # a460 # r19692
            jump morte_dispose

        '모트를 무시하고 굴에게 인사한다.{#morte_s202_r19693}':
            # a461 # r19693
            jump ghocitm_s1  # EXTERN


# s203 # say19682
label morte_s203: # from 202.0
    nr '"그들도 한때는 인간이었어… 하지만 그들, 또는 그들의 선조가 시체를 먹었고 그 결과로 저 꼴이 된 거지. 정말 역겨운 얘기야, 대장… 그들은 동물과 별로 다를 것이 없어. 놈들은 *워험한* 동물이야."{#morte_s203_}'

    menu:
        '"그럼 좋네. 가세."{#morte_s203_r19694}':
            # a462 # r19694
            jump morte_dispose

        '"그래도 난 그와 얘기를 해야겠네."{#morte_s203_r19695}':
            # a463 # r19695
            jump ghocitm_s1  # EXTERN


# s204 # say19702
label morte_s204: # -
    nr '" 에… 그… 것하고는 얘기하지 않는 게 좋을 걸."{#morte_s204_}'

    menu:
        '"난 놀랐네, 모트… 그것은 언데드에 여자일세. 대개 그거면 자네에겐 충분하지 않나?"{#morte_s204_r19713}':
            # a464 # r19713
            jump morte_s206

        '"왜지, 모트?{#morte_s204_r19714}':
            # a465 # r19714
            jump morte_s205

        '"그럼 좋네. 가세."{#morte_s204_r19715}':
            # a466 # r19715
            jump morte_dispose

        '모트를 무시하고 굴에게 인사한다.{#morte_s204_r19716}':
            # a467 # r19716
            jump ghocitf_s1  # EXTERN


# s205 # say19703
label morte_s205: # from 204.1 206.0
    nr '"그들도 한때는 인간이었어… 하지만 그들, 또는 그들의 선조가 시체를 먹었고 그 결과로 저 꼴이 된 거지. 정말 역겨운 얘기야, 대장… 그들은 동물과 별로 다를 것이 없어. 놈들은 *워험한* 동물이야."{#morte_s205_}'

    menu:
        '"그럼 좋네. 가세."{#morte_s205_r19717}':
            # a468 # r19717
            jump morte_dispose

        '"그래도 난 그녀와 얘기를 해야겠네."{#morte_s205_r19718}':
            # a469 # r19718
            jump ghocitf_s1  # EXTERN


# s206 # say19704
label morte_s206: # from 204.0
    nr '"그건 같은 게 아니라고, 대장…"{#morte_s206_}'

    jump morte_s205


# s207 # say20469
label morte_s207: # -
    nr '"이 늙은이는 장님에다가 귀도 거의 먹었다고."{#morte_s207_}'

    jump marta_s9  # EXTERN


# s208 # say20470
label morte_s208: # -
    nr '"내장이라는 의미인 것 같아. 그 의미였기를 바래."{#morte_s208_}'

    jump marta_s15  # EXTERN


# s209 # say20471
label morte_s209: # -
    nr '모트는 마타 쪽으로 돌아선다. "그래, „물건들.“" 그는 다시 당신 쪽으로 돌아선다. "다 의미론의 문제지."{#morte_s209_}'

    menu:
        '"마타, 왜 당신은 시체로부터 이빨과 꿰맨 실을 빼내는 거요?"{#morte_s209_r20612}' if morteLogic.r20612_condition():
            # a470 # r20612
            $ morteLogic.j20538_s209_r20612_action()
            $ morteLogic.r20612_action()
            jump marta_s16  # EXTERN

        '"마타, 왜 당신은 시체로부터 이빨과 꿰맨 실을 빼내는 거요?"{#morte_s209_r20613}' if morteLogic.r20613_condition():
            # a471 # r20613
            $ morteLogic.j20538_s209_r20613_action()
            jump marta_s16  # EXTERN

        '"어… 좋소. 이만 떠나야겠소, 마타. 안녕히 계시오."{#morte_s209_r20614}':
            # a472 # r20614
            jump morte_dispose


# s210 # say20472
label morte_s210: # -
    nr '"난 이 짓거리를 보지 *않을* 거야."{#morte_s210_}'

    jump marta_s24  # EXTERN


# s211 # say21602
label morte_s211: # -
    nr '"이런 염병할! 다버스로군!"{#morte_s211_}'

    menu:
        '"무슨 일인가?"{#morte_s211_r24695}':
            # a473 # r24695
            jump morte_s212


# s212 # say21603
label morte_s212: # from 211.0
    nr '"그는 다버스야. 그들은 퍼즐과 같은 기호로 „말하지.“ 만약 그가 무슨 말을 하는지 모르겠다면 번역해 줄 토박이를 찾거나 그와 의사소통을 할 방법을 찾는 게 좋을 걸. 정말 짜증나는 놈들이지. 내 생각에 놈들은 말을 할 수 있으면서도 일부로 퍼즐을 내서 다른 사람들을 골탕먹이려는 것 같아."{#morte_s212_}'

    menu:
        '"„다버스“란 무엇안가?"{#morte_s212_r24696}':
            # a474 # r24696
            jump morte_s213


# s213 # say21604
label morte_s213: # from 212.0
    nr '"들리는 얘기로는 그들은 레이디 오브 페인의 청소부라는군. 그들은 레이디의 기분에 따라 시길을 부수거나 수리하지. 그들은 시체 파리보다도 징그럽다고." 모트는 한숨을 쉰다. "하지만 다버스는 때려죽일 수도 없어, 그러면 레이디가… 화를 낼 테니."{#morte_s213_}'

    menu:
        '"„레이디 오브 페인?“ 그게 누군가?"{#morte_s213_r24697}' if morteLogic.r24697_condition():
            # a475 # r24697
            $ morteLogic.r24697_action()
            jump morte_s214

        '"내게 레이디 오브 페인에 대해 어떤 얘기를 해줄 수 있겠소?"{#morte_s213_r24698}' if morteLogic.r24698_condition():
            # a476 # r24698
            jump morte_s214

        '"알겠소."{#morte_s213_r24699}' if morteLogic.r24699_condition():
            # a477 # r24699
            jump fell_s8  # EXTERN


# s214 # say21605
label morte_s214: # from 213.0 213.1
    nr '"그녀는 이 도시의 지배자야. 대장도 그녀를 보면 알 거야. 그녀의 얼굴 주변에는 칼날들이 달렸고, 그녀는 거인만큼이나 거대하며, 저 친구들처럼 공중에 떠다니지." 모트는 당신들 둘을 바라보고 있는 다버스를 가리킨다. "아무도 그녀에 대해서 자세히 알지는 못해… 그녀는 거의 말을 하지 않아. 대장이 알아야 할 건 그녀를 화나게 해서는 안 된다는 것 뿐이야. 이건 내 충고인데, 만약 그녀를 보게 되면 도망치라고."{#morte_s214_}'

    menu:
        '"어… 잠깐 기다리게. 자넨 다버스들은 떠다닌다고 했네. 그런데 이 자는 땅 위를 걷고 있지 않은가?"{#morte_s214_r24700}' if morteLogic.r24700_condition():
            # a478 # r24700
            jump morte_s215

        '"어… 잠깐 기다리게. 자넨 다버스들은 떠다닌다고 했네. 그런데 이 자는 땅 위를 걷고 있지 않은가?"{#morte_s214_r24701}' if morteLogic.r24701_condition():
            # a479 # r24701
            jump morte_s215

        '"알겠소."{#morte_s214_r24702}':
            # a480 # r24702
            jump fell_s8  # EXTERN


# s215 # say21606
label morte_s215: # from 214.0 214.1
    nr '모트는 다버스를 흘긋 보더니 눈을 크게 뜬다. "아하! 난 너희들 염소 대가리들도 걸을 수 있는 줄 진작부터 알고 있었지!" 모트는 즐거워하며 당신 쪽으로 고개를 돌린다. "하! 이 녀석은 땅 위로 떠다닐 정도로 고상하지 않은 모양이야."{#morte_s215_}'

    menu:
        '"그럴지도…"{#morte_s215_r24703}':
            # a481 # r24703
            jump fell_s8  # EXTERN


# s216 # say21607
label morte_s216: # -
    nr '모트는 조롱한다. "이 떠다니는 염소 대가리들이 하는 말을 해석하느니 차라리 타나리 창자를 걸러내는 게 났지. 통역을 원해? 시길 토박이를 찾아보라고."{#morte_s216_}'

    menu:
        '"알겠네."{#morte_s216_r24704}':
            # a482 # r24704
            jump fell_s8  # EXTERN


# s217 # say21608
label morte_s217: # -
    nr '모트는 조롱한다. "이 떠다니는 염소 대가리들이 하는 말을 해석하느니 차라리 타나리 창자를 걸러내는 게 났지. 통역을 원해? 여기 있는 휜들링 계집에게 부탁하라고." 그는 안나를 가리킨다. "그녀는 벌통 토박이니까."{#morte_s217_}'

    menu:
        '"그렇게 하도록 하지…"{#morte_s217_r24705}':
            # a483 # r24705
            jump fell_s8  # EXTERN


# s218 # say21609
label morte_s218: # -
    nr '모트는 조롱한다. "이 떠다니는 염소 대가리들이 하는 말을 해석하느니 차라리 타나리 창자를 걸러내는 게 났지. 통역을 원해?" 그는 다콘을 가리킨다. "여기 있는 „나는 잘났으니 너희들 따위와는 얘기를 안 해“하는 양반에게 부탁하라고."{#morte_s218_}'

    menu:
        '"그렇게 하도록 하지…"{#morte_s218_r24706}':
            # a484 # r24706
            jump fell_s8  # EXTERN


# s219 # say21610
label morte_s219: # -
    nr '모트는 조롱한다. "이 떠다니는 염소 대가리들이 하는 말을 해석하느니 차라리 타나리 창자를 걸러내는 게 났지. 통역을 원해? 타나리에게 부탁하라고." 그는 훨-후럼-그레이스를 가리킨다. "아마 그녀는 이 친구들하고 늘 대화를 나누고 있을 거라고."{#morte_s219_}'

    menu:
        '"그렇게 하도록 하지…"{#morte_s219_r24707}':
            # a485 # r24707
            jump fell_s8  # EXTERN


# s220 # say22061
label morte_s220: # externs soego_s93
    nr '"당신은 그들을 죽이고 싶은 거겠지. 유정은 더스트맨을 위협하니까."{#morte_s220_}'

    menu:
        '"그 밖에도 물어보고 싶은 것들이 좀 있소…"{#morte_s220_r22062}':
            # a486 # r22062
            jump soego_s83  # EXTERN

        '"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."{#morte_s220_r22063}':
            # a487 # r22063
            jump morte_dispose


# s221 # say22849
label morte_s221: # -
    nr '모트는 당신을 쳐다보고 고개를 젓는다{#morte_s221_}'

    menu:
        '"그건 뭔가, 입방체 영웅? 모트의 바보 같은 해골? 그는 바보야, 그렇지 않나, 입방체 영웅?"{#morte_s221_r22850}':
            # a488 # r22850
            $ morteLogic.r22850_action()
            jump morte_s222

        '입방체를 치운다.{#morte_s221_r22851}':
            # a489 # r22851
            jump morte_dispose


# s222 # say22852
label morte_s222: # from 221.0
    nr '"이봐! 녀석은 그런 말을 하지 않았어!"{#morte_s222_}'

    menu:
        '"아니, 그랬다고! 방금 그렇게 얘기를 했어!"{#morte_s222_r22853}':
            # a490 # r22853
            $ morteLogic.r22853_action()
            jump morte_s223

        '입방체를 치운다.{#morte_s222_r22854}':
            # a491 # r22854
            jump morte_dispose


# s223 # say22855
label morte_s223: # from 222.0
    nr '"뭐?! 내게 그걸 줘!"{#morte_s223_}'

    menu:
        '"아니, 그는 내 것이네, 그는 나하고만 놀 거야. 아닌가, 입방체 영웅? 그래, 그렇다고!"{#morte_s223_r22856}':
            # a492 # r22856
            $ morteLogic.r22856_action()
            jump morte_s224

        '입방체를 치운다.{#morte_s223_r22857}':
            # a493 # r22857
            jump morte_dispose


# s224 # say22858
label morte_s224: # from 223.0
    nr '"나는. 그걸. 잠시. 손에. 쥐고. 싶을. 뿐이야."{#morte_s224_}'

    menu:
        '"하지만 자네에겐 손이 없네."{#morte_s224_r22859}':
            # a494 # r22859
            jump morte_s225

        '입방체를 치운다.{#morte_s224_r22860}':
            # a495 # r22860
            jump morte_dispose


# s225 # say22861
label morte_s225: # from 224.0
    nr '"이빨로 물고 있으면 돼."{#morte_s225_}'

    menu:
        '"아니, 지금은 치우는 것이 좋을 것 같네."{#morte_s225_r22862}':
            # a496 # r22862
            jump morte_s226


# s226 # say22863
label morte_s226: # from 225.0
    nr '"나는 그 모드론 입방체를 박살낼 거야."~ [MRT251]{#morte_s226_}'

    menu:
        '"뭔가 들었나, 입방체 영웅? 나도 못 들었어!"{#morte_s226_r22864}':
            # a497 # r22864
            jump morte_dispose


# s227 # say22892
label morte_s227: # -
    nr '"오오!" 크래독이 화내는 욕설을 퍼붓는 것을 들으며 모트는 이빨을 딱딱거린다… 모트는 크래독이 하는 욕을 머릿속에 암기하려는 듯하다.~ [MRT387]{#morte_s227_}'

    jump craddo_s15  # EXTERN


# s228 # say24174
label morte_s228: # -
    nr '"이봐, 보스 난 정말 그가 말을 하다가… 잠시… 멈추는… 데는… 정말… 질렸어… 이제… 그가 입을… 다문 건… 정말 다행이야."{#morte_s228_}'

    menu:
        '"정말 웃기는군, 모트. 가세."{#morte_s228_r24175}':
            # a498 # r24175
            jump morte_dispose


# s229 # say24176
label morte_s229: # -
    nr '"보스, 무한한 물을 가지고 대체 우리에게 무슨 필요가 있지? 어디 불이라도 났어?"{#morte_s229_}'

    menu:
        '"나중에 쓸모가 있을지도 모르네, 모트. 가세."{#morte_s229_r24177}':
            # a499 # r24177
            jump morte_dispose

        '"그건 당연히 해야 할 일이네, 모트."{#morte_s229_r24178}':
            # a500 # r24178
            jump morte_s230


# s230 # say24179
label morte_s230: # from 229.1
    nr '"해야 할 옳은 일? 혹시 잊어먹었다면 상기시켜주겠는데, 대장에게는 스스로 해결해야 할 문제가 있다고! 하지만 결정권을 쥐고 있는 건 대장이니까 하고 싶은 대로 하라고."{#morte_s230_}'

    menu:
        '"승인을 해주어 고맙군, 모트. 가세."{#morte_s230_r24180}':
            # a501 # r24180
            jump morte_dispose


# s231 # say24903
label morte_s231: # -
    nr '"이봐… 괜찮아? 난 대장이 정말로 죽은 줄 알았다고."{#morte_s231_}'

    menu:
        '"Qu…? 당신은 누구요?"{#morte_s231_r24904}':
            # a502 # r24904
            $ morteLogic.r24904_action()
            jump morte_s232

        '"자네가 하고 싶은 말들이 무수히 많다는 건 나도 아네, 모트, 하지만 입을 좀 닥치고 날 그냥 따르게."{#morte_s231_r24905}':
            # a503 # r24905
            $ morteLogic.r24905_action()
            jump morte_dispose


# s232 # say24906
label morte_s232: # from 231.0
    nr '"어… 내가 누구냐고?. "*당신*부터 먼저 대답하는 게 어때? 당신은 누구지?"{#morte_s232_}'

    menu:
        '"모르겠네… 기억을 할 수가 없어."{#morte_s232_r24907}':
            # a504 # r24907
            jump morte_s233

        '"내가 먼저 질문했네, 해골."{#morte_s232_r24908}':
            # a505 # r24908
            jump morte_s234


# s233 # say24909
label morte_s233: # from 232.0 234.0 235.0
    nr '"자기 *이름*도 기억을 못해? 헤, 다음 번에 거리에 나가 밤을 보낼 때는 술 좀 작작 마시라고. 내 이름은 모트야. 나도 여기 갇혔어.{#morte_s233_}'

    menu:
        '"갇혀?"{#morte_s233_r24910}':
            # a506 # r24910
            jump morte_s236


# s234 # say24911
label morte_s234: # from 232.1
    nr '"그래, 내가 *나중에* 물었어. 당신 이름은 뭐지?"{#morte_s234_}'

    menu:
        '"모르겠네… 기억을 할 수가 없어."{#morte_s234_r24912}':
            # a507 # r24912
            jump morte_s233

        '"자네부터 말하게, 해골. 이건 내가 자네에게 주는 마지막 기회네."{#morte_s234_r24913}':
            # a508 # r24913
            jump morte_s235


# s235 # say24914
label morte_s235: # from 234.1
    nr '"정말 당신은 젖은 로프만큼이나 빡빡하군. 좋아, 좋아… 여기선 내가 참지… 나는 모트야. 당신은 누구지?"{#morte_s235_}'

    menu:
        '"모르겠네… 기억을 할 수가 없어."{#morte_s235_r24915}':
            # a509 # r24915
            jump morte_s233


# s236 # say24916
label morte_s236: # from 233.0
    nr '"그래, 당신은 일어나 여길 돌아다닐 시간이 없었으니 내가 말해주지. 모든 문을 다 시험해봤지만 소용이 없었어. 이 방은 정조대만큼이나 단단히 잠겨 있어."{#morte_s236_}'

    menu:
        '"우린 어디에… 갇힌 건가? 이 곳은 대체 어딘가?"{#morte_s236_r24917}':
            # a510 # r24917
            jump morte_s237


# s237 # say24918
label morte_s237: # from 236.0
    nr '"그것은 „시체안치소“라고 불리지… 임신한 거미만큼이나 매력적인 모양새의 커다란 검은 건물이라고."{#morte_s237_}'

    menu:
        '"„시체안치소?" 난… 죽었나?"{#morte_s237_r24919}':
            # a511 # r24919
            jump morte_s238


# s238 # say24920
label morte_s238: # from 237.0
    nr '"내 입장에서는 아니야. 하지만 당신 몸은 흉터투성이로군. 어떤 얼간이가 당신 몸에 나이프로 그림이라도 그린 모양이야. 놈이 당신을 끝장내려고 다시 올지도 모르니 그만큼 여기서 도망쳐야 할 이유가 는 셈이지."{#morte_s238_}'

    menu:
        '"어떻게 하면 여기서 나갈 수가 있겠나?"{#morte_s238_r24921}':
            # a512 # r24921
            jump morte_s239


# s239 # say24922
label morte_s239: # from 238.0
    nr '"모든 문이 다 잠겼으니 열쇠를 찾아야 해. 이 방 안을 활보하고 있는 시체들 중 하나가 가지고 있을 가능성이 높아."{#morte_s239_}'

    menu:
        '"걸어다니는 시체들?"{#morte_s239_r24923}':
            # a513 # r24923
            jump morte_s240


# s240 # say24924
label morte_s240: # from 28.0 239.0
    nr '"그래, 시체안치소의 관리인들은 시체들을 싸구려 노동력으로 활용하고 있어. 이 시체들은 돌처럼 멍청하지만 별로 위험하지는 않아. 그리고 먼저 공격하지 않는 한 공격을 하진 않아."{#morte_s240_}'

    menu:
        '"다른 방법은 없나? 단지 열쇠 하나 때문에 그들을 죽이고 싶지는 않네."{#morte_s240_r24925}':
            # a514 # r24925
            $ morteLogic.r24925_action()
            jump morte_s241

        '"그럼 나는 이러한 시체들 중 하나를 공격해서 열쇠를 빼앗아야 하나?"{#morte_s240_r24926}':
            # a515 # r24926
            jump morte_s242


# s241 # say24927
label morte_s241: # from 240.0
    nr '"그러면 그들의 기분이 상할 거라고 생각하는 거야? 그들은 이미 죽었어. 만약 당신이 긍정적인 측면에서 생각하고 싶다면 이렇게 생각하라고. 만약 당신이 그들을 죽이면 그들은 관리인들이 소생시킬 때까지는 휴식을 취할 수 있다고 말이야."{#morte_s241_}'

    menu:
        '"좋네… 그들 중 하나를 쓰러트려 열쇠를 빼앗도록 하겠네."{#morte_s241_r24928}':
            # a516 # r24928
            jump morte_s242


# s242 # say24929
label morte_s242: # from 240.1 241.0
    nr '"그러기 전에 먼저 무장부터 하라고. 이 근처의 선반에 메스가 하나 있을 거야.  주: 방안을 뒤져 좀비를 공격할 무기를 찾으시오.{#morte_s242_}'

    menu:
        '"알았네. 찾아보도록 하지."{#morte_s242_r24930}':
            # a517 # r24930
            jump morte_s243


# s243 # say24931
label morte_s243: # from 242.0
    nr '"마지막으로 한가지 더: 이 시체들은 거북이처럼 느리지만 놈들에게 한 대 맞으면 마치 공성용 망치와 키스하는 기분이 들거야. 불리해지면 튀라고. 당신은 달릴 수 있지만 놈들은 그럴 수가 없으니까. 회복할 동안 놈들과는 일정 거리를 유지하라고."  ^NNOTE: <도주> 만약 죽을 위험에 처하게 되면 달리기를 이용해 회복할 동안 좀비들로부터 일정 거리를 유지하라.^-{#morte_s243_}'

    menu:
        '"알았네. 충고를 해주어 고맙네."{#morte_s243_r24932}':
            # a518 # r24932
            $ morteLogic.j24933_s243_r24932_action()
            $ morteLogic.r24932_action()
            jump morte_dispose


# s244 # say25962
label morte_s244: # -
    nr '"일종의 말하는 백과사전이야, 대장. 난 그 일에 대해선 말하고 싶지가 않아."{#morte_s244_}'

    if morteLogic.s244_condition():
        $ morteLogic.s244_action()
        jump cwrushf_s27  # EXTERN
    menu:
        '"하지만 자네는 미미르가 아니네, 모트."{#morte_s244_r66902}' if morteLogic.r66902_condition():
            # a519 # r66902
            jump cwrushf_s27  # EXTERN


# s245 # say25964
label morte_s245: # -
    nr '모트는 눈썹(?)을 흔들어 대며 여인 쪽으로 날아간다. "그게 전부가-"{#morte_s245_}'

    menu:
        '"그만둬, 모트."{#morte_s245_r25965}':
            # a520 # r25965
            jump morte_s246


# s246 # say25966
label morte_s246: # from 245.0
    nr '"그래, 그래. 좋다고." 모트는 눈알을 굴리며 중얼거리기 시작한다. "젠장, 차라리 죽는 게…"{#morte_s246_}'

    menu:
        '"이봐… 자네 지금 „스스로“라고 했나? 그럼 그들은 보통 그렇지 않단 얘기인가?"{#morte_s246_r25967}' if morteLogic.r25967_condition():
            # a521 # r25967
            jump cwrushf_s28  # EXTERN

        '"나는 이 여자에게 질문할 것이 있네…"{#morte_s246_r25968}':
            # a522 # r25968
            jump cwrushf_s2  # EXTERN

        '그녀를 그냥 내버려 두고 떠난다.{#morte_s246_r25969}':
            # a523 # r25969
            jump morte_dispose


# s247 # say25970
label morte_s247: # -
    nr '모트는 그녀의 말을 끊는다: "말인데, 대장, 그건 모두 미미르의 *품질*에 달렸어. 일부는 나처럼 다른 미미르보다 더 많은 마력이 부여되어 있어. 단지 그뿐이야. 그래… „자의식“이… 더 강하다는 게 옳은 표현이지."{#morte_s247_}'

    menu:
        '"흠…"{#morte_s247_r25971}':
            # a524 # r25971
            jump cwrushf_s29  # EXTERN

        '"알겠네."{#morte_s247_r25972}':
            # a525 # r25972
            jump cwrushf_s29  # EXTERN


# s248 # say25973
label morte_s248: # -
    nr '"이봐! 난 그냥 재미 좀 보려는 거라고, 대장!"{#morte_s248_}'

    jump cwrushf_s27  # EXTERN


# s249 # say27285
label morte_s249: # -
    nr '"충고를 하겠어, 대장. 여기서부터는 조용히 움직이자고. 필요 이상으로 시체들을 훼손할 필요는 없어… 특히 여자 시체들은. 또한 그들을 „죽이면“ 관리자들을 여기로 불러오는 결과를 야기할 수도 있어."{#morte_s249_}'

    menu:
        '"자네가 전에 얘기한 것 같지는 않네… 이 관리자들은 누군가?"{#morte_s249_r27303}':
            # a526 # r27303
            jump morte_s250

        '"이 곳에 있는 시체들… 그것들은 다 어디서 왔나?"{#morte_s249_r27304}':
            # a527 # r27304
            jump morte_s252

        '"왜 자네는 여자 시체들에 대해서는 신경을 쓰나?"{#morte_s249_r27305}':
            # a528 # r27305
            jump morte_s253

        '"알았네… 기억하도록 노력하겠네."{#morte_s249_r27306}':
            # a529 # r27306
            jump morte_s257


# s250 # say27286
label morte_s250: # from 249.0 252.0 256.0
    nr '"그들은 자신들을 „더스트맨“이라고 부르고 있어. 그들을 알아보는 건 쉽지. 예외없이 검은 법복을 입고 있는데다가 꼭 사후경직을 일으킨 것 같은 얼굴들을 하고 있으니까. 그들은 악귀같은 죽음 숭배자들이야. 그들은 모두 다 죽어야 한다고 믿고 있어… 그것도 빠르면 빠를수록 좋다고."{#morte_s250_}'

    menu:
        '"난 헷갈리네… 내가 탈출하는 것에 대해 더스트맨들이 왜 신경을 쓰지?"{#morte_s250_r27307}':
            # a530 # r27307
            jump morte_s251


# s251 # say27287
label morte_s251: # from 250.0
    nr '"내가 말할 때 뭘 하고 있었어?! 더스트맨은 모두가 다 죽어야 하며, 그것도 빠르면 빠를수록 좋다고 믿고 있다고 내가 이미 말했잖아. 대장이 보기엔 지금까지 우리가 본 시체들이 죽어서 더 행복해진 것 같아?"{#morte_s251_}'

    menu:
        '"내가 이 곳에서 본 시체들… 그것들은 다 어디서 온 건가?"{#morte_s251_r27308}':
            # a531 # r27308
            jump morte_s252

        '"전에 자네는 내게 *여자*시체는 죽이지 말라고 했었네. 그 이유는 뭔가?"{#morte_s251_r27309}':
            # a532 # r27309
            jump morte_s253

        '"알았네… 기억하도록 노력하겠네."{#morte_s251_r27310}':
            # a533 # r27310
            jump morte_s257


# s252 # say27288
label morte_s252: # from 249.1 251.0 256.1
    nr '"다원 우주에서는 매일 누군가 반드시 죽어, 대장. 이 얼간이들은 이 곳의 관리자들에게 사후의 시체에 대한 권리를 판 한심한 작자들의 잔해라고."{#morte_s252_}'

    menu:
        '"가르쳐 주게… 이 관리자들이란 *누구*인가?"{#morte_s252_r27311}':
            # a534 # r27311
            jump morte_s250

        '"전에 자네는 내게 *여자*시체는 죽이지 말라고 했었네. 그 이유는 뭔가?"{#morte_s252_r27312}':
            # a535 # r27312
            jump morte_s253

        '"알았네… 기억하도록 노력하겠네."{#morte_s252_r27313}':
            # a536 # r27313
            jump morte_s257


# s253 # say27289
label morte_s253: # from 249.2 251.1 252.1
    nr '"뭐- *진담*이야? 이봐, 대장, 이 죽은 아가씨들은 우리들처럼 산전수전 다 겪은 친구들에게 주어진 마지막 기회라고. 우리는 *기사도* 정신을 발휘해야 해… 열쇠를 찾으려고 그녀들을 칼로 베거나 사지를 절단하는 짓 따위는 해서는 안돼."{#morte_s253_}'

    menu:
        '"마지막 기회? 대체… 무슨 얘긴가?"{#morte_s253_r27314}':
            # a537 # r27314
            jump morte_s254


# s254 # say27290
label morte_s254: # from 253.0
    nr '"대장, 그들은 죽었어, 그리고 우리들도 죽었어… 내가 무슨 말을 하려는지 알겠어? 그래?"{#morte_s254_}'

    menu:
        '"아니… 그렇지 않네…"{#morte_s254_r27315}':
            # a538 # r27315
            jump morte_s255

        '"진담은 아니겠지."{#morte_s254_r27316}' if morteLogic.r27316_condition():
            # a539 # r27316
            jump morte_s255


# s255 # say27291
label morte_s255: # from 254.0 254.1
    nr '"대장, 우린 이미 이 절뚝거리는 아가씨들과 대화를 시작할 화제거리도 가지고 있다고. 우리들은 *모두* 적어도 한 번씩은 죽어 봤어. 그러니 우린 공통의 화제가 있는 셈이지. 그들은 우리처럼 죽은 경험이 있는 사내들을 환영할 거라고."{#morte_s255_}'

    menu:
        '"하지만… 기다리게… 전에 자네는 내가 죽지 않았다고 하지 않았었나?"{#morte_s255_r27317}':
            # a540 # r27317
            jump morte_s256


# s256 # say27292
label morte_s256: # from 255.0
    nr '"그래… 좋아. *대장*은 죽지 않았을지도 모르지만 *난* 죽었어. 그리고 나라면 여기 있는 체격 좋은 멋진 시체 아가씨들과 기꺼이 관을 함께 쓰겠어." 모트는 기대에 부푼 듯 이빨을 딱딱거리기 시작한다. "물론 그러기 위해서는 우선 관리인들이 그들을 포기해야 하는데 그럴 가능성은 희박하지…"{#morte_s256_}'

    menu:
        '"이 관리자들이 누군지 다시 얘기해주겠나?"{#morte_s256_r27318}':
            # a541 # r27318
            jump morte_s250

        '"하지만 이 시체들은 다 어디서 왔나?"{#morte_s256_r27319}':
            # a542 # r27319
            jump morte_s252

        '"알았네… 기억하도록 노력하겠네."{#morte_s256_r27320}':
            # a543 # r27320
            jump morte_s257


# s257 # say27293
label morte_s257: # from 249.3 251.2 252.2 256.2
    nr '"이봐, 대장. 대장은 죽음과 키스를 한 탓에 아직도 정신이 좀 오락가락한 것 같아. 그러니 내가 두 가지 충고를 하겠어. 첫째, 질문할 게 있으면 내게 *물어.* 알겠어?"  ^NNOTE: <SPEAKTO>^-{#morte_s257_}'

    menu:
        '"알겠네… 질문할 것이 있으면 자네에게 물어보겠네."{#morte_s257_r27321}':
            # a544 # r27321
            jump morte_s258


# s258 # say27294
label morte_s258: # from 257.0
    nr '"둘째, 대장이 겉보기의 *반*만큼이라도 건망증이 심하다면, 뭐든지 기록을 하는 습관을 기르라고. 조금이라도 중요할 것 같은 얘기를 듣게 되면 잊지 않도록 즉각 기록을 해."{#morte_s258_}'

    menu:
        '"일지에서처럼?"{#morte_s258_r27322}':
            # a545 # r27322
            jump morte_s259


# s259 # say27295
label morte_s259: # from 258.0
    nr '"그래, 일지같은 것에 말이야. 만약 대장이 현재의 위치와 같은 중요한 사안들에 대해 가물가물하게 되면 일지를 읽어 기억을 상기시키라고. 알겠어?"  ^NNOTE: 일지를 보려면 퀵 메뉴에 있는 일지 버튼을 누른다. 일지는 게임 진행 동안 자동으로 갱신된다.^-{#morte_s259_}'

    menu:
        '"알았네. 가세."{#morte_s259_r27323}':
            # a546 # r27323
            jump morte_dispose


# s260 # say27296
label morte_s260: # -
    nr '"이 근처의 선반에 메스가 하나 있을 거야. 나라면 이 주변의 시체들과 싸우기 전에 우선 그것부터 찾겠어."{#morte_s260_}'

    menu:
        '"알았네… 계속 찾아보도록 하겠네."{#morte_s260_r27324}':
            # a547 # r27324
            jump morte_dispose


# s261 # say27297
label morte_s261: # - # IF WEIGHT #8 /* Triggers after states #: 729 444 325 281 742 737 733 487 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) PartyHasItem("Scalpel") Global("ZM782_Dead_KAPUTZ","GLOBAL",0)
    nr '"좋아, 메스를 찾았군! 그럼 이제 가서 저 시체들을 처치하라고… 그리고 걱정하지마. 난 뒤에서 귀중한 전술적 조언을 해줄 테니까."{#morte_s261_}'

    menu:
        '"자네 *도움*이 필요하네, 모트."{#morte_s261_r27325}':
            # a548 # r27325
            jump morte_s262

        '"알았네."{#morte_s261_r27326}':
            # a549 # r27326
            jump morte_dispose


# s262 # say27298
label morte_s262: # from 261.0
    nr '"나는 물론 대장을 *도울* 거야. 좋은 충고는 얻기 힘든 거라고."{#morte_s262_}'

    menu:
        '"내 말뜻은 시체를 공격하는 걸 도와 달라는 거였네."{#morte_s262_r27327}':
            # a550 # r27327
            jump morte_s263

        '"그럼 좋네."{#morte_s262_r27328}':
            # a551 # r27328
            jump morte_dispose


# s263 # say27299
label morte_s263: # from 262.0
    nr '"나? 나는 낭만주의자지 군인이 아니야. 난 방해만 될 거야."{#morte_s263_}'

    menu:
        '"내가 이 시체를 공격할 때 옆에서 도와주지 않으면, 자네는 이 메스의 그 다음 목표물이 될 걸세."{#morte_s263_r27329}':
            # a552 # r27329
            jump morte_s264

        '"그럼 좋네."{#morte_s263_r27330}':
            # a553 # r27330
            jump morte_dispose


# s264 # say27300
label morte_s264: # from 263.0
    nr '"에… 좋아. 대장을 돕겠어."  주: 만약 당신이 모트가 당신의 공격에 협조하기를 바란다면, 시체를 공격할 때 두 사람 모두를 선택하면 된다. 그러면 모트도 공격에 참가할 것이다.{#morte_s264_}'

    menu:
        '"서로 이해를 하게 되어 기쁘군. 자, 해치우세."{#morte_s264_r27331}':
            # a554 # r27331
            jump morte_dispose


# s265 # say27301
label morte_s265: # -
    nr '"좋아, 방금 대장이 처치한 놈이 바로 우리가 찾고 있던 시체인 것 같군. 이제 열쇠를 찾아야 해. 그건 틀림없이 그의 몸 어딘가에 있을 거야. 일단 그걸 찾기만 하면 우린 이 곳과 작별이라고."{#morte_s265_}'

    menu:
        '"알겠네."{#morte_s265_r27332}':
            # a555 # r27332
            jump morte_dispose


# s266 # say27302
label morte_s266: # -
    nr '"좋아, 그게 바로 우리가 원하는 열쇠야. 그건 이 방의 문들 중 하나를 열 수 있을 거야."{#morte_s266_}'

    menu:
        '"그럼 열쇠를 가지고 문을 열어 보겠네."{#morte_s266_r27333}':
            # a556 # r27333
            jump morte_dispose


# s267 # say27911
label morte_s267: # -
    nr '모트는 당신 귀에다 대고 속삭인다: "변호사."{#morte_s267_}'

    jump cwcafef_s15  # EXTERN


# s268 # say27912
label morte_s268: # -
    nr '"일종의 말하는 백과사전이야, 대장. 난 그 일에 대해선 말하고 싶지가 않아."{#morte_s268_}'

    if morteLogic.s268_condition():
        $ morteLogic.s268_action()
        jump cwcafef_s50  # EXTERN
    menu:
        '"하지만 자네는 미미르가 아니네, 모트."{#morte_s268_r65536}' if morteLogic.r65536_condition():
            # a557 # r65536
            jump cwcafef_s50  # EXTERN


# s269 # say27913
label morte_s269: # -
    nr '모트는 눈썹(?)을 흔들어 대며 여인 쪽으로 날아간다. "그게 전부가-"{#morte_s269_}'

    menu:
        '"그만둬, 모트."{#morte_s269_r27914}':
            # a558 # r27914
            jump morte_s270


# s270 # say27915
label morte_s270: # from 269.0
    nr '"그래, 그래. 좋다고." 모트는 눈알을 희번덕거리며 중얼거리기 시작한다. "젠장, 차라리 죽는 게…"{#morte_s270_}'

    menu:
        '"이봐… 자네 지금 „스스로“라고 했나? 그럼 그들은 보통 그렇지 않단 얘기인가?"{#morte_s270_r27916}' if morteLogic.r27916_condition():
            # a559 # r27916
            jump cwcafef_s51  # EXTERN

        '"나는 이 여자에게 질문할 것이 있네…"{#morte_s270_r27917}':
            # a560 # r27917
            jump cwcafef_s4  # EXTERN

        '그녀를 그냥 내버려 두고 떠난다.{#morte_s270_r27918}':
            # a561 # r27918
            jump morte_dispose


# s271 # say27919
label morte_s271: # -
    nr '모트는 그녀의 말을 끊는다: "말인데, 대장, 그건 모두 미미르의 *품질*에 달렸어. 일부는 나처럼 다른 미미르보다 더 많은 마력이 부여되어 있어. 단지 그뿐이야. 그래… „자의식“이… 더 강하다는 게 옳은 표현이지."{#morte_s271_}'

    menu:
        '"흠…"{#morte_s271_r27920}':
            # a562 # r27920
            jump cwcafef_s52  # EXTERN

        '"알겠네."{#morte_s271_r27921}':
            # a563 # r27921
            jump cwcafef_s52  # EXTERN


# s272 # say27922
label morte_s272: # -
    nr '"이봐! 난 그냥 재미 좀 보려는 거라고, 대장!"{#morte_s272_}'

    jump cwcafef_s50  # EXTERN


# s273 # say28036
label morte_s273: # -
    nr '모트는 만족스러운 듯 고개를 끄덕인다. "이봐, 이 친구 꽤 하는데."{#morte_s273_}'

    menu:
        '"좋소… 당신 돈을 도로 가져가시오, 맬매너."{#morte_s273_r28041}':
            # a564 # r28041
            $ morteLogic.r28041_action()
            jump malmanr_s13  # EXTERN

        '동전 열 닢을 맬매너에게 던진다.{#morte_s273_r28042}':
            # a565 # r28042
            $ morteLogic.r28042_action()
            jump malmanr_s14  # EXTERN

        '"정말? 난 아무 소리도 듣지 못했는데, 모트. 가세."{#morte_s273_r28043}':
            # a566 # r28043
            jump malmanr_s15  # EXTERN


# s274 # say28037
label morte_s274: # -
    nr '모트는 만족스러운 듯 고개를 끄덕인다. "이봐, 이 친구 꽤 하는데."{#morte_s274_}'

    menu:
        '"좋소… 당신 돈을 도로 가져가시오, 맬매너."{#morte_s274_r28038}' if morteLogic.r28038_condition():
            # a567 # r28038
            $ morteLogic.r28038_action()
            jump malmanr_s13  # EXTERN

        '동전 서른 닢을 맬매너에게 던진다.{#morte_s274_r28039}' if morteLogic.r28039_condition():
            # a568 # r28039
            $ morteLogic.r28039_action()
            jump malmanr_s14  # EXTERN

        '"좋소… 당신 돈을 도로 가져가시오, 맬매너."{#morte_s274_r28040}' if morteLogic.r28040_condition():
            # a569 # r28040
            $ morteLogic.r28040_action()
            jump malmanr_s13  # EXTERN

        '동전 쉰 닢을 맬매너에게 던진다.{#morte_s274_r28044}' if morteLogic.r28044_condition():
            # a570 # r28044
            $ morteLogic.r28044_action()
            jump malmanr_s14  # EXTERN

        '"좋소… 당신 돈을 도로 가져가시오, 맬매너."{#morte_s274_r28045}' if morteLogic.r28045_condition():
            # a571 # r28045
            $ morteLogic.r28045_action()
            jump malmanr_s13  # EXTERN

        '동전 쉰 닢을 맬매너에게 던진다.{#morte_s274_r28046}' if morteLogic.r28046_condition():
            # a572 # r28046
            $ morteLogic.r28046_action()
            jump malmanr_s14  # EXTERN

        '"좋소… 당신 돈을 도로 가져가시오, 맬매너."{#morte_s274_r28047}' if morteLogic.r28047_condition():
            # a573 # r28047
            $ morteLogic.r28047_action()
            jump malmanr_s13  # EXTERN

        '동전 여든 닢을 맬매너에게 던진다.{#morte_s274_r28048}' if morteLogic.r28048_condition():
            # a574 # r28048
            $ morteLogic.r28048_action()
            jump malmanr_s14  # EXTERN

        '"정말? 난 아무 소리도 듣지 못했는데, 모트. 가세."{#morte_s274_r28049}':
            # a575 # r28049
            jump malmanr_s15  # EXTERN


# s275 # say28630
label morte_s275: # -
    nr '"지루할 것 같군."{#morte_s275_}'

    jump grace_s60  # EXTERN


# s276 # say28631
label morte_s276: # -
    nr '"그녀는 타나리의 일종인 서큐버스라고, 대장."{#morte_s276_}'

    jump grace_s72  # EXTERN


# s277 # say28632
label morte_s277: # -
    nr '"닥쳐, 휜들링!" 모트는 이빨을 딱딱거린다. "나는 서큐버스가 우리와 함께 여행하겠다면 대환영이야… 니가 창자에 마름쇠를 쑤셔 넣는 것만큼이나 재미가 없는 년이라는 건 세상이 다 아는 사실이야."{#morte_s277_}'

    jump annah_s166  # EXTERN


# s278 # say28633
label morte_s278: # -
    nr '"이봐, 잠깐! 차원에 대해 해박한 지식을 가지고 있는 사람은 바로 *나*라고! 그건 내 담당이야, 대장!"{#morte_s278_}'

    menu:
        '"다원 우주에 대해 해박한 지식을 가지고 있는 사람이 우리 파티에 두 사람이나 있다는 건 좋은 일이지. 뿐만 아니라 그녀는 상냥하기까지 하네, 모트."{#morte_s278_r28634}':
            # a576 # r28634
            jump morte_s279


# s279 # say28635
label morte_s279: # from 278.0
    nr '"눈에 보약이지! 우리가 아는 어떤 아가씨도 피부를 좀 화끈하게 드러내면 봐줄만 할 텐데!" 모트는 갑자기 조용해진다. "뭐, 내가 별 신경을 쓴다는 얘기는 아니지만, 얘기를 해두는 게 좋을 것 같아서 말한 거야."{#morte_s279_}'

    menu:
        '"기억해 두겠네, 모트. 이것 보시오, 그레이스 여사, 내가 너무 뻔뻔스럽다면 용서를 하시오, 하지만 우리와 함께 여행을 하겠소?"{#morte_s279_r28636}':
            # a577 # r28636
            jump grace_s79  # EXTERN


# s280 # say28637
label morte_s280: # -
    nr '"내 흉터투성이 "{#morte_s280_}'

    jump grace_s119  # EXTERN


# s281 # say28738
label morte_s281: # - # IF WEIGHT #4 /* Triggers after states #: 742 737 733 487 even though they appear after this state */ ~  Global("Morte_Stolen","GLOBAL",2) !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"고마워, 대장. 내가 다시 대장과 함께 여행을 하게 돼 얼마나 기쁜지는 말로 표현할 수도 없어." 그의 목소리는 비꼬는 기색이 역력하다. "그리고 나는 그 곳에 있는 동안 새로운 특기를 배웠다고."{#morte_s281_}'

    menu:
        '"그래, 자네가 돌아와 정말 반갑네."{#morte_s281_r28743}':
            # a578 # r28743
            $ morteLogic.r28743_action()
            jump morte_dispose

        '"미안, 친구. 나는 그에게 엄포를 놓고 싶네."{#morte_s281_r28744}' if morteLogic.r28744_condition():
            # a579 # r28744
            $ morteLogic.r28744_action()
            jump morte_s282

        '"미안, 친구. 나는 그에게 엄포를 놓고 싶네."{#morte_s281_r28745}' if morteLogic.r28745_condition():
            # a580 # r28745
            $ morteLogic.r28745_action()
            jump morte_s283


# s282 # say28739
label morte_s282: # from 281.1
    nr '"정말? 참으로 자상도 하군, 보스는. 좋은 생각이야. 대장을 조건부로 용서를 해주지. 다시 그러지만 말라고."{#morte_s282_}'

    menu:
        '"물론이지, 모트. 가세."{#morte_s282_r28746}':
            # a581 # r28746
            jump morte_dispose


# s283 # say28740
label morte_s283: # from 281.2
    nr '"왠지 대장 말을 조금도 믿을 수가 없군. 그냥 이 일이 있었다는 사실을 잊자고. 가자."{#morte_s283_}'

    menu:
        '"알았네."{#morte_s283_r28747}':
            # a582 # r28747
            jump morte_dispose

        '"모트, 난 그에게 엄포를 놓고 있었네. 어디 두고 보게."{#morte_s283_r28748}':
            # a583 # r28748
            jump morte_dispose


# s284 # say28741
label morte_s284: # -
    nr '"고마워, 대장. 당장 여기서 나가자고!" 모트는 잠시 멈춘다. "보스, 그런데… 그런데 그 친구들은 정말 뭘 알더군. 그들은 내게 멋진 걸 가르쳐 주었어."{#morte_s284_}'

    menu:
        '"가세."{#morte_s284_r28749}':
            # a584 # r28749
            jump morte_dispose


# s285 # say28962
label morte_s285: # -
    nr '"어… 대장? 전에 석상을 본 적은 있지? 그것이 말을 하지 않는다는 건 대장도 알지?"{#morte_s285_}'

    menu:
        '"이걸 생각하게, 모트: 자네는 떠나니며 말하는 해골이네, 그런데 자네가 살아 있는 석상의 가능성을 부정하나?"{#morte_s285_r28967}' if morteLogic.r28967_condition():
            # a585 # r28967
            jump morte_s286

        '"내가 만난 살라베쉬라는 메이지가 이 곳에 있다는 돌 인간에 대하여 얘기해주었소. 그가 바로 당신이오?"{#morte_s285_r28968}' if morteLogic.r28968_condition():
            # a586 # r28968
            $ morteLogic.r28968_action()
            jump quisai_s5  # EXTERN

        '"모트, 난 그냥 그를 한 번 만져보겠네…"{#morte_s285_r28969}':
            # a587 # r28969
            jump quisai_s3  # EXTERN

        '떠난다.{#morte_s285_r28970}':
            # a588 # r28970
            jump morte_dispose


# s286 # say28963
label morte_s286: # from 285.0
    nr '"글쎄… 어…흠. 그건 대장 말이 옳군."{#morte_s286_}'

    menu:
        '"내가 만난 살라베쉬라는 메이지가 이 곳에 있다는 돌 인간에 대하여 얘기해주었소. 그가 바로 당신이오?"{#morte_s286_r28971}' if morteLogic.r28971_condition():
            # a589 # r28971
            $ morteLogic.r28971_action()
            jump quisai_s5  # EXTERN

        '"그렇게 하지, 모트. 난 그냥 그를 한 번 만져보겠네…"{#morte_s286_r28972}':
            # a590 # r28972
            jump quisai_s3  # EXTERN

        '떠난다.{#morte_s286_r28973}':
            # a591 # r28973
            jump morte_dispose


# s287 # say28964
label morte_s287: # -
    nr '"해부학적으로 너무 정확해서 그런 건 아냐, 대장?{#morte_s287_}'

    menu:
        '"그건 수사학적인 질문이었네, 모트."{#morte_s287_r28974}':
            # a592 # r28974
            jump morte_s288


# s288 # say28965
label morte_s288: # from 287.0
    nr '"물론이야, 대장. 나도 그건 알고 있었어."{#morte_s288_}'

    menu:
        '"내가 만난 살라베쉬라는 메이지가 이 곳에 있다는 돌 인간에 대하여 얘기해주었소. 그가 바로 당신이오?"{#morte_s288_r28975}' if morteLogic.r28975_condition():
            # a593 # r28975
            $ morteLogic.r28975_action()
            jump quisai_s5  # EXTERN

        '석상을 내려친다.{#morte_s288_r28976}':
            # a594 # r28976
            $ morteLogic.r28976_action()
            jump quisai_s23  # EXTERN

        '떠난다.{#morte_s288_r28977}':
            # a595 # r28977
            jump morte_dispose


# s289 # say28966
label morte_s289: # -
    nr '모트는 눈알을 부라리며 시끄럽게 떠든다. "세상에, 이렇게… 말하는… 얼간이가 다시는 없기를!"{#morte_s289_}'

    menu:
        '"나는 당신에 대해 질문할 것이 있소…"{#morte_s289_r28978}':
            # a596 # r28978
            jump quisai_s11  # EXTERN

        '"이 곳에 대해 물어볼 것들이 있소."{#morte_s289_r28979}':
            # a597 # r28979
            jump quisai_s30  # EXTERN

        '"당신은 래벌 퍼즐웰에 대해 무엇을 아시오?"{#morte_s289_r28980}' if morteLogic.r28980_condition():
            # a598 # r28980
            jump quisai_s29  # EXTERN

        '"그 일에 대해선 나중에 얘기하도록 하겠소. 안녕히 계시오."{#morte_s289_r28981}':
            # a599 # r28981
            jump morte_dispose


# s290 # say29677
label morte_s290: # -
    nr '"이봐, 대장. 그는 손가락을 포개고 있어!{#morte_s290_}'

    jump quell_s21  # EXTERN


# s291 # say30527
label morte_s291: # -
    nr '모트가 작은 목소리로 말참견을 한다. "그는 자기가 변호사라는거야. 법적 자문가지. 법정에서 수다를 떠는 작자들 중 하나라고."{#morte_s291_}'

    jump iannis_s10  # EXTERN


# s292 # say30816
label morte_s292: # -
    nr '모트는 뒤를 돌아본다. "어디?! 어디?!"{#morte_s292_}'

    jump able_s2  # EXTERN


# s293 # say30817
label morte_s293: # -
    nr '모트는 헐떡거린다. "뒤를 보라고, 떠다니는 해골이 또 있어!"{#morte_s293_}'

    menu:
        '당신이 직접 그를 찾는다.{#morte_s293_r30822}' if morteLogic.r30822_condition():
            # a600 # r30822
            jump able_s10  # EXTERN

        '모트가 즐기도록 내버려 둔다.{#morte_s293_r30823}' if morteLogic.r30823_condition():
            # a601 # r30823
            jump able_s10  # EXTERN

        '"자, 모트. 난 그에게 질문을 해야 하네…"{#morte_s293_r30824}' if morteLogic.r30824_condition():
            # a602 # r30824
            jump able_s10  # EXTERN


# s294 # say30818
label morte_s294: # -
    nr '"바로 내가 가리키고 있는 곳에! 저기!"{#morte_s294_}'

    jump able_s11  # EXTERN


# s295 # say30819
label morte_s295: # -
    nr '모트는 일부러 화난 시늉을 한다: "아까운 걸 놓쳤어! 아예 *행렬*로 지나갔는데! 아마 위대한 고리가 다시 백만 번 회전할 때까지는 못 볼 걸!"{#morte_s295_}'

    jump able_s12  # EXTERN


# s296 # say30820
label morte_s296: # -
    nr '모트는 어깨를 으쓱하려는 시늉을 하려는 듯 아래위로 약간 움직인다. "나는 그걸 인간의 본질에 대한 예리한 통찰력이라고 부르지."{#morte_s296_}'

    menu:
        '"질문할 것들이 좀 있소…"{#morte_s296_r30825}' if morteLogic.r30825_condition():
            # a603 # r30825
            jump able_s16  # EXTERN

        '그의 주목을 다시 끈다.{#morte_s296_r30826}' if morteLogic.r30826_condition():
            # a604 # r30826
            $ morteLogic.r30826_action()
            jump able_s13  # EXTERN


# s297 # say30821
label morte_s297: # -
    nr '"이보, 대장, 그 정도 지랄이라면 통할지도 모르겠는데!"{#morte_s297_}'

    jump able_s65  # EXTERN


# s298 # say31566
label morte_s298: # -
    nr '"레이디의 칼날 달린 젖꼭지여! 세상에…"  당신의 마지막 남은 감각조차 사라짐에 따라 정적이 사방을 지배한다. ~ [MRT387]{#morte_s298_}'

    menu:
        '갱그로이그하이드론의 끔찍스런 저주의 희생자가 되어 처참하게 죽는다.{#morte_s298_r31567}':
            # a605 # r31567
            $ morteLogic.r31567_action()
            jump morte_dispose


# s299 # say32367
label morte_s299: # -
    nr '"„비밀?!“ 제발 봐줘! 이런 쓰레기 같은 지랄을 정말 *들을* 건 아니지, 그렇지? 자… 가서 해골의 입술의 불타는 정열을 아직 체험하지 못한 센세이트 계집들이나 찾아보자고." 그는 기대에 가득 차 눈썹을 아래위로 움직인다.{#morte_s299_}'

    menu:
        '"조용하게, 모트. 우린 머무를 거네, 적어도 한동안은."{#morte_s299_r32368}':
            # a606 # r32368
            jump deathad_s1  # EXTERN

        '모트를 무시하고 계속 듣는다.{#morte_s299_r32369}':
            # a607 # r32369
            jump deathad_s1  # EXTERN

        '"자네가 옳으이, 모트. 떠나세."{#morte_s299_r32370}':
            # a608 # r32370
            $ morteLogic.r32370_action()
            jump morte_dispose


# s300 # say32371
label morte_s300: # -
    nr '모트는 속삭인다: "새로운 고통의 시작일 뿐이지."{#morte_s300_}'

    menu:
        '모트에게 조용히 고개를 끄덕인다.{#morte_s300_r32372}':
            # a609 # r32372
            jump deathad_s2  # EXTERN

        '"모트, 조용하게."{#morte_s300_r32373}':
            # a610 # r32373
            jump deathad_s2  # EXTERN

        '모트를 무시하고 계속 듣는다.{#morte_s300_r32374}':
            # a611 # r32374
            jump deathad_s2  # EXTERN

        '"정말이네. 떠나세, 모트."{#morte_s300_r32375}':
            # a612 # r32375
            $ morteLogic.r32375_action()
            jump morte_dispose


# s301 # say32376
label morte_s301: # -
    nr '모트는 속삭인다: "그건 그렇지."{#morte_s301_}'

    menu:
        '모트에게 조용히 고개를 끄덕인다.{#morte_s301_r32377}':
            # a613 # r32377
            jump deathad_s3  # EXTERN

        '"모트, 조용하게."{#morte_s301_r32378}':
            # a614 # r32378
            jump deathad_s3  # EXTERN

        '모트를 무시하고 계속 듣는다.{#morte_s301_r32379}':
            # a615 # r32379
            jump morte_s303

        '"정말이네. 떠나세, 모트."{#morte_s301_r32380}':
            # a616 # r32380
            $ morteLogic.r32380_action()
            jump morte_dispose


# s302 # say32381
label morte_s302: # -
    nr '모트는 속삭인다: "영원한 지루함."{#morte_s302_}'

    menu:
        '모트에게 조용히 고개를 끄덕인다.{#morte_s302_r32382}':
            # a617 # r32382
            jump deathad_s5  # EXTERN

        '"제발 조용하게, 모트."{#morte_s302_r32383}':
            # a618 # r32383
            jump deathad_s5  # EXTERN

        '모트를 무시하고 계속 듣는다.{#morte_s302_r32384}':
            # a619 # r32384
            jump deathad_s5  # EXTERN

        '"정말이네. 떠나세, 모트."{#morte_s302_r32385}':
            # a620 # r32385
            $ morteLogic.r32385_action()
            jump morte_dispose


# s303 # say32386
label morte_s303: # from 301.2
    nr '모트는 속삭인다: "이제야 우리 둘이 죽은 뒤 어디로 갈지 알 것 같군."{#morte_s303_}'

    menu:
        '모트에게 조용히 고개를 끄덕인다.{#morte_s303_r32387}':
            # a621 # r32387
            jump deathad_s6  # EXTERN

        '"모트, 말 좀 그만하게."{#morte_s303_r32388}':
            # a622 # r32388
            jump deathad_s6  # EXTERN

        '모트를 무시하고 계속 듣는다.{#morte_s303_r32389}':
            # a623 # r32389
            jump deathad_s6  # EXTERN

        '"정말이네. 떠나세, 모트."{#morte_s303_r32390}':
            # a624 # r32390
            $ morteLogic.r32390_action()
            jump morte_dispose


# s304 # say32391
label morte_s304: # -
    nr '모트는 속삭인다: "그건 운이 좋을 경우 얘기지."{#morte_s304_}'

    menu:
        '모트에게 조용히 고개를 끄덕인다.{#morte_s304_r32392}':
            # a625 # r32392
            jump deathad_s8  # EXTERN

        '"그만둬, 모트."{#morte_s304_r32393}':
            # a626 # r32393
            jump deathad_s8  # EXTERN

        '모트를 무시하고 계속 듣는다.{#morte_s304_r32394}':
            # a627 # r32394
            jump deathad_s8  # EXTERN

        '"정말이네. 떠나세, 모트."{#morte_s304_r32395}':
            # a628 # r32395
            $ morteLogic.r32395_action()
            jump morte_dispose


# s305 # say32396
label morte_s305: # -
    nr '모트는 속삭인다: "그게 무슨 상이라도 된다는 거야? 같은 일을 *반복*하는 게? 이런, 난 정말 다시 태어나도 떠다니는 해골이 되고 싶은 걸. 와! 놈보고 엿이나 먹으라고 해. 놈은 정말 얼간이야. 정말 죽어본 적이 없는 사람처럼 말하는군. 그렇지?"{#morte_s305_}'

    menu:
        '모트에게 조용히 고개를 끄덕인다.{#morte_s305_r32397}':
            # a629 # r32397
            jump deathad_s9  # EXTERN

        '"자, 모트, 조용히 하게."{#morte_s305_r32398}':
            # a630 # r32398
            jump deathad_s9  # EXTERN

        '모트를 무시하고 계속 듣는다.{#morte_s305_r32399}':
            # a631 # r32399
            jump deathad_s9  # EXTERN

        '"정말이네. 떠나세, 모트."{#morte_s305_r32400}':
            # a632 # r32400
            $ morteLogic.r32400_action()
            jump morte_dispose


# s306 # say32401
label morte_s306: # -
    nr '모트는 속삭인다: "오, 이건 정말 지나가는 개도 웃을 소리군."{#morte_s306_}'

    menu:
        '모트에게 조용히 고개를 끄덕인다.{#morte_s306_r32402}':
            # a633 # r32402
            jump deathad_s11  # EXTERN

        '"모트, 소리를 낮추게."{#morte_s306_r32403}':
            # a634 # r32403
            jump deathad_s11  # EXTERN

        '모트를 무시하고 계속 듣는다.{#morte_s306_r32404}':
            # a635 # r32404
            jump deathad_s11  # EXTERN

        '"정말이네. 떠나세, 모트."{#morte_s306_r32405}':
            # a636 # r32405
            $ morteLogic.r32405_action()
            jump morte_dispose


# s307 # say32406
label morte_s307: # -
    nr '모트는 크게 고함을 지른다: "개지랄 같은 소리군!"{#morte_s307_}'

    jump deathad_s15  # EXTERN


# s308 # say32407
label morte_s308: # -
    nr '모트는 강사의 시야 아래로 내려간 다음 당신 쪽으로 고개를 돌려 속삭인다. "대장, 가서 놈에게 진짜 비밀이 뭔질 보여주라고."{#morte_s308_}'

    menu:
        '"그렇소, 질문할 것이 하나 있소."{#morte_s308_r32408}':
            # a637 # r32408
            jump deathad_s17  # EXTERN

        '"질문할 것이 없소. 내 친구가 말을 잘못 했소."{#morte_s308_r32409}':
            # a638 # r32409
            jump deathad_s16  # EXTERN


# s309 # say32410
label morte_s309: # -
    nr '"멋지군! 또 다른 죽음이라! 나도 끼워 달라고!" 청중석에서 웃음이 터진다. 연사는 화가 난 듯하다.{#morte_s309_}'

    menu:
        '"그들이 죽으면 어떻게 되오?"{#morte_s309_r32411}':
            # a639 # r32411
            jump deathad_s26  # EXTERN

        '"다른 질문이 있소…"{#morte_s309_r32412}':
            # a640 # r32412
            jump deathad_s17  # EXTERN

        '"내가 알고자 했던 건 그게 전부요."{#morte_s309_r32413}':
            # a641 # r32413
            jump deathad_s18  # EXTERN


# s310 # say32651
label morte_s310: # -
    nr '"내가 이 미친년의 따귀라도 한 대 갈겨 줄까, 대장?"{#morte_s310_}'

    menu:
        '"자비는 일절 필요없네, 모트."{#morte_s310_r32661}':
            # a642 # r32661
            jump morte_s316

        '"아니, 모트… 내가 처리하겠네."{#morte_s310_r32662}':
            # a643 # r32662
            jump sarhava_s3  # EXTERN


# s311 # say32652
label morte_s311: # -
    nr '"난 대장의 해괴망칙한 방법이 너무 마음에 들어."{#morte_s311_}'

    jump sarhava_s4  # EXTERN


# s312 # say32653
label morte_s312: # -
    nr '당신이 그녀 앞에 무릎을 꿇으려 하자 모트가 소리를 지른다: "대장! 정말 그러려는 건 아니겠지? 대장이 그런 쪽에 관심이 있다면 모를까…"{#morte_s312_}'

    menu:
        '모트를 무시하고 부츠를 핥는다.{#morte_s312_r32663}':
            # a644 # r32663
            jump sarhava_s14  # EXTERN

        '"나는 말썽을 일으키고 싶지 않네, 모트. 내가 조심하지 않으면 경비병들이 올 수도 있네."{#morte_s312_r32664}':
            # a645 # r32664
            jump morte_s313

        '"자네가 옳네, 모트. 가세."{#morte_s312_r32665}':
            # a646 # r32665
            jump sarhava_s13  # EXTERN


# s313 # say32654
label morte_s313: # from 312.1
    nr '"그래, 일리는 있어… 하지만 그래도…"{#morte_s313_}'

    menu:
        '"관두게, 모트. 이것 보시오, 내가 직접 경비병들을 부르기 전에 그만 끝냅시다."{#morte_s313_r32666}':
            # a647 # r32666
            jump sarhava_s7  # EXTERN

        '"자네가 옳네, 모트. 가세."{#morte_s313_r32667}':
            # a648 # r32667
            jump sarhava_s13  # EXTERN


# s314 # say32655
label morte_s314: # -
    nr '모트는 킬킬 웃으며 이빨을 딱딱거린다. "그냥 보통 바람둥이라는 거지, 대장?"{#morte_s314_}'

    jump morte_dispose


# s315 # say32656
label morte_s315: # -
    nr '"어-오.."{#morte_s315_}'

    jump morte_dispose


# s316 # say32657
label morte_s316: # from 310.0
    nr '모트는 당신에게 눈짓을 하면서 그녀를 부른다. "이봐, 너! 그래, 거기 너, 이 뻔뻔한 창녀야… 내가 말을 할 때는 날 봐야지! 대체 왜 그렇게 신랄하게 나오는 거야?"{#morte_s316_}'

    jump sarhava_s39  # EXTERN


# s317 # say32658
label morte_s317: # -
    nr '"아, 술탄은 아들을 원했는데 딸이 나온 탓에 어린 사막의 공주님은 반바지만 입고 다니나? 말해봐, „사막의 공주님,“ 넌 널 인정하지 않으려는 아버지에 대한 반발로 밤마다 몇 명의 곁눈질하는 아부꾼들을 거느리고 그런 몰골로 나와서는 술을 처먹고 사람들에게 시비나 거는 거야?"{#morte_s317_}'

    jump sarhava_s40  # EXTERN


# s318 # say32659
label morte_s318: # -
    nr '"싸움질을 해댄다고 해서 스스로에 대해 조금이라도 만족할 수 있게 될 것 같아? 자신이 가치가 있는 존재라고 느끼게 될 거라고 생각해? 어림없어! 만약 이게 자긍심을 찾으려고 네가 쓰는 방법이라면 내가 충고 한 마디 하지. 집어치우고 집에나 가, 그리고 어떤 놈팡이의 하렘에나 들어가라고!"{#morte_s318_}'

    jump sarhava_s41  # EXTERN


# s319 # say32660
label morte_s319: # -
    nr '모트는 당신 쪽으로 고개를 돌린다. "보라고, 대장, 난 어떻게 될지 진작부터 알고 있었어. 우린 모두 이 건에 관해서 모트가 옳다는 걸 알지. 하지만 딱하군, 어리고 자존심 강한 사막의 공주님, 사람들 앞에서 쓰러져 망신-"{#morte_s319_}'

    jump sarhava_s42  # EXTERN


# s320 # say33073
label morte_s320: # -
    nr '"블러드 워? 거버너가 법에 대해 강의하는 것보다 지루해. 정열에 대해 가르침을 필요로 하는 젊은 센세이트나 찾아보자고!" 그는 기대에 가득 차 눈썹을 아래위로 움직인다.{#morte_s320_}'

    menu:
        '"아니, 모트. 난 이 이야기를 듣고 싶네."{#morte_s320_r33074}':
            # a649 # r33074
            jump ghysis_s1  # EXTERN

        '모트를 무시하고 계속 듣는다.{#morte_s320_r33075}':
            # a650 # r33075
            jump ghysis_s1  # EXTERN

        '"좋네, 모트. 떠나세."{#morte_s320_r33076}':
            # a651 # r33076
            $ morteLogic.r33076_action()
            jump morte_dispose


# s321 # say33300
label morte_s321: # -
    nr '모트는 눈알을 희번덕거리며 외친다 "와! 저것 좀 봐! 말하는 똥이야!"{#morte_s321_}'

    jump ghivem_s49  # EXTERN


# s322 # say33301
label morte_s322: # -
    nr '모트는 당신 쪽으로 재빨리 움직이며 사내에게 얘기를 한다. "이 덩치 큰 흉터투성이 친구한테 한 말이라고… 당신이 아니야! 화나진 않은 거지?{#morte_s322_}'

    menu:
        '"조심하게, 모트…"{#morte_s322_r33302}':
            # a652 # r33302
            jump ghivem_s51  # EXTERN

        '모트를 무시한다.{#morte_s322_r33303}':
            # a653 # r33303
            jump ghivem_s51  # EXTERN


# s323 # say33423
label morte_s323: # -
    nr '모트는 눈알을 희번덕거리며 외친다 "와! 저것 좀 봐! 말하는 똥이야!"{#morte_s323_}'

    jump ghivef_s47  # EXTERN


# s324 # say33429
label morte_s324: # -
    nr '모트는 당신 쪽으로 재빨리 움직이며 사내에게 얘기를 한다. "이 덩치 큰 흉터투성이 친구한테 한 말이라고… 당신이 아니야! 화나진 않은 거지?{#morte_s324_}'

    menu:
        '"조심하게, 모트…"{#morte_s324_r33430}':
            # a654 # r33430
            jump ghivef_s49  # EXTERN

        '모트를 무시한다.{#morte_s324_r33433}':
            # a655 # r33433
            jump ghivef_s49  # EXTERN


# s325 # say33958
label morte_s325: # - # IF WEIGHT #5 /* Triggers after states #: 742 737 733 487 even though they appear after this state */ ~  !InParty("Morte") !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"난 대장이 돌아올 줄 알고 있었어! 드디어 대장에겐 내가 필요하다는 사실을 깨달은 거야?"~ [MRT516]{#morte_s325_}'

    menu:
        '"그래… 가세."{#morte_s325_r33959}':
            # a656 # r33959
            $ morteLogic.r33959_action()
            jump morte_dispose

        '"지금 당장은 안 되네, 모트."{#morte_s325_r33960}':
            # a657 # r33960
            jump morte_s326


# s326 # say33961
label morte_s326: # from 325.1
    nr '"흠. 글쎄, 내가 여기서 얼마나 더 기다릴 수 있을 지는 나도 모르겠어. 그러니 난 대장에게 마지막으로 단 한 번의 기회를 주겠어. 정말 내 현명한 충고와 기민한 재치를 필요로 하지 않는 거야?"{#morte_s326_}'

    menu:
        '"모트, 자네에게 그 둘 다 없네."{#morte_s326_r33962}':
            # a658 # r33962
            jump morte_s327

        '"좋아, 난 마음을 바꿨네. 자, 가세."{#morte_s326_r33963}':
            # a659 # r33963
            $ morteLogic.r33963_action()
            jump morte_dispose

        '"지금 당장은 곤란하네, 모트. 아마 나중에."{#morte_s326_r33964}':
            # a660 # r33964
            jump morte_s327


# s327 # say33965
label morte_s327: # from 326.0 326.2
    nr '"일부러 내 감정을 상하게 하려는 거야, 대장? 내가 무슨 말이라도 잘못했어? 아니면 내게 팔이 없어서야? 뭐야?"{#morte_s327_}'

    menu:
        '"좋아, 난 마음을 바꿨네. 자, 가세."{#morte_s327_r33966}':
            # a661 # r33966
            $ morteLogic.r33966_action()
            jump morte_dispose

        '"그건 아니네. 하지만 지금 당장은 자네가 파티에 필요없네. 잘 있게, 모트."{#morte_s327_r33967}':
            # a662 # r33967
            jump morte_s328


# s328 # say33968
label morte_s328: # from 327.1
    nr '"좋아, 하지만 난 여기서 영원히 기다리진 않을 거니까 생각이 바뀌면 당장 돌아오라고."{#morte_s328_}'

    menu:
        '"그러겠네. 잘 있게, 모트."{#morte_s328_r33969}':
            # a663 # r33969
            jump morte_dispose


# s329 # say33970
label morte_s329: # from 649.2 650.2 651.3 652.2 653.1 654.1 655.1 656.1 657.1 658.0 659.1 660.1 661.1 662.0 663.2 664.1 665.2 666.1 667.1 668.0 669.9 670.0 671.0 672.0 673.0 674.0 675.1 676.0 677.2 678.1 679.0 680.0 681.0 682.1 683.0 684.1 685.1 686.2 687.1 688.2 689.1 690.1 695.2 696.1 697.1 699.1 700.1 706.1 707.1 708.1 709.1 710.1 711.1 712.1 714.1 715.1 721.0 722.0 723.1 725.0 726.1 727.0
    nr '"뭘 그렇게 골똘하게 생각하는 거야?"{#morte_s329_}'

    menu:
        '"내 등에 새겨진 문신의 내용을 다시 들려줄 수 있겠나?"{#morte_s329_r65539}':
            # a664 # r65539
            jump morte_s649

        '"내게 시길에 대해 좀 얘기해줄 수 있겠나?"{#morte_s329_r65540}':
            # a665 # r65540
            jump morte_s659

        '"모트… 자네가 날 따라오는 건 개의치 않네, 하지만 수다떠는 것 말고 자네가 할 수 있은 없나?"{#morte_s329_r65541}' if morteLogic.r65541_condition():
            # a666 # r65541
            jump morte_s663

        '"모트… 자네의 특수한 재능이 어떤 것들인지 다시 얘기해주겠나?"{#morte_s329_r65542}' if morteLogic.r65542_condition():
            # a667 # r65542
            jump morte_s666

        '"모트, 내 등에 새겨진 문신의 나머지 한 줄에 대해서 왜 내게 얘기하지 않았나?"{#morte_s329_r65543}' if morteLogic.r65543_condition():
            # a668 # r65543
            jump morte_s654

        '"조언이 좀 필요하네. 우리가 다음에 무엇을 해야 한다고 생각하나?"{#morte_s329_r65544}':
            # a669 # r65544
            jump morte_s669

        '"자네는 자신이 미미르라고 했네, 맞나, 모트?"{#morte_s329_r65545}' if morteLogic.r65545_condition():
            # a670 # r65545
            jump morte_s684

        '"자네가 왜 해골들의 기둥에 떨어지게 되었는지 다시 말해주게."{#morte_s329_r65546}' if morteLogic.r65546_condition():
            # a671 # r65546
            jump morte_s693

        '"모트. 내가 기둥으로부터 자네를 빼낸 후에 왜 나와 함께 여행을 계속한 건가?"{#morte_s329_r65547}' if morteLogic.r65547_condition():
            # a672 # r65547
            jump morte_s715

        '"자네는 블러드 워에 대해 무엇을 아나?"{#morte_s329_r65548}' if morteLogic.r65548_condition():
            # a673 # r65548
            jump morte_s723

        '"자네는 나이트 해그 래벌에 대해 무엇을 아나?"{#morte_s329_r65549}' if morteLogic.r65549_condition():
            # a674 # r65549
            jump morte_s722

        '"자네는 어떻게 죽었나, 모트?"{#morte_s329_r65550}':
            # a675 # r65550
            jump morte_s726

        '"아무 것도 아니네, 모트. 자네가 아직 나와 함께하고 있는 확인했을 뿐이네."{#morte_s329_r65551}':
            # a676 # r65551
            jump morte_dispose


# s330 # say34990
label morte_s330: # externs zf114_s2 zf114_s1 zf114_s0
    nr '"잠깐. 대장은 그녀가 날 어떤 눈으로 쳐다보는지 봤어? 허? 보이지? 내 후두부를 바라보는 그녀의 시선이?"{#morte_s330_}'

    menu:
        '"대체 무슨 얘기를 하는 건가?"{#morte_s330_r34991}':
            # a677 # r34991
            $ morteLogic.r34991_action()
            jump morte_s331

        '"무덤-저편의-공허한-눈빛 말인가?"{#morte_s330_r35001}':
            # a678 # r35001
            $ morteLogic.r35001_action()
            jump morte_s331


# s331 # say34992
label morte_s331: # from 330.0 330.1
    nr '"뭐… 눈이라도 먼 거야?! 그녀는 날 유혹하고 있었다고! 그녀는 정말 노골적으로 날 원했다고!"{#morte_s331_}'

    menu:
        '"아마 자네가 다른 곳으로 가기를 바랬던 거겠지. 그녀는 내게 너무 정신이 팔려 수다만 떠는 건방진 얼간이의 해골 따위에는 관심을 가질 틈조차 없었을 걸세."{#morte_s331_r34993}':
            # a679 # r34993
            $ morteLogic.r34993_action()
            jump morte_s332

        '"자넨 터무니 없는 공상을 하고 있군. 그녀는 좀비야. 시체, 즉 죽은 사람이란 말일세. 아마 그녀는 자네를 인식조차 할 수가 없을 걸세."{#morte_s331_r34996}':
            # a680 # r34996
            jump morte_s333

        '"자네와 자네 상상력은 좀 떨어져 지내야 할 것 같네."{#morte_s331_r34999}':
            # a681 # r34999
            jump morte_s333

        '"뭐든 간에, 모트. 가세."{#morte_s331_r35000}':
            # a682 # r35000
            jump morte_dispose


# s332 # say34994
label morte_s332: # from 331.0
    nr '"당신? 말도 안돼. 저 세상으로 간 계집들은 육체적인 매력이나 몸통이 있는지 여부는 신경도 쓰지 않는다고. 그녀들은 기백이 있는 남자를 원한다고. 그건 바로 나야, 대장. 당신? 대장같은 시체는 동전만큼이나 흔하다고."{#morte_s332_}'

    menu:
        '"뭐든 간에, 모트. 가세."{#morte_s332_r34995}':
            # a683 # r34995
            jump morte_dispose


# s333 # say34997
label morte_s333: # from 331.1 331.2
    nr '"나처럼 죽은 지 오래되면 신호를 감지할 수가 있다고. 대장이 느끼기에는 너무 미묘할지도 모르지만. 그러니 내가 죽은 지 얼마되지 않은 섹시한 계집들과 뜨거운 밤을 보낼 동안 대장은 „어?“ „뭐가 어떻게 돌아가고 있는 거지?“ „내 기-기억이 어디로 갔지“하며 멍하니 서 있을 수밖에."{#morte_s333_}'

    menu:
        '"뭐든 간에, 모트. 가세."{#morte_s333_r34998}':
            # a684 # r34998
            jump morte_dispose


# s334 # say35022
label morte_s334: # externs zf594_s2 zf594_s1 zf594_s0
    nr '"잠깐. 대장은 그녀가 날 어떤 눈으로 쳐다보는지 봤어? 허? 보이지? 내 후두부를 바라보는 그녀의 시선이?"{#morte_s334_}'

    menu:
        '"대체 무슨 얘기를 하는 건가?"{#morte_s334_r35023}':
            # a685 # r35023
            $ morteLogic.r35023_action()
            jump morte_s335

        '"무덤-저편의-공허한-눈빛 말인가?"{#morte_s334_r35033}':
            # a686 # r35033
            $ morteLogic.r35033_action()
            jump morte_s335


# s335 # say35024
label morte_s335: # from 334.0 334.1
    nr '"뭐… 눈이라도 먼 거야?! 그녀는 날 유혹하고 있었다고! 그녀는 정말 노골적으로 날 원했다고!"{#morte_s335_}'

    menu:
        '"아마 자네가 다른 곳으로 가기를 바랬던 거겠지. 그녀는 내게 너무 정신이 팔려 수다만 떠는 건방진 얼간이의 해골 따위에는 관심을 가질 틈조차 없었을 걸세."{#morte_s335_r35025}':
            # a687 # r35025
            $ morteLogic.r35025_action()
            jump morte_s336

        '"자넨 터무니 없는 공상을 하고 있군. 그녀는 좀비야. 시체, 즉 죽은 사람이란 말일세. 아마 그녀는 자네를 인식조차 할 수가 없을 걸세."{#morte_s335_r35028}':
            # a688 # r35028
            jump morte_s337

        '"자네와 자네 상상력은 좀 떨어져 지내야 할 것 같네."{#morte_s335_r35031}':
            # a689 # r35031
            jump morte_s337

        '"뭐든 간에, 모트. 가세."{#morte_s335_r35032}':
            # a690 # r35032
            jump morte_dispose


# s336 # say35026
label morte_s336: # from 335.0
    nr '"당신? 말도 안돼. 저 세상으로 간 계집들은 육체적인 매력이나 몸통이 있는지 여부는 신경도 쓰지 않는다고. 그녀들은 기백이 있는 남자를 원한다고. 그건 바로 나야, 대장. 당신? 대장같은 시체는 동전만큼이나 흔하다고."{#morte_s336_}'

    menu:
        '"뭐든 간에, 모트. 가세."{#morte_s336_r35027}':
            # a691 # r35027
            jump morte_dispose


# s337 # say35029
label morte_s337: # from 335.1 335.2
    nr '"나처럼 죽은 지 오래되면 신호를 감지할 수가 있다고. 대장이 느끼기에는 너무 미묘할지도 모르지만. 그러니 내가 죽은 지 얼마되지 않은 섹시한 계집들과 뜨거운 밤을 보낼 동안 대장은 „어?“ „뭐가 어떻게 돌아가고 있는 거지?“ „내 기-기억이 어디로 갔지“하며 멍하니 서 있을 수밖에."{#morte_s337_}'

    menu:
        '"뭐든 간에, 모트. 가세."{#morte_s337_r35030}':
            # a692 # r35030
            jump morte_dispose


# s338 # say35054
label morte_s338: # externs zf626_s2 zf626_s1 zf626_s0
    nr '"잠깐. 대장은 그녀가 날 어떤 눈으로 쳐다보는지 봤어? 허? 보이지? 내 후두부를 바라보는 그녀의 시선이?"{#morte_s338_}'

    menu:
        '"대체 무슨 얘기를 하는 거요?"{#morte_s338_r35055}':
            # a693 # r35055
            $ morteLogic.r35055_action()
            jump morte_s339

        '"무덤-저편의-공허한-눈빛 말인가?"{#morte_s338_r35065}':
            # a694 # r35065
            $ morteLogic.r35065_action()
            jump morte_s339


# s339 # say35056
label morte_s339: # from 338.0 338.1
    nr '"뭐… 눈이라도 먼 거야?! 그녀는 날 유혹하고 있었다고! 그녀는 정말 노골적으로 날 원했다고!"{#morte_s339_}'

    menu:
        '"아마 자네가 다른 곳으로 가기를 바랬던 거겠지. 그녀는 내게 너무 정신이 팔려 수다만 떠는 건방진 얼간이의 해골 따위에는 관심을 가질 틈조차 없었을 걸세."{#morte_s339_r35057}':
            # a695 # r35057
            $ morteLogic.r35057_action()
            jump morte_s340

        '"자넨 터무니 없는 공상을 하고 있군. 그녀는 좀비야. 시체, 즉 죽은 사람이란 말일세. 아마 그녀는 자네를 인식조차 할 수가 없을 걸세."{#morte_s339_r35060}':
            # a696 # r35060
            jump morte_s341

        '"자네와 자네 상상력은 좀 떨어져 지내야 할 것 같네."{#morte_s339_r35063}':
            # a697 # r35063
            jump morte_s341

        '"뭐든 간에, 모트. 가세."{#morte_s339_r35064}':
            # a698 # r35064
            jump morte_dispose


# s340 # say35058
label morte_s340: # from 339.0
    nr '"당신? 말도 안돼. 저 세상으로 간 계집들은 육체적인 매력이나 몸통이 있는지 여부는 신경도 쓰지 않는다고. 그녀들은 기백이 있는 남자를 원한다고. 그건 바로 나야, 대장. 당신? 대장같은 시체는 동전만큼이나 흔하다고."{#morte_s340_}'

    menu:
        '"뭐든 간에, 모트. 가세."{#morte_s340_r35059}':
            # a699 # r35059
            jump morte_dispose


# s341 # say35061
label morte_s341: # from 339.1 339.2
    nr '"나처럼 죽은 지 오래되면 신호를 감지할 수가 있다고. 대장이 느끼기에는 너무 미묘할지도 모르지만. 그러니 내가 죽은 지 얼마되지 않은 섹시한 계집들과 뜨거운 밤을 보낼 동안 대장은 „어?“ „뭐가 어떻게 돌아가고 있는 거지?“ „내 기-기억이 어디로 갔지“하며 멍하니 서 있을 수밖에."{#morte_s341_}'

    menu:
        '"뭐든 간에, 모트. 가세."{#morte_s341_r35062}':
            # a700 # r35062
            jump morte_dispose


# s342 # say35086
label morte_s342: # externs zf1096_s2 zf1096_s1 zf1096_s0
    nr '"잠깐. 대장은 그녀가 날 어떤 눈으로 쳐다보는지 봤어? 허? 보이지? 내 후두부를 바라보는 그녀의 시선이?"{#morte_s342_}'

    menu:
        '"대체 무슨 얘기를 하는 건가?"{#morte_s342_r35087}':
            # a701 # r35087
            $ morteLogic.r35087_action()
            jump morte_s343

        '"무덤-저편의-공허한-눈빛 말인가?"{#morte_s342_r35097}':
            # a702 # r35097
            $ morteLogic.r35097_action()
            jump morte_s343


# s343 # say35088
label morte_s343: # from 342.0 342.1
    nr '"뭐… 눈이라도 먼 거야?! 그녀는 날 유혹하고 있었다고! 그녀는 정말 노골적으로 날 원했다고!"{#morte_s343_}'

    menu:
        '"아마 자네가 다른 곳으로 가기를 바랬던 거겠지. 그녀는 내게 너무 정신이 팔려 수다만 떠는 건방진 얼간이의 해골 따위에는 관심을 가질 틈조차 없었을 걸세."{#morte_s343_r35089}':
            # a703 # r35089
            $ morteLogic.r35089_action()
            jump morte_s344

        '"자넨 터무니 없는 공상을 하고 있군. 그녀는 좀비야. 시체, 즉 죽은 사람이란 말일세. 아마 그녀는 자네를 인식조차 할 수가 없을 걸세."{#morte_s343_r35092}':
            # a704 # r35092
            jump morte_s345

        '"자네와 자네 상상력은 좀 떨어져 지내야 할 것 같네."{#morte_s343_r35095}':
            # a705 # r35095
            jump morte_s345

        '"뭐든 간에, 모트. 가세."{#morte_s343_r35096}':
            # a706 # r35096
            jump morte_dispose


# s344 # say35090
label morte_s344: # from 343.0
    nr '"당신? 말도 안돼. 저 세상으로 간 계집들은 육체적인 매력이나 몸통이 있는지 여부는 신경도 쓰지 않는다고. 그녀들은 기백이 있는 남자를 원한다고. 그건 바로 나야, 대장. 당신? 대장같은 시체는 동전만큼이나 흔하다고."{#morte_s344_}'

    menu:
        '"뭐든 간에, 모트. 가세."{#morte_s344_r35091}':
            # a707 # r35091
            jump morte_dispose


# s345 # say35093
label morte_s345: # from 343.1 343.2
    nr '"나처럼 죽은 지 오래되면 신호를 감지할 수가 있다고. 대장이 느끼기에는 너무 미묘할지도 모르지만. 그러니 내가 죽은 지 얼마되지 않은 섹시한 계집들과 뜨거운 밤을 보낼 동안 대장은 „어?“ „뭐가 어떻게 돌아가고 있는 거지?“ „내 기-기억이 어디로 갔지“하며 멍하니 서 있을 수밖에."{#morte_s345_}'

    menu:
        '"뭐든 간에, 모트. 가세."{#morte_s345_r35094}':
            # a708 # r35094
            jump morte_dispose


# s346 # say35118
label morte_s346: # externs zf1072_s2 zf1072_s1 zf1072_s0
    nr '"잠깐. 대장은 그녀가 날 어떤 눈으로 쳐다보는지 봤어? 허? 보이지? 내 후두부를 바라보는 그녀의 시선이?"{#morte_s346_}'

    menu:
        '"대체 무슨 얘기를 하는 건가?"{#morte_s346_r35119}':
            # a709 # r35119
            $ morteLogic.r35119_action()
            jump morte_s347

        '"무덤-저편의-공허한-눈빛 말인가?"{#morte_s346_r35129}':
            # a710 # r35129
            $ morteLogic.r35129_action()
            jump morte_s347


# s347 # say35120
label morte_s347: # from 346.0 346.1
    nr '"뭐… 눈이라도 먼 거야?! 그녀는 날 유혹하고 있었다고! 그녀는 정말 노골적으로 날 원했다고!"{#morte_s347_}'

    menu:
        '"아마 자네가 다른 곳으로 가기를 바랬던 거겠지. 그녀는 내게 너무 정신이 팔려 수다만 떠는 건방진 얼간이의 해골 따위에는 관심을 가질 틈조차 없었을 걸세."{#morte_s347_r35121}':
            # a711 # r35121
            $ morteLogic.r35121_action()
            jump morte_s348

        '"자넨 터무니 없는 공상을 하고 있군. 그녀는 좀비야. 시체, 즉 죽은 사람이란 말일세. 아마 그녀는 자네를 인식조차 할 수가 없을 걸세."{#morte_s347_r35124}':
            # a712 # r35124
            jump morte_s349

        '"자네와 자네 상상력은 좀 떨어져 지내야 할 것 같네."{#morte_s347_r35127}':
            # a713 # r35127
            jump morte_s349

        '"뭐든 간에, 모트. 가세."{#morte_s347_r35128}':
            # a714 # r35128
            jump morte_dispose


# s348 # say35122
label morte_s348: # from 347.0
    nr '"당신? 말도 안돼. 저 세상으로 간 계집들은 육체적인 매력이나 몸통이 있는지 여부는 신경도 쓰지 않는다고. 그녀들은 기백이 있는 남자를 원한다고. 그건 바로 나야, 대장. 당신? 대장같은 시체는 동전만큼이나 흔하다고."{#morte_s348_}'

    menu:
        '"뭐든 간에, 모트. 가세."{#morte_s348_r35123}':
            # a715 # r35123
            jump morte_dispose


# s349 # say35125
label morte_s349: # from 347.1 347.2
    nr '"나처럼 죽은 지 오래되면 신호를 감지할 수가 있다고. 대장이 느끼기에는 너무 미묘할지도 모르지만. 그러니 내가 죽은 지 얼마되지 않은 섹시한 계집들과 뜨거운 밤을 보낼 동안 대장은 „어?“ „뭐가 어떻게 돌아가고 있는 거지?“ „내 기-기억이 어디로 갔지“하며 멍하니 서 있을 수밖에."{#morte_s349_}'

    menu:
        '"뭐든 간에, 모트. 가세."{#morte_s349_r35126}':
            # a716 # r35126
            jump morte_dispose


# s350 # say35150
label morte_s350: # externs zf832_s2 zf832_s1 zf832_s0
    nr '"잠깐. 대장은 그녀가 날 어떤 눈으로 쳐다보는지 봤어? 허? 보이지? 내 후두부를 바라보는 그녀의 시선이?"{#morte_s350_}'

    menu:
        '"대체 무슨 얘기를 하는 건가?"{#morte_s350_r35151}':
            # a717 # r35151
            $ morteLogic.r35151_action()
            jump morte_s351

        '"무덤-저편의-공허한-눈빛 말인가?"{#morte_s350_r35161}':
            # a718 # r35161
            $ morteLogic.r35161_action()
            jump morte_s351


# s351 # say35152
label morte_s351: # from 350.0 350.1
    nr '"뭐… 눈이라도 먼 거야?! 그녀는 날 유혹하고 있었다고! 그녀는 정말 노골적으로 날 원했다고!"{#morte_s351_}'

    menu:
        '"아마 자네가 다른 곳으로 가기를 바랬던 거겠지. 그녀는 내게 너무 정신이 팔려 수다만 떠는 건방진 얼간이의 해골 따위에는 관심을 가질 틈조차 없었을 걸세."{#morte_s351_r35153}':
            # a719 # r35153
            $ morteLogic.r35153_action()
            jump morte_s352

        '"자넨 터무니 없는 공상을 하고 있군. 그녀는 좀비야. 시체, 즉 죽은 사람이란 말일세. 아마 그녀는 자네를 인식조차 할 수가 없을 걸세."{#morte_s351_r35156}':
            # a720 # r35156
            jump morte_s353

        '"자네와 자네 상상력은 좀 떨어져 지내야 할 것 같네."{#morte_s351_r35159}':
            # a721 # r35159
            jump morte_s353

        '"뭐든 간에, 모트. 가세."{#morte_s351_r35160}':
            # a722 # r35160
            jump morte_dispose


# s352 # say35154
label morte_s352: # from 351.0
    nr '"당신? 말도 안돼. 저 세상으로 간 계집들은 육체적인 매력이나 몸통이 있는지 여부는 신경도 쓰지 않는다고. 그녀들은 기백이 있는 남자를 원한다고. 그건 바로 나야, 대장. 당신? 대장같은 시체는 동전만큼이나 흔하다고."{#morte_s352_}'

    menu:
        '"뭐든 간에, 모트. 가세."{#morte_s352_r35155}':
            # a723 # r35155
            jump morte_dispose


# s353 # say35157
label morte_s353: # from 351.1 351.2
    nr '"나처럼 죽은 지 오래되면 신호를 감지할 수가 있다고. 대장이 느끼기에는 너무 미묘할지도 모르지만. 그러니 내가 죽은 지 얼마되지 않은 섹시한 계집들과 뜨거운 밤을 보낼 동안 대장은 „어?“ „뭐가 어떻게 돌아가고 있는 거지?“ „내 기-기억이 어디로 갔지“하며 멍하니 서 있을 수밖에."{#morte_s353_}'

    menu:
        '"뭐든 간에, 모트. 가세."{#morte_s353_r35158}':
            # a724 # r35158
            jump morte_dispose


# s354 # say35182
label morte_s354: # externs zf679_s2 zf679_s1 zf679_s0
    nr '"잠깐. 대장은 그녀가 날 어떤 눈으로 쳐다보는지 봤어? 허? 보이지? 내 후두부를 바라보는 그녀의 시선이?"{#morte_s354_}'

    menu:
        '"대체 무슨 얘기를 하는 건가?"{#morte_s354_r35183}':
            # a725 # r35183
            $ morteLogic.r35183_action()
            jump morte_s355

        '"무덤-저편의-공허한-눈빛 말인가?"{#morte_s354_r35193}':
            # a726 # r35193
            $ morteLogic.r35193_action()
            jump morte_s355


# s355 # say35184
label morte_s355: # from 354.0 354.1
    nr '"뭐… 눈이라도 먼 거야?! 그녀는 날 유혹하고 있었다고! 그녀는 정말 노골적으로 날 원했다고!"{#morte_s355_}'

    menu:
        '"아마 자네가 다른 곳으로 가기를 바랬던 거겠지. 그녀는 내게 너무 정신이 팔려 수다만 떠는 건방진 얼간이의 해골 따위에는 관심을 가질 틈조차 없었을 걸세."{#morte_s355_r35185}':
            # a727 # r35185
            $ morteLogic.r35185_action()
            jump morte_s356

        '"자넨 터무니 없는 공상을 하고 있군. 그녀는 좀비야. 시체, 즉 죽은 사람이란 말일세. 아마 그녀는 자네를 인식조차 할 수가 없을 걸세."{#morte_s355_r35188}':
            # a728 # r35188
            jump morte_s357

        '"자네와 자네 상상력은 좀 떨어져 지내야 할 것 같네."{#morte_s355_r35191}':
            # a729 # r35191
            jump morte_s357

        '"뭐든 간에, 모트. 가세."{#morte_s355_r35192}':
            # a730 # r35192
            jump morte_dispose


# s356 # say35186
label morte_s356: # from 355.0
    nr '"당신? 말도 안돼. 저 세상으로 간 계집들은 육체적인 매력이나 몸통이 있는지 여부는 신경도 쓰지 않는다고. 그녀들은 기백이 있는 남자를 원한다고. 그건 바로 나야, 대장. 당신? 대장같은 시체는 동전만큼이나 흔하다고."{#morte_s356_}'

    menu:
        '"뭐든 간에, 모트. 가세."{#morte_s356_r35187}':
            # a731 # r35187
            jump morte_dispose


# s357 # say35189
label morte_s357: # from 355.1 355.2
    nr '"나처럼 죽은 지 오래되면 신호를 감지할 수가 있다고. 대장이 느끼기에는 너무 미묘할지도 모르지만. 그러니 내가 죽은 지 얼마되지 않은 섹시한 계집들과 뜨거운 밤을 보낼 동안 대장은 „어?“ „뭐가 어떻게 돌아가고 있는 거지?“ „내 기-기억이 어디로 갔지“하며 멍하니 서 있을 수밖에."{#morte_s357_}'

    menu:
        '"뭐든 간에, 모트. 가세."{#morte_s357_r35190}':
            # a732 # r35190
            jump morte_dispose


# s358 # say35214
label morte_s358: # externs zf444_s2 zf444_s1 zf444_s0
    nr '"잠깐. 대장은 그녀가 날 어떤 눈으로 쳐다보는지 봤어? 허? 보이지? 내 후두부를 바라보는 그녀의 시선이?"{#morte_s358_}'

    menu:
        '"대체 무슨 얘기를 하는 건가?"{#morte_s358_r35215}':
            # a733 # r35215
            $ morteLogic.r35215_action()
            jump morte_s359

        '"무덤-저편의-공허한-눈빛 말인가?"{#morte_s358_r35225}':
            # a734 # r35225
            $ morteLogic.r35225_action()
            jump morte_s359


# s359 # say35216
label morte_s359: # from 358.0 358.1
    nr '"뭐… 눈이라도 먼 거야?! 그녀는 날 유혹하고 있었다고! 그녀는 정말 노골적으로 날 원했다고!"{#morte_s359_}'

    menu:
        '"아마 자네가 다른 곳으로 가기를 바랬던 거겠지. 그녀는 내게 너무 정신이 팔려 수다만 떠는 건방진 얼간이의 해골 따위에는 관심을 가질 틈조차 없었을 걸세."{#morte_s359_r35217}':
            # a735 # r35217
            $ morteLogic.r35217_action()
            jump morte_s360

        '"자넨 터무니 없는 공상을 하고 있군. 그녀는 좀비야. 시체, 즉 죽은 사람이란 말일세. 아마 그녀는 자네를 인식조차 할 수가 없을 걸세."{#morte_s359_r35220}':
            # a736 # r35220
            jump morte_s361

        '"자네와 자네 상상력은 좀 떨어져 지내야 할 것 같네."{#morte_s359_r35223}':
            # a737 # r35223
            jump morte_s361

        '"뭐든 간에, 모트. 가세."{#morte_s359_r35224}':
            # a738 # r35224
            jump morte_dispose


# s360 # say35218
label morte_s360: # from 359.0
    nr '"당신? 말도 안돼. 저 세상으로 간 계집들은 육체적인 매력이나 몸통이 있는지 여부는 신경도 쓰지 않는다고. 그녀들은 기백이 있는 남자를 원한다고. 그건 바로 나야, 대장. 당신? 대장같은 시체는 동전만큼이나 흔하다고."{#morte_s360_}'

    menu:
        '"뭐든 간에, 모트. 가세."{#morte_s360_r35219}':
            # a739 # r35219
            jump morte_dispose


# s361 # say35221
label morte_s361: # from 359.1 359.2
    nr '"나처럼 죽은 지 오래되면 신호를 감지할 수가 있다고. 대장이 느끼기에는 너무 미묘할지도 모르지만. 그러니 내가 죽은 지 얼마되지 않은 섹시한 계집들과 뜨거운 밤을 보낼 동안 대장은 „어?“ „뭐가 어떻게 돌아가고 있는 거지?“ „내 기-기억이 어디로 갔지“하며 멍하니 서 있을 수밖에."{#morte_s361_}'

    menu:
        '"뭐든 간에, 모트. 가세."{#morte_s361_r35222}':
            # a740 # r35222
            jump morte_dispose


# s362 # say35246
label morte_s362: # externs zf1148_s2 zf1148_s1 zf1148_s0
    nr '"잠깐. 대장은 그녀가 날 어떤 눈으로 쳐다보는지 봤어? 허? 보이지? 내 후두부를 바라보는 그녀의 시선이?"{#morte_s362_}'

    menu:
        '"대체 무슨 얘기를 하는 건가?"{#morte_s362_r35247}':
            # a741 # r35247
            $ morteLogic.r35247_action()
            jump morte_s363

        '"무덤-저편의-공허한-눈빛 말인가?"{#morte_s362_r35257}':
            # a742 # r35257
            $ morteLogic.r35257_action()
            jump morte_s363


# s363 # say35248
label morte_s363: # from 362.0 362.1
    nr '"뭐… 눈이라도 먼 거야?! 그녀는 날 유혹하고 있었다고! 그녀는 정말 노골적으로 날 원했다고!"{#morte_s363_}'

    menu:
        '"아마 자네가 다른 곳으로 가기를 바랬던 거겠지. 그녀는 내게 너무 정신이 팔려 수다만 떠는 건방진 얼간이의 해골 따위에는 관심을 가질 틈조차 없었을 걸세."{#morte_s363_r35249}':
            # a743 # r35249
            $ morteLogic.r35249_action()
            jump morte_s364

        '"자넨 터무니 없는 공상을 하고 있군. 그녀는 좀비야. 시체, 즉 죽은 사람이란 말일세. 아마 그녀는 자네를 인식조차 할 수가 없을 걸세."{#morte_s363_r35252}':
            # a744 # r35252
            jump morte_s365

        '"자네와 자네 상상력은 좀 떨어져 지내야 할 것 같네."{#morte_s363_r35255}':
            # a745 # r35255
            jump morte_s365

        '"뭐든 간에, 모트. 가세."{#morte_s363_r35256}':
            # a746 # r35256
            jump morte_dispose


# s364 # say35250
label morte_s364: # from 363.0
    nr '"당신? 말도 안돼. 저 세상으로 간 계집들은 육체적인 매력이나 몸통이 있는지 여부는 신경도 쓰지 않는다고. 그녀들은 기백이 있는 남자를 원한다고. 그건 바로 나야, 대장. 당신? 대장같은 시체는 동전만큼이나 흔하다고."{#morte_s364_}'

    menu:
        '"뭐든 간에, 모트. 가세."{#morte_s364_r35251}':
            # a747 # r35251
            jump morte_dispose


# s365 # say35253
label morte_s365: # from 363.1 363.2
    nr '"나처럼 죽은 지 오래되면 신호를 감지할 수가 있다고. 대장이 느끼기에는 너무 미묘할지도 모르지만. 그러니 내가 죽은 지 얼마되지 않은 섹시한 계집들과 뜨거운 밤을 보낼 동안 대장은 „어?“ „뭐가 어떻게 돌아가고 있는 거지?“ „내 기-기억이 어디로 갔지“하며 멍하니 서 있을 수밖에."{#morte_s365_}'

    menu:
        '"뭐든 간에, 모트. 가세."{#morte_s365_r35254}':
            # a748 # r35254
            jump morte_dispose


# s366 # say35278
label morte_s366: # externs zf891_s2 zf891_s1 zf891_s0
    nr '"잠깐. 대장은 그녀가 날 어떤 눈으로 쳐다보는지 봤어? 허? 보이지? 내 후두부를 바라보는 그녀의 시선이?"{#morte_s366_}'

    menu:
        '"대체 무슨 얘기를 하는 건가?"{#morte_s366_r35279}':
            # a749 # r35279
            $ morteLogic.r35279_action()
            jump morte_s367

        '"무덤-저편의-공허한-눈빛 말인가?"{#morte_s366_r35289}':
            # a750 # r35289
            $ morteLogic.r35289_action()
            jump morte_s367


# s367 # say35280
label morte_s367: # from 366.0 366.1
    nr '"뭐… 눈이라도 먼 거야?! 그녀는 날 유혹하고 있었다고! 그녀는 정말 노골적으로 날 원했다고!"{#morte_s367_}'

    menu:
        '"아마 자네가 다른 곳으로 가기를 바랬던 거겠지. 그녀는 내게 너무 정신이 팔려 수다만 떠는 건방진 얼간이의 해골 따위에는 관심을 가질 틈조차 없었을 걸세."{#morte_s367_r35281}':
            # a751 # r35281
            $ morteLogic.r35281_action()
            jump morte_s368

        '"자넨 터무니 없는 공상을 하고 있군. 그녀는 좀비야. 시체, 즉 죽은 사람이란 말일세. 아마 그녀는 자네를 인식조차 할 수가 없을 걸세."{#morte_s367_r35284}':
            # a752 # r35284
            jump morte_s369

        '"자네와 자네 상상력은 좀 떨어져 지내야 할 것 같네."{#morte_s367_r35287}':
            # a753 # r35287
            jump morte_s369

        '"뭐든 간에, 모트. 가세."{#morte_s367_r35288}':
            # a754 # r35288
            jump morte_dispose


# s368 # say35282
label morte_s368: # from 367.0
    nr '"당신? 말도 안돼. 저 세상으로 간 계집들은 육체적인 매력이나 몸통이 있는지 여부는 신경도 쓰지 않는다고. 그녀들은 기백이 있는 남자를 원한다고. 그건 바로 나야, 대장. 당신? 대장같은 시체는 동전만큼이나 흔하다고."{#morte_s368_}'

    menu:
        '"뭐든 간에, 모트. 가세."{#morte_s368_r35283}':
            # a755 # r35283
            jump morte_dispose


# s369 # say35285
label morte_s369: # from 367.1 367.2
    nr '"나처럼 죽은 지 오래되면 신호를 감지할 수가 있다고. 대장이 느끼기에는 너무 미묘할지도 모르지만. 그러니 내가 죽은 지 얼마되지 않은 섹시한 계집들과 뜨거운 밤을 보낼 동안 대장은 „어?“ „뭐가 어떻게 돌아가고 있는 거지?“ „내 기-기억이 어디로 갔지“하며 멍하니 서 있을 수밖에."{#morte_s369_}'

    menu:
        '"뭐든 간에, 모트. 가세."{#morte_s369_r35286}':
            # a756 # r35286
            jump morte_dispose


# s370 # say35310
label morte_s370: # from 377.3
    nr '"흠… 이 회색 수염이 내가 자기 몸을 빌려도 뭐라고 하지 않을지 모르겠군…"{#morte_s370_}'

    menu:
        '"회색 수염?"{#morte_s370_r35311}':
            # a757 # r35311
            jump morte_s371

        '"나는 그가 이의를 제기할 입장이라고는 생각하지 않네."{#morte_s370_r35326}':
            # a758 # r35326
            jump morte_s372

        '"자네에게 팔이 있었으면 지금의 두 배는 더 짜증스러웠을 거라는 생각이 드는군. 가세."{#morte_s370_r35327}':
            # a759 # r35327
            jump morte_s373


# s371 # say35312
label morte_s371: # from 370.0
    nr '"회색 수염… 대장도 알다시피 늙다리, 늙은이, 노인 등을 가리키는 말이야."{#morte_s371_}'

    menu:
        '"난 그가 이의를 제기할 입장이라고는 생각지 않네. 왜 그의 몸을 차지하지 않나?"{#morte_s371_r35313}':
            # a760 # r35313
            jump morte_s372

        '"자네에게 팔이 있었으면 지금의 두 배는 더 짜증스러웠을 거라는 생각이 드는군. 가세."{#morte_s371_r35325}':
            # a761 # r35325
            jump morte_s373


# s372 # say35314
label morte_s372: # from 370.1 371.0
    nr '모트는 잠시 그 스켈레톤을 살펴보더니 고개를 젓는다. "아니… 내겐 이것보다 신선한 놈이 필요해. 그리고 좀 더 품위가 있는 몸이… 이건 사방에 금하고 깨진 곳 투성이야 "{#morte_s372_}'

    menu:
        '"그럼 자넨 그렇지 않단 말인가?"{#morte_s372_r35315}':
            # a762 # r35315
            jump morte_s373

        '"그럼 좋네. 가세."{#morte_s372_r35324}':
            # a763 # r35324
            jump morte_dispose


# s373 # say35316
label morte_s373: # from 370.2 371.1 372.0
    nr '"아, 대장은 정말 웃기는군." 모트는 당신을 노려본다. "그리고 대장은 그런 말을 할 입장이 아니지. 대장이 근처에 있으면 거울들이 자비를 구한다고."{#morte_s373_}'

    menu:
        '"그래? 적어도 내겐 신체의 모든 부위가 다 있네."{#morte_s373_r35317}':
            # a764 # r35317
            jump morte_s374

        '"가세."{#morte_s373_r35323}':
            # a765 # r35323
            jump morte_dispose


# s374 # say35318
label morte_s374: # from 373.0
    nr '모트는 코방귀를 뀐다. 허파도 없이 어떻게 그런 일을 할 수가 있는지 당신으로서는 알 수가 없다.{#morte_s374_}'

    menu:
        '"자네에게 말해주겠는데, 모트, 팔을 흔들며 걸으면서 신선한 공기를 들이마시는 것보다 만족스러운 건 없다네. 몸이 있다는 건 멋진 일이네."{#morte_s374_r35319}':
            # a766 # r35319
            $ morteLogic.r35319_action()
            jump morte_s375

        '"가세."{#morte_s374_r35322}':
            # a767 # r35322
            jump morte_dispose


# s375 # say35320
label morte_s375: # from 374.0
    nr '"대장이 준비실을 빠져나오도록 도와준 건 점점 늘어나는 후회할 것들 목록에 추가되었어." 모트는 다시 코를 씨근거린다. "대장이 그냥 썩도록 내버려 두었어야 했어…"{#morte_s375_}'

    menu:
        '"자네가 그렇게 생각한다니 기쁘네. 가세."{#morte_s375_r35321}':
            # a768 # r35321
            jump morte_dispose


# s376 # say35341
label morte_s376: # externs s1221_s3 s1221_s0
    nr '"와우, 대장. 그건 파괴 행위야. 그 볼트들은 그 뼈들을 고정시키는 유일한 것들이라고. 이런 오래된 친구들에게는 이미 사령술도 별 효과가 없다고."{#morte_s376_}'

    menu:
        '"그래서?"{#morte_s376_r35342}':
            # a769 # r35342
            $ morteLogic.r35342_action()
            jump morte_s377

        '"아… 영구적인 대미지는 입히고 싶지 않았는데."{#morte_s376_r35360}':
            # a770 # r35360
            $ morteLogic.r35360_action()
            jump morte_s377

        '"그럼 좋네. 관두게. 나중에 하세."{#morte_s376_r35361}':
            # a771 # r35361
            jump morte_s377


# s377 # say35343
label morte_s377: # from 376.0 376.1 376.2
    nr '"오, 문제가 된다는 얘긴 아니야." 모트는 기묘한 스타일로 아래 위로 움직이는 데 그건 어깨를 으쓱한다는 표현인 듯하다. "난 대장이 그걸 아는가 확인해 보려고 했을 뿐이야, 마음대로 하라고."{#morte_s377_}'

    menu:
        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#morte_s377_r35344}' if morteLogic.r35344_condition():
            # a772 # r35344
            jump s1221_s4  # EXTERN

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#morte_s377_r35352}' if morteLogic.r35352_condition():
            # a773 # r35352
            jump s1221_s5  # EXTERN

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#morte_s377_r35355}' if morteLogic.r35355_condition():
            # a774 # r35355
            jump s1221_s6  # EXTERN

        '"관두게. 나중에 하세."{#morte_s377_r35358}' if morteLogic.r35358_condition():
            # a775 # r35358
            $ morteLogic.r35358_action()
            jump morte_s370

        '"관두게. 나중에 하세."{#morte_s377_r35359}' if morteLogic.r35359_condition():
            # a776 # r35359
            jump morte_dispose


# s378 # say35387
label morte_s378: # from 385.3
    nr '"흠… 이 회색 수염이 내가 자기 몸을 빌려도 뭐라고 하지 않을지 모르겠군…"{#morte_s378_}'

    menu:
        '"회색 수염?"{#morte_s378_r35388}':
            # a777 # r35388
            jump morte_s379

        '"나는 그가 이의를 제기할 입장이라고는 생각하지 않네."{#morte_s378_r35403}':
            # a778 # r35403
            jump morte_s380

        '"자네에게 팔이 있었으면 지금의 두 배는 더 짜증스러웠을 거라는 생각이 드는군. 가세."{#morte_s378_r35404}':
            # a779 # r35404
            jump morte_s381


# s379 # say35389
label morte_s379: # from 378.0
    nr '"회색 수염… 대장도 알다시피 늙다리, 늙은이, 노인 등을 가리키는 말이야."{#morte_s379_}'

    menu:
        '"난 그가 이의를 제기할 입장이라고는 생각지 않네. 왜 그의 몸을 차지하지 않나?"{#morte_s379_r35390}':
            # a780 # r35390
            jump morte_s380

        '"자네에게 팔이 있었으면 지금의 두 배는 더 짜증스러웠을 거라는 생각이 드는군. 가세."{#morte_s379_r35402}':
            # a781 # r35402
            jump morte_s381


# s380 # say35391
label morte_s380: # from 378.1 379.0
    nr '모트는 잠시 그 스켈레톤을 살펴보더니 고개를 젓는다. "아니… 내겐 이것보다 신선한 놈이 필요해. 그리고 좀 더 품위가 있는 몸이… 이건 사방에 금하고 깨진 곳 투성이야 "{#morte_s380_}'

    menu:
        '"그럼 자넨 그렇지 않단 말인가?"{#morte_s380_r35392}':
            # a782 # r35392
            jump morte_s381

        '"그럼 좋네. 가세."{#morte_s380_r35401}':
            # a783 # r35401
            jump morte_dispose


# s381 # say35393
label morte_s381: # from 378.2 379.1 380.0
    nr '"아, 대장은 정말 웃기는군." 모트는 당신을 노려본다. "그리고 대장은 그런 말을 할 입장이 아니지. 대장이 근처에 있으면 거울들이 자비를 구한다고."{#morte_s381_}'

    menu:
        '"그래? 적어도 내겐 신체의 모든 부위가 다 있네."{#morte_s381_r35394}':
            # a784 # r35394
            jump morte_s382

        '"가세."{#morte_s381_r35400}':
            # a785 # r35400
            jump morte_dispose


# s382 # say35395
label morte_s382: # from 381.0
    nr '모트는 코방귀를 뀐다. 허파도 없이 어떻게 그런 일을 할 수가 있는지 당신으로서는 알 수가 없다.{#morte_s382_}'

    menu:
        '"자네에게 말해주겠는데, 모트, 팔을 흔들며 걸으면서 신선한 공기를 들이마시는 것보다 만족스러운 건 없다네. 몸이 있다는 건 멋진 일이네."{#morte_s382_r35396}':
            # a786 # r35396
            $ morteLogic.r35396_action()
            jump morte_s383

        '"가세."{#morte_s382_r35399}':
            # a787 # r35399
            jump morte_dispose


# s383 # say35397
label morte_s383: # from 382.0
    nr '"대장이 준비실을 빠져나오도록 도와준 건 점점 늘어나는 후회할 것들 목록에 추가되었어." 모트는 다시 코를 씨근거린다. "대장이 그냥 썩도록 내버려 두었어야 했어…"{#morte_s383_}'

    menu:
        '"자네가 그렇게 생각한다니 기쁘네. 가세."{#morte_s383_r35398}':
            # a788 # r35398
            jump morte_dispose


# s384 # say35418
label morte_s384: # externs s748_s3 s748_s0
    nr '"와우, 대장. 그건 파괴 행위야. 그 볼트들은 그 뼈들을 고정시키는 유일한 것들이라고. 이런 오래된 친구들에게는 이미 사령술도 별 효과가 없다고."{#morte_s384_}'

    menu:
        '"그래서?"{#morte_s384_r35419}':
            # a789 # r35419
            $ morteLogic.r35419_action()
            jump morte_s385

        '"아… 영구적인 대미지는 입히고 싶지 않았는데."{#morte_s384_r35437}':
            # a790 # r35437
            $ morteLogic.r35437_action()
            jump morte_s385

        '"그럼 좋네. 관두게. 나중에 하세."{#morte_s384_r35438}':
            # a791 # r35438
            jump morte_s385


# s385 # say35420
label morte_s385: # from 384.0 384.1 384.2
    nr '"오, 문제가 된다는 얘긴 아니야." 모트는 기묘한 스타일로 아래 위로 움직이는 데 그건 어깨를 으쓱한다는 표현인 듯하다. "난 대장이 그걸 아는가 확인해 보려고 했을 뿐이야, 마음대로 하라고."{#morte_s385_}'

    menu:
        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#morte_s385_r35421}' if morteLogic.r35421_condition():
            # a792 # r35421
            jump s748_s4  # EXTERN

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#morte_s385_r35429}' if morteLogic.r35429_condition():
            # a793 # r35429
            jump s748_s5  # EXTERN

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#morte_s385_r35432}' if morteLogic.r35432_condition():
            # a794 # r35432
            jump s748_s6  # EXTERN

        '"관두게. 나중에 하세."{#morte_s385_r35435}' if morteLogic.r35435_condition():
            # a795 # r35435
            $ morteLogic.r35435_action()
            jump morte_s378

        '"관두게. 나중에 하세."{#morte_s385_r35436}' if morteLogic.r35436_condition():
            # a796 # r35436
            jump morte_dispose


# s386 # say35464
label morte_s386: # from 393.3
    nr '"흠… 이 회색 수염이 내가 자기 몸을 빌려도 뭐라고 하지 않을지 모르겠군…"{#morte_s386_}'

    menu:
        '"회색 수염?"{#morte_s386_r35465}':
            # a797 # r35465
            jump morte_s387

        '"나는 그가 이의를 제기할 입장이라고는 생각하지 않네."{#morte_s386_r35480}':
            # a798 # r35480
            jump morte_s388

        '"자네에게 팔이 있었으면 지금의 두 배는 더 짜증스러웠을 거라는 생각이 드는군. 가세."{#morte_s386_r35481}':
            # a799 # r35481
            jump morte_s389


# s387 # say35466
label morte_s387: # from 386.0
    nr '"회색 수염… 대장도 알다시피 늙다리, 늙은이, 노인 등을 가리키는 말이야."{#morte_s387_}'

    menu:
        '"난 그가 이의를 제기할 입장이라고는 생각지 않네. 왜 그의 몸을 차지하지 않나?"{#morte_s387_r35467}':
            # a800 # r35467
            jump morte_s388

        '"자네에게 팔이 있었으면 지금의 두 배는 더 짜증스러웠을 거라는 생각이 드는군. 가세."{#morte_s387_r35479}':
            # a801 # r35479
            jump morte_s389


# s388 # say35468
label morte_s388: # from 386.1 387.0
    nr '모트는 잠시 그 스켈레톤을 살펴보더니 고개를 젓는다. "아니… 내겐 이것보다 신선한 놈이 필요해. 그리고 좀 더 품위가 있는 몸이… 이건 사방에 금하고 깨진 곳 투성이야 "{#morte_s388_}'

    menu:
        '"그럼 자넨 그렇지 않단 말인가?"{#morte_s388_r35469}':
            # a802 # r35469
            jump morte_s389

        '"그럼 좋네. 가세."{#morte_s388_r35478}':
            # a803 # r35478
            jump morte_dispose


# s389 # say35470
label morte_s389: # from 386.2 387.1 388.0
    nr '"아, 대장은 정말 웃기는군." 모트는 당신을 노려본다. "그리고 대장은 그런 말을 할 입장이 아니지. 대장이 근처에 있으면 거울들이 자비를 구한다고."{#morte_s389_}'

    menu:
        '"그래? 적어도 내겐 신체의 모든 부위가 다 있네."{#morte_s389_r35471}':
            # a804 # r35471
            jump morte_s390

        '"가세."{#morte_s389_r35477}':
            # a805 # r35477
            jump morte_dispose


# s390 # say35472
label morte_s390: # from 389.0
    nr '모트는 코방귀를 뀐다. 허파도 없이 어떻게 그런 일을 할 수가 있는지 당신으로서는 알 수가 없다.{#morte_s390_}'

    menu:
        '"자네에게 말해주겠는데, 모트, 팔을 흔들며 걸으면서 신선한 공기를 들이마시는 것보다 만족스러운 건 없다네. 몸이 있다는 건 멋진 일이네."{#morte_s390_r35473}':
            # a806 # r35473
            $ morteLogic.r35473_action()
            jump morte_s391

        '"가세."{#morte_s390_r35476}':
            # a807 # r35476
            jump morte_dispose


# s391 # say35474
label morte_s391: # from 390.0
    nr '"대장이 준비실을 빠져나오도록 도와준 건 점점 늘어나는 후회할 것들 목록에 추가되었어." 모트는 다시 코를 씨근거린다. "대장이 그냥 썩도록 내버려 두었어야 했어…"{#morte_s391_}'

    menu:
        '"자네가 그렇게 생각한다니 기쁘네. 가세."{#morte_s391_r35475}':
            # a808 # r35475
            jump morte_dispose


# s392 # say35495
label morte_s392: # externs s996_s3 s996_s0
    nr '"와우, 대장. 그건 파괴 행위야. 그 볼트들은 그 뼈들을 고정시키는 유일한 것들이라고. 이런 오래된 친구들에게는 이미 사령술도 별 효과가 없다고."{#morte_s392_}'

    menu:
        '"그래서?"{#morte_s392_r35496}':
            # a809 # r35496
            $ morteLogic.r35496_action()
            jump morte_s393

        '"아… 영구적인 대미지는 입히고 싶지 않았는데."{#morte_s392_r35514}':
            # a810 # r35514
            $ morteLogic.r35514_action()
            jump morte_s393

        '"그럼 좋네. 관두게. 나중에 하세."{#morte_s392_r35515}':
            # a811 # r35515
            jump morte_s393


# s393 # say35497
label morte_s393: # from 392.0 392.1 392.2
    nr '"오, 문제가 된다는 얘긴 아니야." 모트는 기묘한 스타일로 아래 위로 움직이는 데 그건 어깨를 으쓱한다는 표현인 듯하다. "난 대장이 그걸 아는가 확인해 보려고 했을 뿐이야, 마음대로 하라고."{#morte_s393_}'

    menu:
        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#morte_s393_r35498}' if morteLogic.r35498_condition():
            # a812 # r35498
            jump s996_s4  # EXTERN

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#morte_s393_r35506}' if morteLogic.r35506_condition():
            # a813 # r35506
            jump s996_s5  # EXTERN

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#morte_s393_r35509}' if morteLogic.r35509_condition():
            # a814 # r35509
            jump s996_s6  # EXTERN

        '"관두게. 나중에 하세."{#morte_s393_r35512}' if morteLogic.r35512_condition():
            # a815 # r35512
            $ morteLogic.r35512_action()
            jump morte_s386

        '"관두게. 나중에 하세."{#morte_s393_r35513}' if morteLogic.r35513_condition():
            # a816 # r35513
            jump morte_dispose


# s394 # say35541
label morte_s394: # from 401.3
    nr '"흠… 이 회색 수염이 내가 자기 몸을 빌려도 뭐라고 하지 않을지 모르겠군…"{#morte_s394_}'

    menu:
        '"회색 수염?"{#morte_s394_r35542}':
            # a817 # r35542
            jump morte_s395

        '"나는 그가 이의를 제기할 입장이라고는 생각하지 않네."{#morte_s394_r35557}':
            # a818 # r35557
            jump morte_s396

        '"자네에게 팔이 있었으면 지금의 두 배는 더 짜증스러웠을 거라는 생각이 드는군. 가세."{#morte_s394_r35558}':
            # a819 # r35558
            jump morte_s397


# s395 # say35543
label morte_s395: # from 394.0
    nr '"회색 수염… 대장도 알다시피 늙다리, 늙은이, 노인 등을 가리키는 말이야."{#morte_s395_}'

    menu:
        '"난 그가 이의를 제기할 입장이라고는 생각지 않네. 왜 그의 몸을 차지하지 않나?"{#morte_s395_r35544}':
            # a820 # r35544
            jump morte_s396

        '"자네에게 팔이 있었으면 지금의 두 배는 더 짜증스러웠을 거라는 생각이 드는군. 가세."{#morte_s395_r35556}':
            # a821 # r35556
            jump morte_s397


# s396 # say35545
label morte_s396: # from 394.1 395.0
    nr '모트는 잠시 그 스켈레톤을 살펴보더니 고개를 젓는다. "아니… 내겐 이것보다 신선한 놈이 필요해. 그리고 좀 더 품위가 있는 몸이… 이건 사방에 금하고 깨진 곳 투성이야 "{#morte_s396_}'

    menu:
        '"그럼 자넨 그렇지 않단 말인가?"{#morte_s396_r35546}':
            # a822 # r35546
            jump morte_s397

        '"그럼 좋네. 가세."{#morte_s396_r35555}':
            # a823 # r35555
            jump morte_dispose


# s397 # say35547
label morte_s397: # from 394.2 395.1 396.0
    nr '"아, 대장은 정말 웃기는군." 모트는 당신을 노려본다. "그리고 대장은 그런 말을 할 입장이 아니지. 대장이 근처에 있으면 거울들이 자비를 구한다고."{#morte_s397_}'

    menu:
        '"그래? 적어도 내겐 신체의 모든 부위가 다 있네."{#morte_s397_r35548}':
            # a824 # r35548
            jump morte_s398

        '"가세."{#morte_s397_r35554}':
            # a825 # r35554
            jump morte_dispose


# s398 # say35549
label morte_s398: # from 397.0
    nr '모트는 코방귀를 뀐다. 허파도 없이 어떻게 그런 일을 할 수가 있는지 당신으로서는 알 수가 없다.{#morte_s398_}'

    menu:
        '"자네에게 말해주겠는데, 모트, 팔을 흔들며 걸으면서 신선한 공기를 들이마시는 것보다 만족스러운 건 없다네. 몸이 있다는 건 멋진 일이네."{#morte_s398_r35550}':
            # a826 # r35550
            $ morteLogic.r35550_action()
            jump morte_s399

        '"가세."{#morte_s398_r35553}':
            # a827 # r35553
            jump morte_dispose


# s399 # say35551
label morte_s399: # from 398.0
    nr '"대장이 준비실을 빠져나오도록 도와준 건 점점 늘어나는 후회할 것들 목록에 추가되었어." 모트는 다시 코를 씨근거린다. "대장이 그냥 썩도록 내버려 두었어야 했어…"{#morte_s399_}'

    menu:
        '"자네가 그렇게 생각한다니 기쁘네. 가세."{#morte_s399_r35552}':
            # a828 # r35552
            jump morte_dispose


# s400 # say35572
label morte_s400: # externs s863_s3 s863_s0
    nr '"와우, 대장. 그건 파괴 행위야. 그 볼트들은 그 뼈들을 고정시키는 유일한 것들이라고. 이런 오래된 친구들에게는 이미 사령술도 별 효과가 없다고."{#morte_s400_}'

    menu:
        '"그래서?"{#morte_s400_r35573}':
            # a829 # r35573
            $ morteLogic.r35573_action()
            jump morte_s401

        '"아… 영구적인 대미지는 입히고 싶지 않았는데."{#morte_s400_r35591}':
            # a830 # r35591
            $ morteLogic.r35591_action()
            jump morte_s401

        '"그럼 좋네. 관두게. 나중에 하세."{#morte_s400_r35592}':
            # a831 # r35592
            jump morte_s401


# s401 # say35574
label morte_s401: # from 400.0 400.1 400.2
    nr '"오, 문제가 된다는 얘긴 아니야." 모트는 기묘한 스타일로 아래 위로 움직이는 데 그건 어깨를 으쓱한다는 표현인 듯하다. "난 대장이 그걸 아는가 확인해 보려고 했을 뿐이야, 마음대로 하라고."{#morte_s401_}'

    menu:
        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#morte_s401_r35575}' if morteLogic.r35575_condition():
            # a832 # r35575
            jump s863_s4  # EXTERN

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#morte_s401_r35583}' if morteLogic.r35583_condition():
            # a833 # r35583
            jump s863_s5  # EXTERN

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#morte_s401_r35586}' if morteLogic.r35586_condition():
            # a834 # r35586
            jump s863_s6  # EXTERN

        '"관두게. 나중에 하세."{#morte_s401_r35589}' if morteLogic.r35589_condition():
            # a835 # r35589
            $ morteLogic.r35589_action()
            jump morte_s394

        '"관두게. 나중에 하세."{#morte_s401_r35590}' if morteLogic.r35590_condition():
            # a836 # r35590
            jump morte_dispose


# s402 # say38265
label morte_s402: # -
    nr '"난 벌써 이 아가씨와 사랑에 빠졌다고!"{#morte_s402_}'

    menu:
        '"그러면 글로 쓰거나 팬터마임을 할 수는 없소?"{#morte_s402_r38267}':
            # a837 # r38267
            jump ecco_s7  # EXTERN


# s403 # say38266
label morte_s403: # -
    nr '"역!"{#morte_s403_}'

    menu:
        '"허?"{#morte_s403_r38268}':
            # a838 # r38268
            jump ecco_s34  # EXTERN


# s404 # say39000
label morte_s404: # -
    nr '모트가 속삭인다. 이건 좋지가 않아, 대장. 조심하라고, 그렇지 않으면 놈들이 대장 정신을 흔적도 없이 날려버릴 테니… 그들은 수가 많을 수록 강해져. 각 개체가 집합적인 뇌의 일부가 돼. 놈들은 정말 위험해."{#morte_s404_}'

    jump manyas1_s5  # EXTERN


# s405 # say39001
label morte_s405: # -
    nr '모트가 속삭인다. 이건 좋지가 않아, 대장. 조심하라고, 그렇지 않으면 놈들이 대장 정신을 흔적도 없이 날려버릴 테니… 그들은 수가 많을 수록 강해져. 각 개체가 집합적인 뇌의 일부가 돼. 놈들은 정말 위험해."{#morte_s405_}'

    jump manyas1_s58  # EXTERN


# s406 # say39002
label morte_s406: # -
    nr '모트가 속삭인다. "나는 그들이 무슨 생각을 하고 있는지 모르겠어, 하지만 생각을 읽히지 않도록 조심해. 그들은 정신적 집합체고, 쥐의 수가 들어날 수록 그 능력도 늘어나. 썰렁한 표현일지도 모르겠지만 그들은 궁지에 몰린 쥐들처럼 싸워. 우린 지금 놈들의 소굴에 있어, 보스, 그러니 놈들은 배수의 진을 친 셈이지. 각별히 조심하라고."{#morte_s406_}'

    jump manyas1_s78  # EXTERN


# s407 # say39564
label morte_s407: # -
    nr '"놀라운 우연이야! 나도 사냥을 한다고."{#morte_s407_}'

    jump yves_s2  # EXTERN


# s408 # say39565
label morte_s408: # -
    nr '"나? 왜 *내가* 얘기를 해야 하지?"{#morte_s408_}'

    menu:
        '"그럼 관두시오."{#morte_s408_r39713}':
            # a839 # r39713
            jump morte_s409

        '"그냥 이야기를 하나 하게, 모트."{#morte_s408_r39714}':
            # a840 # r39714
            jump morte_s413


# s409 # say39566
label morte_s409: # from 408.0
    nr '"아니, 아니, 하겠어… 판에 박은 것에서 벗어나 좀 불평을 하면 어떨까 생각해본 것 뿐이야. 그리고 난 주목을 받는 걸 좋아하거든."{#morte_s409_}'

    menu:
        '"어림없네, 모트. 난 듣고 싶지 않아."{#morte_s409_r39715}':
            # a841 # r39715
            jump morte_s410

        '"좋네… 그럼 얘기하게."{#morte_s409_r39716}':
            # a842 # r39716
            $ morteLogic.r39716_action()
            jump morte_s414


# s410 # say39567
label morte_s410: # from 409.0
    nr '"제발! 응? 제-발? 끝내주는 얘기라고! 캐릭터들도 많이 등장하고 액션으로 넘치는 데다가, 전조를 바친 후 충격적인 대단원을 맞이하는 스릴 넘치는 스토리야!"{#morte_s410_}'

    menu:
        '"별로 대수롭지 않을 것 같네."{#morte_s410_r39717}':
            # a843 # r39717
            jump morte_s411

        '"대단원이 뭔가?"{#morte_s410_r39718}':
            # a844 # r39718
            jump morte_s412

        '"좋네… 얘기하게."{#morte_s410_r39719}':
            # a845 # r39719
            $ morteLogic.r39719_action()
            jump morte_s414


# s411 # say39568
label morte_s411: # from 410.0
    nr '"그래, 그렇다고! 자!"{#morte_s411_}'

    menu:
        '"기다리게… 대단원이 뭔가?"{#morte_s411_r39720}':
            # a846 # r39720
            jump morte_s412

        '"좋네… 얘기하게."{#morte_s411_r39721}':
            # a847 # r39721
            $ morteLogic.r39721_action()
            jump morte_s414


# s412 # say39569
label morte_s412: # from 410.1 411.0
    nr '"모르겠어! 하지만 대단한 것처럼 들려!"{#morte_s412_}'

    menu:
        '"좋네, 어디 해보게."{#morte_s412_r39722}':
            # a848 # r39722
            $ morteLogic.r39722_action()
            jump morte_s414


# s413 # say39570
label morte_s413: # from 408.1
    nr '"좋아, 좋아…"{#morte_s413_}'

    $ morteLogic.s413_action()
    jump morte_s414


# s414 # say39571
label morte_s414: # from 409.1 410.2 411.1 412.0 413.0
    nr '"한 노인이 어두운 길에 홀로 앉아 있었어. 그는 어느 방향으로 가야할지 몰랐고, 그는 행선지와 자신이 누구인가를 망각하고 있었어. 그는 피곤한 다리를 쉬게 하기 위하여 잠시 앉았지, 그리고 올려다 보니 갑자기 눈 앞에 어떤 노파가 있는 거야. 그녀는 이빨도 없이 싱긋 웃었지, 그리고 깔깔거리면서 말했어. "„이제 당신의 *세 번째* 소원을 말할 차례요. 무엇을 원하시오?"{#morte_s414_}'

    menu:
        '"모트, 계속하게…"{#morte_s414_r39724}':
            # a849 # r39724
            jump morte_s415

        '"기다리게… 이브즈에게 물어볼 것이 하나 있네…"{#morte_s414_r39725}':
            # a850 # r39725
            jump yves_s4  # EXTERN

        '"그 이야기는 나중에 듣도록 하겠네, 모트. 안녕히 계시오, 이브즈."{#morte_s414_r39726}':
            # a851 # r39726
            jump morte_dispose


# s415 # say39572
label morte_s415: # from 414.0
    nr '"„세 번째 소원?“ 남자는 당황했어. „첫 번째와 두 번째 소원도 말한 적이 없는데 어떻게 세 번째 소원을 말하라는 거요?“"{#morte_s415_}'

    menu:
        '"모트, 계속하게…"{#morte_s415_r39727}':
            # a852 # r39727
            jump morte_s416

        '"기다리게.. 이브즈에게 물어볼 것이 하나 있네…"{#morte_s415_r39728}':
            # a853 # r39728
            jump yves_s4  # EXTERN

        '"그 이야기는 나중에 듣도록 하겠네, 모트. 안녕히 계시오, 이브즈."{#morte_s415_r39729}':
            # a854 # r39729
            jump morte_dispose


# s416 # say39573
label morte_s416: # from 415.0
    nr '"„당신의 두 소원은 이미 성취되었소,“ 노파가 말했지, „하지만 당신의 두 번째 소원은 모든 걸 첫 번째 .소원을 말하기 전 상태로 되돌려 달라는 것이었소. 그래서 당신은 아무 것도 기억하지 못하는 거요. 왜냐하면 모든 것이 *정확히* 당신이 어떤 소원도 말하기 전 상태로 되돌아갔기 때문이오.“ 그녀는 불쌍한 노인을 보며 깔깔 웃었지. „그래서 하나의 소원만 남은 거요.“"{#morte_s416_}'

    menu:
        '"모트, 계속하게…"{#morte_s416_r39752}':
            # a855 # r39752
            jump morte_s417

        '"기다리게… 이브즈에게 물어볼 것이 하나 있네…"{#morte_s416_r39753}':
            # a856 # r39753
            jump yves_s4  # EXTERN

        '"그 이야기는 나중에 듣도록 하겠네, 모트. 안녕히 계시오, 이브즈."{#morte_s416_r39754}':
            # a857 # r39754
            jump morte_dispose


# s417 # say39574
label morte_s417: # from 416.0
    nr '"„좋소,“ 노인이 말했어, "나는 이 얘기를 믿지 않소, 하지만 소원을 말해서 손해 볼 건 없으니까. 나는 내가 누군지 알고 싶소.„"  "“재미있군,„ 노파는 소원을 들어주고 영원히 사라지면서 말했어. “그게 바로 당신의 첫 번째 소원이었소.„"{#morte_s417_}'

    jump yves_s55  # EXTERN


# s418 # say39575
label morte_s418: # -
    nr '"빌어먹을, 대체 그게 뭐야, 이 바보 같은 폴리곤아?! 그건 내가 들어본 것들 중 가장 지루한 쓰레기야!"{#morte_s418_}'

    jump nordom_s11  # EXTERN


# s419 # say39576
label morte_s419: # -
    nr '"윤색?"{#morte_s419_}'

    jump nordom_s12  # EXTERN


# s420 # say39577
label morte_s420: # -
    nr '"*자,* 흰들링. 네게는 이미 절대로 내놓지 않으려 할 꼬리가 하나 있다고."{#morte_s420_}'

    jump annah_s196  # EXTERN


# s421 # say40068
label morte_s421: # -
    nr '모트는 여자의 빤한 태도를 흉내내며 당신 주위를 돈다. "천상의 신들이여, 대장… 그녀가 옳아! 지금까진 몰랐는데… 대장은 *흉터*로 뒤덮여 있어!"{#morte_s421_}'

    menu:
        '"그것들은 모두 오래된 흉터들이오. 난 괜찮소."{#morte_s421_r40069}' if morteLogic.r40069_condition():
            # a858 # r40069
            jump nenny_s2  # EXTERN

        '"대수로운 것이 아니오. 난 괜찮을 거요."{#morte_s421_r40070}' if morteLogic.r40070_condition():
            # a859 # r40070
            jump nenny_s2  # EXTERN

        '"그렇소. 그것도 아주 심하오."{#morte_s421_r40071}' if morteLogic.r40071_condition():
            # a860 # r40071
            jump nenny_s2  # EXTERN

        '"신경 쓸 것 없소. 물어볼 것들이 좀 있소…"{#morte_s421_r40072}':
            # a861 # r40072
            jump nenny_s3  # EXTERN

        '"그 일에 대해서는 걱정하지 마시오. 안녕히 계시오."{#morte_s421_r40073}':
            # a862 # r40073
            jump morte_dispose


# s422 # say40074
label morte_s422: # -
    nr '모트는 눈썹을 움직인다. "그래, 당신은 너무 „뻔뻔해“… 그건 아마 당신의 흔들리는 유-"{#morte_s422_}'

    menu:
        '"모트., 그만 됐네."{#morte_s422_r40075}':
            # a863 # r40075
            jump morte_s423


# s423 # say40076
label morte_s423: # from 422.0
    nr '모트는 입을 다문다.{#morte_s423_}'

    menu:
        '"괜찮소, 네니."{#morte_s423_r40077}' if morteLogic.r40077_condition():
            # a864 # r40077
            jump nenny_s9  # EXTERN

        '"다시는 그러지 마시오, 네니."{#morte_s423_r40078}' if morteLogic.r40078_condition():
            # a865 # r40078
            jump nenny_s9  # EXTERN

        '"괜찮소, 아가씨."{#morte_s423_r40079}' if morteLogic.r40079_condition():
            # a866 # r40079
            jump nenny_s9  # EXTERN

        '"다시는 그러지 말도록 하시오, 아가씨."{#morte_s423_r40080}' if morteLogic.r40080_condition():
            # a867 # r40080
            jump nenny_s9  # EXTERN


# s424 # say40081
label morte_s424: # -
    nr '"이봐!"{#morte_s424_}'

    jump nenny_s27  # EXTERN


# s425 # say40082
label morte_s425: # -
    nr '모트는 혼자서 중얼거린다. "그 안에 뭔가가 있다는 건 좋은 일인 것 깉군."{#morte_s425_}'

    menu:
        '"다른 질문이 있소, 네니…"{#morte_s425_r40083}':
            # a868 # r40083
            jump nenny_s3  # EXTERN

        '"내가 원했던 건 그게 전부요. 네니. 안녕히 계시오."{#morte_s425_r40084}':
            # a869 # r40084
            jump morte_dispose


# s426 # say40222
label morte_s426: # -
    nr '"오, 안돼… 우리에게 당장 말해줘야 해."{#morte_s426_}'

    menu:
        '"그래… 제발, 나으리. 얘기해 주시오."{#morte_s426_r40223}':
            # a870 # r40223
            jump brocus4_s4  # EXTERN

        '"관두세, 모트. 그에게 하고 싶은 질문이 또 있네…"{#morte_s426_r40224}':
            # a871 # r40224
            jump brocus4_s2  # EXTERN

        '"관두게, 모트. 가세."{#morte_s426_r40225}':
            # a872 # r40225
            jump morte_dispose


# s427 # say40275
label morte_s427: # -
    nr '모트는 당신 가까이로 날아와 속삭인다. "그녀의 애인이 불쌍하군. 그는 자기 애인의 본색을 모르고 있을 거야. 저런 계집은 골칫거리일 뿐이야.{#morte_s427_}'

    menu:
        '"그건 현명한 생각이 아니오, 줄리엣. 자신이 가진 것을 아끼고 즐길 줄을 아시오."{#morte_s427_r40276}':
            # a873 # r40276
            jump sadjuli_s12  # EXTERN

        '"무슨 생각을 하고 있었소, 줄리엣?"{#morte_s427_r40277}':
            # a874 # r40277
            jump sadjuli_s13  # EXTERN

        '"물어볼 것들이 좀 있소. 줄리엣…"{#morte_s427_r40278}':
            # a875 # r40278
            jump sadjuli_s24  # EXTERN

        '"내가 원했던 건 그게 전부요, 줄리엣. 안녕히 계시오."{#morte_s427_r40279}':
            # a876 # r40279
            jump morte_dispose


# s428 # say40685
label morte_s428: # -
    nr '모트는 조용히 속삭인다: "와… 정말 무시무시한 계집이야."{#morte_s428_}'

    menu:
        '"미안하오, 부인… 이 곳에 누가 있으리라고는 생각하지 않았소."{#morte_s428_r40686}':
            # a877 # r40686
            jump marissa_s2  # EXTERN

        '"질문할 것들이 있소, 부인,"{#morte_s428_r40687}':
            # a878 # r40687
            jump marissa_s3  # EXTERN

        '"그럼 안녕히 계시오, 부인."{#morte_s428_r40688}':
            # a879 # r40688
            jump morte_dispose


# s429 # say40846
label morte_s429: # -
    nr '"이봐, 대장! 지금 우리는 다원 우주에서 가장 섹시한 계집들이 모인 곳에 와 있다고, 그런데 대장은 *모드론*과 얘기를 하는 거야?"{#morte_s429_}'

    menu:
        '"그들에 대해 내게 어떤 얘기를 해줄 수 있겠나, 모트?"{#morte_s429_r40847}':
            # a880 # r40847
            jump morte_s430

        '모트를 무시하고 모드론과 인사한다.{#morte_s429_r40848}':
            # a881 # r40848
            $ morteLogic.r40848_action()
            jump brocus6_s3  # EXTERN

        '"미안하네, 모트, 하지만 난 모드론과 얘기를 해야겠네."{#morte_s429_r40849}':
            # a882 # r40849
            jump morte_s431

        '"알았네. 가세, 모트."{#morte_s429_r40850}':
            # a883 # r40850
            jump morte_dispose


# s430 # say40851
label morte_s430: # from 429.0
    nr '모트는 역겨워 못 견디겠다는 듯 말한다. "대체 무슨 얘기를 하겠다는 거야? 짜증나는 태엽 벌레를… 놈들은 늘 다원 우주에 법과 질서를 강제하려고 날뛰고 있다고. *선*에는 관심도 없고 *질서*만. 놈들에겐 신경 끄고서 아가씨들하고 얘기나 하지고."{#morte_s430_}'

    menu:
        '모트를 무시하고 모드론과 인사한다.{#morte_s430_r40852}':
            # a884 # r40852
            $ morteLogic.r40852_action()
            jump brocus6_s3  # EXTERN

        '"미안하네, 모트, 하지만 난 모드론과 얘기를 해야겠네."{#morte_s430_r40853}':
            # a885 # r40853
            jump morte_s431

        '"알았네. 가세, 모트."{#morte_s430_r40854}':
            # a886 # r40854
            jump morte_dispose


# s431 # say40855
label morte_s431: # from 429.2 430.1
    nr '모트는 크게 한숨을 쉰다. "좋아. 마음대로 해. 하지만 나중에 나보고 뭐라지는 마. 하지만 놈들로부터 뭘 알아내긴 힘들 거야, 대장… 얘기 상대로는 묘한 것들이니까."{#morte_s431_}'

    menu:
        '"안녕하시오…"{#morte_s431_r40856}':
            # a887 # r40856
            $ morteLogic.r40856_action()
            jump brocus6_s3  # EXTERN


# s432 # say41135
label morte_s432: # -
    nr '"뭐든지!" 모트가 외친다. "뭐든지 하고 싶은 대로 하라고!"{#morte_s432_}'

    jump kesai_s2  # EXTERN


# s433 # say41136
label morte_s433: # -
    nr '"정말 눈물이 나오려고 하는군… 왜 *몸*이 있었을 때는 이런 아가씨를 만나지 못했던 거지?!"{#morte_s433_}'

    jump kesai_s11  # EXTERN


# s434 # say41632
label morte_s434: # -
    nr '"내 친구는 네년이 매력적이라고 생각했었지, 하지만 으악! 그는 정말 끔찍한 착각을 한 거지!"{#morte_s434_}'

    jump kimasxi_s2  # EXTERN


# s435 # say41633
label morte_s435: # from 436.0
    nr '"좋소, 대장, 알았다고. 지독한 년이야, 안 그래?" 모트는 *흥* 소리를 내고 눈썹을 움직인다. "그것 참 마음에 드는데!"{#morte_s435_}'

    menu:
        '"물론 그렇겠지, 모트, 하지만 난 그녀와 얘기해야겠네"{#morte_s435_r41634}':
            # a888 # r41634
            jump kimasxi_s14  # EXTERN

        '"알았네… 그냥 가세, 모트."{#morte_s435_r41635}':
            # a889 # r41635
            jump kimasxi_s4  # EXTERN


# s436 # say41636
label morte_s436: # -
    nr '"내게 거시기가 있었더라도 네년 근처에 갖다 대기라도 했을 것 같아? 매음굴에 대해 어디서 주워듣고는 여기 와서 돈이라도 벌 생각이라도 했던 거야, 이 벼룩에게 물린 시궁창에서 나온 창녀야! 흥! 네 털복숭이 다리에서 진드기들이 서 말은 튀어나오는 데도 불구하고 그들이 널 들여보내 주었다는 사실이 믿기지 않는군!"{#morte_s436_}'

    menu:
        '"두 사람 다 그만하시오."{#morte_s436_r41637}':
            # a890 # r41637
            jump morte_s435

        '그들이 계속 옥신각신하도록 내버려 둔다.{#morte_s436_r41638}':
            # a891 # r41638
            jump kimasxi_s3  # EXTERN


# s437 # say41639
label morte_s437: # -
    nr '"*그*라고 해! „*그*는 지금도 입이 꽤 더러운 것 같은데“라고 하라고, 똥주머니 키마스사이… 이 더러운 염소다리 창녀야!"{#morte_s437_}'

    jump kimasxi_s18  # EXTERN


# s438 # say41640
label morte_s438: # -
    nr '"아마 너보단 낫겠지?" 모트는 눈썹을 움직인다. "에? 에?"{#morte_s438_}'

    jump kimasxi_s20  # EXTERN


# s439 # say41641
label morte_s439: # -
    nr '"좋아, *티플링.* 하지만 네게서 한두 가지 정도 배운 건 인정하지. 좋은 생각이었어, 대장!"~ [MRT387]{#morte_s439_}'

    menu:
        '"물론이지, 모트."{#morte_s439_r41642}':
            # a892 # r41642
            jump kimasxi_s21  # EXTERN


# s440 # say41830
label morte_s440: # from 444.7 445.2 446.2 447.2 448.2 449.1 450.1 451.2 452.1 453.1 454.1
    nr '"이봐, 대장. 대장은 죽음과 키스를 한 탓에 아직도 정신이 좀 오락가락한 것 같아. 그러니 내가 두 가지 충고를 하겠어. 첫째, 질문할 게 있으면 내게 *물어.* 알겠어?"  ^NNOTE: <SPEAKTO>^-{#morte_s440_}'

    menu:
        '"알겠네… 질문할 것이 있으면 자네에게 물어보겠네."{#morte_s440_r41831}':
            # a893 # r41831
            jump morte_s441


# s441 # say41832
label morte_s441: # from 440.0
    nr '"둘째, 대장이 겉보기의 *반*만큼이라도 건망증이 심하다면, 뭐든지 기록을 하는 습관을 기르라고. 조금이라도 중요할 것 같은 얘기를 듣게 되면 잊지 않도록 즉각 기록을 해."{#morte_s441_}'

    menu:
        '"만약 내가 지니고 있어야 할 일지를 가지고 있다면 그렇게 하겠네."{#morte_s441_r41833}':
            # a894 # r41833
            jump morte_s442


# s442 # say41834
label morte_s442: # from 441.0
    nr '"그럼 새 일지를 쓰기 시작하라고. 그 따윈 별 문제도 아냐. 여긴 대장이 평생 쓰고 남을 정도의 양피지와 잉크가 있으니까."{#morte_s442_}'

    menu:
        '"흠… 좋네. 손해볼 건 없겠지… 그럼 새 일지를 만들도록 하지."{#morte_s442_r41835}':
            # a895 # r41835
            jump morte_s443


# s443 # say41836
label morte_s443: # from 442.0
    nr '"그것을 써서 대장의 여정을 파악하라고. 만약 대장이 중요한 사안들, 예들 들어 대장이 누구인가.,.. 또는 더 중요하게 *내*가 누구인가에 대해 가물가물하게 되면 일지를 읽어 기억을 상기시키라고. 알겠어?"  ^NNOTE: 일지를 보려면 퀵 메뉴에 있는 일지 버튼을 누른다. 일지는 게임 진행 동안 자동으로 갱신된다.^-{#morte_s443_}'

    menu:
        '"좋아, 알았네. 가세."{#morte_s443_r41837}':
            # a896 # r41837
            $ morteLogic.j39516_s443_r41837_action()
            jump morte_dispose


# s444 # say41838
label morte_s444: # from 445.1 446.1 447.1 448.1 449.0 450.0 451.1 452.0 453.0 454.0 455.1 456.2 457.1 458.0 # IF WEIGHT #6 /* Triggers after states #: 742 737 733 487 even though they appear after this state */ ~  !Global("Mortuary_Walkthrough","GLOBAL",0) !Global("Mortuary_Walkthrough","GLOBAL",1) Global("AR0200_Visited","GLOBAL",0) InParty("Morte") !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"대체 뭘 그렇게 골똘히 생각하는 거야, 대장?"~ [MRT515]{#morte_s444_}'

    menu:
        '"내 등에 새겨진 글을 다시 읽어 주겠나?"{#morte_s444_r41840}':
            # a897 # r41840
            jump morte_s445

        '"여기가 어떤 곳인지 다시 얘기해주겠나?"{#morte_s444_r41841}':
            # a898 # r41841
            jump morte_s450

        '"이 곳은 거대하군… 누가 관리하지?"{#morte_s444_r41842}' if morteLogic.r41842_condition():
            # a899 # r41842
            jump morte_s451

        '"이 곳의 관리인이 누군지 다시 말해주겠나?"{#morte_s444_r41843}' if morteLogic.r41843_condition():
            # a900 # r41843
            jump morte_s451

        '"이 곳에 있는 시체들… 그것들은 다 어디서 왔나?"{#morte_s444_r41844}':
            # a901 # r41844
            jump morte_s454

        '"전에 자네는 내게 *여자*시체는 죽이지 말라고 했었네. 그 이유는 뭔가?"{#morte_s444_r41845}' if morteLogic.r41845_condition():
            # a902 # r41845
            jump morte_s455

        '"이 붕대들은 어떻게 사용하나?"{#morte_s444_r41846}' if morteLogic.r41846_condition():
            # a903 # r41846
            jump morte_s453

        '"지금은 아무런 용건도 없네, 모트. 난 자네가 아직도 나와 있는지 확인했을 뿐이네."{#morte_s444_r41847}' if morteLogic.r41847_condition():
            # a904 # r41847
            jump morte_s440

        '"지금은 아무런 용건도 없네, 모트. 난 자네가 아직도 나와 있는지 확인했을 뿐이네."{#morte_s444_r41848}' if morteLogic.r41848_condition():
            # a905 # r41848
            jump morte_dispose


# s445 # say41849
label morte_s445: # from 444.0
    nr '"이봐, 대장. 설마 벌써 까먹은 건 아니겠지?"{#morte_s445_}'

    menu:
        '"내 기억을 되살리고자 할 뿐이네."{#morte_s445_r41850}':
            # a906 # r41850
            jump morte_s446

        '"그럼 관두게. 그 밖에도 다른 질문들이 있네…"{#morte_s445_r41851}':
            # a907 # r41851
            jump morte_s444

        '"그럼 관두게. 가세."{#morte_s445_r41852}' if morteLogic.r41852_condition():
            # a908 # r41852
            jump morte_s440

        '"그럼 관두게. 가세."{#morte_s445_r41853}' if morteLogic.r41853_condition():
            # a909 # r41853
            jump morte_dispose


# s446 # say41854
label morte_s446: # from 445.0
    nr '"그 소리를 많이 듣게 될 것 같군." 모트는 헛기침을 한다. "어디 보자…"  „네가 스틱스 강물을 몇 통이나 마신 듯한 기분인 것은 알지만, 정신을 차리고 집중해야 한다. 네 소지품들 중에는 이 중대사에 대해서 일부나마 밝혀 줄 일지가 한 권 있을 것이다. 만약 파로드가 이미 죽지 않았다면 그가 나머지 부분에 대해 설명해줄 수 있을 것이다.“{#morte_s446_}'

    menu:
        '"파로드… 흠… 계속하게."{#morte_s446_r41855}':
            # a910 # r41855
            jump morte_s447

        '"관두게. 다른 질문이 있네.."{#morte_s446_r41856}':
            # a911 # r41856
            jump morte_s444

        '"관두게. 이미 충분히 들었네. 그만 가세."{#morte_s446_r41857}' if morteLogic.r41857_condition():
            # a912 # r41857
            jump morte_s440

        '"관두게. 이미 충분히 들었네. 그만 가세."{#morte_s446_r41858}' if morteLogic.r41858_condition():
            # a913 # r41858
            jump morte_dispose


# s447 # say41859
label morte_s447: # from 446.0
    nr '"그래, 그래, 기다리라고." 모트는 잠시 멈춘다. "좋아, 이게 마지막이야…"  „절대로 일지를 잃어서는 안 된다, 아니면 우린 다시 스틱스에 빠지는 신세가 될 테니까. 알겠나? 그리고 내 말을 믿어라 - 뭘 하든 간에 네가 누구이며, 어떤 일이 네게 일어나고 있으며, 어디서 왔는지에 대해 말해서는 안 된다. 그렇지 않으면 화장터로 직행하게 될 테니. 내가 말하는 대로 해라: 일지를 읽은 후 파로드를 찾아라.“{#morte_s447_}'

    menu:
        '"그리고 내가 깨어났을 때 내게 일지가 없었는가?"{#morte_s447_r41860}':
            # a914 # r41860
            jump morte_s448

        '"관두게. 다른 질문이 있네…"{#morte_s447_r41861}':
            # a915 # r41861
            jump morte_s444

        '"관두게. 이미 충분히 들었네. 그만 가세."{#morte_s447_r41862}' if morteLogic.r41862_condition():
            # a916 # r41862
            jump morte_s440

        '"관두게. 이미 충분히 들었네. 그만 가세."{#morte_s447_r41863}' if morteLogic.r41863_condition():
            # a917 # r41863
            jump morte_dispose


# s448 # say41864
label morte_s448: # from 447.0
    nr '"아니… 여기 왔을 때 대장은 깨끗하게 털린 상태였어. 이미 말했듯이 대장 몸에는 충분하고도 남을 정도의 일지가 적혀 있다고."{#morte_s448_}'

    menu:
        '"파로드란 사람을 정말 모르나?"{#morte_s448_r41865}':
            # a918 # r41865
            jump morte_s449

        '"옳은 말이네. 그 밖에도 물어보고 싶은 것들이 있네…"{#morte_s448_r41866}':
            # a919 # r41866
            jump morte_s444

        '"그럼 좋네. 가세."{#morte_s448_r41867}' if morteLogic.r41867_condition():
            # a920 # r41867
            jump morte_s440

        '"그럼 좋네. 가세."{#morte_s448_r41868}' if morteLogic.r41868_condition():
            # a921 # r41868
            jump morte_dispose


# s449 # say41869
label morte_s449: # from 448.0
    nr '"아니. 그래도 이 파로드란 자가 어디 있는지 아는 사람은 있을 거야… 물론 그건 우리가 이 곳에서 탈출한 후의 얘기지만."{#morte_s449_}'

    menu:
        '"우리가 가기 전에 다른 질문들을 좀 하고 싶네…"{#morte_s449_r41870}':
            # a922 # r41870
            jump morte_s444

        '"그럼 좋네. 가세."{#morte_s449_r41871}' if morteLogic.r41871_condition():
            # a923 # r41871
            jump morte_s440

        '"그럼 좋네. 가세."{#morte_s449_r41872}' if morteLogic.r41872_condition():
            # a924 # r41872
            jump morte_dispose


# s450 # say41873
label morte_s450: # from 444.1
    nr '"그것은 „시체안치소“라고 불리지… 임신한 거미만큼이나 매력적인 모양새의 커다란 검은 건물이라고."{#morte_s450_}'

    menu:
        '"알았네. 자네에게 물어볼 것들이 더 있네."{#morte_s450_r41874}':
            # a925 # r41874
            jump morte_s444

        '"내가 알고 싶었던 건 그게 전부네. 고맙네."{#morte_s450_r41875}' if morteLogic.r41875_condition():
            # a926 # r41875
            jump morte_s440

        '"내가 알고 싶었던 건 그게 전부네. 고맙네."{#morte_s450_r41876}' if morteLogic.r41876_condition():
            # a927 # r41876
            jump morte_dispose


# s451 # say41877
label morte_s451: # from 444.2 444.3
    nr '"그들은 자신들을 „더스트맨“이라고 부르고 있어. 그들을 알아보는 건 쉽지. 예외없이 검은 법복을 입고 있는데다가 꼭 사후경직을 일으킨 것 같은 얼굴들을 하고 있으니까. 그들은 악귀같은 죽음 숭배자들이야. 그들은 모두 다 죽어야 한다고 믿고 있어… 그것도 빠르면 빠를수록 좋다고."{#morte_s451_}'

    menu:
        '"난 헷갈리네… 내가 탈출하는 것에 대해 더스트맨들이 왜 신경을 쓰지?"{#morte_s451_r41878}':
            # a928 # r41878
            jump morte_s452

        '"알았네. 자네에게 물어볼 것들이 더 있네."{#morte_s451_r41879}':
            # a929 # r41879
            jump morte_s444

        '"알았네. 그렇다면 조심하겠네."{#morte_s451_r41880}' if morteLogic.r41880_condition():
            # a930 # r41880
            jump morte_s440

        '"알았네. 그렇다면 조심하겠네."{#morte_s451_r41881}' if morteLogic.r41881_condition():
            # a931 # r41881
            jump morte_dispose


# s452 # say41882
label morte_s452: # from 451.0
    nr '"내가 말할 때 뭘 하고 있었어?! 더스트맨은 모두가 다 죽어야 하며, 그것도 빠르면 빠를수록 좋다고 믿고 있다고 내가 이미 말했잖아. 대장이 보기엔 지금까지 우리가 본 시체들이 죽어서 더 행복해진 것 같아?"{#morte_s452_}'

    menu:
        '"알았네. 자네에게 물어볼 것들이 더 있네."{#morte_s452_r41883}':
            # a932 # r41883
            jump morte_s444

        '"알았네… 기억하도록 노력하겠네."{#morte_s452_r41884}' if morteLogic.r41884_condition():
            # a933 # r41884
            jump morte_s440

        '"알았네… 기억하도록 노력하겠네."{#morte_s452_r41885}' if morteLogic.r41885_condition():
            # a934 # r41885
            jump morte_dispose


# s453 # say41886
label morte_s453: # from 444.6
    nr '"어… 그것들을 쓰라고. 지혈 등의 용도로 말이야."  ^NNOTE: <BANDAGES2>^-{#morte_s453_}'

    menu:
        '"알았네. 자네에게 물어볼 것들이 더 있네."{#morte_s453_r41887}':
            # a935 # r41887
            jump morte_s444

        '"고맙네. 내가 할 수 있을 것 같네."{#morte_s453_r41888}' if morteLogic.r41888_condition():
            # a936 # r41888
            jump morte_s440

        '"고맙네. 내가 할 수 있을 것 같네."{#morte_s453_r41889}' if morteLogic.r41889_condition():
            # a937 # r41889
            jump morte_dispose


# s454 # say41890
label morte_s454: # from 444.4
    nr '"다원 우주에서는 매일 누군가 반드시 죽어, 대장. 이 비틀거리는 얼간이들은 이 곳의 관리자들에게 사후의 시체에 대한 권리를 판 한심한 작자들의 잔해라고."{#morte_s454_}'

    menu:
        '"알았네. 자네에게 물어볼 것들이 더 있네."{#morte_s454_r41891}':
            # a938 # r41891
            jump morte_s444

        '"알았네… 기억하도록 노력하겠네."{#morte_s454_r41892}' if morteLogic.r41892_condition():
            # a939 # r41892
            jump morte_s440

        '"알았네… 기억하도록 노력하겠네."{#morte_s454_r41893}' if morteLogic.r41893_condition():
            # a940 # r41893
            jump morte_dispose


# s455 # say41894
label morte_s455: # from 444.5
    nr '"뭐- *진담*이야? 이봐, 대장, 이 죽은 아가씨들은 우리들처럼 산전수전 다 겪은 친구들에게 주어진 마지막 기회라고. 우리는 *기사도* 정신을 발휘해야 해… 열쇠를 찾으려고 그녀들을 칼로 베거나 사지를 절단하는 짓 따위는 해서는 안돼."{#morte_s455_}'

    menu:
        '"마지막 기회? 대체 무슨 얘긴가?"{#morte_s455_r41895}':
            # a941 # r41895
            jump morte_s456

        '"관두게. 자네에게 할 다른 질문들이 있네…"{#morte_s455_r41896}':
            # a942 # r41896
            jump morte_s444

        '"알았네… 기억하도록 노력하겠네."{#morte_s455_r41897}':
            # a943 # r41897
            jump morte_dispose


# s456 # say41898
label morte_s456: # from 455.0
    nr '"대장, 그들은 죽었어, 그리고 우리들도 죽었어… 내가 무슨 말을 하려는지 알겠어? 그래?"{#morte_s456_}'

    menu:
        '"아니… 그렇지 않네…"{#morte_s456_r41899}':
            # a944 # r41899
            jump morte_s457

        '"진담은 아니겠지."{#morte_s456_r41900}' if morteLogic.r41900_condition():
            # a945 # r41900
            jump morte_s457

        '"관두게. 자네에게 할 다른 질문들이 있네…"{#morte_s456_r41901}':
            # a946 # r41901
            jump morte_s444

        '"자네 얘기는 이미 충분히 들었네. 가세."{#morte_s456_r41902}':
            # a947 # r41902
            jump morte_dispose


# s457 # say41903
label morte_s457: # from 456.0 456.1
    nr '"대장, 우린 이미 이 절뚝거리는 아가씨들과 대화를 시작할 화제거리도 가지고 있다고. 우리들은 *모두* 적어도 한 번씩은 죽어 봤어. 그러니 우린 공통의 화제가 있는 셈이지. 그들은 우리처럼 죽은 경험이 있는 사내들을 환영할 거라고."{#morte_s457_}'

    menu:
        '"기다리게… 전에 자네는 내가 죽지 않았다고 하지 않았었나?"{#morte_s457_r41904}':
            # a948 # r41904
            jump morte_s458

        '"관두게. 자네에게 할 다른 질문들이 있네…"{#morte_s457_r41905}':
            # a949 # r41905
            jump morte_s444

        '"자네 얘기는 이미 충분히 들었네. 가세."{#morte_s457_r41906}':
            # a950 # r41906
            jump morte_dispose


# s458 # say41907
label morte_s458: # from 457.0
    nr '"그래… 좋아. *대장*은 죽지 않았을지도 모르지만 *난* 죽었어. 그리고 나라면 여기 있는 체격 좋은 멋진 시체 아가씨들과 기꺼이 관을 함께 쓰겠어." 모트는 기대에 부푼 듯 이빨을 딱딱거리기 시작한다. "물론 그러기 위해서는 우선 관리인들이 그들을 포기해야 하는데 그럴 가능성은 희박하지…"{#morte_s458_}'

    menu:
        '"자네에게 할 다른 질문들이 있네, 모트…"{#morte_s458_r41908}':
            # a951 # r41908
            jump morte_s444

        '"자네 얘기는 이미 충분히 들었네. 가세."{#morte_s458_r41909}':
            # a952 # r41909
            jump morte_dispose


# s459 # say41910
label morte_s459: # -
    nr '"신들이시여! 그건 정말 골때리는 책이군!"{#morte_s459_}'

    menu:
        '"뭔가?"{#morte_s459_r41911}':
            # a953 # r41911
            $ morteLogic.r41911_action()
            jump morte_s460


# s460 # say41913
label morte_s460: # from 459.0
    nr '"추측을 하자면 그 책은 이 곳에 실려오는 모든 불행한 작자들의 이름을 기록하는 책인 것 같아."{#morte_s460_}'

    menu:
        '"내 이름이 저곳에 있을 수도 있겠나?"{#morte_s460_r41914}':
            # a954 # r41914
            jump morte_s461


# s461 # say41915
label morte_s461: # from 460.0
    nr '"어… 그럴 수도 있겠지. 알아보려면 저기 있는 저 떠다니는 더스티와 얘기를 해야 할 거야. 그게 좋은 생각인지는 모르겠지만."{#morte_s461_}'

    menu:
        '"내겐 답이 필요하네. 난 가서 그와 얘기를 하겠네."{#morte_s461_r41916}':
            # a955 # r41916
            jump morte_dispose


# s462 # say41919
label morte_s462: # -
    nr '모트는 속삭인다: "어느 정신병원에서 환자가 한 명 부족하다고 난리가 났겠군."{#morte_s462_}'

    menu:
        '"당신에게 물어볼 것들이 있소, 점블…"{#morte_s462_r41920}':
            # a956 # r41920
            jump jumble_s2  # EXTERN

        '"당신이 리크윈드를 저주한 사람이군, 그렇지 않소?"{#morte_s462_r41921}' if morteLogic.r41921_condition():
            # a957 # r41921
            $ morteLogic.j67862_s462_r41921_action()
            $ morteLogic.r41921_action()
            jump jumble_s8  # EXTERN

        '"난 당신이 리크윈드에게 건 저주를 풀어주었으면 하오."{#morte_s462_r67864}' if morteLogic.r67864_condition():
            # a958 # r67864
            jump jumble_s9  # EXTERN

        '"이만 실례하겠소, 점블. 안녕히 계시오."{#morte_s462_r41922}':
            # a959 # r41922
            jump morte_dispose


# s463 # say41923
label morte_s463: # -
    nr '"이런… 대장은 저주에 걸린 모양이야…"{#morte_s463_}'

    menu:
        '"내게 무슨 짓을 한 거요, 점블?"{#morte_s463_r41924}':
            # a960 # r41924
            jump jumble_s7  # EXTERN

        '"점블… 제발, 당신이 한 일을 원상태로 돌려놓으시오."{#morte_s463_r41925}':
            # a961 # r41925
            jump jumble_s7  # EXTERN

        '"점블, 당신이 무슨 짓을 했던 어서 원상태로 돌려놓으시오, 아니면 뼈저리게 후회할 테니."{#morte_s463_r41926}':
            # a962 # r41926
            jump jumble_s7  # EXTERN

        '"그냥 가세, 모트."{#morte_s463_r41927}':
            # a963 # r41927
            jump morte_dispose


# s464 # say42929
label morte_s464: # -
    nr '"그 계집을 무시하라고… 마치 아무런 관심도 없는 것처럼 행동해. 그러면 효과가 있을 거라고!"{#morte_s464_}'

    jump montagu_s29  # EXTERN


# s465 # say42930
label morte_s465: # -
    nr '"날 믿으라고. 그녀를 무시하기 시작해서 마찰을 일으킨 후 그들이 궁금해 하도록 그냥 내버려 두라고, 그럼 대체 무슨 일인지 알려고 법석을 떨 테니. 그렇지, 대장?"{#morte_s465_}'

    menu:
        '"그렇네… 그녀는 뭔가 잘못되었다고 생각할 것이고, 그는 처음이자 마지막으로 게임의 목표물이 아닌 게임을 하는 주체가 될 것이네."{#morte_s465_r42931}':
            # a964 # r42931
            jump montagu_s30  # EXTERN

        '"아니… 그건 좋은 생각이 아니네."{#morte_s465_r42932}':
            # a965 # r42932
            jump montagu_s31  # EXTERN


# s466 # say43543
label morte_s466: # -
    nr '"그게 기스는 번식을 하면 안 되는 이유야. 맨날 믿음이 어쩌고저쩌고 횡설수설 하지 않으면 „죽일 마인드 훌레이어와 기스양키는 어디 있지“ 하면서 주접을 떨지. 난 그들이 성교를 즐기기나 하는지 모르겠어. 그들은 도중에 미쳐버리거나 늘 너무 한 곳에 집중만 해 유머 감각이 마비된 모양이야. 그들은 노상 집중, 하나의 정신, 공동체 내의 신뢰 등에 대해 지껄이지만, 그들이 뇌 빠는 놈들로부터 해방되자 마자 자기네들끼리 원수가 된 꼴 좀 보라고. 어디 내게 종교와 이데올로기가 다원 우주를 파멸로 이끌지 않을 거라고 말해보시지."{#morte_s466_}'

    jump kiina_s35  # EXTERN


# s467 # say43908
label morte_s467: # -
    nr '"와우!"{#morte_s467_}'

    menu:
        '"당신이 네멜이오? 난 당신이 이 유리병의 명령어를 알고 있다는 얘기를 들었소."{#morte_s467_r43909}' if morteLogic.r43909_condition():
            # a966 # r43909
            jump neml_s4  # EXTERN

        '"네멜? 당신 친구 앨윈이 당신을 찾고 있소."{#morte_s467_r43910}' if morteLogic.r43910_condition():
            # a967 # r43910
            $ morteLogic.j39490_s467_r43910_action()
            $ morteLogic.r43910_action()
            jump neml_s6  # EXTERN

        '"누군가를 찾고 있소?"{#morte_s467_r43911}' if morteLogic.r43911_condition():
            # a968 # r43911
            jump neml_s14  # EXTERN

        '"질문할 것들이 좀 있소…"{#morte_s467_r43912}':
            # a969 # r43912
            jump neml_s11  # EXTERN

        '"나는 아무 일도 하지 않았소, 네멜. 안녕히 계시오."{#morte_s467_r43913}':
            # a970 # r43913
            jump morte_dispose


# s468 # say43914
label morte_s468: # -
    nr '"와우!"{#morte_s468_}'

    jump annah_s209  # EXTERN


# s469 # say43915
label morte_s469: # -
    nr '"이런, 정말 성깔 한 번 화끈한 계집이군! 관심에 굶주렸나? 만약 네가 그냥 질투를 하는 것뿐이라면 내가 네게 침을 흘려 줄 수도 있지…" 모트는 안나를 향해 날아가며 군침을 삼킨다.{#morte_s469_}'

    jump annah_s210  # EXTERN


# s470 # say43916
label morte_s470: # -
    nr '모트는 갑자기 멈춘다, 그리고 알아들을 수 없는 말로 중얼거리며 고개를 돌린다.{#morte_s470_}'

    menu:
        '"당신이 네멜이오? 난 당신이 이 유리병의 명령어를 알고 있다는 얘기를 들었소."{#morte_s470_r43917}' if morteLogic.r43917_condition():
            # a971 # r43917
            jump neml_s4  # EXTERN

        '"네멜? 당신 친구 앨윈이 당신을 찾고 있소."{#morte_s470_r43918}' if morteLogic.r43918_condition():
            # a972 # r43918
            $ morteLogic.j39490_s470_r43918_action()
            $ morteLogic.r43918_action()
            jump neml_s6  # EXTERN

        '"누군가를 찾고 있소?"{#morte_s470_r43919}' if morteLogic.r43919_condition():
            # a973 # r43919
            jump neml_s14  # EXTERN

        '"질문할 것들이 좀 있소…"{#morte_s470_r43920}':
            # a974 # r43920
            jump neml_s11  # EXTERN

        '"나는 아무 일도 하지 않았소, 네멜. 안녕히 계시오."{#morte_s470_r43921}':
            # a975 # r43921
            jump morte_dispose


# s471 # say43922
label morte_s471: # -
    nr '"이보, 대장… 틀림없이 뭔가를 생각해낼 수 있을 거야. 그렇지?{#morte_s471_}'

    menu:
        '"관두게, 모트. 갑시다."{#morte_s471_r43923}':
            # a976 # r43923
            jump morte_dispose


# s472 # say44244
label morte_s472: # -
    nr '모트는 가까이 다기와 속삭인다: "난 아냐. 난 괜찮다고. 에, 대장? 윙크-윙크, 슬쩍-슬쩍…"{#morte_s472_}'

    jump goncal_s20  # EXTERN


# s473 # say44245
label morte_s473: # -
    nr '모트는 공포에 질려 공황 상태에 빠진다. "안돼!!! 이봐, 미쳤어?! 그건 말도 안 되는 소리야!"{#morte_s473_}'

    jump annah_s214  # EXTERN


# s474 # say44677
label morte_s474: # -
    nr '모트는 눈알을 부라린다. "얼간이들이 돌격하는군…"{#morte_s474_}'

    jump yi'minn_s47  # EXTERN


# s475 # say44944
label morte_s475: # -
    nr '"난 시 공회당이 너무 좋아."{#morte_s475_}'

    jump udesire_s2  # EXTERN


# s476 # say45026
label morte_s476: # -
    nr '모트는 크게 한숨을 쉰다. "이봐, 대장! 정말 여기 남아 있을 거야?"{#morte_s476_}'

    menu:
        '"잠시 동안 조용히 하게, 모트. 지금 나는 강의를 듣고 싶으니까."{#morte_s476_r45027}':
            # a977 # r45027
            jump 3planea_s1  # EXTERN

        '모트를 무시하고 계속 듣는다.{#morte_s476_r45028}':
            # a978 # r45028
            jump 3planea_s1  # EXTERN

        '"자네가 옳네, 모트. 가세."{#morte_s476_r45029}':
            # a979 # r45029
            $ morteLogic.r45029_action()
            jump morte_dispose


# s477 # say45088
label morte_s477: # externs zm965_s0
    nr '"헤. 누가 이 녀석한테 삼의 법칙으로 걷는 걸 멈추라고 하는 걸 까먹은 모양이야."{#morte_s477_}'

    menu:
        '"무슨 뜻인가?"{#morte_s477_r45089}':
            # a980 # r45089
            jump morte_s478


# s478 # say45091
label morte_s478: # from 477.0
    nr '"이 시체들에게는 지능이라고는 거의 남아 있지를 않아, 그래서 한 번에 한 가지 이상의 일은 할 수가 없지… 일단 그들에게 뭘 시키면, 누가 멈추라고 할 때까지 계속 한다고. 아마 이 불쌍한 녀석은 무슨 일을 끝낸 후에 아무도 그만 하라고 명령하지 않아 저러고 있을 거야."{#morte_s478_}'

    menu:
        '"누가 그들에게 명령을 내리나?"{#morte_s478_r45092}':
            # a981 # r45092
            jump morte_s481

        '"자네는 전에 „삼의 법칙“에 대해 언급했었지. 그 말의 뜻은 뭔가?"{#morte_s478_r45093}':
            # a982 # r45093
            $ morteLogic.j39477_s478_r45093_action()
            jump morte_s479

        '"좋네. 자, 계속 움직이세."{#morte_s478_r45094}':
            # a983 # r45094
            jump morte_dispose


# s479 # say45095
label morte_s479: # from 478.1 481.0
    nr '"에? 삼의 법칙은 다원 우주의 „법칙들“ 중 하나로 모든 건 삼의 단위로 발생하는 경향이 있다는 얘기지… 아니면 세 부분으로 구성되어 있던지… 또는 늘 선택지는 셋이라든지… 등등."{#morte_s479_}'

    menu:
        '"자네는 그걸 별로 믿지 않는 것 같군."{#morte_s479_r45096}':
            # a984 # r45096
            jump morte_s480


# s480 # say45098
label morte_s480: # from 479.0
    nr '"내 생각으로는 말도 안 되는 쓰레기야. 어떤 숫자든 간에 하나를 골라 그것에 큰 의미를 부여하려고 하면, 괜히 모든 게 다 그렇게 보이는 거라고."{#morte_s480_}'

    menu:
        '"알겠네. 전에 자네는 이 시체에게 임무를 부여한 사람이 그 다음에 그들에게 멈추라고 하는 것을 깜빡 잊었다고 했었네. 누가 이러한 시체들에게 임무를 부여하나?"{#morte_s480_r45099}':
            # a985 # r45099
            jump morte_s481

        '"알겠네. 이 시체를 조금만 더 살펴보도록 하겠네."{#morte_s480_r45100}':
            # a986 # r45100
            jump zm965_s1  # EXTERN

        '"좋네. 자, 계속 움직이세."{#morte_s480_r45101}':
            # a987 # r45101
            jump morte_dispose


# s481 # say45102
label morte_s481: # from 478.0 480.0
    nr '"이 곳의 관리인들이나 어떤 사령술사가 그들을 되살려냈겠지. 아마 이 곳의 관리인들일 거야, 싸구려 노동력을 필요로 하는 건 그들이니까."{#morte_s481_}'

    menu:
        '"알겠네. 자네가 전에 얘기했던 „삼의 법칙“ 말인데, 그게 대체 무슨 얘기였지?"{#morte_s481_r45103}':
            # a988 # r45103
            $ morteLogic.j39477_s481_r45103_action()
            jump morte_s479

        '"알겠네. 이 시체를 조금만 더 살펴보도록 하겠네."{#morte_s481_r45104}':
            # a989 # r45104
            jump zm965_s1  # EXTERN

        '"좋네. 자, 계속 움직이세."{#morte_s481_r45105}':
            # a990 # r45105
            jump morte_dispose


# s482 # say45540
label morte_s482: # externs zm985_s4 zm985_s0
    nr '"어, 대장… 안 그러는-"{#morte_s482_}'

    jump zm985_s3  # EXTERN


# s483 # say45709
label morte_s483: # -
    nr '"오! 경매! 여기서 안나를 팔 수도 있겠군."{#morte_s483_}'

    jump annah_s215  # EXTERN


# s484 # say45710
label morte_s484: # -
    nr '"오! 경매! 여기서 다콘을 팔 수도 있겠군."{#morte_s484_}'

    jump dakkon_s163  # EXTERN


# s485 # say45711
label morte_s485: # -
    nr '"오! 경매! 여기서 내 몸을 살 수도 있겠군."{#morte_s485_}'

    menu:
        '"그래, 모트. 내가 꼭 물어봐 주지."{#morte_s485_r45712}':
            # a991 # r45712
            jump giltsp_s4  # EXTERN

        '"그럼 그냥 가세."{#morte_s485_r45713}':
            # a992 # r45713
            jump morte_dispose


# s486 # say45714
label morte_s486: # -
    nr '"사랑이 틀림없어. 사랑이라고, 그렇지, 보스?"{#morte_s486_}'

    menu:
        '"둘 다 그만두시오. 나는 여기서 질문을 좀 해야 하니까."{#morte_s486_r45715}':
            # a993 # r45715
            jump giltsp_s4  # EXTERN

        '"자네가 뭐라든 간에, 모트, 여기 이 친구는 그냥 내버려 두세."{#morte_s486_r45716}':
            # a994 # r45716
            jump morte_dispose


# s487 # say45996
label morte_s487: # - # IF WEIGHT #0 ~  NumTimesTalkedTo(0) InParty("Morte") !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"이봐, 보라고! 떠다니는 머리가 또 있어."{#morte_s487_}'

    jump vault9_s0  # EXTERN


# s488 # say47813
label morte_s488: # -
    nr '"이 메이스는 꽤나 인간이 되고 싶은 모양이군. 입 닥쳐, 무기."{#morte_s488_}'

    menu:
        '"조용하게. 그 밖에도 물어볼 것들이 있네…"{#morte_s488_r47814}':
            # a995 # r47814
            jump justfer_s8  # EXTERN

        '물어보고 싶은 것들이 좀 있네…"{#morte_s488_r47815}':
            # a996 # r47815
            jump morte_dispose


# s489 # say49443
label morte_s489: # -
    nr '"오오, 기스양키군. 틀림없이 다콘은 *기꺼이* 그를 도울 거야."{#morte_s489_}'

    menu:
        '"귀중한 의견을 개진해 주어 황송하네, 모트. 가세."{#morte_s489_r49444}':
            # a997 # r49444
            jump morte_dispose


# s490 # say50162
label morte_s490: # -
    nr '"아, 물론 그들에게도 이름이 있겠지."{#morte_s490_}'

    jump annah_s242  # EXTERN


# s491 # say50164
label morte_s491: # -
    nr '"웃기는군, 휜들링."{#morte_s491_}'

    menu:
        '"관두게, 모트 - 그에게 다른 질문을 좀 해줄 수 있겠소, 안나?"{#morte_s491_r50165}':
            # a998 # r50165
            jump annah_s240  # EXTERN

        '"관두게, 가세."{#morte_s491_r50166}':
            # a999 # r50166
            $ morteLogic.r50166_action()
            jump adabus_s6  # EXTERN


# s492 # say50263
label morte_s492: # -
    nr '모트는 조롱한다. "이 떠다니는 염소 대가리들이 하는 말을 해석하느니 차라리 타나리 창자를 걸러내는 게 났지. 통역을 원해? 시길 토박이를 찾아보라고."{#morte_s492_}'

    menu:
        '"알겠소."{#morte_s492_r50264}':
            # a1000 # r50264
            jump adabus_s2  # EXTERN


# s493 # say50266
label morte_s493: # -
    nr '모트는 조롱한다. "이 떠다니는 염소 대가리들이 하는 말을 해석하느니 차라리 타나리 창자를 걸러내는 게 났지. 통역을 원해? 여기 있는 휜들링 계집에게 부탁하라고." 그는 안나를 가리킨다. "그녀는 벌통 토박이니까."{#morte_s493_}'

    menu:
        '"아마 그럴지도…"{#morte_s493_r50267}':
            # a1001 # r50267
            jump adabus_s2  # EXTERN


# s494 # say50269
label morte_s494: # -
    nr '모트는 조롱한다. "이 떠다니는 염소 대가리들이 하는 말을 해석하느니 차라리 타나리 창자를 걸러내는 게 났지. 통역을 원해?" 그는 다콘을 가리킨다. "여기 있는 „나는 잘났으니 너희들 따위와는 얘기를 안 해“하는 양반에게 부탁하라고."{#morte_s494_}'

    menu:
        '"아마 그럴지도…"{#morte_s494_r50270}':
            # a1002 # r50270
            jump adabus_s2  # EXTERN


# s495 # say50272
label morte_s495: # -
    nr '모트는 조롱한다. "이 떠다니는 염소 대가리들이 하는 말을 해석하느니 차라리 타나리 창자를 걸러내는 게 났지. 통역을 원해? 타나리에게 부탁하라고." 그는 훨-후럼-그레이스를 가리킨다. "아마 그녀는 이 친구들하고 늘 대화를 나누고 있을 거라고."{#morte_s495_}'

    menu:
        '"아마 그럴지도…"{#morte_s495_r50273}':
            # a1003 # r50273
            jump adabus_s2  # EXTERN


# s496 # say50320
label morte_s496: # -
    nr '"이런 염병할! 다버스로군!"{#morte_s496_}'

    menu:
        '"뭐가 잘못되었나?"{#morte_s496_r50321}':
            # a1004 # r50321
            jump morte_s497


# s497 # say50322
label morte_s497: # from 496.0
    nr '"그는 다버스야. 그들은 퍼즐과 같은 기호로 „말하지.“ 만약 그가 무슨 말을 하는지 모르겠다면 번역해 줄 토박이를 찾거나 그와 의사소통을 할 방법을 찾는 게 좋을 걸. 정말 짜증나는 놈들이지. 내 생각에 놈들은 말을 할 수 있으면서도 일부로 퍼즐을 내서 다른 사람들을 골탕먹이려는 것 같아."{#morte_s497_}'

    menu:
        '"„다버스“란 뭔가?"{#morte_s497_r50323}':
            # a1005 # r50323
            jump morte_s498


# s498 # say50324
label morte_s498: # from 497.0
    nr '"들리는 얘기로는 그들은 레이디 오브 페인의 청소부라는군. 그들은 레이디의 기분에 따라 시길을 부수거나 수리하지. 그들은 시체 파리보다도 징그럽다고." 모트는 한숨을 쉰다. "하지만 다버스는 때려죽일 수도 없어, 그러면 레이디가… 화를 낼 테니."{#morte_s498_}'

    menu:
        '"„레이디 오브 페인?“ 그게 누군가?"{#morte_s498_r50325}' if morteLogic.r50325_condition():
            # a1006 # r50325
            $ morteLogic.r50325_action()
            jump morte_s499

        '"내게 레이디 오브 페인에 대해 어떤 얘기를 해줄 수 있겠나?"{#morte_s498_r50328}' if morteLogic.r50328_condition():
            # a1007 # r50328
            jump morte_s499

        '"알겠네."{#morte_s498_r50329}' if morteLogic.r50329_condition():
            # a1008 # r50329
            jump adabus_s2  # EXTERN


# s499 # say50326
label morte_s499: # from 498.0 498.1
    nr '"그녀는 이 도시의 지배자야. 대장도 그녀를 보면 알 거야. 그녀의 얼굴 주변에는 칼날들이 달렸고, 그녀는 거인만큼이나 거대하며, 저 친구들처럼 공중에 떠다니지." 모트는 당신들 둘을 바라보고 있는 다버스를 가리킨다. "아무도 그녀에 대해서 자세히 알지는 못해… 그녀는 거의 말을 하지 않아. 대장이 알아야 할 건 그녀를 화나게 해서는 안 된다는 것 뿐이야. 이건 내 충고인데, 만약 그녀를 보게 되면 도망치라고."{#morte_s499_}'

    menu:
        '"알겠네."{#morte_s499_r50327}':
            # a1009 # r50327
            jump adabus_s2  # EXTERN


# s500 # say50410
label morte_s500: # -
    nr '"뭐? 뭐야? 그 안에 어떤 내용이 들어 있는 거야, 대장?"{#morte_s500_}'

    menu:
        '"뭐라고 해야 할지 모르겠네. 모트."{#morte_s500_r50411}':
            # a1010 # r50411
            jump morte_s501

        '"자네하고는 상관없는 일이네, 모트."{#morte_s500_r50412}':
            # a1011 # r50412
            jump morte_s501

        '그에게 사본을 보여준다.{#morte_s500_r50413}':
            # a1012 # r50413
            jump morte_s503


# s501 # say50414
label morte_s501: # from 500.0 500.1
    nr '"뭐?! 날 놀리는 거지? 그렇지? 자, 나도 좀 보자고!"{#morte_s501_}'

    menu:
        '그에게 사본을 보여준다.{#morte_s501_r50415}':
            # a1013 # r50415
            jump morte_s503

        '"아니, 모트, 자네가 방금 본 건 잊게."{#morte_s501_r50416}':
            # a1014 # r50416
            $ morteLogic.r50416_action()
            jump morte_s502


# s502 # say50417
label morte_s502: # from 501.1
    nr '모트는 뭐라고 비꼬려고 하다가… 그만둔다.{#morte_s502_}'

    jump codexi_s2  # EXTERN


# s503 # say50418
label morte_s503: # from 500.2 501.0
    nr '모트는 날아와서 당신 어깨 너머로 사본의 내용을 살펴본다. 페이지를 훑어보자마자 그의 두 눈이 눈구멍에서 빠질 정도로 튀어나온다. "오오. 오오오오오. 오, 나는… 하지만… 와우."{#morte_s503_}'

    jump codexi_s2  # EXTERN


# s504 # say50697
label morte_s504: # -
    nr '"워! 워! 워! 농담이지, 그렇지? 진심은 아니겠지, 대장!{#morte_s504_}'

    menu:
        '"진심이야. 그를 사겠소, 브리스치카?"{#morte_s504_r50698}':
            # a1015 # r50698
            jump vrisch_s45  # EXTERN

        '"그래, 물론 아니지. 다른 질문이 있소, 브리스치카."{#morte_s504_r50699}':
            # a1016 # r50699
            jump vrisch_s7  # EXTERN

        '"자네 말이 맞아, 모트. 그건 별로 좋은 생각이 아니었어. 가자."{#morte_s504_r50700}':
            # a1017 # r50700
            jump morte_dispose


# s505 # say50701
label morte_s505: # -
    nr '"믿을 수가 없군… 대장, 당신은 전에도 정말 갈 때까지 간 적이 있지만, 이번만큼은 정말 차원이 다르군. 어디 베이터에서 보자고, 이 두들겨 터져 몰골은 말이 아니고, X은 좁쌀만하고, 배신이나 때리고, 은혜라고는 모르고, 두창 자국 투성이고, 똥이나 먹고, 머리는 기름투성이고, 이빨은 뻐드렁니인 쓰레기 같은 기억상실증 환자야! 내 말을 명심해, 이 X같은 새끼야! 계속 이런 식으로 놀면 넌 곧 아주 *영원히* 죽게 될 거야… 어디 그 꼴이 어떨지 기대하고 있겠어!"{#morte_s505_}'

    $ morteLogic.s505_action()
    jump vrisch_s46  # EXTERN


# s506 # say52571
label morte_s506: # -
    nr '"그것이 그를 삼켰지만 그가 그 쪽에서 튀어나왔는지는 모르겠군."{#morte_s506_}'

    menu:
        '그만 집어치우시오, 보시오, 래벌. 당신이 나로부터 죽음을 빼앗았고, 그 일은 득보다 해가 더 컸소. 나는 그것을 당장 돌려받고 싶소. 내 생각으론 당신이 그것을 너무 오랫동안 지니고 있었던 것 같소."{#morte_s506_r52572}':
            # a1018 # r52572
            jump ravel_s126  # EXTERN


# s507 # say52573
label morte_s507: # -
    nr '"누가 새장 속에 있어야 할지 알 것 같군…"{#morte_s507_}'

    jump ravel_s189  # EXTERN


# s508 # say52574
label morte_s508: # -
    nr '"글쎄, 내겐 레이디의 미로들 중 한 곳으로 가서 시길의 역사상 가장 사악한 괴물을 만나는 것 말고는 할 일이 없었어, 그래서 나는 „물론이지“라고-"{#morte_s508_}'

    menu:
        '"모트, 조용히 해. 래벌, 나…"{#morte_s508_r52575}':
            # a1019 # r52575
            jump morte_s509


# s509 # say52576
label morte_s509: # from 508.0
    nr '"„조용하라고?!“" 모트는 이빨을 딱딱거린다. "웃기고 자빠졌네! 마귀할멈이 골통을 딸랑거리는 걸 듣는 것만도 지겨워 죽겠는데, 이제는 내게 피부가 없다고 뭐라고 해? 그게 어떻다는 거야? 피부가 있다고 해서 저 할망구 꼴이 조금이라도 나아 보여? 내가 좋아서 이 꼴로 있는 줄 아나? 그리고 또-"{#morte_s509_}'

    menu:
        '"모트! 닥쳐! 래벌, 보시오--"{#morte_s509_r52577}' if morteLogic.r52577_condition():
            # a1020 # r52577
            $ morteLogic.r52577_action()
            jump ravel_s66  # EXTERN

        '"모트! 닥쳐! 래벌, 보시오--"{#morte_s509_r52578}' if morteLogic.r52578_condition():
            # a1021 # r52578
            $ morteLogic.r52578_action()
            jump ravel_s67  # EXTERN

        '"모트! 닥쳐! 래벌, 보시오--"{#morte_s509_r52579}' if morteLogic.r52579_condition():
            # a1022 # r52579
            jump ravel_s68  # EXTERN


# s510 # say52644
label morte_s510: # -
    nr '"엽기적이군. 우리는 지금 정확히 어디 서 있는 거지?"{#morte_s510_}'

    menu:
        '"그것에 대한 답은 별로 알고 싶지가 않군, 모트."{#morte_s510_r52771}':
            # a1023 # r52771
            jump pregal_s10  # EXTERN


# s511 # say53623
label morte_s511: # -
    nr '"오, 그것 참 *멋지군.*"{#morte_s511_}'

    jump pillar_s5  # EXTERN


# s512 # say53624
label morte_s512: # from 522.0 523.0 524.0
    nr '당신이 기둥에 가까이 다가가자 모트가 쉿 소리를 내 당신을 제지한다: "쉿! 대장! 대장… 내 말을 들어봐, 난 저것이 날 보게 할 수는 없어. 대장은 여기서 날 데리고 나가야 해… 날 다른 곳에 떨구었다가 나중에 다시 줍든지 하라고…"{#morte_s512_}'

    menu:
        '"그만해, 모트. 난 이제 그것과 얘기를 할 거니까…"{#morte_s512_r53625}' if morteLogic.r53625_condition():
            # a1024 # r53625
            $ morteLogic.r53625_action()
            jump pillar_s9  # EXTERN

        '"왜, 모트? 무슨 일이지?{#morte_s512_r53627}' if morteLogic.r53627_condition():
            # a1025 # r53627
            jump morte_s513

        '"좋아. 그럼 떠나도록 하자."{#morte_s512_r53628}':
            # a1026 # r53628
            jump morte_dispose


# s513 # say53626
label morte_s513: # from 512.1
    nr '"어… 난 그것에 대해 별로 얘기하고 싶지 않아. 빨리 가자고, 좋지 ?" 모트의 목소리가 두려움으로 떨리고 있다. 그의 시선은 당신과 머리들로 만들어진 거대한 기둥 사이를 쉴 새 없이 오가고 있다.{#morte_s513_}'

    menu:
        '"모트, 난 자네가 계속 그토록 많은 비밀을 감추고 있게 할 수는 없어. 자넨 내게 여기서 무슨 일어나고 있는지 말해야만 해."{#morte_s513_r53629}':
            # a1027 # r53629
            $ morteLogic.r53629_action()
            jump morte_s514

        '"더 이상 피할 생각은 마, 모트. 내게 당장 전후사정을 털어놓지 않으면 차라리 그 해골들과 얘기하는 편이 나았을 거라고 생각하게 될 걸."{#morte_s513_r53630}':
            # a1028 # r53630
            $ morteLogic.r53630_action()
            jump morte_s514

        '"좋아. 그럼 떠나도록 하자."{#morte_s513_r53631}':
            # a1029 # r53631
            jump morte_dispose


# s514 # say53632
label morte_s514: # from 513.0 513.1
    nr '모트는 당신을 제대로 쳐다보지도 못하고 한숨만 쉰다. 마침내 그가 항복한다. "좋아, 좋아… 얘기할께. 베이터의 제1층인 아버누스에는 거짓말로 남을 죽음에 이르게 한 자들의 골통들로 만들어진 기둥이 있어. 바로 저기 있는 게 그거야. 내가 죽은 후에 간 곳이 바로 저기였어. 나머지는 대장 머리로 생각해보라고."{#morte_s514_}'

    menu:
        '"그래… 자네도 저 해골들의 일원이었나?"{#morte_s514_r53662}' if morteLogic.r53662_condition():
            # a1030 # r53662
            jump morte_s516

        '"그래… 자네도 저 해골들의 일원이었나?"{#morte_s514_r53663}' if morteLogic.r53663_condition():
            # a1031 # r53663
            jump morte_s515


# s515 # say53664
label morte_s515: # from 514.1
    nr '"그래. 나는… 과장된 얘기를 한두 가지 했지. 내 제안들 중 하나가 대장을 죽음으로 이끌었어. 그것들 중 하나가. 아니면 다른 것들이었는지도 모르고. 난 정말 몰라. 이제 그런 기억들은 다 잃어버렸어."{#morte_s515_}'

    menu:
        '"알겠어…"{#morte_s515_r53665}':
            # a1032 # r53665
            jump morte_s518


# s516 # say53666
label morte_s516: # from 514.0
    nr '"그래. 나는… 과장된 얘기를 한두 가지 했지. 내 제안들 중 하나-"{#morte_s516_}'

    jump annah_s269  # EXTERN


# s517 # say53667
label morte_s517: # -
    nr '모트는 침착하게 얘기를 계속한다. "… 내 *제안들* 중 하나가 대장을 죽음으로 이끌었어. 그것들 중 하나가. 아니면 다른 것들이었는지도 모르고. 이제 그런 기억들은 다 잃어버렸어."{#morte_s517_}'

    jump morte_s518


# s518 # say53668
label morte_s518: # from 515.0 517.0
    nr '모트는 당신 발을 쳐다본다 - 그가 그토록 비참한 모습을 하고 있는 것은 일찍이 본 적이 없다. "그 기억들, 그것들.. 이봐, 대장, 난 내가 인간이었을 때 일도 기억이 나지 않아. 나는 기둥의 일원이 되기 전에 내가 어떤 삶을 살았는지를 기억할 수가 없어…"{#morte_s518_}'

    if morteLogic.s518_condition():
        jump dakkon_s183  # EXTERN
    menu:
        '"계속하게…"{#morte_s518_r54105}' if morteLogic.r54105_condition():
            # a1033 # r54105
            jump morte_s520


# s519 # say53794
label morte_s519: # -
    nr '모트는 다콘을 흘긋 본 후 당신을 쳐다본다. "그래, 그럴지도 모르지. 죽으면 다 그렇게 되는 거니까. 기억을 잃지… 생전에 나는 사회의 신뢰할 수 있는 구성원은 아니었던 것 같아… 하지만 정말로 그런 사람이 어디 있어?" 모트는 다시 한숨을 쉰다. "하지만 어쩔 수가 없어. 늘 정직한 것만큼 괴로운 것도 또 없다고. 하지만 이봐, 대장, 그 대가리들이 날 보면 날 되찾으려고 할거야, 그것도 아주 맹렬히. 그렇게 되도록 내버려 둘 순 없어!"{#morte_s519_}'

    menu:
        '"그만해, 모트. 난 이제 그것과 얘기를 할 거니까…"{#morte_s519_r53795}':
            # a1034 # r53795
            $ morteLogic.r53795_action()
            jump pillar_s9  # EXTERN

        '"기다려… 넌 어떻게 해서 기둥에서 빠져나왔지?"{#morte_s519_r53796}':
            # a1035 # r53796
            jump morte_s521

        '"기다려봐… 왜 시체안치소에서는 네가 날 안다는 사실을 말하지 않았지?"{#morte_s519_r53797}':
            # a1036 # r53797
            jump morte_s523

        '"잠깐. 넌 도대체 얼마나 오랫동안 날 알아온 거지, 모트?"{#morte_s519_r53798}':
            # a1037 # r53798
            jump morte_s524

        '"좋아. 가자, 모트."{#morte_s519_r53799}':
            # a1038 # r53799
            jump morte_dispose


# s520 # say53800
label morte_s520: # from 518.1
    nr '"어쨌든, 생전에 나는 사회의 신뢰할 수 있는 구성원은 아니었던 것 같아… 하지만 정말로 그런 사람이 어디 있어?" 모트는 다시 한숨을 쉰다. "하지만 어쩔 수가 없어. 늘 정직한 것만큼 괴로운 것도 또 없다고. 하지만 이봐, 대장, 그 대가리들이 날 보면 날 되찾으려고 할거야, 그것도 아주 맹렬히. 그렇게 되도록 내버려 둘 순 없어!"{#morte_s520_}'

    menu:
        '"그만해, 모트. 난 이제 그것과 얘기를 할 거니까…"{#morte_s520_r53801}':
            # a1039 # r53801
            $ morteLogic.r53801_action()
            jump pillar_s9  # EXTERN

        '"기다려… 넌 어떻게 해서 기둥에서 빠져나왔지?"{#morte_s520_r53802}':
            # a1040 # r53802
            jump morte_s521

        '"기다려봐… 왜 시체안치소에서는 네가 날 안다는 사실을 말하지 않았지?"{#morte_s520_r53803}':
            # a1041 # r53803
            jump morte_s523

        '"잠깐. 넌 도대체 얼마나 오랫동안 날 알아온 거지, 모트?"{#morte_s520_r53804}':
            # a1042 # r53804
            jump morte_s524

        '"좋아. 가자, 모트."{#morte_s520_r53805}':
            # a1043 # r53805
            jump morte_dispose


# s521 # say53806
label morte_s521: # from 519.1 520.1 523.1 524.1
    nr '"대장이 날 꺼냈어. 난 안간힘을 써서 기둥의 정면까지 올라온 다음 대장이 날 발견할 때까지 미친 듯이 울고 소리를 질러댔어. 벌써 알지도 모르겠지만, 대장이 여기 온 건 이번이 처음이 아냐. 어쨌든 난 여기서 해방시켜 달라고 대장한테 애원을 했고, 구해주기만 하면 대장이 죽는 날까지 대장을 따르면서 내가 지닌 지식을 공유하겠다고 맹세했어… 대장이 날 기둥에서 빼내기 전에 난 그게 얼마나 오랜 세월이 될지 알지 못했어."{#morte_s521_}'

    menu:
        '"그리고 기둥의 모든 지식들…?"{#morte_s521_r53807}':
            # a1044 # r53807
            $ morteLogic.j53633_s521_r53807_action()
            jump morte_s522


# s522 # say53808
label morte_s522: # from 521.0
    nr '"오, 그리고 나는 일단 기둥 밖으로 나가면 기둥에 축적된 지식을 잃게 된다는 사실도 알지 못했어. 대장은 그 사실을 나중에야 알고는 정말 천지가 뒤집힐 정도로 화를 냈지. 처음에 나는 내가 대장한테 „묶여“ 있다고 생각했었어… 그리고 대장의 마법이 날 일종의 마법사의 종복으로 만들었다고. 하지만 이백 년 정도가 지나고 나서 나는 우리의 관계가 더 깊은 것이라는 걸 깨달았어. 단순히 신세를 졌기 때문만은 아니였어, 물론 그것도 중요한 요소이긴 했지만. 나는 왠지 대장에게 끌렸어. 아마 대장의 고통 때문일지도 몰라. 잘은 모르겠지만 내가 기둥 속에서 받은 고통과 대장의 고통을 서로 연관해 생각했기 때문인지도 몰라."{#morte_s522_}'

    menu:
        '"이제 나는 기둥과 이야기를 하겠어…"{#morte_s522_r53809}':
            # a1045 # r53809
            jump morte_s512

        '"왜 시체안치소에서는 네가 날 안다는 사실을 말하지 않았지?"{#morte_s522_r53810}':
            # a1046 # r53810
            jump morte_s523

        '"넌 도대체 얼마나 오랫동안 날 알아온 거지, 모트?"{#morte_s522_r53811}':
            # a1047 # r53811
            jump morte_s524

        '"좋아. 떠나자, 모트."{#morte_s522_r53812}':
            # a1048 # r53812
            jump morte_dispose


# s523 # say53813
label morte_s523: # from 519.2 520.2 522.1 524.2
    nr '모트는 갑자기 변명을 늘어놓기 시작한다. "왜냐하면 난 대장이 어떤 사람이 될지 몰랐기 때문이야! 대장의 화신들 중 일부는 완전히 발광한 자들이었다고! 언젠가는 깨어나더니 내가 대장 해골이라는 생각에 사로잡혀 날 부셔서 먹겠다고 날 쫓아서 온 시길을 돌아다니기도 했지… 다행히도 그 때 대장이 거리에서 마차에 치어서 죽는 바람에 무사할 수 있었지. 그리고 „질서와 선“을 존중하는 또 다른 화신은 기둥이 내가 있어야 할 곳이라고 하면서 날 거기 다시 처박으려고 했어." 모트는 억지로 웃는다. "그게 이유야. 게다가 그걸 모른다고 해서 대장이 해를 입은 것도 아니잖아…"{#morte_s523_}'

    menu:
        '"이제 나는 기둥과 이야기를 하겠어…"{#morte_s523_r53814}':
            # a1049 # r53814
            jump morte_s512

        '"넌 어떻게 해서 기둥에서 빠져나왔지?"{#morte_s523_r53815}':
            # a1050 # r53815
            jump morte_s521

        '"넌 도대체 얼마나 오랫동안 날 알아온 거지, 모트?"{#morte_s523_r53816}':
            # a1051 # r53816
            jump morte_s524

        '"좋아. 떠나자, 모트."{#morte_s523_r53817}':
            # a1052 # r53817
            jump morte_dispose


# s524 # say53818
label morte_s524: # from 519.3 520.3 522.2 523.2
    nr '"잘 몰라. 아마 수백 년은 넘겠지. 나는 내 능력껏 대장이 길을 찾도록 도왔지만…" 모트는 한숨을 쉰다, 그리고 고개를 들어 당신을 마주본다. "여기까지 올 수 있었던 적도 드물었어. 아마 내 기억으로는 네댓 번이 고작일 거야. 아마 이번이야말로… 대장이 성공해서 대체 대장에게 무슨 일이 일어난 건지 알아낼 수 있을지도 몰라."{#morte_s524_}'

    menu:
        '"이제 나는 기둥과 이야기를 하겠어…"{#morte_s524_r53819}':
            # a1053 # r53819
            jump morte_s512

        '"넌 어떻게 해서 기둥에서 빠져나왔지?"{#morte_s524_r53820}':
            # a1054 # r53820
            jump morte_s521

        '"왜 시체안치소에서는 네가 날 안다는 사실을 말하지 않았지?"{#morte_s524_r53821}':
            # a1055 # r53821
            jump morte_s523

        '"좋아. 떠나자, 모트."{#morte_s524_r53822}':
            # a1056 # r53822
            jump morte_dispose


# s525 # say53823
label morte_s525: # -
    nr '"오, 안돼…"{#morte_s525_}'

    jump pillar_s10  # EXTERN


# s526 # say53824
label morte_s526: # -
    nr '모트는 이빨을 덜거덕거리며 공포로 떤다. "난 돌아갈 수 없어, 대장! 그럴 수 없어! 그럴 수 없어! 그럴 수 없어!"{#morte_s526_}'

    menu:
        '"그는 당신에게로 돌아온 것이 아니오. 하지만 내겐 당신에게 질문할 것들이 좀 있소, 해골들의 기둥."{#morte_s526_r53825}' if morteLogic.r53825_condition():
            # a1057 # r53825
            $ morteLogic.r53825_action()
            jump pillar_s2  # EXTERN

        '"그는 당신에게로 돌아온 것이 아니오. 하지만 내겐 당신에게 질문할 것들이 좀 있소, 해골들의 기둥."{#morte_s526_r53826}' if morteLogic.r53826_condition():
            # a1058 # r53826
            $ morteLogic.r53826_action()
            jump pillar_s2  # EXTERN

        '"그는 당신에게로 돌아온 것이 아니오, 해골들의 기둥. 하지만 내겐 당신에게 질문할 것들이 좀 있소."{#morte_s526_r53827}' if morteLogic.r53827_condition():
            # a1059 # r53827
            jump pillar_s12  # EXTERN

        '"그냥 가자, 모트. 자."{#morte_s526_r53828}':
            # a1060 # r53828
            jump pillar_s50  # EXTERN


# s527 # say53829
label morte_s527: # -
    nr '"이봐, 대장, 내가 방금 전에 저게 뭔지 말했잖아?! 그것은 다른 사람들을 죽음으로 몬 „조언“을 한 거짓말쟁이들의 머리들로 만들어졌다고. 그것은 엄청난 양의 지식을 가지고 있어 거의 어떤 질문에도 대답을 해줄 수가 있지만, 그 대가로 엄청난 요구를 한다고. 그런 질문은 하지마!"{#morte_s527_}'

    jump pillar_s14  # EXTERN


# s528 # say53830
label morte_s528: # -
    nr '"재발 날 거기 다시 넣지 말아줘, 대장. 제발 !"{#morte_s528_}'

    jump pillar_s17  # EXTERN


# s529 # say53831
label morte_s529: # -
    nr '"대장?! 안돼! 안돼! 그럴 수 없어! 제발!"{#morte_s529_}'

    menu:
        '"걱정 마, 모트. 나중에 널 다시 빼내 줄 테니까."{#morte_s529_r53832}' if morteLogic.r53832_condition():
            # a1061 # r53832
            jump morte_s530

        '"걱정 마, 모트. 나중에 널 다시 빼내줄 테니까."{#morte_s529_r53833}' if morteLogic.r53833_condition():
            # a1062 # r53833
            jump morte_s530

        '"걱정 마, 모트. 나중에 널 다시 빼내줄 테니까."{#morte_s529_r53834}' if morteLogic.r53834_condition():
            # a1063 # r53834
            jump morte_s530

        '"걱정 마, 모트. 나중에 널 다시 빼내줄 테니까."{#morte_s529_r53835}' if morteLogic.r53835_condition():
            # a1064 # r53835
            jump morte_s531

        '"좋아, 모트. 해골들의 기둥이어, 다른 어떤 공물이라면 받겠소?"{#morte_s529_r53836}' if morteLogic.r53836_condition():
            # a1065 # r53836
            jump pillar_s19  # EXTERN

        '"좋아, 모트. 해골들의 기둥이어, 다른 어떤 공물이라면 받겠소?"{#morte_s529_r53837}' if morteLogic.r53837_condition():
            # a1066 # r53837
            jump pillar_s20  # EXTERN

        '"좋아, 모트. 해골들의 기둥이어, 다른 어떤 공물이라면 받겠소?"{#morte_s529_r53838}' if morteLogic.r53838_condition():
            # a1067 # r53838
            jump pillar_s21  # EXTERN

        '"좋아, 모트. 해골들의 기둥이어, 다른 어떤 공물이라면 받겠소?"{#morte_s529_r53839}' if morteLogic.r53839_condition():
            # a1068 # r53839
            jump pillar_s22  # EXTERN

        '"좋아, 모트. 해골들의 기둥이어, 다른 어떤 공물이라면 받겠소?"{#morte_s529_r53840}' if morteLogic.r53840_condition():
            # a1069 # r53840
            jump pillar_s23  # EXTERN

        '"그냥 가자, 모트. 자."{#morte_s529_r53841}':
            # a1070 # r53841
            $ morteLogic.r53841_action()
            jump pillar_s50  # EXTERN


# s530 # say53842
label morte_s530: # from 529.0 529.1 529.2
    nr '모트는 회의적인 눈초리로 당신을 쳐다본다. "정말이야? 맹세할 수 있어? 이봐, 내가 무슨 말을 하고 있는 거지?! 안돼! 어림없어! 날 다시 거기에 넣을 순 없어!"{#morte_s530_}'

    menu:
        '모트를 잡아서 해골들의 기둥에 쑤셔넣는다.{#morte_s530_r53843}':
            # a1071 # r53843
            $ morteLogic.r53843_action()
            jump morte_dispose

        '"좋아, 모트. 해골들의 기둥이어, 다른 어떤 공물이라면 받겠소?"{#morte_s530_r53844}' if morteLogic.r53844_condition():
            # a1072 # r53844
            jump pillar_s19  # EXTERN

        '"좋아, 모트. 해골들의 기둥이여, 다른 어떤 공물이라면 받겠소?"{#morte_s530_r53863}' if morteLogic.r53863_condition():
            # a1073 # r53863
            jump pillar_s20  # EXTERN

        '"좋아, 모트. 해골들의 기둥이어, 다른 어떤 공물이라면 받겠소?"{#morte_s530_r53864}' if morteLogic.r53864_condition():
            # a1074 # r53864
            jump pillar_s21  # EXTERN

        '"좋아, 모트. 해골들의 기둥이어, 다른 어떤 공물이라면 받겠소?"{#morte_s530_r53865}' if morteLogic.r53865_condition():
            # a1075 # r53865
            jump pillar_s22  # EXTERN

        '"좋아, 모트. 해골들의 기둥이어, 다른 어떤 공물이라면 받겠소?"{#morte_s530_r53866}' if morteLogic.r53866_condition():
            # a1076 # r53866
            jump pillar_s23  # EXTERN

        '"그냥 가자, 모트. 자."{#morte_s530_r53867}':
            # a1077 # r53867
            $ morteLogic.r53867_action()
            jump pillar_s50  # EXTERN


# s531 # say53849
label morte_s531: # from 529.3
    nr '모트는 한동안 당신을 조용히 쳐다본다, 그리고 어이가 없다는 듯 입을 크게 벌린다. "뭐?! 어림없어! 대장은 그 때만큼 강하질 않아… 이봐, 잊어버리자고. 대장은 할 수가 없어, 그러니 그런 얘기는 집어치워! 날 다시 거기에 넣을 순 없어!"{#morte_s531_}'

    menu:
        '모트를 잡아서 해골들의 기둥에 쑤셔넣는다.{#morte_s531_r53850}':
            # a1078 # r53850
            $ morteLogic.r53850_action()
            jump morte_dispose

        '"좋아, 모트. 해골들의 기둥이어, 다른 어떤 공물이라면 받겠소?"{#morte_s531_r53851}' if morteLogic.r53851_condition():
            # a1079 # r53851
            jump pillar_s19  # EXTERN

        '"좋아, 모트. 해골들의 기둥이어, 다른 어떤 공물이라면 받겠소?"{#morte_s531_r53852}' if morteLogic.r53852_condition():
            # a1080 # r53852
            jump pillar_s20  # EXTERN

        '"좋아, 모트. 해골들의 기둥이어, 다른 어떤 공물이라면 받겠소?"{#morte_s531_r53853}' if morteLogic.r53853_condition():
            # a1081 # r53853
            jump pillar_s21  # EXTERN

        '"좋아, 모트. 해골들의 기둥이어, 다른 어떤 공물이라면 받겠소?"{#morte_s531_r53854}' if morteLogic.r53854_condition():
            # a1082 # r53854
            jump pillar_s22  # EXTERN

        '"좋아, 모트. 해골들의 기둥이어, 다른 어떤 공물이라면 받겠소?"{#morte_s531_r53855}' if morteLogic.r53855_condition():
            # a1083 # r53855
            jump pillar_s23  # EXTERN

        '"그냥 가자, 모트. 자."{#morte_s531_r53856}':
            # a1084 # r53856
            $ morteLogic.r53856_action()
            jump pillar_s50  # EXTERN


# s532 # say53857
label morte_s532: # -
    nr '"워, 이것 보라고… 기다려! 그렇게 서두르지 말라고! 기둥… 난 갈라진-혀의 흐줄이 어디 있는지 말해줄 수 있어! 자, 알고 싶지 않아? 만약 그가 나 대신 그 정보를 준다면? 어떻게 생각해?"{#morte_s532_}'

    menu:
        '"기다려, 모트. 흐줄을 팔아 넘길 순 없어."{#morte_s532_r53858}':
            # a1085 # r53858
            jump morte_s533

        '기둥의 답을 기다린다.{#morte_s532_r53859}':
            # a1086 # r53859
            jump pillar_s19  # EXTERN


# s533 # say53860
label morte_s533: # from 532.0
    nr '"뭐?" 대장 미쳤어?! *난* 배신할 수 있고, 그 *마족*은 배신하지 못하겠다고?! 놈이 대장을 도운 건 저주에 의해 그렇게 강제당하기 때문이라고! 나는 어떻고? 대장을 시체안치소에서 꺼내준 게 누구지? 대장이 그 요새인지 뭔지 하는 데서 기다리고 놈과 맞설 때 대장 옆에 서 있을… 아니, 떠 있을 사람이 누구지?! 허?! 허?! 그 후줄이라는 똥궁둥이는 절대 아니라고!{#morte_s533_}'

    menu:
        '"좋아, 좋아. 어떻게 생각하시오, 기둥?"{#morte_s533_r53861}':
            # a1087 # r53861
            jump pillar_s19  # EXTERN

        '"미안해, 모트. 네가 가줘야겠어."{#morte_s533_r53862}':
            # a1088 # r53862
            jump pillar_s18  # EXTERN


# s534 # say54155
label morte_s534: # from 540.3 541.2 542.2 543.1 544.1 545.2 546.1 547.1 548.4 549.2 550.2 551.1 552.1 553.2 554.2 555.2 556.1 557.1 562.0 563.0 564.0
    nr '"안 갈 이유가 없지, 대장." 모트는 고개를 젓는다. "내 말은 이미 우리는 다원 우주에서 온갖 끔찍한 차원이란 차원은 다 가봤다는 거야. 지금 와서 절벽 아래로 한 걸음 더 내딛지 못할 이유는 없지." 모트는 이빨을 덜거덕거리며 한숨을 쉰다. "준비는 다 됐어? 만약 아직 덜 됐다면…"{#morte_s534_}'

    menu:
        '"전이문 저편에서 무엇이 기다리고 있는지에 대해 자네가 아는 것을 다시 말해주겠나?"{#morte_s534_r54156}':
            # a1089 # r54156
            jump morte_s544

        '"난 준비가 됐네, 모트. 내 자신을 위해 더 이상 준비할 것이라곤 없어. 함께 가겠나?"{#morte_s534_r54157}':
            # a1090 # r54157
            jump morte_s535

        '"자네 말이 옳아, 모트… 우선 준비를 더 하도록 하겠어."{#morte_s534_r54158}':
            # a1091 # r54158
            jump morte_dispose


# s535 # say54159
label morte_s535: # from 534.1
    nr '"그래, 나…" 모트는 빛나는 청색 커튼을 흘긋 보더니 다시 한숨을 쉰다. "좋아. 가자고. 어딜 가더라도 시체안치소에서 골통을 딸랑거리는 것보다는 낫겠지."{#morte_s535_}'

    menu:
        '"그럼 좋아…"{#morte_s535_r54160}':
            # a1092 # r54160
            $ morteLogic.r54160_action()
            jump morte_dispose


# s536 # say54161
label morte_s536: # -
    nr '"어…" 모트는 머뭇거린다. 그는 전이문과 당신을 번갈아 보더니 한숨을 쉰다. "이봐, 난 여기서 별로 얘기를 하고 싶지는 않지만… 어… 그래, 대장에게 꼭 해야 할 얘기가 있어…"{#morte_s536_}'

    menu:
        '"무슨 일인가, 모트?"{#morte_s536_r54162}':
            # a1093 # r54162
            jump morte_s537

        '"뭐? 자, 모트, 우린 가야만…"{#morte_s536_r54163}':
            # a1094 # r54163
            jump morte_s537


# s537 # say54164
label morte_s537: # from 536.0 536.1
    nr '"그건 우리가 갈 곳… 아니, 실은 *가본* 적이 있는 곳에 대해서야…"{#morte_s537_}'

    menu:
        '"„우리가 가본 적이 있는 곳“? 무슨 얘기를 하는 거지?"{#morte_s537_r54165}' if morteLogic.r54165_condition():
            # a1095 # r54165
            jump morte_s540

        '"„우리가 간 적이 있는 곳“? 무슨 얘기를 하는 거지?"{#morte_s537_r54166}' if morteLogic.r54166_condition():
            # a1096 # r54166
            jump dakkon_s174  # EXTERN

        '"„우리가 간 적이 있는 곳“? 무슨 얘기를 하는 거지?"{#morte_s537_r54167}' if morteLogic.r54167_condition():
            # a1097 # r54167
            jump morte_s540


# s538 # say54168
label morte_s538: # -
    nr '"어… 대장?" 모트는 머뭇거린다. 그는 전이문과 당신을 번갈아 보더니 한숨을 쉰다. "이봐, 난 여기서 별로 얘기를 하고 싶지는 않지만… 어… 그래, 대장에게 꼭 해야 할 얘기가 있어…"{#morte_s538_}'

    menu:
        '"무슨 일인가, 모트?"{#morte_s538_r54169}':
            # a1098 # r54169
            jump morte_s539

        '"뭐? 자, 모트, 난 가야만…"{#morte_s538_r54170}':
            # a1099 # r54170
            jump morte_s539


# s539 # say54171
label morte_s539: # from 538.0 538.1
    nr '"그건 우리가 갈 곳… 아니, 실은 *가본* 적이 있는 곳에 대해서야…"{#morte_s539_}'

    menu:
        '"„우리가 간 적이 있는 곳“? 무슨 얘기를 하는 거지?"{#morte_s539_r54172}' if morteLogic.r54172_condition():
            # a1100 # r54172
            jump morte_s540

        '"„우리가 간 적이 있는 곳“? 무슨 얘기를 하는 거지?"{#morte_s539_r54173}' if morteLogic.r54173_condition():
            # a1101 # r54173
            jump dakkon_s174  # EXTERN

        '"„우리가 간 적이 있는 곳“? 무슨 얘기를 하는 거지?"{#morte_s539_r54174}' if morteLogic.r54174_condition():
            # a1102 # r54174
            jump morte_s540


# s540 # say54175
label morte_s540: # from 537.0 537.2 539.0 539.2
    nr '"실은 우리가 이 과정을 거치는 건 이번이 처음이 아니야… 우리는 이 „후회의 요새“란 곳에 가본 적이 있어… 하지만… 우리… 난 그 때는 알지 못했지."{#morte_s540_}'

    menu:
        '"알지 못했었다고? 그게 어떻게 가능하지?"{#morte_s540_r54176}':
            # a1103 # r54176
            jump morte_s541

        '"그래, 넌 애초부터 내게… 전이문이 어디 있으며, 전이문 열쇠는 무엇이고, 왜 내가 불사신이며, 내 죽음이 어떻게 되었고, 그리고 그것이 요새에 있다는 사실을 내게 말해줄 수도 있었다는 건가?! 모트, 난 네 숨통을 끊어 놓아야겠어…!{#morte_s540_r54177}':
            # a1104 # r54177
            jump morte_s542

        '"모트, 난 설명을 들어야겠어… 이번에는 거짓말이나 기만따위는 통하지 않아."{#morte_s540_r54178}':
            # a1105 # r54178
            jump morte_s541

        '"관둬, 모트. 난 전이문으로 뛰어들 준비가 됐어. 나와 함께 가겠나?{#morte_s540_r54179}' if morteLogic.r54179_condition():
            # a1106 # r54179
            jump morte_s534

        '"관둬, 모트. 무슨 일이 생기게 되더라도 뭐 할 수 없지. 난 지금 전이문 속으로 향하겠네."{#morte_s540_r54180}' if morteLogic.r54180_condition():
            # a1107 # r54180
            $ morteLogic.r54180_action()
            jump morte_dispose


# s541 # say54181
label morte_s541: # from 540.0 540.2
    nr '"직접 가보지 않으면 설명하기가 힘들어… 게다가 대장은 *다른* 대장을 몰라 -- 그는 우리들에게 비밀을 말해줄 그런 부류의 사람이 아니었어. 나는 그가 어떤 장소를 찾고 있다는 건 알았지만, 그 이유나 위치, 그리고 그 곳이 어떤 곳인지도 몰랐어, 그러니 대장한테 아무런 얘기도 못 해주었던 거지… 나는 그 곳에 우리가 도착했을 때 일어났던 일밖에 몰라…"{#morte_s541_}'

    menu:
        '"그리고… 무슨 일이 일어났지?"{#morte_s541_r54189}' if morteLogic.r54189_condition():
            # a1108 # r54189
            jump morte_s544

        '"그리고… 무슨 일이 일어났지?"{#morte_s541_r54190}' if morteLogic.r54190_condition():
            # a1109 # r54190
            jump morte_s543

        '"관둬, 모트. 난 전이문으로 뛰어들 준비가 됐어. 나와 함께 가겠나?{#morte_s541_r54191}' if morteLogic.r54191_condition():
            # a1110 # r54191
            jump morte_s534

        '"관둬, 모트. 무슨 일이 생기게 되더라도 뭐 할 수 없지. 난 지금 전이문 속으로 향하겠네."{#morte_s541_r54192}' if morteLogic.r54192_condition():
            # a1111 # r54192
            $ morteLogic.r54192_action()
            jump morte_dispose


# s542 # say54193
label morte_s542: # from 540.1
    nr '모트는 불안해 하는 듯하다. "아냐! 아냐! 우리… 나는… 그런 것들에 대해 전혀 알지 못했어! 대장은 비밀을 남과 공유하는 그런 스타일이 아니었잖아! 그…그 *다른* 대장은 비밀은 대부분은 혼자서만 간직하고 있었고, 그래서 우린 사전에 우리가 왜 가야하며, 또 어떤 곳으로 가는지조차 알지 못했어! 나는 그 곳에 우리가 도착했을 때 일어났던 일밖에 몰라…"{#morte_s542_}'

    menu:
        '"그리고… 무슨 일이 일어났지?"{#morte_s542_r54194}' if morteLogic.r54194_condition():
            # a1112 # r54194
            jump morte_s544

        '"그리고… 무슨 일이 일어났지?"{#morte_s542_r54195}' if morteLogic.r54195_condition():
            # a1113 # r54195
            jump morte_s543

        '"관둬, 모트. 난 전이문으로 뛰어들 준비가 됐어. 나와 함께 가겠나?{#morte_s542_r54196}' if morteLogic.r54196_condition():
            # a1114 # r54196
            jump morte_s534

        '"관둬, 모트. 무슨 일이 생기게 되더라도 뭐 할 수 없지. 난 지금 전이문 속으로 향하겠네."{#morte_s542_r54197}' if morteLogic.r54197_condition():
            # a1115 # r54197
            $ morteLogic.r54197_action()
            jump morte_dispose


# s543 # say54198
label morte_s543: # from 541.1 542.1
    nr '"그래, 우리는 이 - 이 요새로 갔지, 하지만 우리가 그 곳에 한 발짝도 디디기 전에 우린 뿔뿔이 흩어져 자신들의 목숨을 구하기 위해 싸워야만 했지… 만약 대장이 그 곳으로 갈 결심이라면, 내가 맨 먼저 해주고 싶은 말은 이거야. 저 전이문으로 들어가는 사람은 누구든지 다른 사람들로부터 *한참* 떨어진 곳에 도착하게 될 가능성이 높아. 그리고 중요한 건, 그렇다 하더라도 대장은 그 곳에 도와줄 사람들을 데리고 가야한다는 거야…"{#morte_s543_}'

    menu:
        '"왜 그런 말을 하는 거지?"{#morte_s543_r54199}':
            # a1116 # r54199
            jump morte_s545

        '"관둬, 모트. 난 전이문으로 뛰어들 준비가 됐어. 나와 함께 가겠나?{#morte_s543_r54200}' if morteLogic.r54200_condition():
            # a1117 # r54200
            jump morte_s534

        '"관둬, 모트. 무슨 일이 생기게 되더라도 뭐 할 수 없지. 난 지금 전이문 속으로 향하겠네."{#morte_s543_r54201}' if morteLogic.r54201_condition():
            # a1118 # r54201
            $ morteLogic.r54201_action()
            jump morte_dispose


# s544 # say54202
label morte_s544: # from 534.0 541.0 542.0
    nr '"그래, 우리는 이 - 이 요새로 갔지, 하지만 우리가 그 곳에 한 발짝도 디디기 전에 우린 뿔뿔이 흩어져 자신들의 목숨을 구하기 위해 싸워야만 했지…" 그는 몸서리친다. "만약 대장이 그 곳으로 갈 결심이라면, 내가 맨 먼저 해주고 싶은 말은 이거야. 저 전이문으로 들어가는 사람은 누구든지 다른 사람들로부터 *한참* 떨어진 곳에 도착하게 될 가능성이 높아. 그리고 중요한 건, 설령 우리가 흩어진다고 하더라도 우리가 대장의 마지막 희망이 될 수도 있다는 사실이야…"{#morte_s544_}'

    menu:
        '"왜 그런 말을 하는 거지?"{#morte_s544_r54203}':
            # a1119 # r54203
            jump morte_s545

        '"관둬, 모트. 난 전이문으로 뛰어들 준비가 됐어. 나와 함께 가겠나?{#morte_s544_r54204}' if morteLogic.r54204_condition():
            # a1120 # r54204
            jump morte_s534

        '"관둬, 모트. 무슨 일이 생기게 되더라도 뭐 할 수 없지. 난 지금 전이문 속으로 향하겠네."{#morte_s544_r54205}' if morteLogic.r54205_condition():
            # a1121 # r54205
            $ morteLogic.r54205_action()
            jump morte_dispose


# s545 # say54206
label morte_s545: # from 543.0 544.0
    nr '"왜냐하면 이 요새에서 대장를 기다리고 있는 것이 무엇이든 간에, 대장, 놈은 이미 대장을 한 번 격퇴했어… 그리고 난 오늘까지도 대장이 그 때 어떻게 살아남았는지 모르겠어, 하지만 만약 대장이 또 지면, 대장을 그 요새에서 끌고 나올 사람이 필요해…"{#morte_s545_}'

    menu:
        '"모트, 요새에 대해 자네가 아는 모든 것을 말해주어야겠네… 그건 매우 중요해."{#morte_s545_r54207}' if morteLogic.r54207_condition():
            # a1122 # r54207
            jump morte_s547

        '"모트, 요새에 대해 자네가 아는 모든 것을 말해주어야겠네… 그건 매우 중요해."{#morte_s545_r54208}' if morteLogic.r54208_condition():
            # a1123 # r54208
            jump morte_s546

        '"관둬, 모트. 난 전이문으로 뛰어들 준비가 됐어. 나와 함께 가겠나?{#morte_s545_r54209}' if morteLogic.r54209_condition():
            # a1124 # r54209
            jump morte_s534

        '"관둬, 모트. 무슨 일이 생기게 되더라도 뭐 할 수 없지. 난 지금 전이문 속으로 향하겠네."{#morte_s545_r54210}' if morteLogic.r54210_condition():
            # a1125 # r54210
            $ morteLogic.r54210_action()
            jump morte_dispose


# s546 # say54211
label morte_s546: # from 545.1
    nr '"이 „후회의 요새“… 그 곳은 수십 킬로미터가 넘게 펼쳐지고 있어, 대장. 그 곳은 요새지만, 하나의 독립된 차원처럼 느껴져 - 돌과 어둠과 그림자들로 구성된. 그 곳에는 사방이 그림자들로 득실거려. 대장이 그 곳에 갈 거면, 준비를 단단히 해야 할 거야…"{#morte_s546_}'

    menu:
        '"우리가 처음 그 곳에 갔을 때 무슨 일이 있었지?"{#morte_s546_r54212}':
            # a1126 # r54212
            jump morte_s548

        '"관둬, 모트. 난 전이문으로 뛰어들 준비가 됐어. 나와 함께 가겠나?{#morte_s546_r54213}' if morteLogic.r54213_condition():
            # a1127 # r54213
            jump morte_s534

        '"관둬, 모트. 무슨 일이 생기게 되더라도 뭐 할 수 없지. 난 지금 전이문 속으로 향하겠네."{#morte_s546_r54214}' if morteLogic.r54214_condition():
            # a1128 # r54214
            $ morteLogic.r54214_action()
            jump morte_dispose


# s547 # say54215
label morte_s547: # from 545.0
    nr '"이 „후회의 요새“… 그 곳은 수십 킬로미터가 넘게 펼쳐지고 있어, 대장. 그 곳은 요새지만, 하나의 독립된 차원처럼 느껴져 - 돌과 어둠과 그림자들로 구성된. 그 곳에는 사방이 그림자들로 득실거려. 우리가 그 곳에 갈 거면, 준비를 단단히 해야 할 거야…"{#morte_s547_}'

    menu:
        '"우리가 처음 그 곳에 갔을 때 무슨 일이 있었지?"{#morte_s547_r54216}':
            # a1129 # r54216
            jump morte_s548

        '"관둬, 모트. 난 전이문으로 뛰어들 준비가 됐어. 나와 함께 가겠나?{#morte_s547_r54217}' if morteLogic.r54217_condition():
            # a1130 # r54217
            jump morte_s534

        '"관둬, 모트. 무슨 일이 생기게 되더라도 뭐 할 수 없지. 난 지금 전이문 속으로 향하겠네."{#morte_s547_r54218}' if morteLogic.r54218_condition():
            # a1131 # r54218
            $ morteLogic.r54218_action()
            jump morte_dispose


# s548 # say54219
label morte_s548: # from 546.0 547.0
    nr '"대장, 난 대장에게 무슨 일이 일어났는지 몰라, 하지만 내게 무슨 일이 일어났는지는 알아… 나는 날 죽이려고 쫓아오는 그림자들을 피해 방에서 방으로 도망쳐 다녔어… 그러다가… 갑자기 우리는 마치 누군가가 우리를 끌어당긴 것처럼 시길로 돌아오게 되었어…"{#morte_s548_}'

    menu:
        '"잠깐 기다려. 자네가 „우리“라고 할 때 그건 자네와 나만을 가리키는 것 같지는 않군."{#morte_s548_r54220}' if morteLogic.r54220_condition():
            # a1132 # r54220
            jump morte_s565

        '"잠깐 기다려. 자네가 „우리“라고 할 때 그건 자네와 나만을 가리키는 것 같지는 않군."{#morte_s548_r54221}' if morteLogic.r54221_condition():
            # a1133 # r54221
            jump morte_s549

        '"잠깐 기다려. 자네가 „우리“라고 할 때 그건 자네와 나만을 가리키는 것 같지는 않군."{#morte_s548_r54223}' if morteLogic.r54223_condition():
            # a1134 # r54223
            jump morte_s550

        '"알겠네. 달리 얘기해줄 건 없나?"{#morte_s548_r54225}':
            # a1135 # r54225
            jump morte_s552

        '"관둬, 모트. 난 전이문으로 뛰어들 준비가 됐어. 나와 함께 가겠나?{#morte_s548_r54226}' if morteLogic.r54226_condition():
            # a1136 # r54226
            jump morte_s534

        '"관둬, 모트. 무슨 일이 생기게 되더라도 뭐 할 수 없지. 난 지금 전이문 속으로 향하겠네."{#morte_s548_r54227}' if morteLogic.r54227_condition():
            # a1137 # r54227
            $ morteLogic.r54227_action()
            jump morte_dispose


# s549 # say54229
label morte_s549: # from 548.1
    nr '모트는 잠시 침묵한다. "아니… 다른 사람들도 있었어. 다콘… 데이오나라란 센세이트 계집, 늘 술에 취해 있던 눈먼 궁수, 그리고 대장과 나… 그리고 완전히 아수라장이 되었지. 대장, 나, 그리고 다콘이 살아 돌아온 건 분명하지만, 다른 둘은 생환하지 못했어. 그들에게 무슨 일이 일어났는지는 나도 몰라."{#morte_s549_}'

    menu:
        '"다콘? 하지만 왜… 이 일에 대해선 그에게 따로 물어봐야겠군. 하지만 자네는 데이오나라와 궁수는 요새로부터 돌아오지 못했다고 했지?"{#morte_s549_r54230}' if morteLogic.r54230_condition():
            # a1138 # r54230
            jump morte_s551

        '"다콘? 하지만 왜… 이 일에 대해선 그에게 따로 물어봐야겠군. 하지만 자네는 이 데이오나라라는 여자와 궁수는 요새로부터 돌아오지 못했다고 했지?"{#morte_s549_r54231}' if morteLogic.r54231_condition():
            # a1139 # r54231
            jump morte_s551

        '"관둬, 모트. 난 전이문으로 뛰어들 준비가 됐어. 나와 함께 가겠나?{#morte_s549_r54232}' if morteLogic.r54232_condition():
            # a1140 # r54232
            jump morte_s534

        '"관둬, 모트. 무슨 일이 생기게 되더라도 뭐 할 수 없지. 난 지금 전이문 속으로 향하겠네."{#morte_s549_r54233}' if morteLogic.r54233_condition():
            # a1141 # r54233
            $ morteLogic.r54233_action()
            jump morte_dispose


# s550 # say54234
label morte_s550: # from 548.2
    nr '모트는 잠시 침묵한다. "아니… 다른 사람들도 있었어. 늙은 기스 다콘… 데이오나라란 센세이트 계집, 늘 술에 취해 있던 눈먼 궁수, 그리고 대장과 나… 그리고 완전히 아수라장이 되었지. 대장, 나, 그리고 다콘이 살아 돌아온 건 분명하지만, 다른 둘은 생환하지 못했어. 그들에게 무슨 일이 일어났는지는 나도 몰라."{#morte_s550_}'

    menu:
        '"데이오나라와 궁수는 요새로부터 돌아오지 못했다는 건가?"{#morte_s550_r54235}' if morteLogic.r54235_condition():
            # a1142 # r54235
            jump morte_s551

        '"이 데이오나라라는 여자와 궁수는 요새로부터 돌아오지 못했다는 건가?"{#morte_s550_r54236}' if morteLogic.r54236_condition():
            # a1143 # r54236
            jump morte_s551

        '"관둬, 모트. 난 전이문으로 뛰어들 준비가 됐어. 나와 함께 가겠나?{#morte_s550_r54237}' if morteLogic.r54237_condition():
            # a1144 # r54237
            jump morte_s534

        '"관둬, 모트. 무슨 일이 생기게 되더라도 뭐 할 수 없지. 난 지금 전이문 속으로 향하겠네."{#morte_s550_r54238}' if morteLogic.r54238_condition():
            # a1145 # r54238
            $ morteLogic.r54238_action()
            jump morte_dispose


# s551 # say54239
label morte_s551: # from 549.0 549.1 550.0 550.1
    nr '모트는 고개를 젓는다. "내가 아는 한은 아냐."{#morte_s551_}'

    menu:
        '"내게 요새에 대해 더 애기해줄 건 없나?"{#morte_s551_r54240}':
            # a1146 # r54240
            jump morte_s552

        '"관둬, 모트. 난 전이문으로 뛰어들 준비가 됐어. 나와 함께 가겠나?{#morte_s551_r54241}' if morteLogic.r54241_condition():
            # a1147 # r54241
            jump morte_s534

        '"관둬, 모트. 무슨 일이 생기게 되더라도 뭐 할 수 없지. 난 지금 전이문 속으로 향하겠네."{#morte_s551_r54242}' if morteLogic.r54242_condition():
            # a1148 # r54242
            $ morteLogic.r54242_action()
            jump morte_dispose


# s552 # say54243
label morte_s552: # from 548.3 551.0
    nr '"대장, 내가 말해줄 건 - 우리는 도착하자마자 흩어지게 되고, 그 곳은 거대한 장소이며, 그림자들로 득실거리고… 그 곳 어딘가에는 우리들 중 그 누구보다도 강대한 존재가 기다리고 있다는 것밖에 없어. 그 이상은 더 할 말이 없어…"{#morte_s552_}'

    menu:
        '"틀림없나? 지금이 우리가 서로 얘기를 나눌 수 있는 마지막 기회가 될지도 모르겠군…"{#morte_s552_r54244}':
            # a1149 # r54244
            $ morteLogic.r54244_action()
            jump morte_s553

        '"관둬, 모트. 난 전이문으로 뛰어들 준비가 됐어. 나와 함께 가겠나?{#morte_s552_r54245}' if morteLogic.r54245_condition():
            # a1150 # r54245
            jump morte_s534

        '"관둬, 모트. 무슨 일이 생기게 되더라도 뭐 할 수 없지. 난 지금 전이문 속으로 향하겠네."{#morte_s552_r54246}' if morteLogic.r54246_condition():
            # a1151 # r54246
            $ morteLogic.r54246_action()
            jump morte_dispose


# s553 # say54249
label morte_s553: # from 552.0
    nr '"글쎄…" 모트는 잠시 멈춘다. "그래, 대장이 알아야 할 것이 하나 더 있어 - 내가 전에 알았던 대장, 우릴 이 곳으로 이끌었던 대장은 지금의 대장과는 전혀 달라."{#morte_s553_}'

    menu:
        '"무슨 뜻이지?"{#morte_s553_r54250}' if morteLogic.r54250_condition():
            # a1152 # r54250
            jump morte_s554

        '"무슨 뜻이지?"{#morte_s553_r54252}' if morteLogic.r54252_condition():
            # a1153 # r54252
            jump morte_s555

        '"관둬, 모트. 난 전이문으로 뛰어들 준비가 됐어. 나와 함께 가겠나?{#morte_s553_r54255}' if morteLogic.r54255_condition():
            # a1154 # r54255
            jump morte_s534

        '"관둬, 모트. 무슨 일이 생기게 되더라도 뭐 할 수 없지. 난 지금 전이문 속으로 향하겠네."{#morte_s553_r54262}' if morteLogic.r54262_condition():
            # a1155 # r54262
            $ morteLogic.r54262_action()
            jump morte_dispose


# s554 # say54263
label morte_s554: # from 553.0
    nr '"다른 대장, 그는… 누구에게도 관심을 두지 않았어. 그 누구에게도. 우리들 모두가 요새에서 죽었더라도 그는 눈 하나 깜짝하지 않았을 거야. 그러니… 나는 대장이 그와는 다른 사람으로 계속 있어 주었으면 해, 왜냐하면 난 지금의 대장이 더 좋거든. 훨씬 더."{#morte_s554_}'

    menu:
        '"자네가 얘기하고 싶은 건 그게 전부가 아니야, 그렇지 않나?"{#morte_s554_r54264}' if morteLogic.r54264_condition():
            # a1156 # r54264
            jump morte_s556

        '"그뿐인가?"{#morte_s554_r54265}':
            # a1157 # r54265
            jump morte_s556

        '"관둬, 모트. 난 전이문으로 뛰어들 준비가 됐어. 나와 함께 가겠나?{#morte_s554_r54266}' if morteLogic.r54266_condition():
            # a1158 # r54266
            jump morte_s534

        '"관둬, 모트. 무슨 일이 생기게 되더라도 뭐 할 수 없지. 난 지금 전이문 속으로 향하겠네."{#morte_s554_r54267}' if morteLogic.r54267_condition():
            # a1159 # r54267
            $ morteLogic.r54267_action()
            jump morte_dispose


# s555 # say54268
label morte_s555: # from 553.1
    nr '내가 말하려는 건 대장이 지금까지 한 완고하고 아둔한 짓거리에도 불구하고, 대장이 그보다는 인간미가 더 있다는 거야. 다른 당신… 그는 이 세상에 자기 혼자만 존재한다고 생각하는 사람이었어. 그러니… 그것만 기억해 두라고."{#morte_s555_}'

    menu:
        '"자네가 얘기하고 싶은 건 그게 전부가 아니야, 그렇지 않나?"{#morte_s555_r54269}' if morteLogic.r54269_condition():
            # a1160 # r54269
            jump morte_s556

        '"그뿐인가?"{#morte_s555_r54270}':
            # a1161 # r54270
            jump morte_s556

        '"관둬, 모트. 난 전이문으로 뛰어들 준비가 됐어. 나와 함께 가겠나?{#morte_s555_r54271}' if morteLogic.r54271_condition():
            # a1162 # r54271
            jump morte_s534

        '"관둬, 모트. 무슨 일이 생기게 되더라도 뭐 할 수 없지. 난 지금 전이문 속으로 향하겠네."{#morte_s555_r54272}' if morteLogic.r54272_condition():
            # a1163 # r54272
            $ morteLogic.r54272_action()
            jump morte_dispose


# s556 # say54273
label morte_s556: # from 554.0 554.1 555.0 555.1
    nr '"아니…" 모트는 잠시 멈춘다. "한 가지가 더 있어. 난 *다른* 대장을 좋아하지 않았지만, 그는 무섭게 영리한 사람이었어 - 난 그보다 더 똑똑한 사람은 여태껏 본 적이 없어. 그는 늘 모든 가능성을 염두에 두고 있었지. 만약 그조차도 요새에서 죽었다면, 그건… 젠장."{#morte_s556_}'

    menu:
        '"자네는 내가 성공할 수 있으리라고 생각하지 않는군, 안 그런가?"{#morte_s556_r54274}':
            # a1164 # r54274
            jump morte_s557

        '"관둬, 모트. 난 전이문으로 뛰어들 준비가 됐어. 나와 함께 가겠나?{#morte_s556_r54275}' if morteLogic.r54275_condition():
            # a1165 # r54275
            jump morte_s534

        '"관둬, 모트. 무슨 일이 생기게 되더라도 뭐 할 수 없지. 난 지금 전이문 속으로 향하겠네."{#morte_s556_r54276}' if morteLogic.r54276_condition():
            # a1166 # r54276
            $ morteLogic.r54276_action()
            jump morte_dispose


# s557 # say54277
label morte_s557: # from 556.0
    nr '"아니…" 모트는 고개를 젓는다. "그런 얘기가 아냐, 대장. 왜냐하면 늘 누가 가장 똑똑하거나 강한가만 중요한 건 아니기 때문이야… 때로는 당신이 누구인가, 당신이 진정으로 원하는 것은 무엇인가가 더 중요해. 내 말은 이거야, 대장은 한때 불사신이 되기를 원했었어, 하지만 그게 정말 대장이 원했던 거였어? 내가 말하려는 건 이번에는 대장이 정말로 뭘 원하는지를 확실히 해 두라는 거야."{#morte_s557_}'

    menu:
        '"알겠네. 이보게, 모트… 우린 이 일에 대해 별로 얘기하지는 못했지만, 자네가 나와 함께 여기까지 올 필요가 없었다는 건 자네도 알고 있었겠지, 안 그런가? 만약 자네가 가기 싫다고 하더라도 난 이해하겠네."{#morte_s557_r54278}' if morteLogic.r54278_condition():
            # a1167 # r54278
            $ morteLogic.r54278_action()
            jump morte_s558

        '"알겠네. 자네 의견을 다 말했으면 그만 가세. 준비됐나?"{#morte_s557_r54279}' if morteLogic.r54279_condition():
            # a1168 # r54279
            jump morte_s534

        '"알겠네. 충고해 주어 고맙네, 모트. 이제 나는 전이문으로 향하겠네."{#morte_s557_r54280}' if morteLogic.r54280_condition():
            # a1169 # r54280
            $ morteLogic.r54280_action()
            jump morte_dispose


# s558 # say54281
label morte_s558: # from 557.0
    nr '"그래… 알아, 대장. 그리고 난 대장에게는 거짓말을 할 수가 없어… 난 가고 싶지 않아… 하지만 가겠어. 일단 저 전이문으로 들어가면 대장 혼자의 문제가 아니라는 것만 알라고. 대장에게 우리들 모두의 목숨이 걸려 있으니까. 그리고 우리는 대장과는 달리 한 번 죽으면 다시 일어나지 못해."{#morte_s558_}'

    menu:
        '"그렇다면 왜 자네는…"{#morte_s558_r54282}' if morteLogic.r54282_condition():
            # a1170 # r54282
            jump grace_s169  # EXTERN

        '"그렇다면 왜 자네는…"{#morte_s558_r54283}' if morteLogic.r54283_condition():
            # a1171 # r54283
            jump grace_s170  # EXTERN

        '"그렇다면 왜 자네는…"{#morte_s558_r54284}' if morteLogic.r54284_condition():
            # a1172 # r54284
            jump morte_s562

        '"그렇다면 왜 자네는…"{#morte_s558_r54285}' if morteLogic.r54285_condition():
            # a1173 # r54285
            jump morte_s563

        '"그렇다면 왜 자네는…"{#morte_s558_r54286}' if morteLogic.r54286_condition():
            # a1174 # r54286
            jump morte_s564


# s559 # say54762
label morte_s559: # -
    nr '모트가 반격한다: "당신 냄새도 만만치 않군. 마지막으로 목욕을 한 게 언제지?"{#morte_s559_}'

    jump grace_s176  # EXTERN


# s560 # say54763
label morte_s560: # -
    nr '모트가 반격한다: "당신 냄새도 만만치 않군. 마지막으로 목욕을 한 게 언제지?"{#morte_s560_}'

    jump grace_s177  # EXTERN


# s561 # say54764
label morte_s561: # -
    nr '모트가 반격한다: "당신 냄새도 만만치 않군. 마지막으로 목욕을 한 게 언제지?"{#morte_s561_}'

    jump trias_s8  # EXTERN


# s562 # say54831
label morte_s562: # from 558.2
    nr '"래벌이 미로에서 한 말 있잖아… 대장이 자석처럼 고통받는 사람들을 자신에게 끌어당긴다는." 모트는 고개를 젓는다. "아나 그건 대장이 지금까지 쭉 고통을 받아 왔기 때문인 것 같아… 아마 대장 문제가 해결되면… 우리도 약간의 안식이나마 얻을 수 있게 될지도 모르지. 아마도."{#morte_s562_}'

    menu:
        '"그럴지도 모르지. 그럼… 나와 함께 가겠나, 모트?"{#morte_s562_r54832}' if morteLogic.r54832_condition():
            # a1175 # r54832
            jump morte_s534

        '"알겠네. 충고해 주어 고맙네, 모트. 이제 나는 전이문으로 향하겠네."{#morte_s562_r54833}' if morteLogic.r54833_condition():
            # a1176 # r54833
            $ morteLogic.r54833_action()
            jump morte_dispose


# s563 # say54834
label morte_s563: # from 558.3
    nr '"래벌이 미로에서 한 말… 그리고 휄이 토먼트의 심벌에 대해서 한 말 기억하지? 대장이 자석처럼 고통받는 사람들을 자신에게 끌어당긴다는." 모트는 고개를 젓는다. "아나 그건 대장이 지금까지 쭉 고통을 받아 왔기 때문인 것 같아… 아마 대장 문제가 해결되면… 우리도 약간의 안식이나마 얻을 수 있게 될지도 모르지. 아마도."{#morte_s563_}'

    menu:
        '"그럴지도 모르지. 그럼… 나와 함께 가겠나, 모트?"{#morte_s563_r54835}' if morteLogic.r54835_condition():
            # a1177 # r54835
            jump morte_s534

        '"알겠네. 충고해 주어 고맙네, 모트. 이제 나는 전이문으로 향하겠네."{#morte_s563_r54836}' if morteLogic.r54836_condition():
            # a1178 # r54836
            $ morteLogic.r54836_action()
            jump morte_dispose


# s564 # say54837
label morte_s564: # from 558.4
    nr '"난 대장을 오랫동안 알아 왔어, 대장. 그래서 하는 말인데, 대장에게는 뭔가가 있어… 대장이 자석처럼 고통받는 사람들을 자신에게 끌어당겨." 모트는 고개를 젓는다. "아나 그건 대장이 지금까지 쭉 고통을 받아 왔기 때문인 것 같아… 아마 대장 문제가 해결되면… 우리도 약간의 안식이나마 얻을 수 있게 될지도 모르지. 아마도."{#morte_s564_}'

    menu:
        '"그럴지도 모르지. 그럼… 나와 함께 가겠나, 모트?"{#morte_s564_r54838}' if morteLogic.r54838_condition():
            # a1179 # r54838
            jump morte_s534

        '"알겠네. 충고해 주어 고맙네, 모트. 이제 나는 전이문으로 향하겠네."{#morte_s564_r54839}' if morteLogic.r54839_condition():
            # a1180 # r54839
            $ morteLogic.r54839_action()
            jump morte_dispose


# s565 # say54840
label morte_s565: # from 548.0
    nr '모트는 침묵한다.{#morte_s565_}'

    jump dakkon_s175  # EXTERN


# s566 # say54841
label morte_s566: # -
    nr '"그 해골은 나였어." 모트가 조용히 말한다: "여자는 데이오나라란 계집이었고, 궁수에 대해서는 아는 게 없어…"{#morte_s566_}'

    jump dakkon_s177  # EXTERN


# s567 # say54842
label morte_s567: # -
    nr '"그래…" 모트는 이빨을 덜거덕거린다. 몸을 떠는 동작인 것 같다. "대장, 이 요새는… 사방에 그림자들투성이야…"{#morte_s567_}'

    jump dakkon_s178  # EXTERN


# s568 # say54843
label morte_s568: # -
    nr '"그들은 해골들의 기둥처럼 내게 말을 했어…" 모트는 목소리를 낮춘다. "그들 *알고* 있었어…"{#morte_s568_}'

    menu:
        '"좋소. 보시오, 당신들 두 사람, 나는 이 요새에 대해 당신들이 내게 말해줄 수 있는 것들을 모두 알아야만 하겠소."{#morte_s568_r54844}':
            # a1181 # r54844
            jump dakkon_s179  # EXTERN


# s569 # say54845
label morte_s569: # -
    nr '"대장, 내가 말해줄 건 - 우리는 도착하자마자 흩어지게 되고, 그 곳은 거대한 장소이며, 그림자들로 득실거리고… 그 곳 어딘가에는 우리들 중 그 누구보다도 강대한 존재가 기다리고 있다는 것밖에 없어."{#morte_s569_}'

    jump dakkon_s182  # EXTERN


# s570 # say54846
label morte_s570: # -
    nr '"대장, 내가 말해줄 건 - 어떤 그룹이든 그 곳에 도착하면 흩어지게 되어 있고, 그 곳은 거대한 장소이며, 그림자들로 득실거리고… 그 요새 어딘가에는 대장이 지금까지 만난 그 어떤 존재보다도 강대한 존재가 기다리고 있다는 것밖에 없어.{#morte_s570_}'

    jump dakkon_s182  # EXTERN


# s571 # say55832
label morte_s571: # -
    nr '"대장, 이 녀석은 말썽거리야… 이 모드론은 불량이야."{#morte_s571_}'

    menu:
        '"불량?"{#morte_s571_r55833}':
            # a1182 # r55833
            jump morte_s572


# s572 # say55834
label morte_s572: # from 571.0
    nr '"그래, 모드론들도 때로는 혼돈의 영향을 좀 받게 되지, 그리고 그런 일이 일어나면… 글쎄, 내가 생각할 수 있는 가장 좋은 설명은 불량 모드론은… 일종의 거꾸로 된 모드론이라는 거야.{#morte_s572_}'

    menu:
        '"그래 이건… 거꾸로 된 모드론이란 건가?"{#morte_s572_r55836}':
            # a1183 # r55836
            jump nordom_s21  # EXTERN


# s573 # say55837
label morte_s573: # -
    nr '"대장, 재미있긴 한데, 이 얼간이 폴리곤하고 우리 골통들을 딸랑거리느니, 차라리 바테주 궁덩이 밑에서 의자를 빼내는 게 더 보람이 있을 거야."{#morte_s573_}'

    menu:
        '"톱니바퀴 혼령이 무엇인지 *자네*는 아나, 모트?{#morte_s573_r55839}':
            # a1184 # r55839
            jump morte_s574


# s574 # say55841
label morte_s574: # from 573.0
    nr '"대장, 난 이 주사위가 뭐라고 딸랑거리는지 모르겠어."{#morte_s574_}'

    menu:
        '"난 자네가 차원들에 대한 *전문가*라고 생각했었는데."{#morte_s574_r55842}':
            # a1185 # r55842
            jump morte_s575

        '"그럼 좋소. 노돔, 난 당신에게 할 다른 질문들이 있소…"{#morte_s574_r55843}':
            # a1186 # r55843
            jump nordom_s74  # EXTERN

        '"그럼 관두게. 가세."{#morte_s574_r55844}':
            # a1187 # r55844
            jump morte_dispose


# s575 # say55845
label morte_s575: # from 574.0
    nr '"뭐… 난 대장보다는 더 안다고, 이 비틀거리는 목쉰 기억상실증 환자야! 그리고 대장의 그 빈 골통에 넣고 딸랑거릴 게 세 가지 있으니까 잘 들어 두라고: 1. 진정한 차원 전문가 따위는 없다. 2. 그나마 대장 주변에 있는 사람들 중 전문가 비슷하기라도 한 건 나밖에 없다. 3. 내게 경의를 좀 표해라. 왜냐고? 2를 참조해."{#morte_s575_}'

    menu:
        '"그럼 좋소. 노돔, 난 당신에게 할 다른 질문들이 있소…"{#morte_s575_r55846}':
            # a1188 # r55846
            jump nordom_s74  # EXTERN

        '"그럼 관두게. 가세."{#morte_s575_r55847}':
            # a1189 # r55847
            jump morte_dispose


# s576 # say55848
label morte_s576: # -
    nr '"미캐너스? 지루하다는 말이 그 곳보다 더 잘 어울리는 곳도 없을 걸, 대장. 모드론과 커다란 톱니바퀴 밖에 없는 차원을 한 번 상상해 보라고. 바로 그 곳이 특대급으로 지루한 차원 미캐너스야. 방문하기는커녕 생각하고 싶지도 않은 곳이지."{#morte_s576_}'

    if morteLogic.s576_condition():
        $ morteLogic.s576_action()
        jump grace_s184  # EXTERN
    menu:
        '"노돔, 전에 „무 고향“이라고 한 건 무슨 뜻이오?"{#morte_s576_r55849}' if morteLogic.r55849_condition():
            # a1190 # r55849
            jump nordom_s65  # EXTERN

        '"관두게, 모트. 들을 만큼 들었네. 가세."{#morte_s576_r55850}' if morteLogic.r55850_condition():
            # a1191 # r55850
            jump morte_dispose


# s577 # say55855
label morte_s577: # -
    nr '"경건한 여신관 아가씨, 미안하지만 미캐너스는 전우주에서 제일 지루한 차원이야… 만약 당신이 그 곳에 간다면 얘기가 좀 달라질지도 모르지만…" 모트는 눈을 부라린다. "하지만 내 생각에는 그것도 오래가지는 못할 거야."{#morte_s577_}'

    menu:
        '"노돔, 전에 무 고향이라고 한 건 무슨 뜻이오?"{#morte_s577_r55857}':
            # a1192 # r55857
            jump nordom_s65  # EXTERN

        '"관두게, 모트. 들을 만큼 들었네. 가세."{#morte_s577_r55858}':
            # a1193 # r55858
            jump morte_dispose


# s578 # say55860
label morte_s578: # -
    nr '"모든 모드론은 이 „풀“의 일원이야, 대장, 일종의 거대한 에너지 은행이라고나 할까… 어떤 모드론이 죽으면 그것을 만드는 데 사용되었던 에너지는 다시 그 곳으로 흡수되어 새로운 모드론이 나오게 되지. 그런데 문제는… 만약 모드론이 약간 돌아버릴 경우, 그러한 연결은 끊어지지만 에너지는 여전히 가지고 있게 된다는 점이지."{#morte_s578_}'

    if morteLogic.s578_condition():
        jump grace_s186  # EXTERN
    menu:
        '"그래서… 노돔, 이 미캐너스란 차원은 에너지의 근원이오?"{#morte_s578_r55862}':
            # a1194 # r55862
            jump nordom_s67  # EXTERN

        '"알겠소. 노돔, 그 밖에도 당신에게 질문할 것들이 있소…"{#morte_s578_r55864}':
            # a1195 # r55864
            jump nordom_s74  # EXTERN

        '"내가 알고 싶었던 건 그게 전부요. 갑시다."{#morte_s578_r55865}':
            # a1196 # r55865
            jump morte_dispose


# s579 # say55867
label morte_s579: # -
    nr '모트는 훨-후럼-그레이스를 노려본다. "그래, 댁은 괜찮소? 내가 이미 대답을 했소다, 그러니 댁은 나서지 말라고. 여기선 내가 정보 공급책이지 댁이 아니니까. 알겠느냐고?"{#morte_s579_}'

    jump grace_s187  # EXTERN


# s580 # say55870
label morte_s580: # -
    nr '"오, 알겠군! 만약 내가 서큐버스였다면, 대장도 내 말에 더 귀를 기울이겠지, 그거야? 내가 가끔씩 살결을 드러내 보이면 나도 존중을 받게 되는 건가, 허? 그건 너무 천박하고 피상적이야, 대장! 젠장, 나는…"{#morte_s580_}'

    jump grace_s191  # EXTERN


# s581 # say55871
label morte_s581: # -
    nr 'NULL NODE{#morte_s581_}'

    jump morte_dispose


# s582 # say55873
label morte_s582: # -
    nr '"오, 그래?! 내가…?! 좋아…! 그래… 대장도 들었지?! 서큐버스가 한 말 말이야? 그녀가 옳아. 내 설명이 더 이해하기가 쉬워, 내가 더 잘 알고 있다고. 내 말이 무슨 뜻인지 알겠어? 이제 내가 왜 필요한지 알겠어?"{#morte_s582_}'

    menu:
        '"옳네, 그래서 난 또 한 가지 질문을 해야겠네. 자네들 두 사람 모두 노돔은 모두 근원의 일부이나 그는 그것으로부터 차단된 상태라고 했네. 그리고 모드론이 죽으면 그들은 다시 근원으로 흡수되고. 노돔도 그렇게 되나?"{#morte_s582_r55875}' if morteLogic.r55875_condition():
            # a1197 # r55875
            jump morte_s583

        '"난 그렇지 않다고 말한 적이 없네, 모트. 그래… 노돔, 당신이 말한 에너지의 근원은… 미캐너스로부터 오는 거요?"{#morte_s582_r55876}':
            # a1198 # r55876
            jump nordom_s67  # EXTERN

        '"좋소. 노돔, 당신에게 할 다른 질문들이 있소…"{#morte_s582_r55877}':
            # a1199 # r55877
            jump nordom_s74  # EXTERN

        '"내가 알고 싶었던 건 그게 전부네. 가세"{#morte_s582_r55879}':
            # a1200 # r55879
            jump morte_dispose


# s583 # say55882
label morte_s583: # from 582.0
    nr '모트는 고개를 끄덕인다.{#morte_s583_}'

    menu:
        '"그리고 그가 죽으면… 또 다른 노돔이 태어난다."{#morte_s583_r55884}':
            # a1201 # r55884
            jump morte_s584


# s584 # say55886
label morte_s584: # from 583.0
    nr '"어… 아니."{#morte_s584_}'

    menu:
        '"무슨 일이 일어나나?"{#morte_s584_r55887}':
            # a1202 # r55887
            jump morte_s585


# s585 # say55890
label morte_s585: # from 584.0
    nr '"그들은 그의 에너지를 가져갈 거야, 대장, 그리고 새로운 모드론을 만들어 내겠지만, 그건 노돔은 아니야. 왜냐하면 그가 실제로 더 이상 모드론이 아니기 때문야. 그는 차원들의 영향을 너무 많이 받았어. 그들은 그를 대체할 비-노돔을 만들 거야."{#morte_s585_}'

    menu:
        '"그래서… 불량 모드론이 됨으로서 그도 죽어야하는 존재가 되었다는 건가?"{#morte_s585_r55892}':
            # a1203 # r55892
            jump morte_s586

        '"알았네. 노돔, 당신에게 할 다른 질문들이 있소…"{#morte_s585_r55894}':
            # a1204 # r55894
            jump nordom_s74  # EXTERN

        '"내가 알고 싶었던 건 그게 전부요. 갑시다."{#morte_s585_r55895}':
            # a1205 # r55895
            jump morte_dispose


# s586 # say55897
label morte_s586: # from 585.0
    nr '모트는 잠시 얘기를 멈춘다. "글쎄… 그래, 그렇게 말할 수도 있겠지. 내 말은 그가 불량품이 되지 않았다면 상관이 없었을 거라는 거야… 그가 죽더라도 그와 똑같은 새 모드론이 탄생할 테니까… 하지만 그는 „거꾸로 된“ 상태이기 때문에, 그가 죽으면 그의 그러한 특성은 사라지게 될 거야."{#morte_s586_}'

    menu:
        '"알았네. 노돔, 당신에게 할 다른 질문들이 있소…"{#morte_s586_r55898}':
            # a1206 # r55898
            jump nordom_s74  # EXTERN

        '"내가 알고 싶었던 건 그게 전부네. 가세."{#morte_s586_r55900}':
            # a1207 # r55900
            jump nordom_s74  # EXTERN


# s587 # say55901
label morte_s587: # -
    nr '"아아악! 신들과 내 정신 건강을 위해 부탁하겠는데, 제발 집어치워! 그에게 그런 식으로 계속 그걸 물어보다가는 그가 고장이 나버릴 거라고!"{#morte_s587_}'

    menu:
        '"그것 참 멋진 *아이디어*로군, 모트."{#morte_s587_r55902}':
            # a1208 # r55902
            $ morteLogic.r55902_action()
            jump morte_s588

        '"나는 답을 알기를 원했고 노돔으로부터 그것을 얻으려던 참이었네."{#morte_s587_r55905}':
            # a1209 # r55905
            jump morte_s589

        '"관두게. 난 노돔에게 물어볼 다른 질문들이 있네…"{#morte_s587_r55906}':
            # a1210 # r55906
            jump nordom_s74  # EXTERN

        '"관두게. 가세."{#morte_s587_r55907}':
            # a1211 # r55907
            jump morte_dispose


# s588 # say55909
label morte_s588: # from 587.0
    nr '"오." 모트는 싱긋 웃는다. "뭔가를 말했을 수도 있었겠지. 암, 계속하시라고. 물론이지…" 모트는 노돔을 흉내내 이빨을 *찰깍*거린다. "만약 대장이 모드론에 대해 알고 싶다면 내게 물어보라고."{#morte_s588_}'

    menu:
        '"알았네, 모트… 내게 모드론에 대해 어떤 얘기를 해줄 수가 있겠나?{#morte_s588_r55910}':
            # a1212 # r55910
            jump morte_s590

        '"관두게. 난 노돔에게 물어볼 다른 질문들이 있네…"{#morte_s588_r55912}':
            # a1213 # r55912
            jump nordom_s74  # EXTERN

        '"관두게. 가세."{#morte_s588_r55913}':
            # a1214 # r55913
            jump morte_dispose


# s589 # say55914
label morte_s589: # from 587.1
    nr '"이봐, 대장, 보통 모드론은 자신들에게 주어진 기본적인 임무 이외의 것들의 거의 이해하지 못해, 그리고 이 얼간이는 다원 우주에 대해서는 완전한 새내기라고. 그 입방체를 헷갈리게 하지 말라고, 알겠어? 적어도 그가 무장을 하고 있을 동안에는 말이야. 모드론에 대해 알고 싶다면 그가 아니라 내게 물어보라고."{#morte_s589_}'

    menu:
        '"알았네, 모트… 내게 모드론에 대해 어떤 얘기를 해줄 수가 있겠나?{#morte_s589_r55915}':
            # a1215 # r55915
            jump morte_s590

        '"관두게. 난 노돔에게 물어볼 다른 질문들이 있네…"{#morte_s589_r55917}':
            # a1216 # r55917
            jump nordom_s74  # EXTERN

        '"관두게. 가세."{#morte_s589_r55918}':
            # a1217 # r55918
            jump morte_dispose


# s590 # say55921
label morte_s590: # from 588.0 589.0
    nr '"설명하자면 이래, 대장: 모드론이란 그들의 고향 차원인 미캐너스에서 철꺽거리고 다니는 멍청한 기하학적 도형들이라고… 그들은 깔끔하고 질서 정연하지, 그리고 다원 우주의 다른 곳들도 그렇게 되기를 원해. 그래서 그들은 귀찮은 해충들인 거라고."{#morte_s590_}'

    menu:
        '"다원 우주를 질서있게 만들려는 것이 뭐가 나쁜가?"{#morte_s590_r55923}':
            # a1218 # r55923
            jump morte_s592

        '"미캐너스가 대체 뭔가?"{#morte_s590_r55925}':
            # a1219 # r55925
            $ morteLogic.r55925_action()
            jump morte_s591

        '"관두게. 난 노돔에게 물어볼 다른 질문들이 있네…"{#morte_s590_r55926}':
            # a1220 # r55926
            jump nordom_s74  # EXTERN

        '"관두게. 가세."{#morte_s590_r55928}':
            # a1221 # r55928
            jump morte_dispose


# s591 # say55930
label morte_s591: # from 590.1
    nr '"그 곳은 이러한 태엽장치로 돌아가는 일벌들의 발상지지. 그에게 그 곳에 대해 물어보고 어떤 대답을 하는지 한 번 들어보라고. 그 곳은 그들이 빈둥거리면서 늘 모든 것들을 정리하는 곳이지… 이걸 목록화 해라, 이걸 정돈해라, 저걸 정돈해라, 그걸 법문화해라, 등등."{#morte_s591_}'

    menu:
        '진실: "그건 숭고한 목표 같군. 다원 우주를 질서있게 만들려는 것이 뭐가 나쁜가?"{#morte_s591_r55931}':
            # a1222 # r55931
            $ morteLogic.r55931_action()
            jump morte_s592

        '"자넨 그게 별로 마음에 들지 않는 것 같군."{#morte_s591_r55935}':
            # a1223 # r55935
            jump morte_s592

        '"노돔에게 물어볼 다른 질문들이 있네…"{#morte_s591_r55936}':
            # a1224 # r55936
            jump nordom_s74  # EXTERN

        '관두게. 가세."{#morte_s591_r55937}':
            # a1225 # r55937
            jump morte_dispose


# s592 # say55938
label morte_s592: # from 590.0 591.0 591.1
    nr '모트는 노돔을 흘긋 본다. 그는 마치 왼쪽 석궁의 얘기를 듣고 있는 듯 그것을 머리 옆쪽에 갖다 대고 있다.{#morte_s592_}'

    jump morte_s593


# s593 # say55940
label morte_s593: # from 592.0
    nr '"왜냐하면 말이야, 대장, 혼돈 역시 우주에서 나름대로의 역할을 지니고 있어. 만약 모든 것이 *모드론*의 관점 대로 되어버린다면, 아마 삶이란 것이 거의 존재할 수 없을 거야… 적어도 내가 살고 싶은 종류의 삶은. 그들은 모든 것을 질서 정연하게 만들려고 해. 왝!"{#morte_s593_}'

    menu:
        '진실: "동의하네. 혼돈에게도 나름대로의 역활이 있어. 질서가 지나치면 우린 모두 정체 상태에 빠지지. 그런데 난 노돔에게 질문할 것들이 좀 있네…"{#morte_s593_r55941}':
            # a1226 # r55941
            $ morteLogic.r55941_action()
            jump nordom_s74  # EXTERN

        '"알겠네. 그런데 난 노돔에게 질문할 것들이 좀 있네…"{#morte_s593_r55942}':
            # a1227 # r55942
            jump nordom_s74  # EXTERN

        '"그럼 좋네. 가세.{#morte_s593_r55944}':
            # a1228 # r55944
            jump morte_dispose


# s594 # say56029
label morte_s594: # -
    nr '"나는 그녀 냄새가 좋아."{#morte_s594_}'

    jump fhjull_s27  # EXTERN


# s595 # say56030
label morte_s595: # -
    nr '"기다려, 대장… 배이터는 안돼. 이 마족은 뭔가를 숨기고 있는 거라고… 그리고 설령 „해골들의 기둥“이란 것이 실제로 존재하더라도, 다원 우주에서 가장 위험한 곳들 중 한 곳에 가는 일 없이 이 요새란 곳에 갈 방법을 알고 있는 자를 찾을 수 있을 거라고."{#morte_s595_}'

    menu:
        '"뭔가 숨기고 있는 거요, 갈라진-혀?{#morte_s595_r56031}':
            # a1229 # r56031
            jump fhjull_s88  # EXTERN

        '"왜 그 곳에 가기를 싫어하나, 모트?"{#morte_s595_r56032}':
            # a1230 # r56032
            jump morte_s596


# s596 # say56033
label morte_s596: # from 595.1
    nr '"그 곳은 위험한 곳이야, 대장. 난 가기 싫어. 난 그 곳에 간 적이 있고 그 곳은 결코 쾌적한 곳이 아냐. 알겠어?"{#morte_s596_}'

    menu:
        '"그 일에 대해서는 나중에 얘기하세. 갈라진-혀, 질문할 것들이 좀 있소…"{#morte_s596_r56034}':
            # a1231 # r56034
            jump fhjull_s46  # EXTERN


# s597 # say56936
label morte_s597: # -
    nr '"이 영감은 안 나타나는 곳이 없군!"{#morte_s597_}'

    menu:
        '"그래, 하지만 그는 우리에게 도움이 되었네. 가세."{#morte_s597_r56937}':
            # a1232 # r56937
            jump morte_dispose


# s598 # say59827
label morte_s598: # -
    nr '(NULL NODE){#morte_s598_}'

    jump morte_dispose


# s599 # say60950
label morte_s599: # -
    nr '"이봐, 죽는 게 꼭 나쁜 건 아니라고. 낙관적으로 보라고… 적어도 저런 얼토당토 않은 것들하고 얘기할 필요도 없잖아."{#morte_s599_}'

    menu:
        '"조용하게, 모트. 이 일은 내가 처리하겠네. 무슨 일이 일아났는지 얘기해줄 수 있겠소?"{#morte_s599_r61111}':
            # a1233 # r61111
            jump morte_dispose

        '"관두시오. 나는 조용히 이 곳을 떠나도록 하겠소."{#morte_s599_r61112}':
            # a1234 # r61112
            jump morte_dispose


# s600 # say61408
label morte_s600: # -
    nr '"이봐, 대장… 어떻게 생각해? 이 모트에게 적선 좀 하라고. 알다시피 꽤 됐잖아…"{#morte_s600_}'

    menu:
        '"나쁠 것 없겠지. 어떻게 생각하시오, 아가씨?"{#morte_s600_r61411}' if morteLogic.r61411_condition():
            # a1235 # r61411
            jump ucho_s9  # EXTERN

        '"미안, 모트. 하지만 우리에겐 그만한 돈이 없네. 가세."{#morte_s600_r61412}' if morteLogic.r61412_condition():
            # a1236 # r61412
            jump morte_dispose

        '"우린 가야만 하네, 모트. 안녕히 계시오, 아가씨."{#morte_s600_r61413}':
            # a1237 # r61413
            jump morte_dispose


# s601 # say61409
label morte_s601: # -
    nr '"만세! 고마워, 대장!" 모트는 돌아서서 여자를 따라간다.{#morte_s601_}'

    menu:
        '그가 돌아오기를 기다린다.{#morte_s601_r61414}':
            # a1238 # r61414
            $ morteLogic.r61414_action()
            jump ucho_s10  # EXTERN


# s602 # say61410
label morte_s602: # -
    nr '모트는 당신이 있다는 것조차 거의 깨닫지 못하고 있는 것 같다, 그리고 그는 낄낄거림과 즐거운 탄식을 번갈아 가며 하고 있다.{#morte_s602_}'

    menu:
        '"좋네… 그럼 모든 게 잘된 모양이군. 안녕히 계시오, 아가씨."{#morte_s602_r61415}':
            # a1239 # r61415
            jump morte_dispose


# s603 # say61481
label morte_s603: # -
    nr '"나? 난 벡크너의 머리라고."~ [MRT562]{#morte_s603_}'

    $ morteLogic.s603_action()
    jump morte_dispose


# s604 # say61482
label morte_s604: # -
    nr '"신들은 정말로 자비롭도다!!"~ [MRT485]{#morte_s604_}'

    $ morteLogic.s604_action()
    jump morte_dispose


# s605 # say61483
label morte_s605: # -
    nr '"그것은 벡크너의 머리와 관련된 긴 이야기야. 난 얘기하고 싶지 않아."~ [MRT559A]{#morte_s605_}'

    jump grace_s3  # EXTERN


# s606 # say61484
label morte_s606: # -
    nr '"제발 화제를 바꿀 순 없겠어?"~ [MRT559B]{#morte_s606_}'

    $ morteLogic.s606_action()
    jump morte_dispose


# s607 # say61485
label morte_s607: # -
    nr '"나? 귀여운 모트지."~ [MRT560]{#morte_s607_}'

    $ morteLogic.s607_action()
    jump morte_dispose


# s608 # say61486
label morte_s608: # -
    nr '"나? 추억의 모트지."~ [MRT561]{#morte_s608_}'

    $ morteLogic.s608_action()
    jump morte_dispose


# s609 # say61487
label morte_s609: # -
    nr '"당신 베개에 눕게 해준다면."~ [MRT486A]{#morte_s609_}'

    jump grace_s7  # EXTERN


# s610 # say61488
label morte_s610: # -
    nr '"아무 것도 아니야, 아니리고.~ [MRT486B]{#morte_s610_}'

    $ morteLogic.s610_action()
    jump morte_dispose


# s611 # say61489
label morte_s611: # -
    nr '"멍멍! 멍멍! 헤! 헤! 헤!"~ [MRT484]{#morte_s611_}'

    $ morteLogic.s611_action()
    jump morte_dispose


# s612 # say62890
label morte_s612: # -
    nr '"그녀는 타나리의 일종인 서큐버스라고, 대장."{#morte_s612_}'

    jump grace_s213  # EXTERN


# s613 # say63454
label morte_s613: # -
    nr '"난 설 수가 없어. 알다시피 다리가 없잖아."~ [MRT482]{#morte_s613_}'

    jump annah_s1  # EXTERN


# s614 # say63455
label morte_s614: # -
    nr '"난 네가 예쁘게 생겼다고 생각했는데, 착각이었군."~ [MRT483]{#morte_s614_}'

    jump annah_s3  # EXTERN


# s615 # say63456
label morte_s615: # -
    nr '"난 널 첨 봤을 때 숨쉬는 걸 멈췄어, 흰들링."~ [MRT524]{#morte_s615_}'

    $ morteLogic.s615_action()
    jump morte_dispose


# s616 # say63457
label morte_s616: # -
    nr '"내게도 이름이 있다고."~ [MRT526]{#morte_s616_}'

    jump annah_s6  # EXTERN


# s617 # say63458
label morte_s617: # -
    nr '"네가 그 얘기를 꺼내다니 재밌군… 왜냐하면 일전에 녀석들에게 네 값을 물어봤거든."~ [MRT531]{#morte_s617_}'

    jump annah_s8  # EXTERN


# s618 # say63459
label morte_s618: # -
    nr '"입만 닥치면 너도 과히 나쁘진 않은데."~ [MRT530]{#morte_s618_}'

    jump annah_s10  # EXTERN


# s619 # say63460
label morte_s619: # -
    nr '"하지만 넌 이미 내 마음을 가지고 있는걸, 흰들링."~ [MRT532]{#morte_s619_}'

    jump annah_s12  # EXTERN


# s620 # say63462
label morte_s620: # -
    nr '"더 나쁜 것도 얼마든지 있어."~ [MRT525]{#morte_s620_}'

    $ morteLogic.s620_action()
    jump morte_dispose


# s621 # say63463
label morte_s621: # -
    nr '"그런데 말이지, *너는* 부분적으로나마 마족이라고."~ [MRT533A]{#morte_s621_}'

    jump annah_s15  # EXTERN


# s622 # say63464
label morte_s622: # -
    nr '"내가 떠 있는 곳에서 보면 경치 좋은데."~ [MRT533B]{#morte_s622_}'

    $ morteLogic.s622_action()
    jump morte_dispose


# s623 # say63666
label morte_s623: # -
    nr '"나도 눈치챘어. 가서 대장과 네 식견을 나누지 그래?"~ [MRT563]{#morte_s623_}'

    $ morteLogic.s623_action()
    jump morte_dispose


# s624 # say63667
label morte_s624: # -
    nr '"허영이다, 이 얼간이 폴리곤아."~ [MRT468A]{#morte_s624_}'

    jump nordom_s2  # EXTERN


# s625 # say63668
label morte_s625: # -
    nr '"그럼 너부터 좀 „효율적“이 되라고, 이 딸랑거리는 폴리곤 녀석아."~ [MRT469A]{#morte_s625_}'

    $ morteLogic.s625_action()
    jump morte_dispose


# s626 # say63669
label morte_s626: # -
    nr '"기다려, 난 그런 말 하지 않았어!"~ [MRT470B]{#morte_s626_}'

    jump annah_s315  # EXTERN


# s627 # say63670
label morte_s627: # -
    nr '"아직도 안나는 옷을 입고 있어?"~ [MRT565A]{#morte_s627_}'

    jump nordom_s6  # EXTERN


# s628 # say63671
label morte_s628: # -
    nr '"그럼 답은 예스지."~ [MRT565B]{#morte_s628_}'

    $ morteLogic.s628_action()
    jump morte_dispose


# s629 # say63672
label morte_s629: # -
    nr '"아가리 닥치지 않으면 내가 열 아홉을 세겠어."~ [MRT564]{#morte_s629_}'

    $ morteLogic.s629_action()
    jump morte_dispose


# s630 # say63673
label morte_s630: # -
    nr '"자유 의지가 내 명령에 절대복종한다는 뜻이라면 답은 예스야."~ [MRT569A]{#morte_s630_}'

    jump nordom_s9  # EXTERN


# s631 # say63674
label morte_s631: # -
    nr '"다원 우주에 온 걸 환영하네, 친구."~ [MRT569B]{#morte_s631_}'

    $ morteLogic.s631_action()
    jump morte_dispose


# s632 # say63675
label morte_s632: # -
    nr '"훨-후럼-그레이스는 누드야?"~ [MRT568A]{#morte_s632_}'

    jump nordom_s11  # EXTERN


# s633 # say63676
label morte_s633: # -
    nr '"그럼 네 질문에 대한 답은 예스야."~ [MRT568B]{#morte_s633_}'

    $ morteLogic.s633_action()
    jump morte_dispose


# s634 # say63677
label morte_s634: # -
    nr '"안나, 훨-후럼-그레이스와 내가 키메르족의 개펄에서 목욕을 하고 있어."~ [MRT571A]{#morte_s634_}'

    jump nordom_s13  # EXTERN


# s635 # say63678
label morte_s635: # -
    nr '"어떤 사람들은 사전을 쓰고, 다른 사람들은 그것을 읽지."~ [MRT572B]{#morte_s635_}'

    $ morteLogic.s635_action()
    jump morte_dispose


# s636 # say63679
label morte_s636: # -
    nr '"안나, 한 병의 후리욘디안 호박색 와인과 시 공회당의 호화 객실."~ [MRT573]{#morte_s636_}'

    jump nordom_s15  # EXTERN


# s637 # say63680
label morte_s637: # -
    nr '"오, 닥쳐."~ [MRT471D]{#morte_s637_}'

    jump nordom_s17  # EXTERN


# s638 # say63681
label morte_s638: # -
    nr '"오, 가서 다른 사람이나 귀찮게 해, 이 멍청이 계산기야."~ [MRT576A]{#morte_s638_}'

    jump nordom_s19  # EXTERN


# s639 # say63682
label morte_s639: # -
    nr '"몰라. 그건 그냥… 그건… 알잖아… 그건 사라졌어."~ [MRT576B]{#morte_s639_}'

    jump nordom_s20  # EXTERN


# s640 # say63683
label morte_s640: # -
    nr '"아가리 닥치지 않으면 내가 보여주지."~ [MRT576C]{#morte_s640_}'

    $ morteLogic.s640_action()
    jump morte_dispose


# s641 # say63684
label morte_s641: # -
    nr '"가서 곰용 덫하고나 키스해."~ [MRT575A]{#morte_s641_}'

    jump grace_s373  # EXTERN


# s642 # say63685
label morte_s642: # -
    nr '"날 믿으라고. 안나에게는 키스가 필요해."~ [MRT575B]{#morte_s642_}'

    $ morteLogic.s642_action()
    jump morte_dispose


# s643 # say63686
label morte_s643: # -
    nr '::천진 난만하게 휘파람을 분다::~ [MRT472A]{#morte_s643_}'

    $ morteLogic.s643_action()
    jump morte_dispose


# s644 # say63688
label morte_s644: # -
    nr '"아무도 그에게 얘길 해주진 않았어!"~ [MRT473D]{#morte_s644_}'

    $ morteLogic.s644_action()
    jump morte_dispose


# s645 # say63689
label morte_s645: # -
    nr '"그건 순수하게 자발적인 거야, 멍청아. 어… 내가 안다는 얘기가 아니라…"~ [MRT577]{#morte_s645_}'

    $ morteLogic.s645_action()
    jump morte_dispose


# s646 # say63858
label morte_s646: # -
    nr '"날 믿으라고, 당신은 그를 만난 적이 없어."~ [MRT475AA]{#morte_s646_}'

    jump vhailor_s1  # EXTERN


# s647 # say64990
label morte_s647: # -
    nr '"기다려, 대장… 이걸 봐." 내려다보니 아치로 향하고는… 돌아오지 않는 몇 개의 더러운 발자국이 있다. "이 부근에 전이문이 있는 것이 틀림없어."{#morte_s647_}'

    menu:
        '"전이문? 어떻게 하면 그것을 열 수가 있나?"{#morte_s647_r64991}':
            # a1240 # r64991
            jump morte_s648

        '"아마 그럴지도. 가세."{#morte_s647_r64993}':
            # a1241 # r64993
            jump morte_dispose


# s648 # say64992
label morte_s648: # from 647.0
    nr '"모르겠어, 대장. 통행량을 감안할 때 흔한 열쇠가 틀림없어. 아마 이 근처에 서는 인간 쓰레기들이라면 알지도 몰라…"{#morte_s648_}'

    menu:
        '"그럼 사람들에게 물어보겠네. 그만 가세."{#morte_s648_r64994}':
            # a1242 # r64994
            jump morte_dispose


# s649 # say65552
label morte_s649: # from 329.0 729.0
    nr '"오, 이봐, 대장. 또 까먹었다고는 제발 얘기하지 말라고."{#morte_s649_}'

    menu:
        '"내 기억을 되살리고자 할 뿐이네."{#morte_s649_r65553}':
            # a1243 # r65553
            jump morte_s650

        '"아니, 이번에는 *전부* 다 듣고 싶네. 어서 시작하게. 내 기억을 되살려 주게."{#morte_s649_r65554}' if morteLogic.r65554_condition():
            # a1244 # r65554
            jump morte_s650

        '"그럼 관두게. 그 밖에도 다른 질문들이 있네…"{#morte_s649_r65555}':
            # a1245 # r65555
            jump morte_s329

        '"그럼 관두게. 가세."{#morte_s649_r65556}':
            # a1246 # r65556
            jump morte_dispose


# s650 # say65557
label morte_s650: # from 649.0 649.1
    nr '"그 소리를 많이 듣게 될 것 같군." 모트는 헛기침을 한다. "어디 보자…"  „네가 스틱스 강물을 몇 통이나 마신 듯한 기분인 것은 알지만, 정신을 차리고 집중해야 한다. 네 소지품들 중에는 이 중대사에 대해서 일부나마 밝혀 줄 일지가 한 권 있을 것이다. 만약 파로드가 이미 죽지 않았다면 그가 나머지 부분에 대해 설명해줄 수 있을 것이다.“{#morte_s650_}'

    menu:
        '"파로드… 흠… 계속하게."{#morte_s650_r65558}' if morteLogic.r65558_condition():
            # a1247 # r65558
            jump morte_s651

        '"계속하게."{#morte_s650_r65559}' if morteLogic.r65559_condition():
            # a1248 # r65559
            jump morte_s651

        '"관두게. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s650_r65560}':
            # a1249 # r65560
            jump morte_s329

        '"관두게. 충분히 들었네. 그만 가세."{#morte_s650_r65561}':
            # a1250 # r65561
            jump morte_dispose


# s651 # say65562
label morte_s651: # from 650.0 650.1
    nr '"그래, 그래, 기다리라고." 모트는 잠시 멈춘다. "좋아, 이게 마지막이야…"  „절대로 일지를 잃어서는 안 된다, 아니면 우린 다시 스틱스에 빠지는 신세가 될 테니까. 알겠나? 그리고 내 말을 믿어라 - 뭘 하든 간에 네가 누구이며, 어떤 일이 네게 일어나고 있으며, 어디서 왔는지에 대해 말해서는 안 된다. 그렇지 않으면 화장터로 직행하게 될 테니. 내가 말하는 대로 해라: 일지를 읽은 후 파로드를 찾아라.“{#morte_s651_}'

    if morteLogic.s651_condition():
        jump morte_s653
    menu:
        '"계속하게. 그 다음에는 뭐라고 하고 있나?"{#morte_s651_r65566}' if morteLogic.r65566_condition():
            # a1251 # r65566
            jump morte_s652

        '"그리고 내가 깨어났을 때 내게 일지가 없었는가?"{#morte_s651_r65565}' if morteLogic.r65565_condition():
            # a1252 # r65565
            jump morte_s682

        '"좋네. 그럼 몇 가지만 더 물어보세…"{#morte_s651_r65567}':
            # a1253 # r65567
            jump morte_s329

        '"관두게. 충분히 들었네. 가세."{#morte_s651_r65568}':
            # a1254 # r65568
            jump morte_dispose


# s652 # say65563
label morte_s652: # from 651.1
    nr '"무슨 소리야, 대장? 그것뿐이라고."{#morte_s652_}'

    menu:
        '"„해골을 믿지 마시오“라는 말은 뭔가?"{#morte_s652_r65569}' if morteLogic.r65569_condition():
            # a1255 # r65569
            $ morteLogic.j65573_s652_r65569_action()
            $ morteLogic.r65569_action()
            jump morte_s654

        '"„해골을 믿지 마시오“라는 말은 뭔가?"{#morte_s652_r65570}' if morteLogic.r65570_condition():
            # a1256 # r65570
            jump morte_s654

        '"그럼 관두게. 그 밖에도 다른 질문들이 있네…"{#morte_s652_r65571}':
            # a1257 # r65571
            jump morte_s329

        '"그럼 좋네. 가세."{#morte_s652_r65572}':
            # a1258 # r65572
            jump morte_dispose


# s653 # say65564
label morte_s653: # from 651.0
    nr '"물론 끝에 해골을 믿지 말라는 헛소리가 있기는 하지만."{#morte_s653_}'

    menu:
        '"그 말의 뜻은 뭐라고 생각하나? 난 그것이 *자네*를 가리킨다고 생각하는데?"{#morte_s653_r65574}':
            # a1259 # r65574
            jump morte_s655

        '"그럼 관두게. 그 밖에도 다른 질문들이 있네…"{#morte_s653_r65575}':
            # a1260 # r65575
            jump morte_s329

        '"그럼 좋네. 가세."{#morte_s653_r65576}':
            # a1261 # r65576
            jump morte_dispose


# s654 # say65577
label morte_s654: # from 329.4 652.0 652.1 729.4
    nr '"오… 맨끝에 있는 거 말이야? 쓰레기인 것 같아서 소리내어 읽지 않았어."{#morte_s654_}'

    menu:
        '"정말? 그럼 그 말의 뜻은 뭐라고 생각하나? 난 그것이 *자네*를 가리킨다고 생각하는데?"{#morte_s654_r65578}':
            # a1262 # r65578
            jump morte_s655

        '"그럼 관두게. 그 밖에도 다른 질문들이 있네…"{#morte_s654_r65579}':
            # a1263 # r65579
            jump morte_s329

        '"그럼 좋네. 가세."{#morte_s654_r65580}':
            # a1264 # r65580
            jump morte_dispose


# s655 # say65581
label morte_s655: # from 653.0 654.0
    nr '"그건 내용이 의심스러워. 내 말은 말이야, 대장은 날 믿잖아. 그렇지, 대장?"{#morte_s655_}'

    menu:
        '"내게 *거짓말*을 하고 있는 건가, 모트?"{#morte_s655_r65582}':
            # a1265 # r65582
            jump morte_s656

        '"그럼 관두게. 그 밖에도 다른 질문들이 있네…"{#morte_s655_r65583}':
            # a1266 # r65583
            jump morte_s329

        '"그럼 좋네. 가세."{#morte_s655_r65584}':
            # a1267 # r65584
            jump morte_dispose


# s656 # say65585
label morte_s656: # from 655.0
    nr '"아냐! 대체 뭐가 문제야, 대장? 나 아직 대장을 잘못 인도한 적이 없다고."{#morte_s656_}'

    menu:
        '*아직 끝나지 않았네. 나는 자네가 내게 그 문장을 읽어 주지 않았다는 사실이 마음에 들지 않네, 그리고 나는 우리가 함께 여행하기 시작한 이래 자네가 빼먹고 얘기해주지 않은 것들을 알고 싶네."{#morte_s656_r65587}':
            # a1268 # r65587
            jump morte_s657

        '"그럼 관두게. 그 밖에도 다른 질문들이 있네…"{#morte_s656_r65586}':
            # a1269 # r65586
            jump morte_s329

        '"그럼 좋네. 가세."{#morte_s656_r65588}':
            # a1270 # r65588
            jump morte_dispose


# s657 # say65589
label morte_s657: # from 656.0
    nr '"아무 것도 없어! 난 대장에 모든 걸… 거의 모든 걸 말해주었어, 위험한 건 빼고 말이야."{#morte_s657_}'

    menu:
        '"만약에 그 밖에도 더 있다면 지금 당장 내게 말하는 것이 좋을 걸세."{#morte_s657_r65590}':
            # a1271 # r65590
            jump morte_s658

        '"그럼 관두게. 그 밖에도 다른 질문들이 있네…"{#morte_s657_r65591}':
            # a1272 # r65591
            jump morte_s329

        '"그럼 좋네. 가세."{#morte_s657_r65592}':
            # a1273 # r65592
            jump morte_dispose


# s658 # say65593
label morte_s658: # from 657.0
    nr '"대장, 정말 그 이외에는 아무 것도 없어. 난 대장에게 절대 숨기지 않는다고."{#morte_s658_}'

    menu:
        '"그럼 좋네, 모트. 그 밖에도 다른 질문들이 있네…"{#morte_s658_r65594}':
            # a1274 # r65594
            jump morte_s329

        '"그러지 않기를 바라네. 가세."{#morte_s658_r65595}':
            # a1275 # r65595
            jump morte_dispose


# s659 # say65596
label morte_s659: # from 329.1 729.1
    nr '"시길은 무한히 높은 첨탑 위에 위치한 고리 모양의 도시로, 어떤 사람들은 이 곳을 다원 우주의 중심이라고 하지… 물론 „어떻게“ 그것이 무한히 높은 첨탑 위에 존재할 수 있으며, 대체 무슨 근거로 시길이 „다원 우주의 중심“이라고 하는가에 대해서는 이론의 여지가 많지…"{#morte_s659_}'

    menu:
        '"그 밖에 다른 건?"{#morte_s659_r65597}':
            # a1276 # r65597
            jump morte_s660

        '"관두게. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s659_r65598}':
            # a1277 # r65598
            jump morte_s329

        '"내가 알고 싶었던 건 그것이 전부네. 가세."{#morte_s659_r65599}':
            # a1278 # r65599
            jump morte_dispose


# s660 # say65600
label morte_s660: # from 659.0
    nr '"시길은 „문들의 도시“라고 불려. 여기저기로 통하는 보이지 않는 문들이 많기 때문이지. 어떤 아치, 문틀, 술통의 테, 책장 또는 유리창도 조건만 맞으면 전이문이 될 수 있어. 모든 건 그걸 열 수 있는 열쇠가 있느냐에 달렸지"{#morte_s660_}'

    menu:
        '"열쇠?"{#morte_s660_r65601}':
            # a1279 # r65601
            jump morte_s661

        '"관두게. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s660_r65602}':
            # a1280 # r65602
            jump morte_s329

        '"내가 알고 싶었던 건 그것이 전부네. 가세."{#morte_s660_r65603}':
            # a1281 # r65603
            jump morte_dispose


# s661 # say65604
label morte_s661: # from 660.0
    nr '"가장 좋은 설명은 대부분의 전이문들은 „자고“ 있다는 거야. 자고 있는 상태에서는 옆을 지나거나, 그 안으로 들어가거나, 그 위로 지나도 아무 일도 일어나지 않아. 하지만 작 전이문에게는 그것을 „깨울“ 수 있는 뭔가가 존재해. 그건 혼자서 부르는 콧노래일 수도 있고, 일주일 동안 묵은 바이토피아산 빵 한 덩어리이거나 첫사랑의 추억을 기억하는 것일 수도 있어. 어쨌든 조건이 맞으면 문은 열리고 그 반대편에 있는 곳으로 이동할 수가 있어."{#morte_s661_}'

    menu:
        '"예를 들어 어디 말인가?"{#morte_s661_r65605}':
            # a1282 # r65605
            jump morte_s662

        '"관두게. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s661_r65606}':
            # a1283 # r65606
            jump morte_s329

        '"내가 알고 싶었던 건 그것이 전부네. 가세."{#morte_s661_r65607}':
            # a1284 # r65607
            jump morte_dispose


# s662 # say65608
label morte_s662: # from 661.0
    nr '"어디든지, 대장. 어떤 곳이든지 시길에는 그 곳으로 통하는 전이문이 있어. 그게 시길이 다원 우주 전역에서 각광받는 이유지."{#morte_s662_}'

    menu:
        '"알겠네. 그 밖에도 물어보고 싶은 것들이 좀 있네…"{#morte_s662_r65609}':
            # a1285 # r65609
            jump morte_s329

        '"내가 알고 싶었던 건 그것이 전부네. 가세."{#morte_s662_r65610}':
            # a1286 # r65610
            jump morte_dispose


# s663 # say65611
label morte_s663: # from 329.2 729.2
    nr '"이봐! 수다는 내 최대의 장기라고." 그는 이빨을 잠시 딱딱거린 후 싱긋 웃는다. "에? 에?"{#morte_s663_}'

    menu:
        '"오, 그건 반가운 소리군."{#morte_s663_r65612}':
            # a1287 # r65612
            jump morte_s664

        '"그래, 저주의 연도에 대해서는 알고 있네, 모트. 난 자네가 로타의 집에 있는 동안 체득한 능력이 궁금하네."{#morte_s663_r65613}' if morteLogic.r65613_condition():
            # a1288 # r65613
            jump morte_s667

        '"그 밖에도 물어보고 싶은 것들이 좀 있sp…"{#morte_s663_r65614}':
            # a1289 # r65614
            jump morte_s329

        '"관두게. 가세."{#morte_s663_r65615}':
            # a1290 # r65615
            jump morte_dispose


# s664 # say65616
label morte_s664: # from 663.0
    nr '"하지만 말이야, 대장. 나는 수다를 제대로 떠는 데는 재능이 있어. 나는 말로 다른 사람들의 뚜껑이 열리게 만들 수가 있어. 나는 사람들을 정말 열받게 만들 수 있는 각종 욕설을 무수히 알고 있다고, 알아?"{#morte_s664_}'

    menu:
        '"어… 그게 어떻게 쓸모가 있는 건가?"{#morte_s664_r65617}':
            # a1291 # r65617
            jump morte_s665

        '"그 밖에도 물어보고 싶은 것들이 좀 있네…"{#morte_s664_r65618}':
            # a1292 # r65618
            jump morte_s329

        '"관두게. 갑시다."{#morte_s664_r65619}':
            # a1293 # r65619
            jump morte_dispose


# s665 # say65620
label morte_s665: # from 664.0
    nr '"그건 내가 지닌 여러 재능들 중 하나야… 난 그걸 „저주의 연도“라고 부르지. 아시다시피 난 *적절한* 코멘트를 함으로서 사람 머리뚜껑이 열리게 만들 수가 있어. 물론 그 후에는 열나게 도망을 쳐야 하지만… 내 말이 무슨 뜻인지 대장도 아마 알 거야{#morte_s665_}'

    menu:
        '"어떻게 작용하나?"{#morte_s665_r65621}':
            # a1294 # r65621
            $ morteLogic.r65621_action()
            jump morte_s666

        '"다른 건 없나?"{#morte_s665_r65622}' if morteLogic.r65622_condition():
            # a1295 # r65622
            jump morte_s667

        '"그 밖에도 물어보고 싶은 것들이 좀 있네…"{#morte_s665_r65623}':
            # a1296 # r65623
            jump morte_s329

        '"흠… 그건 쓸모가 있을지도 모르겠군. 가세."{#morte_s665_r65624}':
            # a1297 # r65624
            jump morte_dispose


# s666 # say65626
label morte_s666: # from 329.3 665.0 729.3
    nr '"나는 사람들이 화가 나 날 쫓아오게 될 때까지 욕설을 퍼부어 댈 수가 있어."  주: 모트에게는 „저주의 연도“라는 능력이 있다. 그것은 마법과는 무관한 일종의 도발로, 회피 판정에 실패할 경우 대상은 아머 클래스와 명중률에 페널티를 받는다, 그리고 모트를 직접 공격하는 일 이외의 행동은 하지 않게 된다. 주목할 점은 모트가 다른 사람들이 욕하는 것을 많이 들으면 들을 수록 저주의 연도의 효과 역시 향상된다는 점이다. 저주의 연도는 메이지를 상대할 때 특히 효과가 크다.{#morte_s666_}'

    menu:
        '"그 밖에 다른 할 수 있는 일은 있나?"{#morte_s666_r65627}' if morteLogic.r65627_condition():
            # a1298 # r65627
            jump morte_s667

        '"그 밖에도 물어보고 싶은 것들이 좀 있네…"{#morte_s666_r65628}':
            # a1299 # r65628
            jump morte_s329

        '"흠… 그건 쓸모가 있을지도 모르겠군. 가세."{#morte_s666_r65629}':
            # a1300 # r65629
            jump morte_dispose


# s667 # say65630
label morte_s667: # from 663.1 665.1 666.0
    nr '"난 로타의 응접실에서 대장이 날 빼내 주기를 기다렸어, 그런데 대장이 죽도록 시간을 끄는 덕분에 그 동안 친구들을 사귈 수가 있었지. 그리고 그들은 도움이 필요하면 자기들을 부르라고 했어.{#morte_s667_}'

    menu:
        '"친구들? 그게 무슨 뜻인가?"{#morte_s667_r65631}':
            # a1301 # r65631
            $ morteLogic.j65637_s667_r65631_action()
            jump morte_s668

        '"그 밖에도 물어보고 싶은 것들이 좀 있네…"{#morte_s667_r65632}':
            # a1302 # r65632
            jump morte_s329

        '"그건 환영할만한 일이군. 가세."{#morte_s667_r65633}':
            # a1303 # r65633
            jump morte_dispose


# s668 # say65634
label morte_s668: # from 667.0
    nr '"내가 휘파람을 불면 그들이 나타나. 꽤 쓸만한 친구들이야, 그리고 뱀처럼 따끔하게 물지."  주: 이제 모트는 "해골 폭도"라고 불리는 특수 능력을 가지게 되었다. 이 능력을 사용하면 화면 밖에서 해골들이 몰려와 하나의 적을 여러 차례 물어뜯는다. 해골들의 위력과 그 대미지는 모트의 레벨에 비례하며, 이 능력은 하루에 일정 회수밖에 사용할 수 없다.{#morte_s668_}'

    menu:
        '"알겠네. 그 밖에도 물어보고 싶은 것들이 좀 있네…"{#morte_s668_r65635}':
            # a1304 # r65635
            jump morte_s329

        '"그건 환영할만한 일이군. 가세."{#morte_s668_r65636}':
            # a1305 # r65636
            jump morte_dispose


# s669 # say65638
label morte_s669: # from 329.5 729.5
    nr '"글쎄, 내가 보기에는…"{#morte_s669_}'

    menu:
        '"계속하게…"{#morte_s669_r65639}' if morteLogic.r65639_condition():
            # a1306 # r65639
            jump morte_s671

        '"계속하게…"{#morte_s669_r65640}' if morteLogic.r65640_condition():
            # a1307 # r65640
            jump morte_s672

        '"계속하게…"{#morte_s669_r65641}' if morteLogic.r65641_condition():
            # a1308 # r65641
            jump morte_s673

        '"계속하게…"{#morte_s669_r65642}' if morteLogic.r65642_condition():
            # a1309 # r65642
            jump morte_s670

        '"계속하게…"{#morte_s669_r65643}' if morteLogic.r65643_condition():
            # a1310 # r65643
            jump morte_s674

        '"계속하게…"{#morte_s669_r65644}' if morteLogic.r65644_condition():
            # a1311 # r65644
            jump morte_s675

        '"계속하게…"{#morte_s669_r65645}' if morteLogic.r65645_condition():
            # a1312 # r65645
            jump morte_s677

        '"계속하게…"{#morte_s669_r65646}' if morteLogic.r65646_condition():
            # a1313 # r65646
            jump morte_s680

        '"계속하게…"{#morte_s669_r65647}' if morteLogic.r65647_condition():
            # a1314 # r65647
            jump morte_s681

        '"관두게. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s669_r65648}':
            # a1315 # r65648
            jump morte_s329

        '"다시 생각해 보니 그만하는 게 좋겠네. 가세."{#morte_s669_r65649}':
            # a1316 # r65649
            jump morte_dispose


# s670 # say65650
label morte_s670: # from 669.3
    nr '"내가 보기에 모든 건 대장에게 달렸어. 지금은 대장에게 해줄 쓸모 있는 얘기가 없어."{#morte_s670_}'

    menu:
        '"*그건* 큰 변화군. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s670_r65651}':
            # a1317 # r65651
            jump morte_s329

        '"알았네. 그럼 움직이세."{#morte_s670_r65652}':
            # a1318 # r65652
            jump morte_dispose


# s671 # say65653
label morte_s671: # from 669.0
    nr '"이 „파로드“란 작자가 있는 곳부터 찾아야 할 것 같아. 만약 그가 대장에 대한 정보를 가지고 있지 않다면 그러한 지시 사항이 대장 등에 적혀 있을 이유가 없잖아. 아마 이 곳 토박이들 중에는 아는 사람이 틀림없이 있을 거야."{#morte_s671_}'

    menu:
        '"좋은 지적이네. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s671_r65654}':
            # a1319 # r65654
            jump morte_s329

        '"알았네. 그럼 계속 그를 찾도록 하세."{#morte_s671_r65655}':
            # a1320 # r65655
            jump morte_dispose


# s672 # say65656
label morte_s672: # from 669.1
    nr '"이 „청동 구체“란 걸 빨리 찾아서 늙은 지팡이에게 가져가자고."{#morte_s672_}'

    menu:
        '"좋은 지적이네. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s672_r65657}':
            # a1321 # r65657
            jump morte_s329

        '"알았네. 그럼 움직이세."{#morte_s672_r65658}':
            # a1322 # r65658
            jump morte_dispose


# s673 # say65659
label morte_s673: # from 669.2
    nr '"대장 시체가 발견된 곳으로 가자고. 대장이 어떻게 죽었는지를 알아낼 수 있을지도 모르니까."{#morte_s673_}'

    menu:
        '"좋은 지적이네. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s673_r65660}':
            # a1323 # r65660
            jump morte_s329

        '"알았네. 그럼 움직이세."{#morte_s673_r65661}':
            # a1324 # r65661
            jump morte_dispose


# s674 # say65662
label morte_s674: # from 669.4
    nr '"가서 대장에 대해 더 아는 - 대장이 왜 이렇게 됐는지 아는 자를 찾자고. 시길의 어딘가에 대장에 대해 대장보다 더 이는 사람이 분명히 있을 거야."{#morte_s674_}'

    menu:
        '"좋은 지적이네. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s674_r65663}':
            # a1325 # r65663
            jump morte_s329

        '"알았네. 그럼 움직이세."{#morte_s674_r65664}':
            # a1326 # r65664
            jump morte_dispose


# s675 # say65665
label morte_s675: # from 669.5
    nr '"그 이 나이트 해그 래벌에 대한 정보를 더 알아내야 할 것 같아, 대장 - 그리고 솔직히 말해서 그건 별로 내키는 일이 아니야. 하지만 시 공회당에 있는 학자들과 감각석이 우리에게 도움을 줄 수 있을지도 몰라."{#morte_s675_}'

    menu:
        '"공회당? 감각석?"{#morte_s675_r65666}' if morteLogic.r65666_condition():
            # a1327 # r65666
            $ morteLogic.j65669_s675_r65666_action()
            jump morte_s676

        '"좋은 지적이네. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s675_r65667}':
            # a1328 # r65667
            jump morte_s329

        '"알았네. 그럼 움직이세."{#morte_s675_r65668}':
            # a1329 # r65668
            jump morte_dispose


# s676 # say65670
label morte_s676: # from 675.0
    nr '"미안, 대장 - 나는 지금 대장의 상식 수준이 물질계에서 방금 온 사람과 차이가 없다는 걸 계속 까먹고 어. 시 공회당은 사무구에 있는 센세이트의 본거지야. 그 곳에는 체험을 기록한 감각석들과, 우리들에게 래벌에 대한 정보를 제공할 수 있을지도 모를 많은 수의 학자, 연사, 그리고 강사들이 있어."{#morte_s676_}'

    menu:
        '"좋은 지적이네. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s676_r65671}':
            # a1330 # r65671
            jump morte_s329

        '"알았네. 그럼 움직이세."{#morte_s676_r65672}':
            # a1331 # r65672
            jump morte_dispose


# s677 # say65673
label morte_s677: # from 669.6
    nr '"래벌은 미로에 갇혔어. 하지만 대장이 그래도 가기를 원한다면, 그 곳으로 갈 수 전이문과 열쇠는 분명히 존재하고 있을 거야."{#morte_s677_}'

    menu:
        '"그녀의 미로로 통하는 전이문이 무엇인지 혹시 아나?"{#morte_s677_r65674}' if morteLogic.r65674_condition():
            # a1332 # r65674
            $ morteLogic.j65678_s677_r65674_action()
            jump morte_s678

        '"그녀의 미로로 통하는 전이문이 어디 있는지 혹시 아나?"{#morte_s677_r65675}':
            # a1333 # r65675
            jump morte_s679

        '"그 밖에도 물어보고 싶은 것들이 좀 있소…"{#morte_s677_r65676}':
            # a1334 # r65676
            jump morte_s329

        '"알았네. 그럼 움직이세."{#morte_s677_r65677}':
            # a1335 # r65677
            jump morte_dispose


# s678 # say65679
label morte_s678: # from 677.0
    nr '"모르겠어. „래벌의 일부?“ 그건 그녀의 말라서 떨어진 사마귀에서 그녀의 침을 거쳐 그녀의 작품에 이르기까지 그 어떤 것에도 해당이 될 수 있는 말이야. 너무 애매해. 하지만 아마 사무구에는 그 미친 마녀의 일부를 어떻게 얻을 수 있는지 아는 사람이 분명히 있기는 있을 거야. 만약 그것이 여의치 못하면, 시 공회당에 있는 감각석을 체크해 볼 수밖에. 그것들 중 하나에 우리에게 유용한 체험이 담겨 있을지도 모르잖아."{#morte_s678_}'

    menu:
        '"그녀의 미로로 통하는 전이문이 어디 있는지 혹시 아나?"{#morte_s678_r65680}':
            # a1336 # r65680
            jump morte_s679

        '"좋은 지적이네. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s678_r65681}':
            # a1337 # r65681
            jump morte_s329

        '"좋네. 그럼 계속 찾아보세."{#morte_s678_r65682}':
            # a1338 # r65682
            jump morte_dispose


# s679 # say65683
label morte_s679: # from 677.1 678.0
    nr '"모르겠어, 대장. 시길에는 전이문들이 무수히 많아. 우선 시 공회당에 가보자고. 그 곳의 감각석들 중 하나에 우리에게 유용한 체험이 담겨 있을지도 모르니까. 그것도 실패로 돌아가면 이렇게 뜬 구름 잡듯이 돌아다니는 건 그만두고 차리리 누구에게 전이문을 만들어 달라고 하자고."{#morte_s679_}'

    menu:
        '"알았네. 그 밖에도 질문할 것이 있네…"{#morte_s679_r65684}':
            # a1339 # r65684
            jump morte_s329

        '"알았네. 그럼 움직이세."{#morte_s679_r65685}':
            # a1340 # r65685
            jump morte_dispose


# s680 # say65686
label morte_s680: # from 669.7
    nr '"우리가 필요한 것만 찾아서 당장 줄행랑치자고, 대장. 이 곳은 나처럼 피부도 없는 사람도 부시시 떨게 만든다고."{#morte_s680_}'

    menu:
        '"옳은 말이네. 그 밖에도 물어보고 싶은 것들이 있네…"{#morte_s680_r65687}':
            # a1341 # r65687
            jump morte_s329

        '"알았네. 그럼 움직이세."{#morte_s680_r65688}':
            # a1342 # r65688
            jump morte_dispose


# s681 # say65689
label morte_s681: # from 669.8
    nr '"몰라, 대장. 이 게임의 주인공은 대장이라고 - 난 그냥 따라다닐 뿐이야."{#morte_s681_}'

    menu:
        '"옳은 말이네. 그 밖에도 물어보고 싶은 것들이 있네…"{#morte_s681_r65690}':
            # a1343 # r65690
            jump morte_s329

        '"그럼 좋네. 가세."{#morte_s681_r65691}':
            # a1344 # r65691
            jump morte_dispose


# s682 # say65692
label morte_s682: # from 651.2
    nr '"아니… 여기 왔을 때 대장은 깨끗하게 털린 상태였어. 이미 말했듯이 대장 몸에는 충분하고도 남을 정도의 일지가 적혀 있다고."{#morte_s682_}'

    menu:
        '"파로드란 사람을 정말 모르나?"{#morte_s682_r65693}' if morteLogic.r65693_condition():
            # a1345 # r65693
            jump morte_s683

        '"옳은 말이네. 그 밖에도 물어보고 싶은 것들이 있네…"{#morte_s682_r65694}':
            # a1346 # r65694
            jump morte_s329

        '"그럼 좋네. 가세."{#morte_s682_r65695}':
            # a1347 # r65695
            jump morte_dispose


# s683 # say65696
label morte_s683: # from 682.0
    nr '"아니. 그래도 그가 어디 있는지 아는 사람은 분명히 있을 거야. 이 근처에 사는 사람들에게 물어보자고."{#morte_s683_}'

    menu:
        '"우리가 가기 전에 다른 질문들을 좀 하고 싶네…"{#morte_s683_r65697}':
            # a1348 # r65697
            jump morte_s329

        '"그럼 좋네. 가세."{#morte_s683_r65698}':
            # a1349 # r65698
            jump morte_dispose


# s684 # say65699
label morte_s684: # from 329.6 729.6
    nr '"그래, 미미르는 떠다니는 백과사전이야. 정보를 보관했다가 필요할 때 꺼낼 수가 있지."{#morte_s684_}'

    menu:
        '"하지만 미미르들은 은색 금속으로 만들어지지 않았나?"{#morte_s684_r65700}' if morteLogic.r65700_condition():
            # a1350 # r65700
            jump morte_s685

        '"알겠네. 그 밖에도 물어보고 싶은 것들이 좀 있네…"{#morte_s684_r65701}':
            # a1351 # r65701
            jump morte_s329

        '"그럼 좋네. 가세."{#morte_s684_r65702}':
            # a1352 # r65702
            jump morte_dispose


# s685 # say65703
label morte_s685: # from 684.0
    nr '"그래서? 그런 종류도 있겠지만, *나는* 달라. 그리고 다원 우주에는 더 이상한 일들도 얼마든지 있다고, 대장."{#morte_s685_}'

    menu:
        '"나는 자네가 미미르라고 생각하지 않네, 모트. 자네 정체는 뭔가?"{#morte_s685_r65704}':
            # a1353 # r65704
            jump morte_s686

        '"알겠네. 그 밖에도 물어보고 싶은 것들이 좀 있네…"{#morte_s685_r65705}':
            # a1354 # r65705
            jump morte_s329

        '"그럼 좋네. 가세."{#morte_s685_r65706}':
            # a1355 # r65706
            jump morte_dispose


# s686 # say65707
label morte_s686: # from 685.0
    nr '"왜 심문하는 거야? 그리고 대장이 미미르에 대해 대체 뭘 알아?"{#morte_s686_}'

    menu:
        '"나도 자네가 내게 거짓말을 하고 있다는 걸 눈치챌 만큼은 아네."{#morte_s686_r65708}' if morteLogic.r65708_condition():
            # a1356 # r65708
            jump morte_s687

        '"나도 자네가 내게 거짓말을 하고 있다는 걸 눈치챌 만큼은 아네. 우선 자네가 빼먹은 내 등에 새겨진 자네를 믿지 말라는 문장, 그러고 이 건. 내가 무슨 생각을 하기를 바라는 건가?"{#morte_s686_r65709}' if morteLogic.r65709_condition():
            # a1357 # r65709
            jump morte_s687

        '"아무 것도 아니네. 그밖에도 물어볼 것들이 좀 있네…"{#morte_s686_r65710}':
            # a1358 # r65710
            $ morteLogic.j65712_s686_r65710_action()
            jump morte_s329

        '"그럼 관두게, 가세."{#morte_s686_r65711}':
            # a1359 # r65711
            $ morteLogic.j65712_s686_r65711_action()
            jump morte_dispose


# s687 # say65713
label morte_s687: # from 686.0 686.1
    nr '"그래, 난 미미르가 아냐, 하지만 난 많은 걸 알아, 그러니까 그렇게 불러서 나쁠 것 없잖아."{#morte_s687_}'

    menu:
        '"그럼 자네는 대체 뭔가?"{#morte_s687_r65714}':
            # a1360 # r65714
            jump morte_s688

        '"관두게. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s687_r65715}':
            # a1361 # r65715
            jump morte_s329

        '"그럼 좋네. 가세."{#morte_s687_r65716}':
            # a1362 # r65716
            jump morte_dispose


# s688 # say65717
label morte_s688: # from 687.0
    nr '"나는 많은 것을 아는 떠다니는 해골이야."{#morte_s688_}'

    menu:
        '"자네에게서 난다는 베이터의 냄새는 뭔가?"{#morte_s688_r65718}' if morteLogic.r65718_condition():
            # a1363 # r65718
            jump morte_s690

        '"자네에게서 난다는 베이터의 냄새는 뭔가?"{#morte_s688_r65719}' if morteLogic.r65719_condition():
            # a1364 # r65719
            jump morte_s689

        '"관두게. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s688_r65720}':
            # a1365 # r65720
            jump morte_s329

        '"그럼 좋네. 가세."{#morte_s688_r65721}':
            # a1366 # r65721
            jump morte_dispose


# s689 # say65722
label morte_s689: # from 688.1
    nr '"대장이 베이터의 냄새에 대해 뭘 알아?!"{#morte_s689_}'

    menu:
        '"그건 내가 그 곳에 가본 적이 있기 때문이네. 나는 아버누스의 대지를 활보했네."{#morte_s689_r65723}':
            # a1367 # r65723
            jump morte_s691

        '"관두게. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s689_r65724}':
            # a1368 # r65724
            jump morte_s329

        '"관두게. 가세."{#morte_s689_r65725}':
            # a1369 # r65725
            jump morte_dispose


# s690 # say65726
label morte_s690: # from 688.0
    nr '"대장이 베이터의 냄새에 대해 뭘 알겠어? 저 타나리와 나에 대해서 얘기를 하지 않았다면…?! 이봐, 그녀는 뭘 알고 있는 거지?!"{#morte_s690_}'

    menu:
        '"그녀가 정곡을 찌른 모양이군. 그건 베이터의 냄새에 대한 것이겠지, 아닌가?{#morte_s690_r65727}':
            # a1370 # r65727
            jump morte_s691

        '"관두게. 그 밖에도 질문할 것들이 좀 있네… "{#morte_s690_r65728}':
            # a1371 # r65728
            jump morte_s329

        '"관두게. 가세."{#morte_s690_r65729}':
            # a1372 # r65729
            jump morte_dispose


# s691 # say65730
label morte_s691: # from 689.0 690.0
    nr '"그래, 하지만… 그래. 그래 난 냄새가 좀 난다고. 냄새나서 미안하다고."{#morte_s691_}'

    menu:
        '"*왜* 자네에게서 베이터의 냄새가 나는 건가?"{#morte_s691_r65731}':
            # a1373 # r65731
            $ morteLogic.r65731_action()
            jump morte_s692


# s692 # say65732
label morte_s692: # from 691.0
    nr '"나는 지옥에 잠시 있었어. 오래 전 얘기지. 그런데도 악취는 한 번 배면 떨어지질 않아."{#morte_s692_}'

    menu:
        '"자네가 지옥에 있었다고? 거기서 대체 뭘 했었나?"{#morte_s692_r65733}':
            # a1374 # r65733
            $ morteLogic.r65733_action()
            jump morte_s693


# s693 # say65734
label morte_s693: # from 329.7 692.0 729.7
    nr '"베이터의 첫 번째 층인 아버누스에는 해골들의 기둥이란 기둥이 있어, 하지만 보다 정확히 말하자면 머리들의 기둥이지."{#morte_s693_}'

    jump morte_s694


# s694 # say65735
label morte_s694: # from 693.0
    nr '"사람들 얘기로 그 곳은 살아 있을 때 자신들이 지닌 지식을 악용하여 진실을 왜곡한 사람들 - 주로 학자나 현자들의 머리로 만들어졌다고 해… 그것도 다른 사람들을 죽게 하거나 큰 해를 입힐 정도로 중대한 거짓말을 한. 난 죽은 후 그것의 일부가 되었어. 웃기지?"{#morte_s694_}'

    menu:
        '"별로."{#morte_s694_r65846}':
            # a1375 # r65846
            jump morte_s695


# s695 # say65736
label morte_s695: # from 694.0
    nr '"어…" 모트는 잠시 침묵한다. "그래, 대장 말이 옳아. 하나도 웃기지 않아. 아마 난 살았을 때 많은 것들을 알고 있었던 모양이야, 그리고 알고 있으면서도 늘 진실을 말하지는 않았던 모양이야. 그리고 내가 진실을 한두 번 왜곡했을 때, 그로 인해 다른 사람이 제 명을 다하지 못하고 죽었던 것 같아."{#morte_s695_}'

    menu:
        '"누구였는지 기억할 수 있나?"{#morte_s695_r65737}':
            # a1376 # r65737
            jump morte_s697

        '"그건 나였네, 그렇지 않나?{#morte_s695_r65738}' if morteLogic.r65738_condition():
            # a1377 # r65738
            jump morte_s696

        '"관두게, 모트. 그 밖에도 질문할 것들이 좀 있네…"{#morte_s695_r65739}' if morteLogic.r65739_condition():
            # a1378 # r65739
            jump morte_s329

        '"관두게, 모트. 가세."{#morte_s695_r65740}' if morteLogic.r65740_condition():
            # a1379 # r65740
            jump morte_dispose


# s696 # say65741
label morte_s696: # from 695.1
    nr '모트는 잠시 당신을 쳐다본다. "그래. 어떻게 내가 아는지는 나도 몰라, 대장, 하지만 그렇게 생각해. 내 생각에 나는 바로 대장 때문에 그 곳에 가게 된 것 같아. 내장을 속인 일이 결정타가 된 것 같아. 나도 정확히 어떤 일이 일어났었는지는 기억을 할 수가 없어. 나는 내가 인간이었을 때의 기억도 없고, 기둥에서 깨어나기 전에 어떤 삶을 살았는지도 기억이 나지 않아.{#morte_s696_}'

    menu:
        '"자네는 왜 잊어버렸나?"{#morte_s696_r65742}':
            # a1380 # r65742
            jump morte_s698

        '"관두게, 모트. 그 밖에도 질문할 것들이 좀 있네…"{#morte_s696_r65743}' if morteLogic.r65743_condition():
            # a1381 # r65743
            jump morte_s329

        '"관두게, 모트. 가세."{#morte_s696_r65744}' if morteLogic.r65744_condition():
            # a1382 # r65744
            jump morte_dispose


# s697 # say65745
label morte_s697: # from 695.0
    nr '"어떻게 내가 아는지는 나도 몰라, 하지만 대장이었다고 생각해. 적어도 한 번은. 나도 정확히 어떤 일이 일어났었는지는 기억을 할 수가 없어. 나는 내가 인간이었을 때의 기억도 없고, 기둥에서 깨어나기 전에 어떤 삶을 살았는지도 기억이 나지 않아.{#morte_s697_}'

    menu:
        '"자네는 왜 잊어버렸나?"{#morte_s697_r65746}':
            # a1383 # r65746
            jump morte_s698

        '"관두게, 모트. 그 밖에도 질문할 것들이 좀 있네…"{#morte_s697_r65747}' if morteLogic.r65747_condition():
            # a1384 # r65747
            jump morte_s329

        '"관두게, 모트. 가세."{#morte_s697_r65748}' if morteLogic.r65748_condition():
            # a1385 # r65748
            jump morte_dispose


# s698 # say65749
label morte_s698: # from 696.0 697.0
    nr '"대장도 잘 알다시피 죽으면 기억을 잃는 것이 세상 이치인 모양이야… 전에 나는 사회의 신뢰할 수 있는 구성원은 아니었던 것 같아… 하지만 정말로 그런 사람이 어디 있어?" 모트는 다시 한숨을 쉰다. "하지만 어쩔 수가 없어. 늘 정직한 것만큼 괴로운 것도 또 없다고."{#morte_s698_}'

    menu:
        '"지옥에 떨어지는 것 말고는. 그건 진실을 말하는 것보다 훨씬 더 나쁠 것 같네."{#morte_s698_r65750}' if morteLogic.r65750_condition():
            # a1386 # r65750
            $ morteLogic.r65750_action()
            jump morte_s699

        '"그건 사실이네… 하지만 거짓말을 할 때는 신중하게 선택해야 하지."{#morte_s698_r65751}' if morteLogic.r65751_condition():
            # a1387 # r65751
            $ morteLogic.r65751_action()
            jump morte_s699


# s699 # say65752
label morte_s699: # from 698.0 698.1
    nr '"그래. *이번에도* 대장 말이 옳아." 모트는 이빨을 찰칵거리는데, 그것은 왠지 사람이 손가락을 두드리는 소리처럼 들린다. "생전에 한 거짓말과 악행에 대한 대가는 언젠가는 치르게 되어 있지, 그리고 내가 죽었을 때, 이제는 내가 저승의 뱃사공에게 돈을 낼 차례가 되었어."{#morte_s699_}'

    menu:
        '"그래 어떻게 기둥에서 탈출했나?"{#morte_s699_r65753}':
            # a1388 # r65753
            $ morteLogic.j53633_s699_r65753_action()
            jump morte_s700

        '"관두게, 모트. 그 밖에도 질문할 것들이 좀 있네…"{#morte_s699_r65754}' if morteLogic.r65754_condition():
            # a1389 # r65754
            jump morte_s329

        '"관두게, 모트. 가세."{#morte_s699_r65755}' if morteLogic.r65755_condition():
            # a1390 # r65755
            jump morte_dispose


# s700 # say65757
label morte_s700: # from 699.0
    nr '"대장이 날 도왔어. 대장이 해골들의 기둥 앞에 나타났을 때, 나는 기를 쓰고 표면으로 나왔지, 그리고 내 노하우와 매력을 총동원해 대장의 이목을 끌었어 - 대장은 *내*가 가장 많은 것을 아는 머리라는 걸 알고 있엇어. 그리고 난 대장과 거래를 했지"{#morte_s700_}'

    menu:
        '"거래…?"{#morte_s700_r65758}':
            # a1391 # r65758
            $ morteLogic.r65758_action()
            jump morte_s701

        '"관두게, 모트. 그 밖에도 질문할 것들이 좀 있네…"{#morte_s700_r65759}' if morteLogic.r65759_condition():
            # a1392 # r65759
            jump morte_s329

        '"관두게, 모트. 가세."{#morte_s700_r65760}' if morteLogic.r65760_condition():
            # a1393 # r65760
            jump morte_dispose


# s701 # say65761
label morte_s701: # from 700.0
    nr '모트가 얘기를 하자 당신의 시야가 시뻘겋게 변한다, 그리고 온갖 끔찍스런 목소리들이 당신 귀에 들려 온다. 그들은 모두 당신에게 구해 달라고 애원하면서 비명을 지르고 있다, 그리고 모트의 목소리는 거기에 파묻혀 거의 들리지 않는다. 그의 목소리는 절박감과 공포로 가득 차 있다… 그리고 그는 가련할 정도로 스스로를 잃고 어찌할 줄을 모르고 있다.{#morte_s701_}'

    menu:
        '메아리: "너, 해골. 말하라."{#morte_s701_r65762}':
            # a1394 # r65762
            jump morte_s702

        '기억을 떨쳐버린다.{#morte_s701_r65763}':
            # a1395 # r65763
            $ morteLogic.r65763_action()
            jump morte_s706


# s702 # say65764
label morte_s702: # from 701.0
    nr '울부짖는 목소리들이 침묵한다, 그리고 업화의 불빛을 받아 벌겋게 빛나고 있는 작은 해골이 당신에게로 시선을 돌린다. 그의 안면은 피와 점액으로 얼룩져 있으며, 마치 추위에 또는 듯 이빨을 딱딱거리고 있다. "난… 난 당-당신을 도울 수 있어. 난 당-당신이 찾는 걸 알고 있어… 이 머리들… 그들의 모든 지식… 제발, 애원할게, 내가 당신을 돕게 해줘. *뭐든지* 다 말하겠어."{#morte_s702_}'

    menu:
        '메아리: "그렇게 할 것인가? 맹세하라, 해골. 내가 죽는 날까지 날 섬기겠다고 맹세하라, 아니면 넌 이 곳에 남게 될 것이다."{#morte_s702_r65765}':
            # a1396 # r65765
            jump morte_s703

        '기억을 떨쳐버린다.{#morte_s702_r65766}':
            # a1397 # r65766
            $ morteLogic.r65766_action()
            jump morte_s706


# s703 # say65767
label morte_s703: # from 702.0
    nr '"맹세해, 맹세해. 그러니.. 제발 날 여기서 구해줘… 나…" 당신은 모트가 자존심도 내팽개치고 보기 역겨울 정도로 애걸하는 것을 지켜본다. "애원할게. 내가 당신을 돕게 해줘. 제발…"{#morte_s703_}'

    menu:
        '메아리: "좋다. 내가 널 해방시켜 주겠다."{#morte_s703_r65768}':
            # a1398 # r65768
            jump morte_s704

        '기억을 떨쳐버린다.{#morte_s703_r65769}':
            # a1399 # r65769
            $ morteLogic.r65769_action()
            jump morte_s706


# s704 # say65770
label morte_s704: # from 703.0
    nr '당신이 움직임에 따라 시야 역시 움직인다, 그리고 울부짖음과 비명의 불협화음이 재개된다. 마치 악몽과도 같은 울부짖음, 도발, 욕설, 야유가 쇄도한다… 당신은 손을 기둥의 진창 속에 넣는다, 그리고 머리들이 마구 물어뜯는 것을 견디면서 작은 해골을 움켜 쥔다, 그리고 그것을 마치 오래된 상처딱지를 벗기듯 기둥에서 꺼낸다…{#morte_s704_}'

    menu:
        '메아리: "됐다."{#morte_s704_r65771}':
            # a1400 # r65771
            jump morte_s705

        '기억을 떨쳐버린다.{#morte_s704_r65772}':
            # a1401 # r65772
            $ morteLogic.r65772_action()
            jump morte_s706


# s705 # say65773
label morte_s705: # from 704.0
    nr '당신은 자신의 흉터투성이 손 안에 있는 피로 범벅이 된 해골을 내려다본다. 그의 눈은 기둥에서 나온 점액으로 덮여 있으며, 그는 이빨을 한 번, 두 번 딱딱거린다. 그것은 무력한 간난아기가 우는 소리를 연상시키며, 과거의 당신 눈으로 볼 때 너무 한심하다.{#morte_s705_}'

    menu:
        '메아리: "나는 너를 해방시켜 주었다. 이제 너의 삶과… 죽음은 내 것이다… 모트."{#morte_s705_r65774}' if morteLogic.r65774_condition():
            # a1402 # r65774
            $ morteLogic.r65774_action()
            jump morte_s706

        '메아리: "나는 너를 해방시켜 주었다. 이제 너의 삶과… 죽음은 내 것이다… 모트."{#morte_s705_r65775}' if morteLogic.r65775_condition():
            # a1403 # r65775
            $ morteLogic.r65775_action()
            jump morte_s706


# s706 # say65776
label morte_s706: # from 701.1 702.1 703.1 704.1 705.0 705.1
    nr '당신의 시야가 소용돌이친다, 그리고 과거의 안개는 바람에 날리듯 사라진다. 모트는 아직도 수다를 떨고 있다. "우리는 상호 협의가 제대로 이루어질 수 있을지 여부에 대해 한동안 얘기를 했지, 그리고 내 생각에 우리는 서로에게 깊은 인상을 받았던 것 같아. 그래서 대장은 날 기둥에서 빼냈고, 그 이후로는 늘 함께 있었어."{#morte_s706_}'

    menu:
        '"어… 그 다음에는 어떻게 되었나?"{#morte_s706_r65777}':
            # a1404 # r65777
            jump morte_s707

        '"관두게, 모트. 그 밖에도 질문할 것들이 좀 있네…"{#morte_s706_r65778}' if morteLogic.r65778_condition():
            # a1405 # r65778
            jump morte_s329

        '"관두게, 모트. 가세."{#morte_s706_r65779}' if morteLogic.r65779_condition():
            # a1406 # r65779
            jump morte_dispose


# s707 # say65780
label morte_s707: # from 706.0
    nr '"나는 일단 기둥 밖으로 나가면 기둥에 축적된 지식을 잃게 된다는 사실을 알지 못했어… 솔직히 나가 본 적이 없는데 어떻게 알겠어… 하지만 대장은 이해해 주었지 "{#morte_s707_}'

    menu:
        '"자네는 자네가 가지고 있다고 했던 모든 지식을 잃어버렸나…?{#morte_s707_r65781}':
            # a1407 # r65781
            $ morteLogic.r65781_action()
            jump morte_s708

        '"관두게, 모트. 그 밖에도 질문할 것들이 좀 있네…"{#morte_s707_r65782}' if morteLogic.r65782_condition():
            # a1408 # r65782
            jump morte_s329

        '"관두게, 모트. 가세."{#morte_s707_r65783}' if morteLogic.r65783_condition():
            # a1409 # r65783
            jump morte_dispose


# s708 # say65784
label morte_s708: # from 707.0
    nr '당신의 시야가 다시 소용돌이치자 머리가 어지러워지고 속이 울렁거린다. 당신 귀에 뼈가 부서지는 것 같은 소리와 모트의 울부짖음이 들려 온다 - 고통에 신음하며 제발 자길 죽이지 말아 달라고 애걸하는 모트의 울부짖음이… 그리고 당신은 계속해서 손을 내밀고 또 내민다…{#morte_s708_}'

    menu:
        '메아리: "염병할 해골 같으니. 넌 날 속였군. 나는 널 저 빌어먹을 기둥에 다시 쑤셔 넣어 그 곳에서 *죽도록* 만들겠다."{#morte_s708_r65785}':
            # a1410 # r65785
            jump morte_s709

        '"관두게, 모트. 그 밖에도 질문할 것들이 좀 있네…"{#morte_s708_r65786}' if morteLogic.r65786_condition():
            # a1411 # r65786
            jump morte_s329

        '"관두게, 모트. 가세."{#morte_s708_r65787}' if morteLogic.r65787_condition():
            # a1412 # r65787
            jump morte_dispose


# s709 # say65788
label morte_s709: # from 708.0
    nr '뼈가 금속 성의 물질 - 벽이나 바닥과 부딪치는 소리와 이빨이 부러져 나가는 소리가 들린다. 모트가 두들겨 맞은 개새끼처럼 훌쩍이며 애걸하는 소리가-{#morte_s709_}'

    menu:
        '메아리: "내가 너에게 줄 *고통*에 비하면 기둥에서 네가 받은 고통은 새 발의 피에 불과할 것이다."{#morte_s709_r65789}':
            # a1413 # r65789
            $ morteLogic.r65789_action()
            jump morte_s710

        '"관두게, 모트. 그 밖에도 질문할 것들이 좀 있네…"{#morte_s709_r65790}' if morteLogic.r65790_condition():
            # a1414 # r65790
            jump morte_s329

        '"관두게, 모트. 가세."{#morte_s709_r65791}' if morteLogic.r65791_condition():
            # a1415 # r65791
            jump morte_dispose


# s710 # say65792
label morte_s710: # from 709.0
    nr '당신의 시야는 다시 소용돌이치고 모트의 울음소리는 그의 수다떠는 소리에 묻혀 사라진다. "대장은 내게 아직도 쓸모가 있다는 걸 깨달았고, 그래서 난 함께 가기로 했지. 그 이후로는 늘 함께 있었어."{#morte_s710_}'

    menu:
        '"모트, 난 기둥으로부터 뭘 원했었나? 그리고 내가 자네를 해방시킨 건 얼마나 오래 전의 일인가?"{#morte_s710_r65793}':
            # a1416 # r65793
            jump morte_s711

        '"어… 관두게, 모트. 그 밖에도 질문할 것들이 좀 있네…"{#morte_s710_r65794}' if morteLogic.r65794_condition():
            # a1417 # r65794
            jump morte_s329

        '"관두게, 모트. 가세."{#morte_s710_r65795}' if morteLogic.r65795_condition():
            # a1418 # r65795
            jump morte_dispose


# s711 # say65796
label morte_s711: # from 710.0
    nr '모트는 잠시 생각한다. "얼마나 오래됐는지는 정확히 몰라, 대장. 아마 수백 년은 되었겠지.나는 매번 내 능력껏 대장을 도왔어, 하지만…" 모트는 한숨을 쉰다. "하지만 쉽지는 않았어. 그리고 대장이 기둥에서 뭘 원했는지는 나도 몰라, 대장이 날 기둥에서 꺼내자마자 잊어버렸어."{#morte_s711_}'

    menu:
        '"모트, 왜 우리가 시체안치소에 있었을 때 얘기를 하지 않았나?"{#morte_s711_r65797}':
            # a1419 # r65797
            jump morte_s712

        '"관두게, 모트. 그 밖에도 질문할 것들이 좀 있네…"{#morte_s711_r65798}' if morteLogic.r65798_condition():
            # a1420 # r65798
            jump morte_s329

        '"관두게, 모트. 가세."{#morte_s711_r65799}' if morteLogic.r65799_condition():
            # a1421 # r65799
            jump morte_dispose


# s712 # say65800
label morte_s712: # from 711.0
    nr '모트는 갑자기 변명을 늘어놓기 시작한다. "왜냐하면 난 대장이 어떤 사람이 될지 몰랐기 때문이야! 대장의 화신들 중 일부는 완전히 발광한 자들이었다고! 언젠가는 깨어나더니 내가 대장 해골이라는 생각에 사로잡혀 날 부셔서 먹겠다고 날 쫓아서 온 시길을 돌아다니기도 했지… 다행히도 그 때 대장이 거리에서 마차에 치어서 죽는 바람에 무사할 수 있었지. 그리고 „질서와 선“을 존중하는 또 다른 화신은 기둥이 내가 있어야 할 곳이라고 하면서 날 거기 다시 처박으려고 했어." 모트는 억지로 웃는다. "그게 이유야. 게다가 그걸 모른다고 해서 대장이 해를 입은 것도 아니잖아…"{#morte_s712_}'

    menu:
        '"그럼 자네는 그 오랜 세월동안 나와 계속 함께 있었나?"{#morte_s712_r65801}' if morteLogic.r65801_condition():
            # a1422 # r65801
            jump morte_s713

        '"관두게, 모트. 그 밖에도 질문할 것들이 좀 있네…"{#morte_s712_r65802}' if morteLogic.r65802_condition():
            # a1423 # r65802
            jump morte_s329

        '"관두게, 모트. 가세."{#morte_s712_r65803}' if morteLogic.r65803_condition():
            # a1424 # r65803
            jump morte_dispose


# s713 # say65804
label morte_s713: # from 712.0
    nr '"그래, 대장, 내가 그럴 거라고 말했잖아. 모트는 늘 약속을 지킨다고." 그는 잠시 멈춘다. "대부분의 경우엔. 헤-헤. 아버리어에 어떤 계집이…"{#morte_s713_}'

    $ morteLogic.s713_action()
    jump morte_s714


# s714 # say65805
label morte_s714: # from 713.0
    nr '갑자기 당신은 모트의 어조가 변했다는 것을 깨닫는다. 당신은 그가 뭔가를 농담으로 적당히 감추려고 한다는 것을 한다. 당신과 함께 행동하게 된 이유에 대한 뭔가를.{#morte_s714_}'

    menu:
        '"모트, 진지하게 묻겠네, 왜 자네는 아직도 나와 함께 여행을 하는 건가?"{#morte_s714_r65806}':
            # a1425 # r65806
            jump morte_s715

        '"좋소. 그럼 몇 가지만 더 물어봅시다…"{#morte_s714_r65807}':
            # a1426 # r65807
            jump morte_s329

        '"관두게, 모트. 가세."{#morte_s714_r65808}':
            # a1427 # r65808
            jump morte_dispose


# s715 # say65809
label morte_s715: # from 329.8 714.0 729.8
    nr '"대장, 그건 내가 약속을 했기 때문이라고 했잖아. 알겠어?" 그는 짜증스러워 하는 것 같다. "그 이외에 다른 어떤 이유가 있겠어?"{#morte_s715_}'

    menu:
        '"모르겠네. 내가 자네를 해방시킨 후 줄곧 내 곁에 붙어 있을 필요는 없었네."{#morte_s715_r65810}':
            # a1428 # r65810
            jump morte_s716

        '"관두게. 그 밖에도 질문할 것들이 좀 있네…"{#morte_s715_r65811}':
            # a1429 # r65811
            jump morte_s329

        '"관두게, 모트. 가세."{#morte_s715_r65812}':
            # a1430 # r65812
            jump morte_dispose


# s716 # say65813
label morte_s716: # from 715.0
    nr '"물론 아니야, 대장, 하지만 난-" 그리고 그의 목소리는 당신 안에서 뭔가를 갑자기 상기시킨다, 그리고 당신은 *왜* 그가 지금까지 당신 곁에 있었는지를 깨닫는다.{#morte_s716_}'

    menu:
        '"자네는 죄책감을 느끼고 있군. 오래 전에 자네가 날 죽음으로 몰아 넣었기 때문이겠지, 아닌가? 그리고 그 후로 자네는 줄곧 고통을 받았네."{#morte_s716_r65814}':
            # a1431 # r65814
            jump morte_s717


# s717 # say65815
label morte_s717: # from 716.0
    nr '"이봐, 대장. 내가 *죄책감*을 느껴? 나는 모트라고."{#morte_s717_}'

    menu:
        '"아니, 내 말이 맞네. 내가 자네를 당연히 감수해야 할 운명으로부터 구했을 때 자네는 날 도우려고 최선을 다 할 수밖에 없었네. 그리고 내가 자네를 해방시킨 후에 자네는 내 곁을 떠날 수도 있었음에도 불구하고 남았네. 그건 자네가 내게 빚을 졌다고 생각했기 때문이었겠지."{#morte_s717_r65816}':
            # a1432 # r65816
            jump morte_s718


# s718 # say65817
label morte_s718: # from 717.0
    nr '모트는 당신을 바라보며 잠시 침묵한다. "아마 그럴지도. 정말 웃긴게 뭔지 알아? 처음에는 나는 그걸 느끼지 못했어 - 하지만 그건 사람 피를 서서히 말린다고, 알아?"{#morte_s718_}'

    jump morte_s719


# s719 # say65818
label morte_s719: # from 718.0
    nr '"처음에 나는 내가 대장한테 „묶여“ 있다고 생각했었어… 그리고 대장의 마법이 날 일종의 마법사의 종복으로 만들었다고. 하지만 이백 년 정도가 지나고 나서 나는 우리의 관계가 더 깊은 것이라는 걸 깨달았어. 나는 왠지 대장에게 끌렸어. 아마 대장의 고통 때문일지도 몰라. 모르겠어. 아마 난… 모르겠어… 내가 한 일에 대해 책임감을 느꼈어. 만약 대장이 이렇게 된 게 다 내 탓이었다면?"{#morte_s719_}'

    $ morteLogic.s719_action()
    jump morte_s720


# s720 # say65820
label morte_s720: # from 719.0
    nr '"나는 내가 - 생전의 내가 했던 거짓말과 사기가 초래한 결과를 본 적이 없어, 그럼에도 난 내가 기둥 속에서 대장을 보았을 대, 즉석에서 내가 오래 전에 한 번… 배신한 사람이 바로 대장이라는 걸 즉각 깨달았어." 모트는 한숨을 쉰다. "그게 내가 아는 전부야."{#morte_s720_}'

    menu:
        '"알겠네. 모든 사실을 다 말해주어 고맙네, 모트."{#morte_s720_r65821}':
            # a1433 # r65821
            $ morteLogic.j65825_s720_r65821_action()
            $ morteLogic.r65821_action()
            jump morte_s721


# s721 # say65822
label morte_s721: # from 720.0
    nr '"아니, 내게 감사할 필요 없어…" 모트는 한숨을 쉰다, 그리고 놀랍게도 그의 목소리는 전보다 훨씬 강하고 자신에 넘치는 것 같다. 그리고 그의 해골에 나 있던 금과 부서진 부분들도 깨끗이 나았다. "정말 감사해야 할 건 나야. 날 지금껏 누르고 있던 차원 하나가 사라진 느낌이야… 비유해서 말하자면."{#morte_s721_}'

    menu:
        '"그 밖에도 물어보고 싶은 것들이 좀 있네…"{#morte_s721_r65823}':
            # a1434 # r65823
            jump morte_s329

        '"좋네, 모트. 움직이세"{#morte_s721_r65824}':
            # a1435 # r65824
            jump morte_dispose


# s722 # say65826
label morte_s722: # from 329.10 729.10
    nr '"그녀는 나이트 해그야 - 그리고 그녀는 대장을 불사신으로 만들 정도로 미쳤다고, 날 선택할 수도 있었는데." 모트는 눈을 부라린다. "하지만 레이디 오브 페인에게 싸움을 걸 정도로 돈 자는 별로 찾고 싶지가 않은 걸."{#morte_s722_}'

    menu:
        '"알겠네. 그 밖에도 물어보고 싶은 것들이 좀 있네…"{#morte_s722_r65827}':
            # a1436 # r65827
            jump morte_s329

        '"그럼 좋네. 가세."{#morte_s722_r65828}':
            # a1437 # r65828
            jump morte_dispose


# s723 # say65829
label morte_s723: # from 329.9 729.9
    nr '"그건 엄청난 규모의 참혹한 전쟁이야. 모든 곳에서 벌어지고는 있으나 늘 눈에 보이는 건 아니야."{#morte_s723_}'

    menu:
        '"계속하게…"{#morte_s723_r65830}':
            # a1438 # r65830
            jump morte_s724

        '"관두게. 그 밖에도 질문할 것들이 좀 있네…"{#morte_s723_r65831}':
            # a1439 # r65831
            jump morte_s329

        '"그럼 좋네. 가세."{#morte_s723_r65832}':
            # a1440 # r65832
            jump morte_dispose


# s724 # say65833
label morte_s724: # from 723.0
    nr '"대장, 그건 두 악랄한 종족들 - 타나리와 바테주 사이의 전쟁이야. 옛날옛적에는 둘이 서로를 모르고 지냈지. 바테주는 사악했지만, „질서 정연“한 악이었고, 반대로 타나리는 사악한 건 마찬가지이지만 느슨했어, 즉 보다 충동적이고 혼돈스러웠지. 바테주는 정치가, 타나리는 도살자였어."{#morte_s724_}'

    jump morte_s725


# s725 # say65834
label morte_s725: # from 724.0
    nr '"그러다가 어느 날 두 종족이 만난 거지. 그들은 서로를 쳐다보자마자 상대방이 악에 접근하는 방식이 마음에 둘지 않았어. 그리고 그 이래로 그들은 계속 싸우고 있어. 그건 악몽이지, 하지만 두 종족들을 바쁘게 만들어 그들이 다원 우주에 입히는 피해를 최소화하지."{#morte_s725_}'

    menu:
        '"알겠네. 그 밖에도 물어보고 싶은 것들이 좀 있네…"{#morte_s725_r65835}':
            # a1441 # r65835
            jump morte_s329

        '"내가 알고 싶었던 건 그것이 전부네. 가세."{#morte_s725_r65836}':
            # a1442 # r65836
            jump morte_dispose


# s726 # say65837
label morte_s726: # from 329.11 729.11
    nr '"몰라, 대장. 죽었을 때 잊어버렸어. 스스로를 탓하진 않아 - 적어도 죽은 뒤에 날 기다리고 있는 운명이 있었으니까, 설령 그것이 떠다니는 해골로서의 삶일지라도. 내 말은 그것보다 훨씬 심한 꼴을 당했을 수도 있었다는 거야."{#morte_s726_}'

    menu:
        '"자네 몸은 어떻게 됐는가?"{#morte_s726_r65839}':
            # a1443 # r65839
            jump morte_s727

        '"알겠네. 그 밖에도 물어보고 싶은 것들이 좀 있네…"{#morte_s726_r65840}':
            # a1444 # r65840
            jump morte_s329

        '"그럼 좋네. 가세."{#morte_s726_r65841}':
            # a1445 # r65841
            jump morte_dispose


# s727 # say65838
label morte_s727: # from 726.0
    nr '"어… 몰라. 그냥 사라졌어." 모트는 당신을 노려본다. "하지만 별로 그립지는 않아. 난 지금의 내가 마음에 드니까. 그러니까 대장 편견으로 날 판단하거나 헐뜯지는 말라고."{#morte_s727_}'

    menu:
        '"알겠네. 그 밖에도 물어보고 싶은 것들이 좀 있네…"{#morte_s727_r65842}':
            # a1446 # r65842
            jump morte_s329

        '"어쨌든 가세. 자, 서두르게."{#morte_s727_r65843}':
            # a1447 # r65843
            jump morte_s728


# s728 # say65844
label morte_s728: # from 727.1
    nr '모트는 당신을 노려본다. "대장이 날 따라다니도록 운명지워진 살아 있는 저주가 아니라는 걸 나로서는 확신을 할 수가 없군."{#morte_s728_}'

    menu:
        '"누가 할 말을. 가세."{#morte_s728_r65845}':
            # a1448 # r65845
            jump morte_dispose


# s729 # say66344
label morte_s729: # - # IF WEIGHT #7 /* Triggers after states #: 742 737 733 even though they appear after this state */ ~  Global("AR0200_Visited","GLOBAL",1) InParty("Morte") !GlobalGT("Fortress_Morte","GLOBAL",2)
    nr '"뭘 그렇게 골똘하게 생각하는 거야, ?"~ [MRT515]{#morte_s729_}'

    menu:
        '"내 등에 새겨진 문신의 내용을 다시 들려줄 수 있겠나?"{#morte_s729_r66345}':
            # a1449 # r66345
            jump morte_s649

        '"내게 시길에 대해 좀 얘기해줄 수 있겠나?"{#morte_s729_r66346}':
            # a1450 # r66346
            jump morte_s659

        '"모트… 자네가 날 따라오는 건 개의치 않네, 하지만 수다떠는 것 말고 자네가 할 수 있은 없나?"{#morte_s729_r66347}' if morteLogic.r66347_condition():
            # a1451 # r66347
            jump morte_s663

        '"모트… 자네의 특수한 재능이 어떤 것들인지 다시 얘기해주겠나?"{#morte_s729_r66348}' if morteLogic.r66348_condition():
            # a1452 # r66348
            jump morte_s666

        '"모트, 내 등에 새겨진 문신의 나머지 한 줄에 대해서 왜 내게 얘기하지 않았나?"{#morte_s729_r66349}' if morteLogic.r66349_condition():
            # a1453 # r66349
            jump morte_s654

        '"조언이 좀 필요하네. 우리가 다음에 무엇을 해야 한다고 생각하나?"{#morte_s729_r66350}':
            # a1454 # r66350
            jump morte_s669

        '"자네는 자신이 미미르라고 했네, 맞나, 모트?"{#morte_s729_r66351}' if morteLogic.r66351_condition():
            # a1455 # r66351
            jump morte_s684

        '"자네가 왜 해골들의 기둥에 떨어지게 되었는지 다시 말해주게."{#morte_s729_r66352}' if morteLogic.r66352_condition():
            # a1456 # r66352
            jump morte_s693

        '"모트. 내가 기둥으로부터 자네를 빼낸 후에 왜 나와 함께 여행을 계속한 건가?"{#morte_s729_r66353}' if morteLogic.r66353_condition():
            # a1457 # r66353
            jump morte_s715

        '"자네는 블러드 워에 대해 무엇을 아나?"{#morte_s729_r66354}' if morteLogic.r66354_condition():
            # a1458 # r66354
            jump morte_s723

        '"자네는 나이트 해그 래벌에 대해 무엇을 아나?"{#morte_s729_r66355}' if morteLogic.r66355_condition():
            # a1459 # r66355
            jump morte_s722

        '"자네는 어떻게 죽었나, 모트?"{#morte_s729_r66356}':
            # a1460 # r66356
            jump morte_s726

        '"아무 것도 아니네, 모트. 자네가 아직 나와 함께하고 있는 확인했을 뿐이네."{#morte_s729_r66357}':
            # a1461 # r66357
            jump morte_dispose


# s730 # say66816
label morte_s730: # -
    nr '"이봐, 대장, 저 두 사람 정말 대단하군. 나도 그들로부터 한두 가지 정도는 배울 수 있겠는데…"~ [MRT387]{#morte_s730_}'

    menu:
        '"난 믿네, 모트. 가세."{#morte_s730_r66817}':
            # a1462 # r66817
            jump morte_dispose


# s731 # say67510
label morte_s731: # -
    nr '"나는 그냥 무드를 깰 생각이 없다고 불쑥 말하고 싶었을 뿐이야, 대장. 난 그냥 여기 떠서 구경을 할 테니까 신경 쓰지 말라고."{#morte_s731_}'

    jump annah_s418  # EXTERN


# s732 # say67600
label morte_s732: # -
    nr '"내가 다버스를 불러다가 두 사람을 분리시키기 전에 어서 떨어지라고!" 모트가 투덜거린다. "아니면 적어도 내가 끼어들 여지를 달라고."{#morte_s732_}'

    jump annah_s446  # EXTERN


# s733 # say68171
label morte_s733: # - # IF WEIGHT #1 ~  Global("Fortress_Morte","GLOBAL",3) Global("Absorb","GLOBAL",0)
    nr '당신이 손을 내밀자 갑자기 모트가 입을 연다. "워, 워, 워! 기다려, 대장! 내가 대장에게 말해야 할 게 몇 가지 있어."~ [MRT242]{#morte_s733_}'

    menu:
        '"모트… ?! 자넨 죽지 않았군!"{#morte_s733_r68176}':
            # a1463 # r68176
            $ morteLogic.r68176_action()
            jump morte_s734


# s734 # say68172
label morte_s734: # from 733.0
    nr '"그래 - 나처럼 죽은지 오래되면, 죽음을 위장하는 데 익숙해지게 된다고. 나는 대장과 그 녀석이 하는 대화를 처음부터 다 들었어. 그 힘은 다른 사람에게 쓰라고 - 나는 필요없어.{#morte_s734_}'

    menu:
        '"그럼 자네는 내가 아주 요절이 나고 있을 동안 그냥 거기서 누워 있을 생각이었나?"{#morte_s734_r68177}':
            # a1464 # r68177
            jump morte_s735


# s735 # say68173
label morte_s735: # from 734.0
    nr '"그래, 대장. 대장이 죽을 건 아니잖아. 내 말은 대장이 실패했을 경우 대장을 위해 기억해줄 사람이 필요하다는 거야. 게다가 대장도 내가 전투에서 얼마나 쓸모가 없는지는 잘 알잖아 - 마법사들을 도발할 때만 빼놓고…"{#morte_s735_}'

    menu:
        '"그럼 그것이 자네가 날 위해 해줘야 할 일지지도 모르겠네. 이 일에 대해서는 *나중에* 얘기하세, 모트."{#morte_s735_r68178}' if morteLogic.r68178_condition():
            # a1465 # r68178
            jump morte_s736

        '"그럼 그것이 자네가 날 위해 해줘야 할 일지지도 모르겠네. 이 일에 대해서는 *나중에* 얘기하세, 모트."{#morte_s735_r68189}' if morteLogic.r68189_condition():
            # a1466 # r68189
            $ morteLogic.r68189_action()
            jump morte_dispose

        '"그럼 그것이 자네가 날 위해 해줘야 할 일지지도 모르겠네. 이 일에 대해서는 *나중에* 얘기하세, 모트."{#morte_s735_r68190}' if morteLogic.r68190_condition():
            # a1467 # r68190
            $ morteLogic.r68190_action()
            jump morte_dispose

        '"그럼 그것이 자네가 날 위해 해줘야 할 일지지도 모르겠네. 이 일에 대해서는 *나중에* 얘기하세, 모트."{#morte_s735_r68191}' if morteLogic.r68191_condition():
            # a1468 # r68191
            $ morteLogic.r68191_action()
            jump morte_dispose

        '"그럼 그것이 자네가 날 위해 해줘야 할 일지지도 모르겠네. 이 일에 대해서는 *나중에* 얘기하세, 모트."{#morte_s735_r68192}' if morteLogic.r68192_condition():
            # a1469 # r68192
            $ morteLogic.r68192_action()
            jump morte_dispose

        '"그럼 그것이 자네가 날 위해 해줘야 할 일지지도 모르겠네. 이 일에 대해서는 *나중에* 얘기하세, 모트."{#morte_s735_r68193}' if morteLogic.r68193_condition():
            # a1470 # r68193
            $ morteLogic.r68193_action()
            jump morte_dispose

        '"그럼 그것이 자네가 날 위해 해줘야 할 일지지도 모르겠네. 이 일에 대해서는 *나중에* 얘기하세, 모트."{#morte_s735_r68194}' if morteLogic.r68194_condition():
            # a1471 # r68194
            $ morteLogic.r68194_action()
            jump morte_dispose

        '"그럼 그것이 자네가 날 위해 해줘야 할 일지지도 모르겠네. 이 일에 대해서는 *나중에* 얘기하세, 모트."{#morte_s735_r68239}' if morteLogic.r68239_condition():
            # a1472 # r68239
            $ morteLogic.r68239_action()
            jump morte_dispose

        '"그럼 그것이 자네가 날 위해 해줘야 할 일지지도 모르겠네. 이 일에 대해서는 *나중에* 얘기하세, 모트."{#morte_s735_r68438}' if morteLogic.r68438_condition():
            # a1473 # r68438
            $ morteLogic.r68438_action()
            jump morte_dispose

        '"그럼 그것이 자네가 날 위해 해줘야 할 일지지도 모르겠네. 이 일에 대해서는 *나중에* 얘기하세, 모트."{#morte_s735_r68439}' if morteLogic.r68439_condition():
            # a1474 # r68439
            $ morteLogic.r68439_action()
            jump morte_dispose

        '"그럼 그것이 자네가 날 위해 해줘야 할 일지지도 모르겠네. 이 일에 대해서는 *나중에* 얘기하세, 모트."{#morte_s735_r68446}' if morteLogic.r68446_condition():
            # a1475 # r68446
            $ morteLogic.r68446_action()
            jump morte_dispose

        '"그럼 그것이 자네가 날 위해 해줘야 할 일지지도 모르겠네. 이 일에 대해서는 *나중에* 얘기하세, 모트."{#morte_s735_r68503}' if morteLogic.r68503_condition():
            # a1476 # r68503
            jump trans_s142  # EXTERN


# s736 # say68174
label morte_s736: # from 735.0
    nr '당신은 다시 힘을 가지고 손을 내민다…{#morte_s736_}'

    menu:
        '안나를 소생시킨다.{#morte_s736_r68175}' if morteLogic.r68175_condition():
            # a1477 # r68175
            $ morteLogic.r68175_action()
            jump morte_dispose

        '다콘을 소생시킨다.{#morte_s736_r68179}' if morteLogic.r68179_condition():
            # a1478 # r68179
            $ morteLogic.r68179_action()
            jump morte_dispose

        '훨-후럼-그레이스를 소생시킨다.{#morte_s736_r68180}' if morteLogic.r68180_condition():
            # a1479 # r68180
            $ morteLogic.r68180_action()
            jump morte_dispose

        '노돔을 소생시킨다.{#morte_s736_r68181}' if morteLogic.r68181_condition():
            # a1480 # r68181
            $ morteLogic.r68181_action()
            jump morte_dispose

        '이그너스를 소생시킨다.{#morte_s736_r68182}' if morteLogic.r68182_condition():
            # a1481 # r68182
            $ morteLogic.r68182_action()
            jump morte_dispose

        '베일로를 소생시킨다.{#morte_s736_r68183}' if morteLogic.r68183_condition():
            # a1482 # r68183
            $ morteLogic.r68183_action()
            jump morte_dispose


# s737 # say68310
label morte_s737: # - # IF WEIGHT #2 ~  Global("Fortress_Morte","GLOBAL",3) GlobalGT("Absorb","GLOBAL",0)
    nr '당신이 힘을 가지고 손을 내밀자. 모트가 갑자기 공중으로 떠오른다. 에… 기다려, 대장. 날 부활시킬 필요는 없어. 난 그냥 누워서 두 사람 얘기를 듣고 있었을 뿐이라고."{#morte_s737_}'

    menu:
        '자네는 죽은 척 하고 있었군.{#morte_s737_r68311}':
            # a1483 # r68311
            jump morte_s738


# s738 # say68312
label morte_s738: # from 737.0
    nr '"그래, 내 말은 난 이미 죽었다는 거야… 어, 대장, *목소리*가 어떻게 된 거야?"{#morte_s738_}'

    menu:
        '나는… 이제 다른 존재네. 남은 시간이 별로 없네, 곧 운명과 시간이 날 따라잡을 테니. 모트, 원한다면 자네를 시길로 돌려보내 주겠네.{#morte_s738_r68313}':
            # a1484 # r68313
            jump morte_s739


# s739 # say68314
label morte_s739: # from 738.0
    nr '"뭐… 날 돌려보내? 대장은 어떡하고? 이봐, 대장, 나는 *겁쟁이*일지는 모르지만, 그래도 대장을 여기 두고 떠날 순 없어."{#morte_s739_}'

    menu:
        '나와 내 죽음이 분리되어 있는 동안 헤아릴 수조차 없는 범죄가 저질러졌네. 이러한 범죄들에는… 대가가 따르네. 자네는 내가 곧 가게 될 곳에 갈 수가 없네.{#morte_s739_r68315}':
            # a1485 # r68315
            jump morte_s740


# s740 # say68316
label morte_s740: # from 739.0
    nr '"그래도 난 대장과 함께 갈 수 있어, 대장이 원한다면 - 내 말은 우린 이보다 더 지독 -{#morte_s740_}'

    menu:
        '이번은 아니네. 아마 언젠가 자네와 내가 다른 차원에서 다시 만날지도 모르네. 하지만 지금은 안 되네.{#morte_s740_r68317}':
            # a1486 # r68317
            jump morte_s741


# s741 # say68318
label morte_s741: # from 740.0
    nr '모트는 당신을 쳐다본다, 그리고 한숨을 쉰다. "신파조로 나가긴 싫지만, 그 동안 즐거웠어, 대장."~ [MRT109]{#morte_s741_}'

    menu:
        '잘 가게, 모트.{#morte_s741_r68319}' if morteLogic.r68319_condition():
            # a1487 # r68319
            $ morteLogic.r68319_action()
            jump morte_dispose

        '잘 가게, 모트.{#morte_s741_r68320}' if morteLogic.r68320_condition():
            # a1488 # r68320
            $ morteLogic.r68320_action()
            jump morte_dispose

        '잘 가게, 모트.{#morte_s741_r68321}' if morteLogic.r68321_condition():
            # a1489 # r68321
            $ morteLogic.r68321_action()
            jump morte_dispose

        '잘 가게, 모트.{#morte_s741_r68322}' if morteLogic.r68322_condition():
            # a1490 # r68322
            $ morteLogic.r68322_action()
            jump morte_dispose

        '잘 가게, 모트.{#morte_s741_r68323}' if morteLogic.r68323_condition():
            # a1491 # r68323
            $ morteLogic.r68323_action()
            jump morte_dispose

        '잘 가게, 모트.{#morte_s741_r68324}' if morteLogic.r68324_condition():
            # a1492 # r68324
            $ morteLogic.r68324_action()
            jump morte_dispose

        '잘 가게, 모트.{#morte_s741_r68325}' if morteLogic.r68325_condition():
            # a1493 # r68325
            $ morteLogic.r68325_action()
            jump morte_dispose

        '잘 가게, 모트.{#morte_s741_r68490}' if morteLogic.r68490_condition():
            # a1494 # r68490
            $ morteLogic.r68490_action()
            jump morte_dispose

        '잘 가게, 모트.{#morte_s741_r68491}' if morteLogic.r68491_condition():
            # a1495 # r68491
            $ morteLogic.r68491_action()
            jump morte_dispose

        '잘 가게, 모트.{#morte_s741_r68492}' if morteLogic.r68492_condition():
            # a1496 # r68492
            $ morteLogic.r68492_action()
            jump morte_dispose


# s742 # say68408
label morte_s742: # - # IF WEIGHT #3 ~  Global("Fortress_Morte","GLOBAL",4)
    nr '모트는 당신을 쳐다본다, 그리고 한숨을 쉰다. "신파조로 나가긴 싫지만, 그 동안 즐거웠어, 대장."~ [MRT109]{#morte_s742_}'

    menu:
        '"그럼 해치우세…"{#morte_s742_r68409}':
            # a1497 # r68409
            jump morte_dispose
