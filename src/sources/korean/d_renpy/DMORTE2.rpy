init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.morte2_logic import Morte2Logic
    morte2Logic = Morte2Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DMORTE2.DLG
# ###


# s0 # say41144
label morte2_s0: # - # IF WEIGHT #0 ~  Global("Mortuary_Walkthrough","GLOBAL",1) InParty("Morte")
    nr '"잠깐… 충고를 하겠어, 대장. 여기서부터는 조용히 움직이자고. 필요 이상으로 시체들을 훼손할 필요는 없어… 특히 여자 시체들은. 또한 그들을 „죽이면“ 관리자들을 여기로 불러오는 결과를 야기할 수도 있어."{#morte2_s0_1}'

    menu:
        '"자네가 전에 얘기한 것 같지는 않네… 이 관리자들은 누군가?"{#morte2_s0_r41145}':
            # a0 # r41145
            $ morte2Logic.r41145_action()
            jump morte2_s1

        '"이 곳에 있는 시체들… 그것들은 다 어디서 왔나?"{#morte2_s0_r41146}':
            # a1 # r41146
            $ morte2Logic.r41146_action()
            jump morte2_s3

        '"왜 자네는 여자 시체들에 대해서는 신경을 쓰나?"{#morte2_s0_r41147}':
            # a2 # r41147
            $ morte2Logic.r41147_action()
            jump morte2_s4

        '"알았네… 기억하도록 노력하겠네."{#morte2_s0_r41148}':
            # a3 # r41148
            $ morte2Logic.r41148_action()
            jump morte2_s8


# s1 # say41149
label morte2_s1: # from 0.0 3.0 7.0
    nr '"그들은 자신들을 „더스트맨“이라고 부르고 있어. 그들을 알아보는 건 쉽지. 예외없이 검은 법복을 입고 있는데다가 꼭 사후경직을 일으킨 것 같은 얼굴들을 하고 있으니까. 그들은 악귀같은 죽음 숭배자들이야. 그들은 모두 다 죽어야 한다고 믿고 있어… 그것도 빠르면 빠를수록 좋다고."{#morte2_s1_1}'

    menu:
        '"난 헷갈리네… 내가 탈출하는 것에 대해 더스트맨들이 왜 신경을 쓰지?"{#morte2_s1_r41150}':
            # a4 # r41150
            jump morte2_s2


# s2 # say41151
label morte2_s2: # from 1.0
    nr '"내가 말할 때 뭘 하고 있었어?! 더스트맨은 모두가 다 죽어야 하며, 그것도 빠르면 빠를수록 좋다고 믿고 있다고 내가 이미 말했잖아. 대장이 보기엔 지금까지 우리가 본 시체들이 죽어서 더 행복해진 것 같아?"{#morte2_s2_1}'

    menu:
        '"내가 이 곳에서 본 시체들… 그것들은 다 어디서 온 건가?"{#morte2_s2_r41152}':
            # a5 # r41152
            jump morte2_s3

        '"전에 자네는 내게 *여자*시체는 죽이지 말라고 했었네. 그 이유는 뭔가?"{#morte2_s2_r41153}':
            # a6 # r41153
            jump morte2_s4

        '"알았네… 기억하도록 노력하겠네."{#morte2_s2_r41154}':
            # a7 # r41154
            jump morte2_s8


# s3 # say41155
label morte2_s3: # from 0.1 2.0 7.1
    nr '"다원 우주에서는 매일 누군가 반드시 죽어, 대장. 이 비틀거리는 얼간이들은 이 곳의 관리자들에게 사후의 시체에 대한 권리를 판 한심한 작자들의 잔해라고."{#morte2_s3_1}'

    menu:
        '"가르쳐 주게… 이 관리자들이란 *누구*인가?"{#morte2_s3_r41156}':
            # a8 # r41156
            jump morte2_s1

        '"전에 자네는 내게 *여자*시체는 죽이지 말라고 했었네. 그 이유는 뭔가?"{#morte2_s3_r41157}':
            # a9 # r41157
            jump morte2_s4

        '"알았네… 기억하도록 노력하겠네."{#morte2_s3_r41158}':
            # a10 # r41158
            jump morte2_s8


# s4 # say41159
label morte2_s4: # from 0.2 2.1 3.1
    nr '"뭐- *진담*이야? 이봐, 대장, 이 죽은 아가씨들은 우리들처럼 산전수전 다 겪은 친구들에게 주어진 마지막 기회라고. 우리는 *기사도* 정신을 발휘해야 해… 열쇠를 찾으려고 그녀들을 칼로 베거나 사지를 절단하는 짓 따위는 해서는 안돼."{#morte2_s4_1}'

    menu:
        '"마지막 기회? 대체 무슨 얘긴가?"{#morte2_s4_r41160}':
            # a11 # r41160
            jump morte2_s5


# s5 # say41161
label morte2_s5: # from 4.0
    nr '"대장, 그들은 죽었어, 그리고 우리들도 죽었어… 내가 무슨 말을 하려는지 알겠어? 그래?"{#morte2_s5_1}'

    menu:
        '"아니… 그렇지 않네…"{#morte2_s5_r41162}':
            # a12 # r41162
            jump morte2_s6

        '"진담은 아니겠지."{#morte2_s5_r41163}' if morte2Logic.r41163_condition():
            # a13 # r41163
            jump morte2_s6


# s6 # say41164
label morte2_s6: # from 5.0 5.1
    nr '"대장, 우린 이미 이 절뚝거리는 아가씨들과 대화를 시작할 화제거리도 가지고 있다고. 우리들은 *모두* 적어도 한 번씩은 죽어 봤어. 그러니 우린 공통의 화제가 있는 셈이지. 그들은 우리처럼 죽은 경험이 있는 사내들을 환영할 거라고."{#morte2_s6_1}'

    menu:
        '기다리게… 전에 자네는 내가 죽지 않았다고 하지 않았었나?"{#morte2_s6_r41165}':
            # a14 # r41165
            jump morte2_s7


# s7 # say41166
label morte2_s7: # from 6.0
    nr '"그래… 좋아. *대장*은 죽지 않았을지도 모르지만 *난* 죽었어. 그리고 나라면 여기 있는 체격 좋은 멋진 시체 아가씨들과 기꺼이 관을 함께 쓰겠어." 모트는 기대에 부푼 듯 이빨을 딱딱거리기 시작한다. "물론 그러기 위해서는 우선 관리인들이 그들을 포기해야 하는데 그럴 가능성은 희박하지…"{#morte2_s7_1}'

    menu:
        '"이 관리자들이 누군지 다시 얘기해주겠나?"{#morte2_s7_r41167}':
            # a15 # r41167
            jump morte2_s1

        '"하지만 이 시체들은 다 어디서 왔나?"{#morte2_s7_r41168}':
            # a16 # r41168
            jump morte2_s3

        '"알았네… 기억하도록 노력하겠네."{#morte2_s7_r41169}':
            # a17 # r41169
            jump morte2_s8


# s8 # say41170
label morte2_s8: # from 0.3 2.2 3.2 7.2 12.7 13.2 14.2 15.2 16.2 17.1 18.1 19.2 20.1 21.1 22.1
    nr '"이봐, 대장. 대장은 죽음과 키스를 한 탓에 아직도 정신이 좀 오락가락한 것 같아. 그러니 내가 두 가지 충고를 하겠어. 첫째, 질문할 게 있으면 내게 *물어.* 알겠어?"   ^NNOTE: <SPEAKTO>^-{#morte2_s8_1}'

    menu:
        '"알겠네… 질문할 것이 있으면 자네에게 물어보겠네."{#morte2_s8_r41171}':
            # a18 # r41171
            jump morte2_s9


# s9 # say41172
label morte2_s9: # from 8.0
    nr '"둘째, 대장이 겉보기의 *반*만큼이라도 건망증이 심하다면, 뭐든지 기록을 하는 습관을 기르라고. 조금이라도 중요할 것 같은 얘기를 듣게 되면 잊지 않도록 즉각 기록을 해."{#morte2_s9_1}'

    menu:
        '"만약 내가 지니고 있어야 할 일지를 가지고 있다면 그렇게 하겠네."{#morte2_s9_r41173}':
            # a19 # r41173
            jump morte2_s10


# s10 # say41174
label morte2_s10: # from 9.0
    nr '"그럼 새 일지를 쓰기 시작하라고. 그 따윈 별 문제도 아냐. 여긴 대장이 평생 쓰고 남을 정도의 양피지와 잉크가 있으니까."{#morte2_s10_1}'

    menu:
        '"흠… 좋네. 손해볼 건 없겠지… 그럼 새 일지를 만들도록 하지."{#morte2_s10_r41175}':
            # a20 # r41175
            jump morte2_s11


# s11 # say41176
label morte2_s11: # from 10.0
    nr '"그것을 써서 대장의 여정을 파악하라고. 만약 대장이 중요한 사안들, 예들 들어 대장이 누구인가.,.. 또는 더 중요하게 *내*가 누구인가에 대해 가물가물하게 되면 일지를 읽어 기억을 상기시키라고. 알겠어?"  ^NNOTE: 일지를 보려면 퀵 메뉴에 있는 일지 버튼을 누른다. 일지는 게임 진행 동안 자동으로 갱신된다.^-{#morte2_s11_1}'

    menu:
        '"좋아… 알았네. 가세."{#morte2_s11_r41177}':
            # a21 # r41177
            $ morte2Logic.j39516_s11_r41177_action()
            jump morte2_dispose


# s12 # say41178
label morte2_s12: # from 13.1 14.1 15.1 16.1 17.0 18.0 19.1 20.0 21.0 22.0 23.1 24.2 25.1 26.0 # IF WEIGHT #1 ~  !Global("Mortuary_Walkthrough","GLOBAL",0) !Global("Mortuary_Walkthrough","GLOBAL",1) !Global("Mortuary_Walkthrough","GLOBAL",3) InParty("Morte")
    nr '"대체 뭘 그렇게 골똘히 생각하는 거야, 대장?"{#morte2_s12_1}'

    menu:
        '"내 등에 새겨진 글을 다시 읽어 주겠나?"{#morte2_s12_r41179}':
            # a22 # r41179
            jump morte2_s13

        '"여기가 어떤 곳인지 다시 얘기해주겠나?"{#morte2_s12_r41180}':
            # a23 # r41180
            jump morte2_s18

        '"이 곳은 거대하군… 누가 관리하지?"{#morte2_s12_r41181}' if morte2Logic.r41181_condition():
            # a24 # r41181
            jump morte2_s19

        '"이 곳의 관리인이 누군지 다시 말해주겠나?"{#morte2_s12_r41182}' if morte2Logic.r41182_condition():
            # a25 # r41182
            jump morte2_s19

        '"이 곳에 있는 시체들… 그것들은 다 어디서 왔나?"{#morte2_s12_r41183}':
            # a26 # r41183
            jump morte2_s22

        '"전에 자네는 내게 *여자*시체는 죽이지 말라고 했었네. 그 이유는 뭔가?"{#morte2_s12_r41184}' if morte2Logic.r41184_condition():
            # a27 # r41184
            jump morte2_s23

        '"이 붕대들은 어떻게 사용하나?"{#morte2_s12_r41185}' if morte2Logic.r41185_condition():
            # a28 # r41185
            jump morte2_s21

        '"지금은 아무런 용건도 없네, 모트. 난 자네가 아직도 나와 있는지 확인했을 뿐이네."{#morte2_s12_r41186}' if morte2Logic.r41186_condition():
            # a29 # r41186
            jump morte2_s8

        '"지금은 아무런 용건도 없네, 모트. 난 자네가 아직도 나와 있는지 확인했을 뿐이네."{#morte2_s12_r41187}' if morte2Logic.r41187_condition():
            # a30 # r41187
            jump morte2_dispose


# s13 # say41188
label morte2_s13: # from 12.0
    nr '"이봐, 대장. 설마 벌써 까먹은 건 아니겠지?"{#morte2_s13_1}'

    menu:
        '"난 단지 기억을 환기시키려 했을 뿐이네."{#morte2_s13_r41189}':
            # a31 # r41189
            jump morte2_s14

        '"그럼 관두게. 그 밖에도 다른 질문들이 있네…"{#morte2_s13_r41190}':
            # a32 # r41190
            jump morte2_s12

        '"그럼 관두게. 가세."{#morte2_s13_r41191}' if morte2Logic.r41191_condition():
            # a33 # r41191
            jump morte2_s8

        '"그럼 관두게. 가세."{#morte2_s13_r41192}' if morte2Logic.r41192_condition():
            # a34 # r41192
            jump morte2_dispose


# s14 # say41193
label morte2_s14: # from 13.0
    nr '"그 소리를 많이 듣게 될 것 같군." 모트는 헛기침을 한다. "어디 보자…"  „네가 스틱스 강물을 몇 통이나 마신 듯한 기분인 것은 알지만, 정신을 차리고 집중해야 한다. 네 소지품들 중에는 이 중대사에 대해서 일부나마 밝혀 줄 일지가 한 권 있을 것이다. 만약 파로드가 이미 죽지 않았다면 그가 나머지 부분에 대해 설명해줄 수 있을 것이다.“{#morte2_s14_1}'

    menu:
        '"파로드… 흠… 계속하게."{#morte2_s14_r41194}':
            # a35 # r41194
            jump morte2_s15

        '"관두게. 다른 질문이 있네…"{#morte2_s14_r41195}':
            # a36 # r41195
            jump morte2_s12

        '"관두게. 이미 충분히 들었네. 그만 가세."{#morte2_s14_r41196}' if morte2Logic.r41196_condition():
            # a37 # r41196
            jump morte2_s8

        '"관두게. 이미 충분히 들었네. 그만 가세."{#morte2_s14_r41197}' if morte2Logic.r41197_condition():
            # a38 # r41197
            jump morte2_dispose


# s15 # say41198
label morte2_s15: # from 14.0
    nr '"그래, 그래, 기다리라고." 모트는 잠시 멈춘다. "좋아, 이게 마지막이야…"  „절대로 일지를 잃어서는 안 된다, 아니면 우린 다시 스틱스에 빠지는 신세가 될 테니까. 알겠나? 그리고 내 말을 믿어라 - 뭘 하든 간에 네가 누구이며, 어떤 일이 네게 일어나고 있으며, 어디서 왔는지에 대해 말해서는 안 된다. 그렇지 않으면 화장터로 직행하게 될 테니. 내가 말하는 대로 해라: 일지를 읽은 후 파로드를 찾아라.“{#morte2_s15_1}'

    menu:
        '"그리고 내가 깨어났을 때 내게 일지가 없었는가?"{#morte2_s15_r41199}':
            # a39 # r41199
            jump morte2_s16

        '"관두시오. 다른 질문이 있소…"{#morte2_s15_r41200}':
            # a40 # r41200
            jump morte2_s12

        '"관두게. 이미 충분히 들었네. 그만 가세."{#morte2_s15_r41201}' if morte2Logic.r41201_condition():
            # a41 # r41201
            jump morte2_s8

        '"관두게. 이미 충분히 들었네. 그만 가세."{#morte2_s15_r41203}' if morte2Logic.r41203_condition():
            # a42 # r41203
            jump morte2_dispose


# s16 # say41202
label morte2_s16: # from 15.0
    nr '"아니… 여기 왔을 때 대장은 깨끗하게 털린 상태였어. 이미 말했듯이 대장 몸에는 충분하고도 남을 정도의 일지가 적혀 있다고."{#morte2_s16_1}'

    menu:
        '"파로드란 사람을 정말 모르나?"{#morte2_s16_r41204}':
            # a43 # r41204
            jump morte2_s17

        '"옳은 말이네. 그 밖에도 물어보고 싶은 것들이 있네…"{#morte2_s16_r41205}':
            # a44 # r41205
            jump morte2_s12

        '"그럼 좋네. 가세."{#morte2_s16_r41206}' if morte2Logic.r41206_condition():
            # a45 # r41206
            jump morte2_s8

        '"그럼 좋네. 가세."{#morte2_s16_r41207}' if morte2Logic.r41207_condition():
            # a46 # r41207
            jump morte2_dispose


# s17 # say41208
label morte2_s17: # from 16.0
    nr '"아니. 그래도 이 파로드란 자가 어디 있는지 아는 사람은 있을 거야… 물론 그건 우리가 이 곳에서 탈출한 후의 얘기지만."{#morte2_s17_1}'

    menu:
        '"우리가 가기 전에 다른 질문들을 좀 하고 싶네…"{#morte2_s17_r41209}':
            # a47 # r41209
            jump morte2_s12

        '"그럼 좋네. 가세."{#morte2_s17_r41210}' if morte2Logic.r41210_condition():
            # a48 # r41210
            jump morte2_s8

        '"그럼 좋네. 가세."{#morte2_s17_r41211}' if morte2Logic.r41211_condition():
            # a49 # r41211
            jump morte2_dispose


# s18 # say41212
label morte2_s18: # from 12.1
    nr '"그것은 „시체안치소“라고 불리지… 임신한 거미만큼이나 매력적인 모양새의 커다란 검은 건물이라고."{#morte2_s18_1}'

    menu:
        '"알았네. 자네에게 물어볼 것들이 더 있네…"{#morte2_s18_r41213}':
            # a50 # r41213
            jump morte2_s12

        '"내가 알고 싶었던 건 그게 전부네. 고맙네."{#morte2_s18_r41214}' if morte2Logic.r41214_condition():
            # a51 # r41214
            jump morte2_s8

        '"내가 알고 싶었던 건 그게 전부네. 고맙네."{#morte2_s18_r41215}' if morte2Logic.r41215_condition():
            # a52 # r41215
            jump morte2_dispose


# s19 # say41216
label morte2_s19: # from 12.2 12.3
    nr '"그들은 자신들을 „더스트맨“이라고 부르고 있어. 그들을 알아보는 건 쉽지. 예외없이 검은 법복을 입고 있는데다가 꼭 사후경직을 일으킨 것 같은 얼굴들을 하고 있으니까. 그들은 악귀같은 죽음 숭배자들이야. 그들은 모두 다 죽어야 한다고 믿고 있어… 그것도 빠르면 빠를수록 좋다고."{#morte2_s19_1}'

    menu:
        '"난 헷갈리네… 내가 탈출하는 것에 대해 더스트맨들이 왜 신경을 쓰지?"{#morte2_s19_r41217}':
            # a53 # r41217
            jump morte2_s20

        '"알았네. 자네에게 물어볼 것들이 더 있네…"{#morte2_s19_r41218}':
            # a54 # r41218
            jump morte2_s12

        '"알았네. 그렇다면 조심하겠네."{#morte2_s19_r41219}' if morte2Logic.r41219_condition():
            # a55 # r41219
            jump morte2_s8

        '"알았네. 그렇다면 조심하겠네."{#morte2_s19_r41220}' if morte2Logic.r41220_condition():
            # a56 # r41220
            jump morte2_dispose


# s20 # say41221
label morte2_s20: # from 19.0
    nr '"내가 말할 때 뭘 하고 있었어?! 더스트맨은 모두가 다 죽어야 하며, 그것도 빠르면 빠를수록 좋다고 믿고 있다고 내가 이미 말했잖아. 대장이 보기엔 지금까지 우리가 본 시체들이 죽어서 더 행복해진 것 같아?"{#morte2_s20_1}'

    menu:
        '"알았네. 자네에게 물어볼 것들이 더 있네…"{#morte2_s20_r41222}':
            # a57 # r41222
            jump morte2_s12

        '"알았네… 기억하도록 노력하겠네."{#morte2_s20_r41223}' if morte2Logic.r41223_condition():
            # a58 # r41223
            jump morte2_s8

        '"알았네… 기억하도록 노력하겠네."{#morte2_s20_r41224}' if morte2Logic.r41224_condition():
            # a59 # r41224
            jump morte2_dispose


# s21 # say41225
label morte2_s21: # from 12.6
    nr '"어… 그것들을 쓰라고. 지혈 등의 용도로 말이야."  ^NNOTE: <BANDAGES2>^-{#morte2_s21_1}'

    menu:
        '"알았네. 자네에게 물어볼 것들이 더 있네…"{#morte2_s21_r41226}':
            # a60 # r41226
            jump morte2_s12

        '"고맙네. 내가 할 수 있을 것 같네."{#morte2_s21_r41227}' if morte2Logic.r41227_condition():
            # a61 # r41227
            jump morte2_s8

        '"고맙네. 내가 할 수 있을 것 같네."{#morte2_s21_r41228}' if morte2Logic.r41228_condition():
            # a62 # r41228
            jump morte2_dispose


# s22 # say41229
label morte2_s22: # from 12.4
    nr '"다원 우주에서는 매일 누군가 반드시 죽어, 대장. 이 얼간이들은 이 곳의 관리자들에게 사후의 시체에 대한 권리를 판 한심한 작자들의 잔해라고."{#morte2_s22_1}'

    menu:
        '"알았네. 자네에게 물어볼 것들이 더 있네…"{#morte2_s22_r41230}':
            # a63 # r41230
            jump morte2_s12

        '"알았네… 기억하도록 노력하겠네."{#morte2_s22_r41231}' if morte2Logic.r41231_condition():
            # a64 # r41231
            jump morte2_s8

        '"알았네… 기억하도록 노력하겠네."{#morte2_s22_r41232}' if morte2Logic.r41232_condition():
            # a65 # r41232
            jump morte2_dispose


# s23 # say41233
label morte2_s23: # from 12.5
    nr '"뭐- *진담*이야? 이봐, 대장, 이 죽은 아가씨들은 우리들처럼 산전수전 다 겪은 친구들에게 주어진 마지막 기회라고. 우리는 *기사도* 정신을 발휘해야 해… 열쇠를 찾으려고 그녀들을 칼로 베거나 사지를 절단하는 짓 따위는 해서는 안돼."{#morte2_s23_1}'

    menu:
        '"마지막 기회? 대체 무슨 얘긴가?"{#morte2_s23_r41234}':
            # a66 # r41234
            jump morte2_s24

        '"관두게. 자네에게 할 다른 질문들이 있네."{#morte2_s23_r41235}':
            # a67 # r41235
            jump morte2_s12

        '"알았네… 기억하도록 노력하겠네."{#morte2_s23_r41236}':
            # a68 # r41236
            jump morte2_dispose


# s24 # say41237
label morte2_s24: # from 23.0
    nr '"대장, 그들은 죽었어, 그리고 우리들도 죽었어… 내가 무슨 말을 하려는지 알겠어? 그래?"{#morte2_s24_1}'

    menu:
        '"아니… 그렇지 않네…"{#morte2_s24_r41238}':
            # a69 # r41238
            jump morte2_s25

        '"진담은 아니겠지."{#morte2_s24_r41239}' if morte2Logic.r41239_condition():
            # a70 # r41239
            jump morte2_s25

        '"관두게. 자네에게 할 다른 질문들이 있네."{#morte2_s24_r41240}':
            # a71 # r41240
            jump morte2_s12

        '"자네 얘기는 이미 충분히 들었네. 가세."{#morte2_s24_r41241}':
            # a72 # r41241
            jump morte2_dispose


# s25 # say41242
label morte2_s25: # from 24.0 24.1
    nr '"대장, 우린 이미 이 절뚝거리는 아가씨들과 대화를 시작할 화제거리도 가지고 있다고. 우리들은 *모두* 적어도 한 번씩은 죽어 봤어. 그러니 우린 공통의 화제가 있는 셈이지. 그들은 우리처럼 죽은 경험이 있는 사내들을 환영할 거라고."{#morte2_s25_1}'

    menu:
        '기다리게… 전에 자네는 내가 죽지 않았다고 하지 않았었나?"{#morte2_s25_r41243}':
            # a73 # r41243
            jump morte2_s26

        '"관두게. 자네에게 할 다른 질문들이 있네."{#morte2_s25_r41244}':
            # a74 # r41244
            jump morte2_s12

        '"자네 얘기는 이미 충분히 들었네. 가세."{#morte2_s25_r41245}':
            # a75 # r41245
            jump morte2_dispose


# s26 # say41246
label morte2_s26: # from 25.0
    nr '"그래… 좋아. *대장*은 죽지 않았을지도 모르지만 *난* 죽었어. 그리고 나라면 여기 있는 체격 좋은 멋진 시체 아가씨들과 기꺼이 관을 함께 쓰겠어." 모트는 기대에 부푼 듯 이빨을 딱딱거리기 시작한다. "물론 그러기 위해서는 우선 관리인들이 그들을 포기해야 하는데 그럴 가능성은 희박하지…"{#morte2_s26_1}'

    menu:
        '"자네에게 할 다른 질문들이 있네, 모트…"{#morte2_s26_r41247}':
            # a76 # r41247
            jump morte2_s12

        '"자네 얘기는 이미 충분히 들었네. 가세."{#morte2_s26_r41248}':
            # a77 # r41248
            jump morte2_dispose


# s27 # say41250
label morte2_s27: # - # IF WEIGHT #3 /* Triggers after states #: 31 even though they appear after this state */ ~  !InParty("Morte")
    nr '"난 대장이 돌아올 줄 알고 있었어! 드디어 대장에겐 내가 필요하다는 사실을 깨달은 거야?"{#morte2_s27_1}'

    menu:
        '"그래… 가세."{#morte2_s27_r41251}':
            # a78 # r41251
            $ morte2Logic.r41251_action()
            jump morte2_dispose

        '"지금 당장은 안 되네, 모트."{#morte2_s27_r41252}':
            # a79 # r41252
            jump morte2_s28


# s28 # say41253
label morte2_s28: # from 27.1
    nr '"흠. 글쎄, 내가 여기서 얼마나 더 기다릴 수 있을 지는 나도 모르겠어. 그러니 난 대장에게 마지막으로 단 한 번의 기회를 주겠어. 정말 내 현명한 충고와 기민한 재치를 필요로 하지 않는 거야?"{#morte2_s28_1}'

    menu:
        '"모트, 자네에게 그 둘 다 없네."{#morte2_s28_r41254}':
            # a80 # r41254
            jump morte2_s29

        '"좋아, 난 마음을 바꿨네. 자, 가세."{#morte2_s28_r41255}':
            # a81 # r41255
            $ morte2Logic.r41255_action()
            jump morte2_dispose

        '"지금 당장은 곤란하네, 모트. 아마 나중에."{#morte2_s28_r41256}':
            # a82 # r41256
            jump morte2_s29


# s29 # say41257
label morte2_s29: # from 28.0 28.2
    nr '"일부러 내 감정을 상하게 하려는 거야, 대장? 내가 무슨 말이라도 잘못했어? 아니면 내게 팔이 없어서야? 뭐야?"{#morte2_s29_1}'

    menu:
        '"좋아, 난 마음을 바꿨네. 자, 가세."{#morte2_s29_r41258}':
            # a83 # r41258
            $ morte2Logic.r41258_action()
            jump morte2_dispose

        '"그건 아니네. 하지만 지금 당장은 자네가 파티에 필요없네. 잘 있게, 모트."{#morte2_s29_r41259}':
            # a84 # r41259
            jump morte2_s30


# s30 # say41260
label morte2_s30: # from 29.1
    nr '"좋아, 하지만 난 여기서 영원히 기다리진 않을 거니까 생각이 바뀌면 당장 돌아오라고."{#morte2_s30_1}'

    menu:
        '"그러겠네. 잘 있게, 모트."{#morte2_s30_r41261}':
            # a85 # r41261
            jump morte2_dispose


# s31 # say41262
label morte2_s31: # - # IF WEIGHT #2 ~  Global("Mortuary_Walkthrough","GLOBAL",3) InParty("Morte")
    nr '"신들이시여! 그건 정말 골때리는 책이군!"{#morte2_s31_1}'

    menu:
        '"그건 뭔가?"{#morte2_s31_r41263}':
            # a86 # r41263
            $ morte2Logic.r41263_action()
            jump morte2_s32


# s32 # say41264
label morte2_s32: # from 31.0
    nr '"추측을 하자면 그 책은 이 곳에 실려오는 모든 불행한 작자들의 이름을 기록하는 책인 것 같아."{#morte2_s32_1}'

    menu:
        '"내 이름이 저 책에 있을 수도 있겠나?"{#morte2_s32_r41265}':
            # a87 # r41265
            jump morte2_s33


# s33 # say41266
label morte2_s33: # from 32.0
    nr '"어… 그럴 수도 있겠지. 알아보려면 저기 있는 저 떠다니는 더스티와 얘기를 해야 할 거야. 그게 좋은 생각인지는 모르겠지만."{#morte2_s33_1}'

    menu:
        '"내겐 답이 필요하네. 난 가서 그와 얘기를 하겠네."{#morte2_s33_r41267}':
            # a88 # r41267
            jump morte2_dispose
