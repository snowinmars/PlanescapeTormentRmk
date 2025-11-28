init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.morte1_logic import Morte1Logic
    morte1Logic = Morte1Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DMORTE1.DLG
# ###


# s0 # say39792
label morte1_s0: # - # IF WEIGHT #1 /* Triggers after states #: 26 even though they appear after this state */ ~  !InParty("Morte") Global("Morte","GLOBAL",0)
    nr '"이봐, 대장. 괜찮아? 시체흉내를 내고 있는 거야, 아니면 더스티들을 속이려는 거야? 난 대장이 정말로 죽은 줄 알았다고."~ [MRT001]{#morte1_s0_1}'

    menu:
        '"뭐…? 당신은 누구요?"{#morte1_s0_r39793}':
            # a0 # r39793
            $ morte1Logic.r39793_action()
            jump morte1_s1


# s1 # say39795
label morte1_s1: # from 0.0
    nr '"어… 내가 누구냐고? *당신*부터 먼저 대답하는 게 어때? 당신은 누구지?"{#morte1_s1_1}'

    menu:
        '"모르겠네… 기억을 할 수가 없어."{#morte1_s1_r39796}':
            # a1 # r39796
            jump morte1_s2

        '"내가 먼저 질문했네, 해골."{#morte1_s1_r39797}':
            # a2 # r39797
            jump morte1_s3


# s2 # say39798
label morte1_s2: # from 1.0 3.0 4.0
    nr '"자기 *이름*도 기억을 못해? 헤, 다음 번에 거리에 나가 밤을 보낼 때는 술 좀 작작 마시라고. 내 이름은 모트야. 나도 여기 갇혔어.{#morte1_s2_1}'

    menu:
        '"갇혀?"{#morte1_s2_r39799}':
            # a3 # r39799
            jump morte1_s5


# s3 # say39800
label morte1_s3: # from 1.1
    nr '"그래, 내가 *나중에* 물었어. 당신 이름은 뭐지?"{#morte1_s3_1}'

    menu:
        '"모르겠네… 기억을 할 수가 없어."{#morte1_s3_r39801}':
            # a4 # r39801
            jump morte1_s2

        '"자네부터 말하게, 해골. 이건 내가 자네에게 주는 마지막 기회네."{#morte1_s3_r39802}':
            # a5 # r39802
            jump morte1_s4


# s4 # say39803
label morte1_s4: # from 3.1
    nr '"정말 당신은 젖은 로프만큼이나 빡빡하군. 좋아, 좋아… 여기선 내가 참지… 나는 모트야. 당신은 누구지?"{#morte1_s4_1}'

    menu:
        '"모르겠네… 기억을 할 수가 없어."{#morte1_s4_r39804}':
            # a6 # r39804
            jump morte1_s2


# s5 # say39805
label morte1_s5: # from 2.0
    nr '"그래, 당신은 일어나 여길 돌아다닐 시간이 없었으니 내가 말해주지. 모든 문을 다 시험해봤지만 소용이 없었어. 이 방은 정조대만큼이나 단단히 잠겨 있어."{#morte1_s5_1}'

    menu:
        '"우린 어디에… 갇힌 건가? 이 곳은 대체 어딘가?"{#morte1_s5_r39806}':
            # a7 # r39806
            jump morte1_s6


# s6 # say39807
label morte1_s6: # from 5.0
    nr '"그것은 „시체안치소“라고 불리지… 임신한 거미만큼이나 매력적인 모양새의 커다란 검은 건물이라고."{#morte1_s6_1}'

    menu:
        '"„시체안치소?" 난… 죽었나?{#morte1_s6_r39808}':
            # a8 # r39808
            jump morte1_s7


# s7 # say39809
label morte1_s7: # from 6.0
    nr '"내 입장에서는 아니야. 하지만 당신 몸은 흉터투성이로군. 어떤 얼간이가 당신 몸에 나이프로 그림이라도 그린 모양이야. 놈이 당신을 끝장내려고 다시 올지도 모르니 그만큼 여기서 도망쳐야 할 이유가 는 셈이지."{#morte1_s7_1}'

    menu:
        '"흉터들? 얼마나 심한가?"{#morte1_s7_r39810}':
            # a9 # r39810
            jump morte1_s8


# s8 # say39811
label morte1_s8: # from 7.0
    nr '"글쎄… 가슴의 상처는 과히 심하지 않군… 하지만 등은…" 모트는 잠시 멈춘다. "대장 등에는 아예 문신 갤러리가 있군. 무슨 글이 적혀 있는 것 같은데…"{#morte1_s8_1}'

    menu:
        '"내 등의 문신들? 뭐라고 새겨져 있나?"{#morte1_s8_r39812}':
            # a10 # r39812
            jump morte1_s9


# s9 # say39813
label morte1_s9: # from 8.0
    nr '"헤! 당신 몸에는 지시 사항이 적혀 있군…" 모트는 헛기침을 한다. "어디 볼까…"  „네가 스틱스 강물을 몇 통이나 마신 듯한 기분인 것은 알지만, 정신을 차리고 집중해야 한다. 네 소지품들 중에는 이 중대사에 대해서 일부나마 밝혀 줄 일지가 한 권 있을 것이다. 만약 파로드가 이미 죽지 않았다면 그가 나머지 부분에 대해 설명해줄 수 있을 것이다.“{#morte1_s9_1}'

    menu:
        '"파로드…? 그 밖에 다른 얘기는?"{#morte1_s9_r39814}':
            # a11 # r39814
            jump morte1_s10


# s10 # say39815
label morte1_s10: # from 9.0
    nr '"그래, 조금 더 있어…" 모트는 잠시 멈춘다. "어디 보자…"  „절대로 일지를 잃어서는 안 된다, 아니면 우린 다시 스틱스에 빠지는 신세가 될 테니까. 알겠나? 그리고 내 말을 믿어라 - 뭘 하든 간에 네가 누구이며, 어떤 일이 네게 일어나고 있으며, 어디서 왔는지에 대해 말해서는 안 된다. 그렇지 않으면 화장터로 직행하게 될 테니. 내가 말하는 대로 해라: 일지를 읽은 후 파로드를 찾아라.“{#morte1_s10_1}'

    menu:
        '"등이 아픈 것도 무리는 아니군, 아예 소설 한 권이 통째로 쓰여져 있으니. 내가 가지고 있어야 할 일지 말인데… 내가 여기서 누워 있었을 때 내 곁에 없었나?"{#morte1_s10_r39816}':
            # a12 # r39816
            jump morte1_s11


# s11 # say39817
label morte1_s11: # from 10.0
    nr '"아니… 여기 왔을 때 대장은 깨끗하게 털린 상태였어. 게다가 대장 몸에는 충분하고도 남을 정도의 일지가 적혀 있는 것 같군."{#morte1_s11_1}'

    menu:
        '"파로드는? 자네는 그를 아나?"{#morte1_s11_r39818}':
            # a13 # r39818
            jump morte1_s12


# s12 # say39819
label morte1_s12: # from 11.0
    nr '"내가 아는 사람은 아냐. 하지만 난 별로 아는 사람이 없으니까. 그래도 이 파로드란 자가 어디 있는지 아는 사람은 있을 거야… 물론 그건 우리가 이 곳에서 탈출한 후의 얘기지만."{#morte1_s12_1}'

    menu:
        '"어떻게 하면 여기서 나갈 수가 있겠나?"{#morte1_s12_r39820}':
            # a14 # r39820
            jump morte1_s13


# s13 # say39821
label morte1_s13: # from 12.0
    nr '"모든 문이 다 잠겼으니 열쇠를 찾아야 해. 이 방 안을 활보하고 있는 시체들 중 하나가 가지고 있을 가능성이 높아."{#morte1_s13_1}'

    menu:
        '"걸어다니는 시체들?"{#morte1_s13_r39822}':
            # a15 # r39822
            jump morte1_s14


# s14 # say39823
label morte1_s14: # from 13.0
    nr '"그래, 시체안치소의 관리인들은 시체들을 싸구려 노동력으로 활용하고 있어. 이 시체들은 돌처럼 멍청하지만 별로 위험하지는 않아. 그리고 먼저 공격하지 않는 한 공격을 하진 않아."{#morte1_s14_1}'

    menu:
        '"다른 방법은 없나? 단지 열쇠 하나 때문에 그들을 죽이고 싶지는 않네."{#morte1_s14_r39824}':
            # a16 # r39824
            $ morte1Logic.r39824_action()
            jump morte1_s15

        '"그럼 나는 이러한 시체들 중 하나를 공격해서 열쇠를 빼앗아야 하나?"{#morte1_s14_r39825}':
            # a17 # r39825
            jump morte1_s16


# s15 # say39826
label morte1_s15: # from 14.0
    nr '"그러면 그들의 기분이 상할 거라고 생각하는 거야? 그들은 이미 죽었어. 만약 당신이 긍정적인 측면에서 생각하고 싶다면 이렇게 생각하라고. 만약 당신이 그들을 죽이면 그들은 관리인들이 소생시킬 때까지는 휴식을 취할 수 있다고 말이야."{#morte1_s15_1}'

    menu:
        '"좋네… 그들 중 하나를 쓰러트려 열쇠를 빼앗도록 하겠네."{#morte1_s15_r39827}':
            # a18 # r39827
            jump morte1_s16


# s16 # say39828
label morte1_s16: # from 14.1 15.0
    nr '"그러기 전에 먼저 무장부터 하라고. 이 근처의 선반에 수술칼이 하나 있을 거야."  ^NNOTE: 방안의 선반들을 뒤져 좀비를 공격할 무기를 찾아라. <SEARCH_WEAPON>^-{#morte1_s16_1}'

    menu:
        '"알았네. 찾아보도록 하지."{#morte1_s16_r39829}':
            # a19 # r39829
            jump morte1_s17


# s17 # say39830
label morte1_s17: # from 16.0
    nr '"마지막으로 한가지 더: 이 시체들은 거북이처럼 느리지만 놈들에게 한 대 맞으면 마치 공성용 망치와 키스하는 기분이 들거야. 불리해지면 튀라고. 당신은 달릴 수 있지만 놈들은 그럴 수가 없으니까. 회복할 동안 놈들과는 일정 거리를 유지하라고."  ^NNOTE: <도주> 만약 죽을 위험에 처하게 되면 달리기를 이용해 회복할 동안 좀비들로부터 일정 거리를 유지하라.^-{#morte1_s17_1}'

    menu:
        '"알았네. 충고를 해주어 고맙네."{#morte1_s17_r39831}':
            # a20 # r39831
            $ morte1Logic.r39831_action()
            jump morte1_dispose


# s18 # say39832
label morte1_s18: # - # IF WEIGHT #2 /* Triggers after states #: 26 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) !PartyHasItem("Scalpel") Global("ZM782_Dead_KAPUTZ","GLOBAL",0)
    nr '"이 근처의 선반에 수술칼이 하나 있을 거야. 나라면 이 주변의 시체들과 싸우기 전에 우선 그것부터 찾겠어."  ^NNOTE: 방안의 선반들을 뒤져 좀비를 공격할 무기를 찾아라. <SEARCH_WEAPON>^-{#morte1_s18_1}'

    menu:
        '"알았네… 계속 찾아보겠네."{#morte1_s18_r39833}':
            # a21 # r39833
            jump morte1_dispose


# s19 # say39834
label morte1_s19: # - # IF WEIGHT #3 /* Triggers after states #: 26 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) PartyHasItem("Scalpel") Global("ZM782_Dead_KAPUTZ","GLOBAL",0)
    nr '"좋아, 메스를 찾았군! 그럼 이제 가서 저 시체들을 처치하라고… 그리고 걱정하지마. 난 뒤에서 귀중한 전술적 조언을 해줄 테니까."{#morte1_s19_1}'

    menu:
        '"자네 *도움*이 필요하네, 모트."{#morte1_s19_r39835}':
            # a22 # r39835
            jump morte1_s20

        '"알았네."{#morte1_s19_r39836}':
            # a23 # r39836
            jump morte1_s23


# s20 # say39837
label morte1_s20: # from 19.0
    nr '"나는 물론 대장을 *도울* 거야. 좋은 충고는 얻기 힘든 거라고."{#morte1_s20_1}'

    menu:
        '"내 말뜻은 시체를 공격하는 걸 도와 달라는 거였네."{#morte1_s20_r39838}':
            # a24 # r39838
            jump morte1_s21

        '"좋네, 그럼."{#morte1_s20_r39839}':
            # a25 # r39839
            jump morte1_s23


# s21 # say39840
label morte1_s21: # from 20.0
    nr '"나? 나는 낭만주의자지 군인이 아니야. 난 방해만 될 거야."{#morte1_s21_1}'

    menu:
        '"내가 이 시체를 공격할 때 옆에서 도와주지 않으면, 자네는 이 메스의 그 다음 목표물이 될 걸세."{#morte1_s21_r39841}':
            # a26 # r39841
            jump morte1_s22

        '"좋네, 그럼."{#morte1_s21_r39842}':
            # a27 # r39842
            jump morte1_s23


# s22 # say39843
label morte1_s22: # from 21.0
    nr '"에… 좋아. 대장을 돕겠어."  주: 만약 당신이 모트가 당신의 공격에 협조하기를 바란다면, 시체를 공격할 때 두 사람 모두를 선택하면 된다. 그러면 모트도 공격에 참가할 것이다.{#morte1_s22_1}'

    menu:
        '"우리가 서로를 이해한다니 반갑군."{#morte1_s22_r39844}':
            # a28 # r39844
            jump morte1_s23


# s23 # say39845
label morte1_s23: # from 19.1 20.1 21.1 22.0
    nr '"그럼 이 시체들에게 두 번째 죽음이란 걸 가르쳐 줄 때로군…"  ^NNOTE: <ATTACKNOTE>^-{#morte1_s23_1}'

    menu:
        '"가세."{#morte1_s23_r39846}':
            # a29 # r39846
            jump morte1_dispose


# s24 # say39847
label morte1_s24: # - # IF WEIGHT #4 /* Triggers after states #: 26 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) !PartyHasItem("KeyPr") Global("ZM782_Dead_KAPUTZ","GLOBAL",1)
    nr '"좋아, 방금 처치한 놈이 바로 우리가 찾고 있던 시체인 것 같군. 이제 열쇠를 찾아야 해 . 그건 틀림없이 그의 몸 어딘가에 있을 거야. 일단 그걸 찾기만 하면 우린 이 곳과 작별이라고."  ^NNOTE: <DEADPILE>^-{#morte1_s24_1}'

    menu:
        '"알았네."{#morte1_s24_r39848}':
            # a30 # r39848
            jump morte1_dispose


# s25 # say39849
label morte1_s25: # - # IF WEIGHT #5 /* Triggers after states #: 26 even though they appear after this state */ ~  Global("Mortuary_Walkthrough","GLOBAL",0) PartyHasItem("KeyPr")
    nr '"좋아, 그게 바로 우리가 원하는 열쇠야. 그건 이 방의 문들 중 하나를 열 수 있을 거야."{#morte1_s25_1}'

    menu:
        '"그럼 열쇠를 가지고 문을 열어 보겠네."{#morte1_s25_r39850}':
            # a31 # r39850
            jump morte1_dispose


# s26 # say39851
label morte1_s26: # - # IF WEIGHT #0 ~  !InParty("Morte") GlobalGT("Morte","GLOBAL",0)
    nr '"난 대장이 돌아올 줄 알고 있었어! 드디어 대장에겐 내가 필요하다는 사실을 깨달은 거야?"~ [MRT516]{#morte1_s26_1}'

    menu:
        '"그래… 가세."{#morte1_s26_r39852}':
            # a32 # r39852
            $ morte1Logic.r39852_action()
            jump morte1_dispose

        '"지금 당장은 안 되네, 모트."{#morte1_s26_r39853}':
            # a33 # r39853
            jump morte1_s27


# s27 # say39854
label morte1_s27: # from 26.1
    nr '"흠. 글쎄, 내가 여기서 얼마나 더 기다릴 수 있을 지는 나도 모르겠어. 그러니 난 대장에게 마지막으로 단 한 번의 기회를 주겠어. 정말 내 현명한 충고와 기민한 재치를 필요로 하지 않는 거야?"{#morte1_s27_1}'

    menu:
        '"모트, 자네에게 그 둘 다 없네."{#morte1_s27_r39855}':
            # a34 # r39855
            jump morte1_s28

        '"좋아, 난 마음을 바꿨네. 자, 가세."{#morte1_s27_r39856}':
            # a35 # r39856
            $ morte1Logic.r39856_action()
            jump morte1_dispose

        '"지금 당장은 곤란하네, 모트. 아마 나중에."{#morte1_s27_r39857}':
            # a36 # r39857
            jump morte1_s28


# s28 # say39858
label morte1_s28: # from 27.0 27.2
    nr '"일부러 내 감정을 상하게 하려는 거야, 대장? 내가 무슨 말이라도 잘못했어? 아니면 내게 팔이 없어서야? 뭐야?"{#morte1_s28_1}'

    menu:
        '"좋아, 난 마음을 바꿨네. 자, 가세."{#morte1_s28_r39859}':
            # a37 # r39859
            $ morte1Logic.r39859_action()
            jump morte1_dispose

        '"그건 아니네. 하지만 지금 당장은 자네가 파티에 필요없네. 잘 있게, 모트."{#morte1_s28_r39860}':
            # a38 # r39860
            jump morte1_s29


# s29 # say39861
label morte1_s29: # from 28.1
    nr '"좋아, 하지만 난 여기서 영원히 기다리진 않을 거니까 생각이 바뀌면 당장 돌아오라고."{#morte1_s29_1}'

    menu:
        '"그러겠네. 잘 있게, 모트."{#morte1_s29_r39862}':
            # a39 # r39862
            jump morte1_dispose


# s30 # say39863
label morte1_s30: # - # IF WEIGHT #6 ~  Global("Mortuary_Walkthrough","GLOBAL",1)
    nr '"대체 뭘 그렇게 골똘히 생각하는 거야, 대장?"~ [MRT515]{#morte1_s30_1}'

    menu:
        '"지금은 아무런 용건도 없네, 모트. 난 자네가 아직도 나와 있는지 확인했을 뿐이네."{#morte1_s30_r39864}':
            # a40 # r39864
            jump morte1_dispose


# s31 # say42298
label morte1_s31: # externs zm825_s3 zm825_s0 zm569_s3 zm569_s0
    nr '"어, 대장… 그들은 대장 말을 알아들을 수가 없다고, 알겠어? 그들은 죽었다고."{#morte1_s31_1}'

    menu:
        '"하지만 자네는 죽었네. 그리고 내게 얘기하고 있네."{#morte1_s31_r42299}':
            # a41 # r42299
            jump morte1_s32


# s32 # say42300
label morte1_s32: # from 31.0
    nr '"그래, 하지만 *나는* 특별해. 죽음도 삶에 대한 내 열정을 어떻게 할 수는 없었어. 여기 이 시체들은…" 모트는 눈알을 부라린다. "애당초 별 개성도 지니지 못했던 것 같아."{#morte1_s32_1}'

    menu:
        '"알겠네…"{#morte1_s32_r42301}':
            # a42 # r42301
            jump morte1_s33


# s33 # say42302
label morte1_s33: # from 32.0
    nr '"이봐, 대장… 대장이 시체와 얘기를 하려는 걸 보는 건 내 사기에 악영향을 마친다고. 시체하고 말하는 건 미친 놈들이나 하라고 해, 알겠지?"{#morte1_s33_1}'

    menu:
        '"그럼 좋네. 가세."{#morte1_s33_r42303}':
            # a43 # r42303
            jump morte1_dispose


# s34 # say42306
label morte1_s34: # externs zm782_s0
    nr '"여기 있는 이 행운의 청원자 같아, 대장. 보라고… 그는 손에 열쇠를 쥐고 있어."{#morte1_s34_1}'

    jump zm782_s2  # EXTERN
