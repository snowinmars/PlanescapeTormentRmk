init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.dust_logic import DustLogic
    dustLogic = DustLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DDUST.DLG
# ###


# s0 # say300
label dust_s0: # - # IF ~  Global("Appearance","GLOBAL",1)
    nr '더스트맨은 당신의 존재를 알아차리지 못하고 있는 듯하다. 아마 그는 당신을 언데드 노동자들 중 하나로 착각한 모양이다.'

    menu:
        '"안녕하시오."':
            # a0 # r302
            jump dust_s1

        '"당신은 누구요?"':
            # a1 # r303
            jump dust_s1

        '"이 곳은 어떤 곳이오?"':
            # a2 # r304
            jump dust_s1

        '"질문할 것들이 좀 있소…"':
            # a3 # r305
            jump dust_s1

        '그를 그냥 내버려 두고 떠난다.':
            # a4 # r306
            jump dust_dispose


# s1 # say307
label dust_s1: # from 0.0 0.1 0.2 0.3
    nr '더스트맨은 소스라치게 놀란다, 그리고 고개를 돌려 당신을 쳐다본다. 그는 심한 충격을 받은 듯하다. 아마 당신 변장이 너무 훌륭했던 것 같다.'

    menu:
        '그가 미처 소리를 지르기 전에 그의 목을 부러트린다.':
            # a5 # r310
            jump dust_s41

        '"질문하고 싶은 것이 좀 있소…"':
            # a6 # r312
            jump dust_s2

        '재빨리 떠난다.':
            # a7 # r1332
            jump dust_s2


# s2 # say309
label dust_s2: # from 1.1 1.2 5.2 5.3 19.6 20.4 47.2 47.3 51.4
    nr '더스트맨은 한 걸음 물러선 후 손뼉을 세게 세 번 친다. 그에 응답하듯 시체안치소 안에서 거대한 철제 종소리가 울려 퍼지기 시작한다.'

    menu:
        '"그럼 좋소…"':
            # a8 # r313
            $ dustLogic.r313_action()
            jump dust_dispose


# s3 # say314
label dust_s3: # externs morte_s64
    nr '이 창백한 얼굴의 사내는 긴 흑색 법복을 착용하고 있다. 그로부터는 약간의 곰팡이 냄새가 난다. 그는 무표정하며, 자신의 일에 몰두하고 있는 듯하다.'

    menu:
        '"안녕하시오."':
            # a9 # r315
            jump dust_s4

        '"당신은 누구요?"':
            # a10 # r316
            jump dust_s4

        '"이 곳은 어떤 곳이오?"':
            # a11 # r317
            jump dust_s4

        '"질문할 것들이 좀 있소…"':
            # a12 # r319
            jump dust_s4

        '그를 그냥 내버려 두고 떠난다.':
            # a13 # r382
            jump dust_dispose


# s4 # say321
label dust_s4: # from 3.0 3.1 3.2 3.3 40.2 40.3
    nr '더스트맨은 천천히 고개를 들어 당신 쪽을 향한다. "길을 잃었소?"'

    menu:
        '"그렇소."':
            # a14 # r322
            jump dust_s5

        '"아니오."':
            # a15 # r323
            jump dust_s6

        '"아니, 난 길을 잃지 않았소. 그런데 질문할 것들이 좀 있소."':
            # a16 # r324
            jump dust_s6

        '"안녕히 계시오."':
            # a17 # r325
            jump dust_s5


# s5 # say326
label dust_s5: # from 4.0 4.3 6.4 16.2 51.1
    nr '"당신을 밖으로 안내할 경비병을 부르겠소. 잠시만 기다리시오."'

    menu:
        '그가 미처 소리를 지르기 전에 그의 목을 부러트린다.' if dustLogic.r327_condition():
            # a18 # r327
            jump dust_s44

        '그가 미처 소리를 지르기 전에 그의 목을 부러트린다.' if dustLogic.r328_condition():
            # a19 # r328
            jump dust_s41

        '재빨리 떠난다.':
            # a20 # r329
            jump dust_s2

        '기다린다.':
            # a21 # r1333
            jump dust_s2


# s6 # say330
label dust_s6: # from 4.1 4.2 51.2 51.3
    nr '"만약 길을 잃은 게 아니라면 여기에 온 용건은 뭐요?"'

    menu:
        '"당신과는 상관없는 일이오."':
            # a22 # r331
            jump dust_s7

        '"나는 당신네 준비실에 있는 철판 위에서 깨어났소."':
            # a23 # r332
            jump dust_s8

        '"누굴 좀 만나러 왔소."':
            # a24 # r333
            jump dust_s9

        '"나는 이 곳에 장례식 때문에 왔소, 하지만 뭔가 착오가 있었던 듯하오."' if dustLogic.r334_condition():
            # a25 # r334
            jump dust_s16

        '재빨리 떠난다.':
            # a26 # r337
            jump dust_s5


# s7 # say335
label dust_s7: # from 6.0 9.0 20.0
    nr '"미안하지만 그건 내가 알 바가 아니오. 경비병들이라면 당신이 입을 열도록 만들 수 있을 것 같소." 더스트맨은 한 걸음 물러선다. 당장이라도 경비병을 부를 것 같다.'

    menu:
        '그가 미처 소리를 지르기 전에 그의 목을 부러트린다.' if dustLogic.r344_condition():
            # a27 # r344
            jump dust_s44

        '그가 미처 소리를 지르기 전에 그의 목을 부러트린다.' if dustLogic.r3887_condition():
            # a28 # r3887
            jump dust_s41

        '"그럼 그들을 부르시오. 난 그들을 만나고 싶소."':
            # a29 # r3888
            $ dustLogic.r3888_action()
            jump dust_dispose


# s8 # say336
label dust_s8: # from 6.1 16.0 20.1
    nr '"농담을 하고 있는 거요? 그렇다면 경비병들하고 농담을 나누는 게 어떻겠소." 더스트맨은 한 걸음 물러선다. 당장이라도 경비병을 부를 것 같다.'

    menu:
        '그가 미처 소리를 지르기 전에 그의 목을 부러트린다.' if dustLogic.r358_condition():
            # a30 # r358
            jump dust_s44

        '그가 미처 소리를 지르기 전에 그의 목을 부러트린다.' if dustLogic.r3885_condition():
            # a31 # r3885
            jump dust_s41

        '"그럼 그들을 부르시오. 난 그들을 만나고 싶소."':
            # a32 # r3886
            $ dustLogic.r3886_action()
            jump dust_dispose


# s9 # say338
label dust_s9: # from 6.2 20.2
    nr '"당신은 이 곳에 누구를 만나러 왔소?"'

    menu:
        '"당신과는 상관없는 일이오."':
            # a33 # r3922
            jump dust_s7

        '"나는 달을 만나러 왔소."' if dustLogic.r342_condition():
            # a34 # r342
            jump dust_s10

        '"나는 달을 만나러 왔소."' if dustLogic.r343_condition():
            # a35 # r343
            jump dust_s11

        '"나는 데이오나라를 만나러 왔소."' if dustLogic.r33183_condition():
            # a36 # r33183
            jump dust_s13

        '"나는 데이오나라를 만나러 왔소."' if dustLogic.r33185_condition():
            # a37 # r33185
            jump dust_s12

        '"나는 소에고를 만나러 왔소."' if dustLogic.r33186_condition():
            # a38 # r33186
            jump dust_s15

        '"나는 소에고를 만나러 왔소."' if dustLogic.r33187_condition():
            # a39 # r33187
            jump dust_s14

        '거짓말: "어… 아단. 그는 아직도 여기서 일하오, 아니면…?"' if dustLogic.r33189_condition():
            # a40 # r33189
            $ dustLogic.r33189_action()
            jump dust_s21

        '거짓말: "어… 아단. 그는 아직도 여기서 일하오, 아니면…?"' if dustLogic.r33190_condition():
            # a41 # r33190
            jump dust_s21

        '"아무도 아니오. 내가 말을 잘못 했소."':
            # a42 # r33191
            jump dust_s20


# s10 # say345
label dust_s10: # from 9.1
    nr '"달은 이 층에 있는 접수실에 있소. 하지만 명심하시오… 달은 일 때문에 매우 바쁘며, 건강이 별로 좋지 않소. 화급한 용건이 없다면 그를 방해하지 않는 것이 좋을 것이오."'

    menu:
        '"알겠소. 정보를 주어 고맙소."':
            # a43 # r347
            jump dust_s48


# s11 # say346
label dust_s11: # from 9.2
    nr '"달은 아마 2층에 있는 접수실에 있을 것이오. 그는 일 때문에 매우 바쁘며, 건강이 별로 좋지 않소. 화급한 용건이 없다면 그를 방해하지 않는 것이 좋을 것이오."'

    menu:
        '"알겠소. 정보를 주어 고맙소."':
            # a44 # r348
            jump dust_s48


# s12 # say349
label dust_s12: # from 9.4 19.1
    nr '"데이오나라? 내가 알기로 1층 북서쪽 기념 홀에는 한 여인이 안장되었소. 혹시 그 여자가 당신이 말한 여자요?"'

    menu:
        '"아마 그럴거요. 고맙소."':
            # a45 # r352
            jump dust_s48


# s13 # say350
label dust_s13: # from 9.3
    nr '"데이오나라? 내가 알기로 북서쪽 기념 홀에는 한 여인이 안장되었소. 혹시 그 여자가 당신이 말한 여자요?"'

    menu:
        '"아마 그럴거요. 고맙소."':
            # a46 # r353
            jump dust_s48


# s14 # say351
label dust_s14: # from 9.6
    nr '"내 생각에 소에고는 1층 정문 근처에 있을 것이오. 그는 일이 바쁘지 않을 때는 가이드 역할도 하오."'

    menu:
        '"알겠소. 고맙소."':
            # a47 # r354
            jump dust_s48


# s15 # say355
label dust_s15: # from 9.5
    nr '"내 생각에 소에고는 정문 근처에 있을 것이오. 그는 일이 바쁘지 않을 때는 가이드 역할도 하오."'

    menu:
        '"알겠소. 고맙소."':
            # a48 # r356
            jump dust_s48


# s16 # say357
label dust_s16: # from 6.3 20.3
    nr '"누구의 장례식이라고 했소? 아마 당신이 참석하려는 장례식은 시체안치소의 다른 곳에서 거행되고 있을지도 모르오."'

    menu:
        '"당신은 내 말을 이해하지 못한 것 같군… 내 말은 당신들 착오 때문에 내가 장례식을 당하게 될 뻔했다는 얘기요."':
            # a49 # r359
            jump dust_s8

        '"그런 것 같소. 다른 장례식들은 어디서 거행되고 있소?"':
            # a50 # r360
            jump dust_s17

        '"내게 나가는 길을 가르쳐 줄 수 있겠소?"':
            # a51 # r361
            jump dust_s5


# s17 # say362
label dust_s17: # from 16.1
    nr '"시체안치소에는 영안실이 여러 군데 있으며 그것들은 1층과 2층의 벽을 따라 배치되어 있소. 고인의 이름은 아시오?"'

    menu:
        '"아니, 모르오."':
            # a52 # r363
            jump dust_s18

        '"그래, 알고 있소."':
            # a53 # r364
            jump dust_s19


# s18 # say365
label dust_s18: # from 17.0
    nr '"그럼 정문 근처에 있는 가이드들 중 한 사람과 얘기하시오. 그들이라면 당신을 도울 수 있을 것이오."'

    menu:
        '"알겠소. 고맙소."':
            # a54 # r366
            jump dust_dispose


# s19 # say367
label dust_s19: # from 17.1
    nr '더스트맨은 기다린다.'

    menu:
        '"미안하오… 내가 말을 잘못했소. 난 고인의 이름을 모르오."':
            # a55 # r369
            jump dust_s20

        '"고인의 이름은 데이오나라요."' if dustLogic.r370_condition():
            # a56 # r370
            jump dust_s12

        '거짓말: "이름은… 어, 아단이오."' if dustLogic.r371_condition():
            # a57 # r371
            $ dustLogic.r371_action()
            jump dust_s21

        '거짓말: "이름은… 어, 아단이오."' if dustLogic.r372_condition():
            # a58 # r372
            jump dust_s21

        '마치 그에게 뭔가 속삭이려는 것처럼 몸을 기울인 후 그의 목을 부러트린다.' if dustLogic.r373_condition():
            # a59 # r373
            jump dust_s44

        '마치 그에게 뭔가 속삭이려는 것처럼 몸을 기울인 후 그의 목을 부러트린다.' if dustLogic.r1335_condition():
            # a60 # r1335
            jump dust_s45

        '도망친다.':
            # a61 # r1336
            jump dust_s2


# s20 # say374
label dust_s20: # from 9.9 19.0
    nr '"알겠소. 자, 당신이 이 곳에 온 용건은 무엇이오?"'

    menu:
        '"당신과는 상관없는 일이오."':
            # a62 # r375
            jump dust_s7

        '"나는 당신네 준비실에 있는 철판 위에서 깨어났소."':
            # a63 # r376
            jump dust_s8

        '"누굴 좀 만나러 왔소."':
            # a64 # r377
            jump dust_s9

        '"나는 이 곳에 장례식 때문에 왔소, 하지만 뭔가 착오가 있었던 듯하오."' if dustLogic.r378_condition():
            # a65 # r378
            jump dust_s16

        '도망친다.':
            # a66 # r379
            jump dust_s2


# s21 # say368
label dust_s21: # from 9.7 9.8 19.2 19.3
    nr '"나는 그 이름을 잘 모르겠소. 정문 근처에 있는 가이드들 중 한 사람과 얘기하시오… 그들이라면 당신을 나보다 더 잘 안내할 수 있을 것이오."'

    menu:
        '"알겠소. 그러리다. 안녕히 계시오."':
            # a67 # r380
            jump dust_s48


# s22 # say294
label dust_s22: # - # IF ~  Global("Appearance","GLOBAL",2)
    nr '이 창백한 얼굴의 사내는 긴 흑색 법복을 착용하고 있다. 그로부터는 약간의 곰팡이 냄새가 난다. 그는 무표정하며, 자신의 일에 몰두하고 있는 듯하다.'

    menu:
        '"안녕하시오."':
            # a68 # r295
            jump dust_s23

        '그를 그냥 내버려 두고 떠난다.':
            # a69 # r297
            jump dust_dispose


# s23 # say381
label dust_s23: # from 22.0
    nr '그는 천천히 몸을 돌린다, 그리고 당신이 착용한 법복을 눈을 깜박거리며 쳐다본다. "안녕하시오, 동료 참입자."'

    menu:
        '"당신은 누구요?"':
            # a70 # r383
            jump dust_s24

        '"이 곳은 어떤 곳이오?"':
            # a71 # r384
            jump dust_s25

        '"질문하고 싶은 것이 좀 있소…"':
            # a72 # r391
            jump dust_s26

        '그를 그냥 내버려 두고 떠난다.':
            # a73 # r392
            jump dust_dispose


# s24 # say393
label dust_s24: # from 23.0
    nr '"그건 내가 당신에게 묻고 싶소. 당신 얼굴은 내게 낯이 익지 않소. 당신은 누구요?"'

    menu:
        '거짓말: "이름은… 어, 아단이오."' if dustLogic.r450_condition():
            # a74 # r450
            $ dustLogic.r450_action()
            jump dust_s49

        '거짓말: "이름은… 어, 아단이오."' if dustLogic.r1337_condition():
            # a75 # r1337
            jump dust_s49

        '"내 이름은 당신이 알 바가 아니오.이만 실례해야겠소. 안녕히 계시오."' if dustLogic.r3904_condition():
            # a76 # r3904
            jump dust_s47

        '"내 이름은 당신이 알 바가 아니오.이만 실례해야겠소. 안녕히 계시오."' if dustLogic.r3905_condition():
            # a77 # r3905
            jump dust_s46


# s25 # say394
label dust_s25: # from 23.1
    nr '"이 곳은 시체안치소요…" 더스트맨은 당신이 한 말을 곰곰이 생각해 보려는 듯 당신을 잠시동안 쳐다본다. "당신 이름을 다시 한 번 말해주겠소?"'

    menu:
        '거짓말: "이름은… 어, 아단이오."' if dustLogic.r399_condition():
            # a78 # r399
            $ dustLogic.r399_action()
            jump dust_s49

        '거짓말: "이름은… 어, 아단이오."' if dustLogic.r3906_condition():
            # a79 # r3906
            jump dust_s49

        '"내 이름은 당신이 알 바가 아니오.이만 실례해야겠소. 안녕히 계시오."' if dustLogic.r3907_condition():
            # a80 # r3907
            jump dust_s47

        '"내 이름은 당신이 알 바가 아니오.이만 실례해야겠소. 안녕히 계시오."' if dustLogic.r3908_condition():
            # a81 # r3908
            jump dust_s46


# s26 # say400
label dust_s26: # from 23.2 27.0 28.2 30.3 31.3 34.2 36.1 39.0 50.0
    nr '더스트맨은 당신이 계속하기를 인내심 있게 기다린다.'

    menu:
        '"내게 여기서 나가는 방법을 일러줄 수 있겠소?"':
            # a82 # r401
            jump dust_s27

        '"혹시 파로드란 자를 아시오?"':
            # a83 # r402
            jump dust_s28

        '"나는 일지를 잃어버렸소. 혹시 본 적이 있소?"':
            # a84 # r403
            jump dust_s39

        '"관두시오. 당신을 귀찮게 해 미안하오."':
            # a85 # r404
            jump dust_s48


# s27 # say405
label dust_s27: # from 26.0
    nr '"그냥 정문을 통해서 나갈 수가 있소. 정문은 1층에 있소."'

    menu:
        '"그 밖에도 물어보고 싶은 것들이 좀 있소…"':
            # a86 # r406
            jump dust_s26

        '"고맙소. 안녕히 계시오."':
            # a87 # r407
            jump dust_s48


# s28 # say408
label dust_s28: # from 26.1
    nr '"그 이름…" 더스트맨은 잠시 말을 멈춘다. "그 이름의 귀에 익소… 그런 이름을 가진 수집자에 대해 들은 적이 있소. 서기인 달이라면 아마 그에 대해 알 거요."'

    menu:
        '"수집자?"':
            # a88 # r409
            jump dust_s29

        '"달?"':
            # a89 # r410
            jump dust_s30

        '"그 밖에도 물어보고 싶은 것들이 좀 있소…"':
            # a90 # r411
            jump dust_s26

        '"시간을 내주어 고맙소. 안녕히 계시오."':
            # a91 # r425
            jump dust_s48


# s29 # say412
label dust_s29: # from 28.0
    nr '"수집자들… 그들은 시길의 거리에서 죽은 자들의 시체를 거두어 시체안치소로 가져오는 자들이오…" 더스트맨은 일단 말을 멈추고 눈살을 찌푸린다. "당신은 이 근처 사람이 아니군. 당신은 누구요?"'

    menu:
        '"나는 최근에 온 참입자요. 내 무지를 용서해 주시오."' if dustLogic.r413_condition():
            # a92 # r413
            jump dust_s50

        '"나는… 최근에 이 곳에 왔소. 그래서… 이 곳에 대해 배우고 있는 중이오."' if dustLogic.r3918_condition():
            # a93 # r3918
            jump dust_s47

        '"그래, 좋소…뭐 이름에 무슨 문제라도? 믿음을 굳건히 가지시오, 어, 동료 참입자 양반."' if dustLogic.r3919_condition():
            # a94 # r3919
            jump dust_s47

        '"만약 당신이 날 도울 수 없다면 날 도울 수 있는 사람을 찾아보도록 하겠소. 안녕히 계시오."' if dustLogic.r3920_condition():
            # a95 # r3920
            jump dust_s46


# s30 # say414
label dust_s30: # from 28.1
    nr '"달은 우리 당파에서 가장 존경받는 사람들 중 하나요. 내가 알기로 그보다 진정한 죽음의 본질에 대해 더 많이 명상하고, 또 그보다 더 진정한 죽음을 맞이할 자격을 지닌 사람은 없소. 그는 지혜의 보고요. 당신은 가능한 한 빨리 그와 얘기를 나누는 것이 좋을 거요. 그는 현생의 그림자에서 오래 머무르지 않을 테니까."'

    menu:
        '"*이 존재의 그림자에서 오래 머물지 않을 것이다?*"':
            # a96 # r415
            jump dust_s31

        '"달은 어디에 있소?"' if dustLogic.r416_condition():
            # a97 # r416
            jump dust_s32

        '"달은 어디에 있소?"' if dustLogic.r417_condition():
            # a98 # r417
            jump dust_s33

        '"그 밖에도 물어보고 싶은 것들이 좀 있소…"':
            # a99 # r418
            jump dust_s26

        '"정보를 주어 고맙소. 그럼 난 그와 이야기를 하겠소.':
            # a100 # r33204
            jump dust_s48


# s31 # say419
label dust_s31: # from 30.0 32.0 33.0
    nr '고개를 끄덕인다. "달은 병에 걸렸소. 그는 기스저라이의 기준으로 보아도 매우 늙었소. 그가 병 때문에 곧 죽을 것은 명백하오. 그는 정말로 운이 좋소."'

    menu:
        '"기스저라이의 기준?"':
            # a101 # r420
            jump dust_s34

        '"*기스저라이*란 무엇이오?"':
            # a102 # r421
            jump dust_s35

        '"운이 좋아?"':
            # a103 # r422
            jump dust_s36

        '"알겠소. 그 밖에도 물어보고 싶은 것들이 좀 있소…"':
            # a104 # r423
            jump dust_s26

        '"시간을 내주어 고맙소. 이만 실례해야겠소."':
            # a105 # r424
            jump dust_s48


# s32 # say427
label dust_s32: # from 30.1
    nr '"달은 이 층의 북서쪽 구석에 있는 접수실에 있소. 하지만 명심하시오… 달은 매우 바쁘오… 그는 자신의 책무를 다하는 데 쓰는 시간 외의 시간을 병 때문에 대부분 빼앗기고 있는 실정이오."'

    menu:
        '"달은 병에 걸렸소?"':
            # a106 # r428
            jump dust_s31

        '"시간을 내주어 고맙소. 이만 실례해야겠소. 안녕히 계시오."':
            # a107 # r429
            jump dust_s48


# s33 # say426
label dust_s33: # from 30.2
    nr '"달은 2층의 북서쪽 구석에 있는 접수실에 있을 것이오. 그는 바쁘니까 그의 시간을 너무 뺏지는 마시오… 그는 자신의 책무를 다하는 데 쓰는 시간 외의 시간을 그의 몸을 좀먹는 병 때문에 대부분 빼앗기고 있는 실정이오."'

    menu:
        '"달은 병에 걸렸소?"':
            # a108 # r430
            jump dust_s31

        '"시간을 내주어 고맙소. 이만 실례해야겠소. 안녕히 계시오."':
            # a109 # r431
            jump dust_s48


# s34 # say432
label dust_s34: # from 31.0
    nr '"그렇소… 기스저라이는 인간보다 훨씬 긴 수명을 지니고 있소."'

    menu:
        '"*기스저라이*란 무엇이오?"':
            # a110 # r433
            jump dust_s35

        '"왜 달이 죽는 게 운이 좋다는 거요? 사람들이 그를 싫어하기라도 하는 거요?"':
            # a111 # r437
            jump dust_s36

        '"아. 다른 질문이 있소…"':
            # a112 # r438
            jump dust_s26

        '"시간을 내주어 고맙소. 안녕히 계시오."':
            # a113 # r440
            jump dust_s48


# s35 # say435
label dust_s35: # from 31.1 34.0
    nr '"기스저라이는…" 더스트맨은 일단 말을 멈추고 눈살을 찌푸리며 당신을 골똘히 쳐다본다. "당신은 이 근처 사람이 아니군. 당신은 누구요?"'

    menu:
        '"나는 최근에 온 참입자요. 내 무지를 용서해 주시오."' if dustLogic.r436_condition():
            # a114 # r436
            jump dust_s50

        '"나는… 최근에 이 곳에 왔소. 그래서… 이 곳에 대해 배우고 있는 중이오."' if dustLogic.r3909_condition():
            # a115 # r3909
            jump dust_s47

        '"그래, 좋소…뭐 이름에 무슨 문제라도? 믿음을 굳건히 가지시오, 어, 동료 참입자 양반."' if dustLogic.r3910_condition():
            # a116 # r3910
            jump dust_s47

        '"만약 당신이 날 도울 수 없다면 날 도울 수 있는 사람을 찾아보도록 하겠소. 안녕히 계시오."' if dustLogic.r3911_condition():
            # a117 # r3911
            jump dust_s46


# s36 # say439
label dust_s36: # from 31.2 34.1
    nr '"그는 진정한 죽음에 도달할 것이기 때문에 운이 좋소. 그는 더 이상 현생의 그림자에서 살 필요가 없소."'

    menu:
        '"그리고… 그건 좋은 일이오?"':
            # a118 # r441
            jump dust_s37

        '"알겠소. 정말 다행스런 일이오. 그 밖에도 물어볼 것들이 있소…"':
            # a119 # r442
            jump dust_s26

        '"알겠소. 이만 실례해야겠소. 안녕히 계시오."':
            # a120 # r443
            jump dust_s48


# s37 # say444
label dust_s37: # from 36.0
    nr '더스트맨은 고개를 끄덕인다. "그렇소." 그는 눈살을 찌푸린 다음, 당신을 골똘히 살펴본다. "당신은 이 근처 사람이 아니군. 당신은 누구요?"'

    menu:
        '"나는 최근에 온 참입자요. 내 무지를 용서해 주시오."' if dustLogic.r445_condition():
            # a121 # r445
            jump dust_s50

        '"나는… 최근에 이 곳에 왔소. 그래서… 이 곳에 대해 배우고 있는 중이오."' if dustLogic.r446_condition():
            # a122 # r446
            jump dust_s47

        '"그래, 좋소…뭐 이름에 무슨 문제라도? 믿음을 굳건히 가지시오, 어, 동료 참입자 양반."' if dustLogic.r3912_condition():
            # a123 # r3912
            jump dust_s47

        '"만약 당신이 날 도울 수 없다면 날 도울 수 있는 사람을 찾아보도록 하겠소. 안녕히 계시오."' if dustLogic.r3913_condition():
            # a124 # r3913
            jump dust_s46


# s38 # say447
label dust_s38: # -
    nr '"당신은 우리의 일원이 아니군. 당신은 여기서 무슨 짓을 하고 있는 거요? 당신은 아나키스트의 일원이오? 아니면 다른 당파의 스파이? 경비병! 경비병!"'

    menu:
        '"빌어먹을!"':
            # a125 # r448
            $ dustLogic.r448_action()
            jump dust_dispose

        '"쉿! 그렇게 소리를 크게 지르면 내가 대답할 수가 없지 않소!"' if dustLogic.r449_condition():
            # a126 # r449
            $ dustLogic.r449_action()
            jump dust_dispose

        '"쉿! 그렇게 소리를 크게 지르면 내가 대답할 수가 없지 않소!"' if dustLogic.r1339_condition():
            # a127 # r1339
            $ dustLogic.r1339_action()
            jump dust_dispose


# s39 # say398
label dust_s39: # from 26.2
    nr '"일지? 아니, 그런 건 본 적이 없소."'

    menu:
        '"그 밖에도 물어보고 싶은 것들이 좀 있소…"':
            # a128 # r451
            jump dust_s26

        '"실례해야겠소. 안녕히 계시오."':
            # a129 # r452
            jump dust_s48


# s40 # say1419
label dust_s40: # -
    nr '이 창백한 얼굴의 사내는 긴 흑색 법복을 착용하고 있다. 그로부터는 약간의 곰팡이 냄새가 난다. 그는 무표정하며, 자신의 일에 몰두하고 있는 듯하다.'

    menu:
        '"안녕하시오."' if dustLogic.r1420_condition():
            # a130 # r1420
            jump morte_s61  # EXTERN

        '"안녕하시오."' if dustLogic.r1421_condition():
            # a131 # r1421
            jump morte_s63  # EXTERN

        '"안녕하시오."' if dustLogic.r1422_condition():
            # a132 # r1422
            jump dust_s4

        '"안녕하시오."' if dustLogic.r1423_condition():
            # a133 # r1423
            jump dust_s4

        '그를 그냥 내버려 두고 떠난다.':
            # a134 # r1424
            jump dust_dispose


# s41 # say1425
label dust_s41: # from 1.0 5.1 7.1 8.1 47.1
    nr '더스트맨이 입도 뻥끗하기 전에 당신은 양손으로 그의 관자놀이를 꽉 조인다, 그리고 그의 목을 왼쪽으로 세게 비튼다.'

    menu:
        '"당신 동료들에게 알리도록 내버려둘 수는 없지…"':
            # a135 # r1426
            $ dustLogic.r1426_action()
            jump dust_s42


# s42 # say1427
label dust_s42: # from 41.0 45.0
    nr '*우지직*하는 소리가 나고 더스트는 맨은 당신 팔 안에서 맥없이 늘어진다.'

    menu:
        '"나보다는 당신이 죽는 게 낫지, 더스티."' if dustLogic.r1428_condition():
            # a136 # r1428
            $ dustLogic.r1428_action()
            jump dust_s43

        '"나보다는 당신이 죽는 게 낫지, 더스티."' if dustLogic.r1429_condition():
            # a137 # r1429
            $ dustLogic.r1429_action()
            jump dust_dispose


# s43 # say1430
label dust_s43: # from 42.0
    nr '놀랍게도 이러한 행동은 당신에게 있어 매우 자연스러운 일인 것 같다… 마치 전에도 여러 번 비슷한 일을 해본 것처럼. 그런 생각이 들자 기억이 자극이 받으나, 표면으로 떠오를 정도로 강하지는 않다.'

    menu:
        '시체를 놔두고 가던 길을 간다.':
            # a138 # r3882
            $ dustLogic.r3882_action()
            jump dust_dispose


# s44 # say3883
label dust_s44: # from 5.0 7.0 8.0 19.4 47.0
    nr '당신이 충분히 빠르지 못한 탓에 더스트맨은 당신의 돌격을 피한다. 한 걸음 물러선 후, 그는 손뼉을 세게 세 번 친다. 그에 응답하듯 시체안치소 안에서 거대한 철제 종소리가 울려 퍼지기 시작한다.'

    menu:
        '"그럼 좋소…"':
            # a139 # r3884
            $ dustLogic.r3884_action()
            jump dust_dispose


# s45 # say3889
label dust_s45: # from 19.5
    nr '당신이 그에게 „속삭이려고“ 몸을 구부리자 더스트맨 역시 몸을 구부린다. 그가 팔이 닿을 거리 내로 들어오자 당신은 양손으로 그의 관자놀이를 꽉 조인다, 그리고 그의 목을 왼쪽으로 세게 비튼다.'

    menu:
        '"당신 동료들에게 알리도록 내버려둘 수는 없지…"':
            # a140 # r3890
            $ dustLogic.r3890_action()
            jump dust_s42


# s46 # say3891
label dust_s46: # from 24.3 25.3 29.3 35.3 37.3 49.3 50.1
    nr '더스트맨은 의심을 하는 듯하다. 그는 뭐라고 말하려는 것 같다, 하지만 이내 고개를 젓고 하던 일로 돌아간다.'

    menu:
        '다른 곳으로 간다.':
            # a141 # r3892
            jump dust_dispose


# s47 # say3893
label dust_s47: # from 24.2 25.2 29.1 29.2 35.1 35.2 37.1 37.2 49.1 49.2
    nr '더스트맨은 당신을 유심히 살펴본다. "당신은 우리들 중 하나가 아니군. 당신은 여기서 무슨 짓을 하고 있는 거요? 당신은 아나키스트의 일원이오? 아니면 다른 당파의 스파이? 경비병을 불러야겠군…"'

    menu:
        '그가 미처 소리를 지르기 전에 그의 목을 부러트린다.' if dustLogic.r3914_condition():
            # a142 # r3914
            jump dust_s44

        '그가 미처 소리를 지르기 전에 그의 목을 부러트린다.' if dustLogic.r3915_condition():
            # a143 # r3915
            jump dust_s41

        '"아니오… 그건… 어… 내 말은 내가 스파이가 아니라는 거요… 나는 철판들 중 하나에서 깨어나… 그리고…"':
            # a144 # r3916
            jump dust_s2

        '재빨리 떠난다.':
            # a145 # r3917
            jump dust_s2


# s48 # say3894
label dust_s48: # from 10.0 11.0 12.0 13.0 14.0 15.0 21.0 26.3 27.1 28.3 30.4 31.4 32.1 33.1 34.3 36.2 39.1
    nr '더스트맨은 고개를 끄덕인 후 하던 일로 돌아간다.'

    menu:
        '다른 곳으로 간다.':
            # a146 # r3895
            jump dust_dispose


# s49 # say3896
label dust_s49: # from 24.0 24.1 25.0 25.1
    nr '더스트맨은 눈살을 찌푸린다: "그런 이름은 모르겠소."'

    menu:
        '"나는 최근에 온 참입자요. 내 무지를 용서해 주시오."' if dustLogic.r3898_condition():
            # a147 # r3898
            jump dust_s50

        '"나는… 이 곳에 온지 얼마 안 되오. 난… 이 곳의 규칙을 배우는 중이오."' if dustLogic.r3899_condition():
            # a148 # r3899
            jump dust_s47

        '"그래, 좋소…뭐 이름에 무슨 문제라도? 믿음을 굳건히 가지시오, 어, 동료 참입자 양반."' if dustLogic.r3900_condition():
            # a149 # r3900
            jump dust_s47

        '"만약 당신이 날 도울 수 없다면 날 도울 수 있는 사람을 찾아보도록 하겠소. 안녕히 계시오."' if dustLogic.r3901_condition():
            # a150 # r3901
            jump dust_s46


# s50 # say3897
label dust_s50: # from 29.0 35.0 37.0 49.0
    nr '더스트맨은 여전히 눈살을 찌푸리고있으나, 그는 가볍게 고개를 끄덕인다. "좋소. 어떤 도움을 원하시오, 참입자?"'

    menu:
        '"질문하고 싶은 것이 좀 있소…"':
            # a151 # r3902
            jump dust_s26

        '"오늘은 아무런 용건도 없소. 안녕히 계시오."':
            # a152 # r3903
            jump dust_s46


# s51 # say66674
label dust_s51: # - # IF ~  Global("Appearance","GLOBAL",0)
    nr '더스트맨은 차가운 눈으로 당신을 바라본다. "길을 잃었소?"'

    menu:
        '"아니오, 난 당파의 일원이오. 나는 시체안치소를 그냥 둘러보고 있었소."' if dustLogic.r66675_condition():
            # a153 # r66675
            jump dust_s52

        '"그렇소."' if dustLogic.r66676_condition():
            # a154 # r66676
            jump dust_s5

        '"아니오."' if dustLogic.r66677_condition():
            # a155 # r66677
            jump dust_s6

        '"아니오, 나는 길을 잃지 않았소. 물어볼 것이 좀 있소…"' if dustLogic.r66678_condition():
            # a156 # r66678
            jump dust_s6

        '"안녕히 계시오."' if dustLogic.r66679_condition():
            # a157 # r66679
            jump dust_s2


# s52 # say66681
label dust_s52: # from 51.0
    nr '더스트맨은 잠시 당신을 바라본 후 고개를 끄덕인다. "좋소. 만약 도움이 필요하면 내게 말하시오."'

    menu:
        '"그렇게 하리다. 안녕히 계시오."':
            # a158 # r66682
            jump dust_dispose
