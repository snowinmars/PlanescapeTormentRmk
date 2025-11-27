init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.vaxis_logic import VaxisLogic
    vaxisLogic = VaxisLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DVAXIS.DLG
# ###


# s0 # say453
label vaxis_s0: # - # IF ~  Global("Vaxis","GLOBAL",0)
    nr '비틀거리는 시체는 계속 당신을 공허한 눈으로 바라본다. 그의 이마에는 "821" 이라고 새겨져 있으며, 그의 입은 꿰매져 있다. 그의 몸으로부터는 포름알데히드 냄새가 약간 난다.{#vaxis_s0_}'

    menu:
        '"그래… 뭐 재미있는 일이라도 있소?"{#vaxis_s0_r454}' if vaxisLogic.r454_condition():
            # a0 # r454
            $ vaxisLogic.r454_action()
            jump vaxis_s5

        '"그래… 뭐 재미있는 일이라도 있소?"{#vaxis_s0_r455}' if vaxisLogic.r455_condition():
            # a1 # r455
            jump vaxis_s5

        '"난 당신이 좀비가 아니라는 걸 아오. 당신은 아무도 속이지 못할 거요."{#vaxis_s0_r456}' if vaxisLogic.r456_condition():
            # a2 # r456
            jump vaxis_s5

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.{#vaxis_s0_r457}' if vaxisLogic.r457_condition():
            # a3 # r457
            jump vaxis_s1

        '"당신과 얘기를 나눌 수가 있어서 즐거웠소. 안녕히 계시오."{#vaxis_s0_r458}':
            # a4 # r458
            jump vaxis_s5

        '시체를 그냥 내버려 두고 떠난다.{#vaxis_s0_r459}':
            # a5 # r459
            jump vaxis_dispose


# s1 # say460
label vaxis_s1: # from 0.3 # IF ~  False()
    nr '이상하게도 당신 능력은 이 좀비에게는 통용되지 않는다.{#vaxis_s1_}'

    menu:
        '눈을 찌른다.{#vaxis_s1_r461}':
            # a6 # r461
            $ vaxisLogic.r461_action()
            jump vaxis_s2

        '시체를 그냥 내버려 두고 떠난다.{#vaxis_s1_r462}':
            # a7 # r462
            jump vaxis_dispose


# s2 # say463
label vaxis_s2: # from 1.0
    nr '당신이 좀비의 눈을 찌르자 그는 작은 비명을 지르며 재빨리 손으로 얼굴을 가린다. 그는 작은 소리로 중얼거리기 시작하는데, 그것은 당신이 듣기에는 무슨 욕설 같다.{#vaxis_s2_}'

    menu:
        '"당신은 좀비가 아니군! 당신은 누구요?"{#vaxis_s2_r464}':
            # a8 # r464
            $ vaxisLogic.j64513_s2_r464_action()
            jump vaxis_s6

        '"왜 시체로 변장한 거요?"{#vaxis_s2_r465}':
            # a9 # r465
            $ vaxisLogic.j64513_s2_r465_action()
            jump vaxis_s6

        '재빨리 떠난다.{#vaxis_s2_r466}':
            # a10 # r466
            $ vaxisLogic.j64513_s2_r466_action()
            jump vaxis_s3


# s3 # say467
label vaxis_s3: # from 2.2 5.2
    nr '당신이 돌아서서 떠나려 하자, „좀비“가 뭐라고 중얼거린다… 그는 무슨 얘기를 하려는 것 같으나 그의 입술이 꿰매진 탓에 알아듣기 힘들다. "너 누구? 뭘 원해?"{#vaxis_s3_}'

    menu:
        '"나는 이 곳에서 나갈 방법을 찾고 있소. 날 도와줄 수 있겠소?"{#vaxis_s3_r468}' if vaxisLogic.r468_condition():
            # a11 # r468
            jump vaxis_s7

        '"당신은 누구요?"{#vaxis_s3_r469}':
            # a12 # r469
            jump vaxis_s7

        '"당신이 누군지 말하시오, 아니면 경비병들을 부를 테니."{#vaxis_s3_r470}':
            # a13 # r470
            jump vaxis_s7

        '거짓말: "실은 당신을 찾고 있었소."{#vaxis_s3_r472}' if vaxisLogic.r472_condition():
            # a14 # r472
            $ vaxisLogic.r472_action()
            jump vaxis_s24

        '"질문을 하고 있는 건 나요, *좀비.* 당신이 누군지 말하지 않으면 그 변장이 현실이 되도록 만들겠소."{#vaxis_s3_r473}':
            # a15 # r473
            $ vaxisLogic.r473_action()
            jump vaxis_s7

        '"귀찮게 해서 미안하오… 당신이 누구든 간에. 안녕히 계시오."{#vaxis_s3_r474}':
            # a16 # r474
            jump vaxis_s4


# s4 # say471
label vaxis_s4: # from 3.5 6.5 7.8 8.5 10.4 11.4 12.2 13.5 14.4 15.2 16.4 17.2 18.1 19.3 20.1 25.6 27.6 31.6 32.5 34.2 35.6 59.1 74.1 75.3 76.1
    nr '당신이 돌아서서 떠나려 하자, 좀비가 조용히 으르렁거린다. "너 나에 대해 아무 말 하지마. 너 조용히 해. 더스티에게 아무 말도 마." 그는 손가락을 입술에 갖다 댄다. "쉿." 다음에 그는 손가락으로 목을 베는 시늉을 한다. "아니면 잘 때 내가 너 죽인다. 알았어?"{#vaxis_s4_}'

    menu:
        '"지금 날 협박한 건가? 더 이상은 못 참겠군. 죽을 각오를 해라."{#vaxis_s4_r475}':
            # a17 # r475
            $ vaxisLogic.r475_action()
            jump vaxis_dispose

        '거짓말: "나는 더스트맨에게 당신에 대해 얘기할 생각조차 하지 않을 것이오."{#vaxis_s4_r476}':
            # a18 # r476
            $ vaxisLogic.r476_action()
            jump vaxis_dispose

        '진실: "나는 더스트맨에게 당신에 대해 일체 얘기하지 않겠다고 약속하오."{#vaxis_s4_r477}':
            # a19 # r477
            $ vaxisLogic.r477_action()
            jump vaxis_dispose

        '"그럼 관두시오. 당신은 당신 일에나 신경 쓰시오, 난 내 일에만 신경 쓸 테니."{#vaxis_s4_r478}':
            # a20 # r478
            jump vaxis_dispose


# s5 # say479
label vaxis_s5: # from 0.0 0.1 0.2 0.4
    nr '당신이 좀비에게 인사를 하자 그는 깜짝 놀라서 눈을 깜박인다. "에? 뭐?"{#vaxis_s5_}'

    menu:
        '"당신은 좀비가 아니군! 당신은 누구요?"{#vaxis_s5_r480}':
            # a21 # r480
            $ vaxisLogic.j64513_s5_r480_action()
            $ vaxisLogic.r480_action()
            jump vaxis_s6

        '"왜 시체로 변장한 거요?"{#vaxis_s5_r481}':
            # a22 # r481
            $ vaxisLogic.j64513_s5_r481_action()
            $ vaxisLogic.r481_action()
            jump vaxis_s6

        '재빨리 떠난다.{#vaxis_s5_r482}':
            # a23 # r482
            $ vaxisLogic.j64513_s5_r482_action()
            $ vaxisLogic.r482_action()
            jump vaxis_s3


# s6 # say483
label vaxis_s6: # from 2.0 2.1 5.0 5.1
    nr '„좀비“는 꿰맨 입술을 가지고 말을 하려고 노력하고 있다. 그는 반은 화나고, 반은 두려워하는 기묘한 표정을 하고 있다. "너 누구? 뭘 원해?"{#vaxis_s6_}'

    menu:
        '"나는 이 곳에서 나갈 방법을 찾고 있소. 날 도와줄 수 있겠소?"{#vaxis_s6_r484}' if vaxisLogic.r484_condition():
            # a24 # r484
            jump vaxis_s7

        '"당신은 누구요?"{#vaxis_s6_r485}':
            # a25 # r485
            jump vaxis_s7

        '"당신이 누군지 말하시오, 아니면 경비병들을 부를 테니."{#vaxis_s6_r486}':
            # a26 # r486
            jump vaxis_s7

        '거짓말: "실은 당신을 찾고 있었소."{#vaxis_s6_r487}' if vaxisLogic.r487_condition():
            # a27 # r487
            $ vaxisLogic.r487_action()
            jump vaxis_s24

        '"질문을 하고 있는 건 나요, *좀비.* 당신이 누군지 말하지 않으면 그 변장이 현실이 되도록 만들겠소."{#vaxis_s6_r488}':
            # a28 # r488
            $ vaxisLogic.r488_action()
            jump vaxis_s7

        '"귀찮게 해서 미안하오… 당신이 누구든 간에. 안녕히 계시오."{#vaxis_s6_r489}':
            # a29 # r489
            jump vaxis_s4


# s7 # say490
label vaxis_s7: # from 3.0 3.1 3.2 3.4 6.0 6.1 6.2 6.4
    nr '좀비는 당신 말을 듣지 못한 것 같다. 그는 당신을 잠시 위아래로 살펴보더니 눈살을 찌푸린다. "여기서 뭘 하는 거야?" 그는 의심스럽다는 듯 눈을 좁게 뜬다, "더스티 염탐하는 거야?"{#vaxis_s7_}'

    menu:
        '"아니오. 난 탈출하려고 하고 있소."{#vaxis_s7_r491}' if vaxisLogic.r491_condition():
            # a30 # r491
            jump vaxis_s12

        '"난 스파이가 아니오. 난 사고로 여기 갇히게 됐소. 날 도와줄 수 있겠소?"{#vaxis_s7_r492}' if vaxisLogic.r492_condition():
            # a31 # r492
            jump vaxis_s31

        '거짓말: "그렇소, 난 더스티들을… 염탐하고 있소."{#vaxis_s7_r493}' if vaxisLogic.r493_condition():
            # a32 # r493
            $ vaxisLogic.r493_action()
            jump vaxis_s8

        '거짓말: "그렇소, 난 더스티들을… 염탐하고 있소."{#vaxis_s7_r494}' if vaxisLogic.r494_condition():
            # a33 # r494
            $ vaxisLogic.r494_action()
            jump vaxis_s9

        '"내가 경비병들을 부르기 전에 당신이 여기서 뭘 하고 있는지 말하시오."{#vaxis_s7_r495}' if vaxisLogic.r495_condition():
            # a34 # r495
            jump vaxis_s21

        '"내가 경비병들을 부르기 전에 당신이 여기서 뭘 하고 있는지 말하시오."{#vaxis_s7_r496}' if vaxisLogic.r496_condition():
            # a35 # r496
            jump vaxis_s17

        '"보시오, 질문을 하고 있는 건 나요, *좀비.* 당신이 여기서 뭘 하고 있는지 말하지 않으면 그 변장이 현실이 되도록 만들겠소."{#vaxis_s7_r1306}' if vaxisLogic.r1306_condition():
            # a36 # r1306
            $ vaxisLogic.r1306_action()
            jump vaxis_s19

        '"보시오, 질문을 하고 있는 건 나요, *좀비.* 당신이 여기서 뭘 하고 있는지 말하지 않으면 그 변장이 현실이 되도록 만들겠소."{#vaxis_s7_r1348}' if vaxisLogic.r1348_condition():
            # a37 # r1348
            $ vaxisLogic.r1348_action()
            jump vaxis_s22

        '"실례해야겠소. 안녕히 계시오."{#vaxis_s7_r1349}':
            # a38 # r1349
            jump vaxis_s4


# s8 # say1350
label vaxis_s8: # from 7.2
    nr '그는 당신을 더 골똘히 살핀다, "당신 스파이? 당신 세포의 일원?"{#vaxis_s8_}'

    menu:
        '"허?"{#vaxis_s8_r4671}':
            # a39 # r4671
            jump vaxis_s10

        '"세포?"{#vaxis_s8_r1352}':
            # a40 # r1352
            jump vaxis_s10

        '거짓말: "그렇소… 난 당신을 찾고 있었소. 마침내 만나게 되어 반갑소."{#vaxis_s8_r1359}' if vaxisLogic.r1359_condition():
            # a41 # r1359
            $ vaxisLogic.r1359_action()
            jump vaxis_s24

        '거짓말: "그렇소… 하지만 지금은 그것에 대해 길게 얘기할 시간이 없소. 내 말뜻을 알겠소? 이 곳에서의 당신 *임무*는 무엇이오?"{#vaxis_s8_r1360}' if vaxisLogic.r1360_condition():
            # a42 # r1360
            $ vaxisLogic.r1360_action()
            jump vaxis_s28

        '거짓말: "그렇소… 하지만 지금은 그것에 대해 길게 얘기할 시간이 없소. 여기서 어떤 일을 하고 있소?"{#vaxis_s8_r1361}' if vaxisLogic.r1361_condition():
            # a43 # r1361
            $ vaxisLogic.r1361_action()
            jump vaxis_s28

        '"어, 지금은 얘기할 시간이 없소… 나중에 합시다."{#vaxis_s8_r1362}':
            # a44 # r1362
            jump vaxis_s4


# s9 # say1363
label vaxis_s9: # from 7.3
    nr '그는 당신을 더 골똘히 살핀다, "당신 스파이? 당신 세포의 일원?"{#vaxis_s9_}'

    menu:
        '"허?"{#vaxis_s9_r4359}':
            # a45 # r4359
            jump morte_s85  # EXTERN

        '"세포?"{#vaxis_s9_r4360}':
            # a46 # r4360
            jump morte_s85  # EXTERN


# s10 # say4361
label vaxis_s10: # from 8.0 8.1
    nr '그는 눈살을 찌푸린 후 쉿 소리를 낸다. "너 스파이 아냐!" 그는 저리 가라는 몸짓을 한다. "꺼져!"{#vaxis_s10_}'

    menu:
        '"우선 당신이 여기서 뭘 하고 있는지부터 말하시오, 아니면 경비병들을 부를 테니."{#vaxis_s10_r4362}' if vaxisLogic.r4362_condition():
            # a47 # r4362
            jump vaxis_s21

        '"우선 당신이 여기서 뭘 하고 있는지부터 말하시오, 아니면 경비병들을 부를 테니."{#vaxis_s10_r4363}' if vaxisLogic.r4363_condition():
            # a48 # r4363
            jump vaxis_s17

        '"내 질문에 대답하지 않으면 당신이 세 걸음도 가기 전에 그 변장을 현실로 만들어 주겠소."{#vaxis_s10_r4364}' if vaxisLogic.r4364_condition():
            # a49 # r4364
            $ vaxisLogic.r4364_action()
            jump vaxis_s19

        '"내 질문에 대답하지 않으면 당신이 세 걸음도 가기 전에 그 변장을 현실로 만들어 주겠소."{#vaxis_s10_r4365}' if vaxisLogic.r4365_condition():
            # a50 # r4365
            $ vaxisLogic.r4365_action()
            jump vaxis_s22

        '"좋소, 좋아… 난 떠나겠소."{#vaxis_s10_r4367}':
            # a51 # r4367
            jump vaxis_s4


# s11 # say4366
label vaxis_s11: # externs morte_s86
    nr '이 말에는 좀비도 고개를 끄덕인다. 당신이 생각하기에 그는 자신의 좀비 변장을 자랑스럽게 생각하고 있는 것 같다.{#vaxis_s11_}'

    menu:
        '"내가 탈출하는 걸 도와줄 수 있겠소?"{#vaxis_s11_r4368}' if vaxisLogic.r4368_condition():
            # a52 # r4368
            jump vaxis_s12

        '"그래 여기서 뭘 하고 있는 거요?"{#vaxis_s11_r4369}':
            # a53 # r4369
            jump vaxis_s28

        '거짓말: "그래 당신은 아나키스트의 스파이요? 나도 더스티를 염탐하고 있소… 하지만 지금은 그것에 대해 길게 얘기할 시간이 없소. 내 말뜻을 알겠소? 이 곳에서의 당신 *임무*는 무엇이오?"{#vaxis_s11_r4370}' if vaxisLogic.r4370_condition():
            # a54 # r4370
            $ vaxisLogic.r4370_action()
            jump vaxis_s28

        '거짓말: "그래 당신은 아나키스트의 스파이요? 나도 더스티를 염탐하고 있소… 하지만 지금은 그것에 대해 길게 얘기할 시간이 없소. 여기서 어떤 일을 하고 있소?"{#vaxis_s11_r4371}' if vaxisLogic.r4371_condition():
            # a55 # r4371
            $ vaxisLogic.r4371_action()
            jump vaxis_s28

        '"어, 지금은 얘기할 시간이 없소… 나중에 합시다."{#vaxis_s11_r4372}':
            # a56 # r4372
            jump vaxis_s4


# s12 # say4373
label vaxis_s12: # from 7.0 11.0
    nr '좀비는 관심이 있는 듯하다. "당신 문제 있어? 무슨 짓 했어?"{#vaxis_s12_}'

    menu:
        '"나는 위층에 있는 철판들 중 한 곳에서 깨어났소."{#vaxis_s12_r4374}':
            # a57 # r4374
            jump vaxis_s13

        '"어떤 이유에서인지는 모르겠으나 난 이 곳에 갇혔소. 날 도와줄 수 있겠소?"{#vaxis_s12_r4375}':
            # a58 # r4375
            jump vaxis_s31

        '"다른 기회에 얘기하도록 하겠소."{#vaxis_s12_r4376}':
            # a59 # r4376
            jump vaxis_s4


# s13 # say4377
label vaxis_s13: # from 12.0
    nr '좀비는 마치 미치광이라도 보는 듯한 눈으로 당신을 본다. "너 미쳤어?"{#vaxis_s13_}'

    menu:
        '"그래 나는 정말 미쳤소, 정말로."{#vaxis_s13_r4378}':
            # a60 # r4378
            jump vaxis_s14

        '"„바미?“ 그게 무슨 뜻이오?"{#vaxis_s13_r4379}' if vaxisLogic.r4379_condition():
            # a61 # r4379
            jump vaxis_s16

        '"„바미?“ 그게 무슨 뜻이오?"{#vaxis_s13_r4380}' if vaxisLogic.r4380_condition():
            # a62 # r4380
            jump morte_s87  # EXTERN

        '"믿기 어려울지도 모르겠지만 당신에게 거짓말을 하는 게 아니오. 나는 위층에 있는 철판들 중 한 곳에서 죽음으로부터 깨어났소."{#vaxis_s13_r4381}':
            # a63 # r4381
            $ vaxisLogic.r4381_action()
            jump vaxis_s14

        '"어, 아니오… 실은 난 이 곳에 갇혔소. 날 도와줄 수 있겠소?"{#vaxis_s13_r4382}':
            # a64 # r4382
            jump vaxis_s31

        '"우리가 한 얘기에 대해선 잊으시오. 이만 실례해야겠소."{#vaxis_s13_r4383}':
            # a65 # r4383
            jump vaxis_s4


# s14 # say4384
label vaxis_s14: # from 13.0 13.3 15.0
    nr '그는 당신을 쳐다본 후, 쉿 소리를 내며 저리 가라는 몸짓을 한다. "너 미쳤어! 꺼져!"{#vaxis_s14_}'

    menu:
        '"난 아무 곳에도 가지 않소. 여기서 당신이 뭘 하고 있는지 말하시오, 아니면 경비병들을 부를 테니."{#vaxis_s14_r4385}' if vaxisLogic.r4385_condition():
            # a66 # r4385
            jump vaxis_s21

        '"난 아무 곳에도 가지 않소. 여기서 당신이 뭘 하고 있는지 말하시오, 아니면 경비병들을 부를 테니."{#vaxis_s14_r4386}' if vaxisLogic.r4386_condition():
            # a67 # r4386
            jump vaxis_s17

        '"먼저 내 질문에 대답하시오, 아니면 그 변장이 현실이 되도록 만들 테니."{#vaxis_s14_r4387}' if vaxisLogic.r4387_condition():
            # a68 # r4387
            $ vaxisLogic.r4387_action()
            jump vaxis_s19

        '"먼저 내 질문에 대답하시오, 아니면 그 변장이 현실이 되도록 만들 테니."{#vaxis_s14_r4388}' if vaxisLogic.r4388_condition():
            # a69 # r4388
            $ vaxisLogic.r4388_action()
            jump vaxis_s22

        '"좋소, 좋아… 안녕히 계시오."{#vaxis_s14_r4389}':
            # a70 # r4389
            jump vaxis_s4


# s15 # say4390
label vaxis_s15: # externs morte_s88
    nr '가짜 좀비는 당신들 둘을 의심스러운 눈초리로 쳐다본다.{#vaxis_s15_}'

    menu:
        '"그건 사실이오. 난 여기에 있는 철판들 중 하나에서 깨어났소."{#vaxis_s15_r4391}':
            # a71 # r4391
            $ vaxisLogic.r4391_action()
            jump vaxis_s14

        '"어, 미안하오. 실은 난 이 곳에 갇혔소. 날 도와줄 수 있겠소?"{#vaxis_s15_r4392}':
            # a72 # r4392
            jump vaxis_s31

        '"관두시오. 그만 가봐야겠소."{#vaxis_s15_r4393}':
            # a73 # r4393
            jump vaxis_s4


# s16 # say4394
label vaxis_s16: # from 13.1
    nr '그는 당신을 쳐다본 후, 쉿 소리를 내며 저리 가라는 몸짓을 한다. "너 미쳤어! 바보! 꺼져!"{#vaxis_s16_}'

    menu:
        '"난 아무 곳에도 가지 않소. 여기서 당신이 뭘 하고 있는지 말하시오, 아니면 경비병들을 부를 테니."{#vaxis_s16_r4395}' if vaxisLogic.r4395_condition():
            # a74 # r4395
            jump vaxis_s21

        '"난 아무 곳에도 가지 않소. 여기서 당신이 뭘 하고 있는지 말하시오, 아니면 경비병들을 부를 테니."{#vaxis_s16_r4396}' if vaxisLogic.r4396_condition():
            # a75 # r4396
            jump vaxis_s17

        '"먼저 내 질문에 대답하시오, 아니면 그 변장이 현실이 되도록 만들 테니."{#vaxis_s16_r4397}' if vaxisLogic.r4397_condition():
            # a76 # r4397
            $ vaxisLogic.r4397_action()
            jump vaxis_s19

        '"먼저 내 질문에 대답하시오, 아니면 그 변장이 현실이 되도록 만들 테니."{#vaxis_s16_r4398}' if vaxisLogic.r4398_condition():
            # a77 # r4398
            $ vaxisLogic.r4398_action()
            jump vaxis_s22

        '"좋소, 좋아… 가겠소."{#vaxis_s16_r4399}':
            # a78 # r4399
            jump vaxis_s4


# s17 # say4400
label vaxis_s17: # from 7.5 10.1 14.1 16.1 25.3 27.3
    nr '그는 잠시 겁에 질린 듯하다, 그러나 당신을 살펴본 후 그는 조소하는 얼굴로 당신을 바라본다. "너 나한테 비밀 말하면 나도 *너*한테 비밀 말해. 난 날 도울 친구 있고, 넌 없어." 넌 여기 있으면 안돼. 더스티는 널 죽여. 난 탈출해."{#vaxis_s17_}'

    menu:
        '"내가 당신을 죽이면 당신은 탈출할 수가 없지. 자, 내 질문에 대답하시오, 아니면 그 변장이 현실이 되도록 만들 테니."{#vaxis_s17_r4401}' if vaxisLogic.r4401_condition():
            # a79 # r4401
            $ vaxisLogic.r4401_action()
            jump vaxis_s18

        '"내가 당신을 죽이면 당신은 탈출할 수가 없지. 자, 내 질문에 대답하시오, 아니면 그 변장이 현실이 되도록 만들 테니."{#vaxis_s17_r4402}' if vaxisLogic.r4402_condition():
            # a80 # r4402
            $ vaxisLogic.r4402_action()
            jump vaxis_s22

        '"그럼 지옥에나 떨어지라고. 난 떠나겠소."{#vaxis_s17_r4403}':
            # a81 # r4403
            jump vaxis_s4


# s18 # say4404
label vaxis_s18: # from 17.0
    nr '좀비는 눈을 좁게 뜨고 당신에게 야유한다. "네가 날 죽이겠다고? 난 날 도울 친구 있고, 넌 없어. 너 나 건드리면 내 친구 너 죽여"{#vaxis_s18_}'

    menu:
        '"그 위험은 감수하기로 하지. 죽을 준비나 하시오."{#vaxis_s18_r4405}':
            # a82 # r4405
            $ vaxisLogic.r4405_action()
            jump vaxis_dispose

        '"그럼 지옥에나 떨어지라고. 난 떠나겠소. 조심하는 게 좋을 거요… *좀비.*"{#vaxis_s18_r4406}':
            # a83 # r4406
            jump vaxis_s4


# s19 # say4407
label vaxis_s19: # from 7.6 10.2 14.2 16.2 25.4 27.4
    nr '그는 잠시 겁에 질린 듯하다, 그러나 당신 체격을 살펴본 후 그는 조소하는 얼굴로 당신을 바라본다. "네가 날 죽이겠다고? 난 날 도울 친구 있고, 넌 없어. 너 나 건드리면 내 친구 너 죽여"{#vaxis_s19_}'

    menu:
        '"그 위험은 감수하기로 하지. 죽을 준비나 하시오."{#vaxis_s19_r4408}':
            # a84 # r4408
            $ vaxisLogic.r4408_action()
            jump vaxis_dispose

        '"만약 내가 당신 변장을 경비병들에게 폭로한다면 어떻게 하겠소?"{#vaxis_s19_r4409}' if vaxisLogic.r4409_condition():
            # a85 # r4409
            jump vaxis_s21

        '"만약 내가 당신 변장을 경비병들에게 폭로한다면 어떻게 하겠소?"{#vaxis_s19_r4410}' if vaxisLogic.r4410_condition():
            # a86 # r4410
            jump vaxis_s20

        '"그럼 지옥에나 떨어지라고. 난 떠나겠소. 조심하는 게 좋을 거요… *좀비.*"{#vaxis_s19_r4411}':
            # a87 # r4411
            jump vaxis_s4


# s20 # say4412
label vaxis_s20: # from 19.2
    nr '좀비는 눈을 좁게 뜨고 당신에게 야유한다. "너 나한테 비밀 말하면 나도 *너*한테 비밀 말해. 난 날 도울 친구 있고, 넌 없어." 넌 여기 있으면 안돼. 더스티는 널 죽여. 난 탈출해."{#vaxis_s20_}'

    menu:
        '"그건 네 마지막 기회였다, 시체. 각오를 해라."{#vaxis_s20_r4413}':
            # a88 # r4413
            $ vaxisLogic.r4413_action()
            jump vaxis_dispose

        '"그럼 지옥에나 떨어지라고. 난 떠나겠소. 조심하는 게 좋을 거요… *좀비.*"{#vaxis_s20_r4414}':
            # a89 # r4414
            jump vaxis_s4


# s21 # say4415
label vaxis_s21: # from 7.4 10.0 14.0 16.0 19.1 25.2 27.2
    nr '당신 눈 안의 그 무언가가 그의 자신감을 무너트린 것 같다. "아니, 아냐! 경비 부르지 마!" 그는 겁에 질린 듯 하다. "난 더스티 염탐하고 내가 본 것 말할 뿐이야. 그거 뿐이야."{#vaxis_s21_}'

    menu:
        '"스파이? 누굴 위해?"{#vaxis_s21_r4416}':
            # a90 # r4416
            jump vaxis_s23

        '"더스트맨이 어떤 일을 하는 걸 보았소?"{#vaxis_s21_r4417}':
            # a91 # r4417
            jump vaxis_s29

        '"그 밖에도 물어보고 싶은 것들이 좀 있소…"{#vaxis_s21_r4418}':
            # a92 # r4418
            jump vaxis_s43

        '"내가 알고 싶었던 건 그게 전부요. 안녕히 계시오, *좀비.*"{#vaxis_s21_r4419}':
            # a93 # r4419
            jump vaxis_dispose


# s22 # say4420
label vaxis_s22: # from 7.7 10.3 14.3 16.3 17.1 25.5 27.5
    nr '"아니, 아냐! 나 해치지 마!" 좀비를 압도하는 당신의 근육이 그의 결정에 영향을 미친 것 같다. "나 해치지 마. 난 더스티 염탐하고 내가 본 것 말할 뿐이야. 그거 뿐이야."{#vaxis_s22_}'

    menu:
        '"스파이? 누굴 위해?"{#vaxis_s22_r4421}':
            # a94 # r4421
            jump vaxis_s23

        '"더스트맨이 어떤 일을 하는 걸 보았소?"{#vaxis_s22_r4422}':
            # a95 # r4422
            jump vaxis_s29

        '"그 밖에도 물어보고 싶은 것들이 좀 있소…"{#vaxis_s22_r4423}':
            # a96 # r4423
            jump vaxis_s43

        '"내가 알고 싶었던 건 그게 전부요. 이제 내 앞에서 비키시오, *좀비.*"{#vaxis_s22_r4424}':
            # a97 # r4424
            jump vaxis_dispose


# s23 # say4425
label vaxis_s23: # from 21.0 22.0
    nr '좀비는 겁에 질린 듯 입을 다문다. 그는 더 이상 말을 하려고 하지 않는다.{#vaxis_s23_}'

    menu:
        '"자, 말하시오. 당신은 누굴 위해 이 곳을 감시하고 있소?"{#vaxis_s23_r4426}' if vaxisLogic.r4426_condition():
            # a98 # r4426
            jump vaxis_s70

        '"자, 말하시오. 당신은 누굴 위해 이 곳을 감시하고 있소?"{#vaxis_s23_r4427}' if vaxisLogic.r4427_condition():
            # a99 # r4427
            jump morte_s89  # EXTERN

        '"만약 당신이 누굴 위해 염탐하고 있는지를 지금 내게 말해준다면 훨씬 덜 고통스러울 거요."{#vaxis_s23_r4428}' if vaxisLogic.r4428_condition():
            # a100 # r4428
            $ vaxisLogic.r4428_action()
            jump vaxis_s70

        '"만약 당신이 누굴 위해 염탐하고 있는지를 지금 내게 말해준다면 훨씬 덜 고통스러울 거요."{#vaxis_s23_r4429}' if vaxisLogic.r4429_condition():
            # a101 # r4429
            $ vaxisLogic.r4429_action()
            jump morte_s89  # EXTERN

        '"그럼 관두시오. 더스트맨이 어떤 일을 하는 걸 보았소?"{#vaxis_s23_r4430}':
            # a102 # r4430
            jump vaxis_s29

        '"다른 알고 싶은 것들이 있소…"{#vaxis_s23_r4431}':
            # a103 # r4431
            jump vaxis_s43

        '"관두시오, 그럼. 안녕히 계시오, *좀비.*"{#vaxis_s23_r4432}':
            # a104 # r4432
            jump vaxis_dispose


# s24 # say4433
label vaxis_s24: # from 3.3 6.3 8.2
    nr '"날 찾았어? 왜?" 그는 눈을 가늘게 뜨고 당신을 본다. "나한테 전할 메시지 있어?"{#vaxis_s24_}'

    menu:
        '거짓말: "그렇소, 당신을 위해 메시지를 가져왔소."{#vaxis_s24_r4434}':
            # a105 # r4434
            $ vaxisLogic.r4434_action()
            jump vaxis_s26

        '"누구로부터의 메시지 말이오?"{#vaxis_s24_r4435}':
            # a106 # r4435
            jump vaxis_s27

        '"아니, 내겐 아무런 메시지도 없소."{#vaxis_s24_r4436}':
            # a107 # r4436
            jump vaxis_s25


# s25 # say4437
label vaxis_s25: # from 24.2
    nr '화난 듯 쉿 소리를 낸다. "그럼 뭘 원해, 얼간아!"{#vaxis_s25_}'

    menu:
        '"나는 이 곳에서 나갈 방법을 찾고 있소. 날 도와줄 수 있겠소?"{#vaxis_s25_r4438}' if vaxisLogic.r4438_condition():
            # a108 # r4438
            jump vaxis_s31

        '"난 정보가 필요하오…"{#vaxis_s25_r4439}':
            # a109 # r4439
            jump vaxis_s43

        '"당신이 여기서 뭘 하고 있는지를 말하시오, 아니면 경비병들을 부를 테니."{#vaxis_s25_r4440}' if vaxisLogic.r4440_condition():
            # a110 # r4440
            jump vaxis_s21

        '"당신이 여기서 뭘 하고 있는지를 말하시오, 아니면 경비병들을 부를 테니."{#vaxis_s25_r4441}' if vaxisLogic.r4441_condition():
            # a111 # r4441
            jump vaxis_s17

        '"내 질문에 대답하지 않으면 당신이 세 걸음도 가기 전에 그 변장을 현실로 만들어 주겠소."{#vaxis_s25_r4442}' if vaxisLogic.r4442_condition():
            # a112 # r4442
            $ vaxisLogic.r4442_action()
            jump vaxis_s19

        '"내 질문에 대답하지 않으면 당신이 세 걸음도 가기 전에 그 변장을 현실로 만들어 주겠소."{#vaxis_s25_r4443}' if vaxisLogic.r4443_condition():
            # a113 # r4443
            $ vaxisLogic.r4443_action()
            jump vaxis_s22

        '"귀찮게 해서 미안하오… 당신이 누구든 간에. 안녕히 계시오."{#vaxis_s25_r4444}':
            # a114 # r4444
            jump vaxis_s4


# s26 # say4445
label vaxis_s26: # from 24.0
    nr '"무슨 메시지?"{#vaxis_s26_}'

    menu:
        '"당신은 내게 당신 임무에 대해 말할 의무가 있소."{#vaxis_s26_r4446}' if vaxisLogic.r4446_condition():
            # a115 # r4446
            jump vaxis_s28

        '거짓말: "당신에게 내릴 새로운 지령을 가지고 왔소"{#vaxis_s26_r4447}' if vaxisLogic.r4447_condition():
            # a116 # r4447
            $ vaxisLogic.r4447_action()
            jump vaxis_s30

        '거짓말: "당신에게… 내릴 새로운 지령을 가지고 왔소"{#vaxis_s26_r4448}' if vaxisLogic.r4448_condition():
            # a117 # r4448
            $ vaxisLogic.r4448_action()
            jump vaxis_s30

        '"미안하오, 내겐 메시지가 없소."{#vaxis_s26_r4449}':
            # a118 # r4449
            jump vaxis_s27

        '"관두시오. 귀찮게 해서 미안하오. 안녕히 계시오."{#vaxis_s26_r4450}':
            # a119 # r4450
            jump vaxis_s27


# s27 # say4451
label vaxis_s27: # from 24.1 26.3 26.4
    nr '그는 화가 난 듯 눈을 좁게 뜬다. "너 심부름꾼 아냐. 너 누구야?"{#vaxis_s27_}'

    menu:
        '"나는 이 곳에서 나갈 방법을 찾고 있소. 날 도와줄 수 있겠소?"{#vaxis_s27_r4452}' if vaxisLogic.r4452_condition():
            # a120 # r4452
            jump vaxis_s31

        '"내겐 정보가 필요하오…"{#vaxis_s27_r4453}':
            # a121 # r4453
            jump vaxis_s43

        '"당신이 여기서 뭘 하고 있는지를 말하시오, 아니면 경비병들을 부를 테니."{#vaxis_s27_r4454}' if vaxisLogic.r4454_condition():
            # a122 # r4454
            jump vaxis_s21

        '"당신이 여기서 뭘 하고 있는지를 말하시오, 아니면 경비병들을 부를 테니."{#vaxis_s27_r4455}' if vaxisLogic.r4455_condition():
            # a123 # r4455
            jump vaxis_s17

        '"질문을 하고 있는 건 나요, *좀비.* 당신이 누군지 말하지 않으면 그 변장이 현실이 되도록 만들겠소."{#vaxis_s27_r4456}' if vaxisLogic.r4456_condition():
            # a124 # r4456
            $ vaxisLogic.r4456_action()
            jump vaxis_s19

        '"질문을 하고 있는 건 나요, *좀비.* 당신이 누군지 말하지 않으면 그 변장이 현실이 되도록 만들겠소."{#vaxis_s27_r4457}' if vaxisLogic.r4457_condition():
            # a125 # r4457
            $ vaxisLogic.r4457_action()
            jump vaxis_s22

        '"귀찮게 해서 미안하오… 당신이 누구든 간에. 안녕히 계시오."{#vaxis_s27_r4458}':
            # a126 # r4458
            jump vaxis_s4


# s28 # say4459
label vaxis_s28: # from 8.3 8.4 11.1 11.2 11.3 26.0 30.0 43.5
    nr '"난 더스티 염탐하고 내가 본 것 말할 뿐이야. 그거 뿐이야."{#vaxis_s28_}'

    menu:
        '"더스트맨이 어떤 일을 하는 걸 보았소?"{#vaxis_s28_r4460}':
            # a127 # r4460
            jump vaxis_s29

        '"알겠소. 그 밖에도 당신에게 물어보고 싶은 것이 있소.{#vaxis_s28_r4461}':
            # a128 # r4461
            jump vaxis_s43

        '"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."{#vaxis_s28_r4462}':
            # a129 # r4462
            jump vaxis_dispose


# s29 # say4463
label vaxis_s29: # from 21.1 22.1 23.4 28.0 70.1 71.2
    nr '"아무 것도 없어. 그들 아무 일도 안해. 아무 것도 찾을 수 없어. 시체, 시체, 시체 뿐이야. 더스티는 아무 일도 안해." 그는 자신감에 차서 눈을 가늘게 뜬다. "그래도 난 감시해."{#vaxis_s29_}'

    menu:
        '"알겠소. 그 밖에도 당신에게 물어보고 싶은 것이 있소.{#vaxis_s29_r4464}':
            # a130 # r4464
            jump vaxis_s43

        '"내가 알고 싶었던 건 그것이 전부요. 안녕히 계시오."{#vaxis_s29_r4465}':
            # a131 # r4465
            jump vaxis_dispose


# s30 # say4466
label vaxis_s30: # from 26.1 26.2
    nr '그는 이해를 하려고 노력하는 듯 눈을 가늘게 뜬다. "무슨 명령?"{#vaxis_s30_}'

    menu:
        '"당신 임무에 대해 얘기하시오."{#vaxis_s30_r4467}':
            # a132 # r4467
            jump vaxis_s28

        '"나는 남의 눈에 띄지 않고 떠날 수 있는 탈출로를 찾아야만 하오."{#vaxis_s30_r4468}':
            # a133 # r4468
            jump vaxis_s49

        '"나는 당신과 임무를 교대하러 왔소. 당신의 모은 모든 정보와 소지품을 내게 주고 떠나도록 하시오."{#vaxis_s30_r4469}' if vaxisLogic.r4469_condition():
            # a134 # r4469
            $ vaxisLogic.j64517_s30_r4469_action()
            $ vaxisLogic.r4469_action()
            jump vaxis_s72

        '"나는 당신이 필요로 하는 모든 도움을 제공하러 이 곳에 왔소."{#vaxis_s30_r4470}':
            # a135 # r4470
            jump vaxis_s35

        '"당신의 새로운 지령은 다음 번까지 기다려야 할 것이오. 나중에 돌아오리다."{#vaxis_s30_r4471}':
            # a136 # r4471
            jump vaxis_dispose


# s31 # say4472
label vaxis_s31: # from 7.1 12.1 13.4 15.1 25.0 27.0 50.0
    nr '그는 잠시 아무 말도 하지 않는다. 그리고 이해했다는 듯 가볍게 고개를 끄덕인다. "왜 내가 너 도와야 하지?"{#vaxis_s31_}'

    menu:
        '"왜냐하면 내겐 당신 도움이 필요하기 때문이오."{#vaxis_s31_r4473}':
            # a137 # r4473
            jump vaxis_s32

        '"우리가 서로 돕는 것이 어떻겠소. 대가로 당신은 뭘 원하시오?"{#vaxis_s31_r4474}' if vaxisLogic.r4474_condition():
            # a138 # r4474
            $ vaxisLogic.r4474_action()
            jump vaxis_s35

        '"왜냐하면 만약 당신이 날 도울 경우… 내가 당신 변장을 폭로하지 않을 것이기 때문이오."{#vaxis_s31_r4475}' if vaxisLogic.r4475_condition():
            # a139 # r4475
            jump vaxis_s33

        '"왜냐하면 만약 당신이 날 도울 경우… 내가 당신 변장을 폭로하지 않을 것이기 때문이오."{#vaxis_s31_r4476}' if vaxisLogic.r4476_condition():
            # a140 # r4476
            jump vaxis_s34

        '"당신은 시체가 되기보다는 시체로 변장하는 것을 택할 사람 같소. 이유는 그걸로 충분하오?"{#vaxis_s31_r4477}' if vaxisLogic.r4477_condition():
            # a141 # r4477
            $ vaxisLogic.r4477_action()
            jump vaxis_s75

        '"당신은 시체가 되기보다는 시체로 변장하는 것을 택할 사람 같소. 이유는 그걸로 충분하오?"{#vaxis_s31_r4478}' if vaxisLogic.r4478_condition():
            # a142 # r4478
            $ vaxisLogic.r4478_action()
            jump vaxis_s33

        '"우리가 만난 사실에 대해 잊으시오.이만 실례해야겠소. 안녕히 계시오."{#vaxis_s31_r4479}':
            # a143 # r4479
            jump vaxis_s4


# s32 # say4480
label vaxis_s32: # from 31.0
    nr '좀비는 조소한다. "모두 뭘 원해, 하지만 아무도 주지 않아. 당신 내게 뭘 주면, 나도 도울지 몰라."{#vaxis_s32_}'

    menu:
        '"무엇이 필요하오?"{#vaxis_s32_r4481}':
            # a144 # r4481
            jump vaxis_s35

        '"당신이 날 도우면 나도 경비병을 부르지 않기로 하는 건 어떻겠소?"{#vaxis_s32_r4482}' if vaxisLogic.r4482_condition():
            # a145 # r4482
            jump vaxis_s33

        '"당신이 날 도우면 나도 경비병을 부르지 않기로 하는 건 어떻겠소?"{#vaxis_s32_r4483}' if vaxisLogic.r4483_condition():
            # a146 # r4483
            jump vaxis_s34

        '"당신은 내게 „노“라고 하기보다는 살아 숨쉬는 것을 택할 사람 같소. 자, 마지막으로 묻겠소: 어떻게 하면 여기서 나갈 수 있소?"{#vaxis_s32_r4484}' if vaxisLogic.r4484_condition():
            # a147 # r4484
            $ vaxisLogic.r4484_action()
            jump vaxis_s75

        '"당신은 내게 „노“라고 하기보다는 살아 숨쉬는 것을 택할 사람 같소. 자, 마지막으로 묻겠소: 어떻게 하면 여기서 나갈 수 있소?"{#vaxis_s32_r4485}' if vaxisLogic.r4485_condition():
            # a148 # r4485
            $ vaxisLogic.r4485_action()
            jump vaxis_s33

        '"관심없소. 안녕히 계시오."{#vaxis_s32_r4486}':
            # a149 # r4486
            jump vaxis_s4


# s33 # say4487
label vaxis_s33: # from 31.2 31.5 32.1 32.4 34.1 35.2 35.5 75.0
    nr '그는 자신이 당신을 처치할 수 있을지 알아보기라도 하듯 당신을 위아래로 살피고 당신 흉터들을 쳐다본 후, 그러지 않기로 결정한다, "흠… 전이문으로 탈출할 수 있어."{#vaxis_s33_}'

    menu:
        '"전이문?"{#vaxis_s33_r4672}':
            # a150 # r4672
            $ vaxisLogic.r4672_action()
            jump vaxis_s50


# s34 # say4491
label vaxis_s34: # from 31.3 32.2 35.3
    nr '그는 잠시 겁에 질린 듯하다, 그러나 당신을 살펴본 후 그는 조소하는 얼굴로 당신을 바라본다. "너 나한테 비밀 말하면 나도 *너*한테 비밀 말해. 난 날 도울 친구 있고, 넌 없어." 넌 여기 있으면 안돼. 더스티는 널 죽여. 난 탈출해."{#vaxis_s34_}'

    menu:
        '"내가 당신을 죽이면 당신은 탈출할 수 없을 거요. 자, 입을 열기 시작하시오, 아니면 그 변장을 현실로 만들어 줄 테니."{#vaxis_s34_r4489}' if vaxisLogic.r4489_condition():
            # a151 # r4489
            $ vaxisLogic.r4489_action()
            jump vaxis_s74

        '"내가 당신을 죽이면 당신은 탈출할 수 없을 거요. 자, 입을 열기 시작하시오, 아니면 그 변장을 현실로 만들어 줄 테니."{#vaxis_s34_r4490}' if vaxisLogic.r4490_condition():
            # a152 # r4490
            $ vaxisLogic.r4490_action()
            jump vaxis_s33

        '"그럼 지옥에나 떨어지라고. 난 떠나겠소."{#vaxis_s34_r4492}':
            # a153 # r4492
            jump vaxis_s4


# s35 # say4493
label vaxis_s35: # from 30.3 31.1 32.0
    nr '"어 날 위해 열쇠 가져다 줘. 난 쇠로 만든 처리실 열쇠 원해 ."{#vaxis_s35_}'

    menu:
        '"이 열쇠 말이오?"{#vaxis_s35_r4494}' if vaxisLogic.r4494_condition():
            # a154 # r4494
            $ vaxisLogic.r4494_action()
            jump vaxis_s42

        '"좋소. 열쇠는 어디 있소?"{#vaxis_s35_r4495}':
            # a155 # r4495
            jump vaxis_s36

        '"내겐 이런 데 허비할 시간이 없소. 내가 탈출하는 것을 도와주시오, 아니면 경비병들을 부르겠소."{#vaxis_s35_r4496}' if vaxisLogic.r4496_condition():
            # a156 # r4496
            $ vaxisLogic.r4496_action()
            jump vaxis_s33

        '"내겐 이런 데 허비할 시간이 없소. 내가 탈출하는 것을 도와주시오, 아니면 경비병들을 부르겠소."{#vaxis_s35_r4497}' if vaxisLogic.r4497_condition():
            # a157 # r4497
            $ vaxisLogic.r4497_action()
            jump vaxis_s34

        '"난 당신을 위해 아무런 심부름도 하지 않을 것이오. 내가 탈출하는 것을 도와주시오, 아니면 당신 목을 여기서 당장 부러트려 놓겠소."{#vaxis_s35_r4498}' if vaxisLogic.r4498_condition():
            # a158 # r4498
            $ vaxisLogic.r4498_action()
            jump vaxis_s75

        '"난 당신을 위해 아무런 심부름도 하지 않을 것이오. 내가 탈출하는 것을 도와주시오, 아니면 당신 목을 여기서 당장 부러트려 놓겠소."{#vaxis_s35_r4499}' if vaxisLogic.r4499_condition():
            # a159 # r4499
            $ vaxisLogic.r4499_action()
            jump vaxis_s33

        '"사양하겠소. 아마 다른 기회에."{#vaxis_s35_r4500}':
            # a160 # r4500
            jump vaxis_s4


# s36 # say4501
label vaxis_s36: # from 35.1 58.2
    nr '"더스티 계집이 가지고 있어." 그는 자신의 눈을 가리킨다. "그녀의 눈은 노란색이야…" 다음에 그는 손으로 한 쌍의 가위를 연상시키는 손짓을 한다. "손가락에 칼이 달렸어."{#vaxis_s36_}'

    menu:
        '"우리는 이미 연관이 되었소. 여기 열쇠가 있소."{#vaxis_s36_r4502}' if vaxisLogic.r4502_condition():
            # a161 # r4502
            $ vaxisLogic.r4502_action()
            jump vaxis_s42

        '"눈이 노랗고 손가락에 칼날이 달린… 여자 더스트맨 말이오? 나는 이미 그녀를 처리실에서 만났소. 기다리시오. 곧 열쇠를 가지고 돌아오리다."{#vaxis_s36_r64520}' if vaxisLogic.r64520_condition():
            # a162 # r64520
            $ vaxisLogic.j64519_s36_r64520_action()
            jump vaxis_s38

        '"여자 더스트맨… 노란 눈에다 손가락에는 칼날이 달린? 알았소. 열쇠를 가지고 돌아오리다."{#vaxis_s36_r4503}' if vaxisLogic.r4503_condition():
            # a163 # r4503
            $ vaxisLogic.j64518_s36_r4503_action()
            jump vaxis_s38

        '"이 여자 더스트맨은 참으로 매혹적이오. 당신은 정말로 내가 당신들 두 사람을 서로 소개시켜 주는 것을 원하지 않소?"{#vaxis_s36_r4504}':
            # a164 # r4504
            $ vaxisLogic.r4504_action()
            jump vaxis_s37


# s37 # say4505
label vaxis_s37: # from 36.3
    nr '좀비는 눈을 깜박인다. 그는 당신 말을 이해하지 못한 듯하다.{#vaxis_s37_}'

    menu:
        '"그건 농담이었소, 보시오, 당신… 관두시오. 가서 당신이 원하는 열쇠를 찾아 오겠소."{#vaxis_s37_r4506}' if vaxisLogic.r4506_condition():
            # a165 # r4506
            $ vaxisLogic.j64519_s37_r4506_action()
            jump vaxis_s38

        '"그건 농담이었소. 당신은… 관두시오. 가서 당신이 원하는 열쇠를 찾아오겠소."{#vaxis_s37_r66150}' if vaxisLogic.r66150_condition():
            # a166 # r66150
            $ vaxisLogic.j64518_s37_r66150_action()
            jump vaxis_s38


# s38 # say4507
label vaxis_s38: # from 36.1 36.2 37.0 37.1
    nr '좀비는 눈을 가늘게 뜨고 당신을 바라본다. "잡혀도 내 얘기 하지 마. 아니면 내가 너 잘 때 죽인다."{#vaxis_s38_}'

    menu:
        '"가서 당신이 원하는 열쇠를 찾아 오겠소… 하지만 함부로 협박 따위는 하지 않은 게 좋을 거요, 알겠소?"{#vaxis_s38_r4508}' if vaxisLogic.r4508_condition():
            # a167 # r4508
            $ vaxisLogic.r4508_action()
            jump vaxis_dispose

        '"곧 돌아오겠소."{#vaxis_s38_r4509}' if vaxisLogic.r4509_condition():
            # a168 # r4509
            $ vaxisLogic.r4509_action()
            jump vaxis_dispose

        '"가서 당신이 원하는 열쇠를 찾아 오겠소… 하지만 함부로 협박 따위는 하지 않은 게 좋을 거요, 알겠소?"{#vaxis_s38_r4510}' if vaxisLogic.r4510_condition():
            # a169 # r4510
            jump vaxis_dispose

        '"곧 돌아오겠소."{#vaxis_s38_r4511}' if vaxisLogic.r4511_condition():
            # a170 # r4511
            jump vaxis_dispose


# s39 # say4512
label vaxis_s39: # from 43.12
    nr '"나 변장 잘해. 내겐 상처도 있어. 난 향료도 많이 발랐어. 난 좋은 좀비야." 좀비는 꿰맨 입으로 킬킬거리더니 자신의 머리를 가볍게 두드린다. "더스티들은 바보야."{#vaxis_s39_}'

    jump morte_s93  # EXTERN


# s40 # say4514
label vaxis_s40: # -
    nr '"난 여기서 기다릴께. 열쇠 가져와." 좀비는 당신에게 역겨운 미소를 짓는다. "그럼 내가 너 도울께."{#vaxis_s40_}'

    menu:
        '"찾을 수가 있으면 가지고 돌아오겠소."{#vaxis_s40_r4515}':
            # a171 # r4515
            jump vaxis_dispose

        '"그럼 관두시오."{#vaxis_s40_r4516}':
            # a172 # r4516
            jump vaxis_dispose


# s41 # say4517
label vaxis_s41: # -
    nr '좀비는 눈을 크게 뜬다, 그리고 손을 내밀고 손가락을 튕겨 탁 소리를 낸다. "내게 그걸 줘."{#vaxis_s41_}'

    menu:
        '"잠깐 기다리시오. 먼저 원하는 것이 있소."{#vaxis_s41_r4518}':
            # a173 # r4518
            jump vaxis_dispose

        '"여기 있소."{#vaxis_s41_r4519}':
            # a174 # r4519
            $ vaxisLogic.r4519_action()
            jump vaxis_dispose


# s42 # say4520
label vaxis_s42: # from 35.0 36.0 58.0 58.1
    nr '좀비는 눈을 크게 뜬다, 그리고 당신 손으로부터 열쇠를 채 간다. 그는 계속 고개를 끄덕이며 그것을 돌려본다: "좋아… 좋아."{#vaxis_s42_}'

    menu:
        '"자… 어떻게 하면 여기서 나갈 수가 있소?"{#vaxis_s42_r4521}' if vaxisLogic.r4521_condition():
            # a175 # r4521
            $ vaxisLogic.j64521_s42_r4521_action()
            $ vaxisLogic.r4521_action()
            jump vaxis_s49

        '"자… 알고 싶은 것이 좀 있소…"{#vaxis_s42_r4522}' if vaxisLogic.r4522_condition():
            # a176 # r4522
            $ vaxisLogic.j64521_s42_r4522_action()
            $ vaxisLogic.r4522_action()
            jump vaxis_s43


# s43 # say4523
label vaxis_s43: # from 21.2 22.2 23.5 25.1 27.1 28.1 29.0 42.1 44.2 45.1 46.2 47.2 48.0 51.1 52.0 53.0 54.0 56.0 58.3 59.0 60.3 61.4 62.3 63.1 64.0 70.2 71.3 77.0
    nr '"뭘 알고 싶어?"{#vaxis_s43_}'

    menu:
        '"어떻게 하면 이 곳에서 탈출할 수가 있소?"{#vaxis_s43_r64508}' if vaxisLogic.r64508_condition():
            # a177 # r64508
            jump vaxis_s49

        '"어떻게 하면 여기서 탈출할 수가 있소?"{#vaxis_s43_r4524}' if vaxisLogic.r4524_condition():
            # a178 # r4524
            jump vaxis_s49

        '"당신이 말한 전이문이 어디 있는지 다시 말해주겠소?"{#vaxis_s43_r4525}' if vaxisLogic.r4525_condition():
            # a179 # r4525
            jump vaxis_s52

        '"나를 좀비로 변장시켜 줄 수 있겠소?"{#vaxis_s43_r4526}' if vaxisLogic.r4526_condition():
            # a180 # r4526
            jump vaxis_s63

        '"나를 다시 좀비로 변장시켜 줄 수 있겠소?"{#vaxis_s43_r4527}' if vaxisLogic.r4527_condition():
            # a181 # r4527
            jump vaxis_s63

        '"여기서 뭘 하는 거요?"{#vaxis_s43_r4528}' if vaxisLogic.r4528_condition():
            # a182 # r4528
            jump vaxis_s28

        '"파로드란 이름의 사람을 아시오?"{#vaxis_s43_r4673}' if vaxisLogic.r4673_condition():
            # a183 # r4673
            jump vaxis_s44

        '"나는 일지를 잃어버렸소. 혹시 본 적이 있소?"{#vaxis_s43_r4530}' if vaxisLogic.r4530_condition():
            # a184 # r4530
            jump vaxis_s47

        '"달에 대해 아는 것을 얘기해줄 수 있겠소?"{#vaxis_s43_r4531}' if vaxisLogic.r4531_condition():
            # a185 # r4531
            jump vaxis_s53

        '"데이오나라에 대해 아는 것을 얘기해줄 수 있겠소?"{#vaxis_s43_r4532}' if vaxisLogic.r4532_condition():
            # a186 # r4532
            jump vaxis_s54

        '"소에고에 대해 아는 것을 얘기해줄 수 있겠소?"{#vaxis_s43_r4533}' if vaxisLogic.r4533_condition():
            # a187 # r4533
            jump vaxis_s55

        '"어떻게 해서 그런 모습을 하게 된 거요?{#vaxis_s43_r4534}' if vaxisLogic.r4534_condition():
            # a188 # r4534
            jump vaxis_s60

        '"어떻게 해서 그런 모습을 하게 된 거요?{#vaxis_s43_r4535}' if vaxisLogic.r4535_condition():
            # a189 # r4535
            jump vaxis_s39

        '"관두시오. 나중에 질문할 것이 생길지도 모르니 아무데도 가지 마시오."{#vaxis_s43_r4536}':
            # a190 # r4536
            jump vaxis_dispose


# s44 # say4537
label vaxis_s44: # from 43.6
    nr '"훠로드?" 좀비는 생각에 잠긴 듯 잠시 눈살을 찌푸린다. "난… 그가 벌통 어딘가에 산다고 들었어." 그는 고개를 젓는다. "정확히 어딘지는 몰라." 그는 다시 눈살을 찌푸린다. "더스티들은 화났어, 그들 훠로드 싫어해."{#vaxis_s44_}'

    menu:
        '"벌통?"{#vaxis_s44_r4538}':
            # a191 # r4538
            jump vaxis_s45

        '"더스트맨이 왜 파로드를 싫어하오?"{#vaxis_s44_r4539}':
            # a192 # r4539
            $ vaxisLogic.j64522_s44_r4539_action()
            jump vaxis_s46

        '"그 밖에도 알고 싶은 것이 있소…"{#vaxis_s44_r4540}':
            # a193 # r4540
            jump vaxis_s43

        '"관두시오. 나중에 질문할 것이 생길지도 모르니 아무데도 가지 마시오."{#vaxis_s44_r4541}':
            # a194 # r4541
            jump vaxis_dispose


# s45 # say4542
label vaxis_s45: # from 44.0
    nr '"이 곳 밖의 빈민굴."{#vaxis_s45_}'

    menu:
        '"더스트맨이 왜 파로드를 싫어하오?"{#vaxis_s45_r4543}':
            # a195 # r4543
            $ vaxisLogic.j64522_s45_r4543_action()
            jump vaxis_s46

        '"그 밖에도 알고 싶은 것이 있소…"{#vaxis_s45_r4544}':
            # a196 # r4544
            jump vaxis_s43

        '"관두시오. 나중에 질문할 것이 생길지도 모르니 아무데도 가지 마시오."{#vaxis_s45_r4545}':
            # a197 # r4545
            jump vaxis_dispose


# s46 # say4546
label vaxis_s46: # from 44.1 45.0
    nr '"그는 수집자야. 시체안치소에 시체를 가져와 더스트맨에게 팔아. 시체를 많이 많이 가져와. 더스티들은 그거 어디서 시체 가져오는지 몰라. 그가 사람들을 죽인다고 생각하는 거 같아."{#vaxis_s46_}'

    menu:
        '"어… 뭐라고?"{#vaxis_s46_r4547}' if vaxisLogic.r4547_condition():
            # a198 # r4547
            jump vaxis_s48

        '"어… 뭐라고?"{#vaxis_s46_r4548}' if vaxisLogic.r4548_condition():
            # a199 # r4548
            jump morte_s91  # EXTERN

        '"아. 그 밖에도 알고 싶은 것이 있소…"{#vaxis_s46_r4549}':
            # a200 # r4549
            jump vaxis_s43

        '"관두시오. 나중에 질문할 것이 생길지도 모르니 아무데도 가지 마시오."{#vaxis_s46_r4550}':
            # a201 # r4550
            jump vaxis_dispose


# s47 # say4551
label vaxis_s47: # from 43.7
    nr '"몰라. 어떤 자식이 널 털었어?"{#vaxis_s47_}'

    menu:
        '"어… 뭐라고?"{#vaxis_s47_r4552}' if vaxisLogic.r4552_condition():
            # a202 # r4552
            jump vaxis_s48

        '"어… 뭐라고?"{#vaxis_s47_r4553}' if vaxisLogic.r4553_condition():
            # a203 # r4553
            jump morte_s92  # EXTERN

        '"아. 그 밖에도 알고 싶은 것이 있소…"{#vaxis_s47_r4554}':
            # a204 # r4554
            jump vaxis_s43

        '"관두시오. 나중에 질문할 것이 생길지도 모르니 아무데도 가지 마시오."{#vaxis_s47_r4555}':
            # a205 # r4555
            jump vaxis_dispose


# s48 # say4556
label vaxis_s48: # from 46.0 47.0
    nr '좀비는 말을 하려다 멈추고, 다시 말을 하려다 어깨를 으쓱한다. 아무래도 그보다 더 명료하게 설명을 할 수가 없는 것 같다.{#vaxis_s48_}'

    menu:
        '"아. 그 밖에도 알고 싶은 것이 있소…"{#vaxis_s48_r4557}':
            # a206 # r4557
            jump vaxis_s43

        '"관두시오. 나중에 질문할 것이 생길지도 모르니 아무데도 가지 마시오."{#vaxis_s48_r4558}':
            # a207 # r4558
            jump vaxis_dispose


# s49 # say4559
label vaxis_s49: # from 30.1 42.0 43.0 43.1
    nr '좀비는 툴툴거린다. "전이문으로 탈출할 수 있어." 그는 손을 흔든다. "푹."{#vaxis_s49_}'

    menu:
        '"문? 무슨 문 말이오?"{#vaxis_s49_r4560}':
            # a208 # r4560
            jump vaxis_s50


# s50 # say4563
label vaxis_s50: # from 33.0 49.0
    nr '"전이문들…" 좀비는 손으로 주변을 가리킨다. "전이문은 모든 곳에 있어."{#vaxis_s50_}'

    menu:
        '"내게 이러한 전이문들 중 하나를 보여줄 수 있겠소?"{#vaxis_s50_r4564}' if vaxisLogic.r4564_condition():
            # a209 # r4564
            jump vaxis_s31

        '"내게 이러한 전이문들 중 하나를 보여줄 수 있겠소?"{#vaxis_s50_r64509}' if vaxisLogic.r64509_condition():
            # a210 # r64509
            jump vaxis_s51

        '"내게 이러한 전이문들 중 하나를 보여줄 수 있겠소?"{#vaxis_s50_r64510}' if vaxisLogic.r64510_condition():
            # a211 # r64510
            jump vaxis_s51

        '"내게 이러한 전이문들 중 하나를 보여줄 수 있겠소?"{#vaxis_s50_r64511}' if vaxisLogic.r64511_condition():
            # a212 # r64511
            jump vaxis_s51


# s51 # say4567
label vaxis_s51: # from 50.1 50.2 50.3 72.0
    nr '좀비는 고개를 끄덕인다. "나가고 싶으면 1층 북서쪽 방에 있는 아치로 가… 넌 손가락뼈 필요해, 갈고리 모양의." 그는 자신의 집게손가락을 치켜들어 갈고리 모양으로 구부린다. "열쇠를 찾으면 아치를 통해, 비밀 묘지로 간 다음 가기서부터 탈출을 할 수 있어. 비밀 탈출 루트." 그는 열심히 고개를 끄덕인다. "넌 거기서 쉴 수 있어."{#vaxis_s51_}'

    menu:
        '"굽은 손가락뼈? 그것은 어디서 얻을 수가 있소?"{#vaxis_s51_r64527}' if vaxisLogic.r64527_condition():
            # a213 # r64527
            $ vaxisLogic.j64528_s51_r64527_action()
            $ vaxisLogic.r64527_action()
            jump vaxis_s77

        '"그 밖에도 물어보고 싶은 것들이 좀 있소…"{#vaxis_s51_r4568}' if vaxisLogic.r4568_condition():
            # a214 # r4568
            $ vaxisLogic.j64529_s51_r4568_action()
            $ vaxisLogic.r4568_action()
            jump vaxis_s43

        '"1층 북서쪽 방의 아치? 알겠소, 가서 확인해 보겠소."{#vaxis_s51_r4569}' if vaxisLogic.r4569_condition():
            # a215 # r4569
            $ vaxisLogic.j64529_s51_r4569_action()
            $ vaxisLogic.r4569_action()
            jump vaxis_dispose


# s52 # say4570
label vaxis_s52: # from 43.2
    nr '"잘 듣고 기억하라고!" 좀비는 화난 듯하다. "아치, 1층, 북서쪽…" 그는 자신의 집게손가락을 치켜들어 구부린다. "넌 굽은 손가락뼈 필요해. 너는 비밀 묘지로 가게 돼. 탈출 루트. 거기선 쉴 수가 있어."{#vaxis_s52_}'

    menu:
        '"그 밖에도 알고 싶은 것이 있소…"{#vaxis_s52_r4571}':
            # a216 # r4571
            jump vaxis_s43

        '"1층 북서쪽 방의 아치, 구부러진 손가락뼈로 열린다? 좋소, 이번에는 알아들었소."{#vaxis_s52_r4572}':
            # a217 # r4572
            jump vaxis_dispose


# s53 # say4573
label vaxis_s53: # from 43.8
    nr '"서기." 어깨를 으쓱한다. "늙은이."{#vaxis_s53_}'

    menu:
        '"더 이상 얘기할 것은 없을 것 같소. 다른 것에 대해 알고 싶소…"{#vaxis_s53_r4574}':
            # a218 # r4574
            jump vaxis_s43

        '"관두시오. 나중에 질문할 것이 생길지도 모르니 아무데도 가지 마시오."{#vaxis_s53_r4575}':
            # a219 # r4575
            jump vaxis_dispose


# s54 # say4576
label vaxis_s54: # from 43.9
    nr '"허?" 눈살을 찌푸린다. "그녀 누구?"{#vaxis_s54_}'

    menu:
        '"관두시오. 다른 것에 대해 알고 싶소…"{#vaxis_s54_r4577}':
            # a220 # r4577
            jump vaxis_s43

        '"관두시오. 나중에 질문할 것이 생길지도 모르니 아무데도 가지 마시오."{#vaxis_s54_r4578}':
            # a221 # r4578
            jump vaxis_dispose


# s55 # say4579
label vaxis_s55: # from 43.10
    nr '"가이드. 시체안치소 장문에 있어. 그로부터 뭘 원해?"{#vaxis_s55_}'

    menu:
        '"그에 대해 뭘 아시오?"{#vaxis_s55_r4580}':
            # a222 # r4580
            $ vaxisLogic.j64530_s55_r4580_action()
            $ vaxisLogic.r4580_action()
            jump vaxis_s56

        '"관두시오. 나중에 질문할 것이 생길지도 모르니 아무데도 가지 마시오."{#vaxis_s55_r4581}':
            # a223 # r4581
            jump vaxis_dispose


# s56 # say4582
label vaxis_s56: # from 55.0
    nr '"이상하게 행동해. 더스티도 아니고 아나키스트도 아냐. 눈이 변했어…" 어깨를 으쓱한다. "쥐같다고. 이상해."{#vaxis_s56_}'

    menu:
        '"이 근방에서 이상한 사람이 그뿐이라니 참으로 다행한 일이군. 그 밖에도 알고 싶은 것이 좀 있소…"{#vaxis_s56_r4583}':
            # a224 # r4583
            jump vaxis_s43

        '"관두시오. 나중에 질문할 것이 생길지도 모르니 아무데도 가지 마시오."{#vaxis_s56_r4584}':
            # a225 # r4584
            jump vaxis_dispose


# s57 # say4585
label vaxis_s57: # - # IF ~  GlobalGT("Vaxis","GLOBAL",0)
    nr '가짜 좀비가 보인다. 당신은 그의 변장에 감탄하지 않을 수 없다… 그의 숨소리는 얼마나 미약한지 거의 눈치채지 못할 정도이다.{#vaxis_s57_}'

    menu:
        '"안녕하시오."{#vaxis_s57_r4586}' if vaxisLogic.r4586_condition():
            # a226 # r4586
            jump vaxis_s58

        '"안녕하시오."{#vaxis_s57_r4587}' if vaxisLogic.r4587_condition():
            # a227 # r4587
            jump vaxis_s58

        '"안녕하시오."{#vaxis_s57_r4588}' if vaxisLogic.r4588_condition():
            # a228 # r4588
            jump vaxis_s59

        '"안녕하시오."{#vaxis_s57_r4589}' if vaxisLogic.r4589_condition():
            # a229 # r4589
            jump vaxis_s58

        '그를 그냥 내버려 둔다.{#vaxis_s57_r4590}':
            # a230 # r4590
            jump vaxis_dispose


# s58 # say4591
label vaxis_s58: # from 57.0 57.1 57.3
    nr '좀비는 주위에 누가 없는 지 살핀 후 당신을 향해 몸을 돌린다. "뭐야?"{#vaxis_s58_}'

    menu:
        '"당신이 원했던 처리실 열쇠가 여기 있소."{#vaxis_s58_r4592}' if vaxisLogic.r4592_condition():
            # a231 # r4592
            $ vaxisLogic.r4592_action()
            jump vaxis_s42

        '"당신이 원했던 처리실 열쇠가 여기 있소."{#vaxis_s58_r4593}' if vaxisLogic.r4593_condition():
            # a232 # r4593
            $ vaxisLogic.r4593_action()
            jump vaxis_s42

        '"당신이 말한 열쇠가 어디 있는지 다시 얘기해주겠소?"{#vaxis_s58_r4594}' if vaxisLogic.r4594_condition():
            # a233 # r4594
            jump vaxis_s36

        '"당신에게 질문할 것들이 좀 있소…"{#vaxis_s58_r4595}':
            # a234 # r4595
            jump vaxis_s43

        '"관두시오.{#vaxis_s58_r4596}':
            # a235 # r4596
            jump vaxis_dispose


# s59 # say4597
label vaxis_s59: # from 57.2
    nr '좀비는 주위에 누가 없는 지 살핀 후, 쉿 소리를 내며 당신에게 딴 데로 가라는 몸짓을 한다 . "꺼져! 꺼지라고!"{#vaxis_s59_}'

    menu:
        '"아니오. 당신에게 먼저 물어볼 것들이 있소…"{#vaxis_s59_r4598}':
            # a236 # r4598
            jump vaxis_s43

        '"그럼 관두시오."{#vaxis_s59_r4599}' if vaxisLogic.r4599_condition():
            # a237 # r4599
            jump vaxis_s4

        '"그럼 관두시오."{#vaxis_s59_r4600}' if vaxisLogic.r4600_condition():
            # a238 # r4600
            jump vaxis_dispose


# s60 # say4601
label vaxis_s60: # from 43.11
    nr '"나 변장 잘해. 내겐 상처도 있어. 난 향료도 많이 발랐어. 난 좋은 좀비야." 좀비는 꿰맨 입으로 킬킬거리더니 자신의 머리를 가볍게 두드린다. "더스티들은 바보야."{#vaxis_s60_}'

    menu:
        '"그래 그들은 정말 바보들이오."{#vaxis_s60_r4602}':
            # a239 # r4602
            jump vaxis_s61

        '"아프진 않소?"{#vaxis_s60_r4603}':
            # a240 # r4603
            jump vaxis_s62

        '"그 변장은 상당히 훌륭하오. 그래서 말인데… 나도 좀비로 변장시켜 줄 수 있겠소?"{#vaxis_s60_r4604}' if vaxisLogic.r4604_condition():
            # a241 # r4604
            jump vaxis_s63

        '"그 밖에도 알고 싶은 것이 있소…"{#vaxis_s60_r4605}':
            # a242 # r4605
            jump vaxis_s43

        '"실례해야겠소. 안녕히 계시오."{#vaxis_s60_r4606}':
            # a243 # r4606
            jump vaxis_dispose


# s61 # say4607
label vaxis_s61: # from 60.0
    nr '좀비는 비꼬아서 한 말이란 눈치채지 못한 모양이다. "바보 같은 더스티들. 난 좋은 좀비야."{#vaxis_s61_}'

    menu:
        '"아프진 않소?"{#vaxis_s61_r4608}':
            # a244 # r4608
            jump vaxis_s62

        '"그 변장은 상당히 훌륭하오. 나도 좀비로 변장시켜 줄 수 있겠소?"{#vaxis_s61_r4609}' if vaxisLogic.r4609_condition():
            # a245 # r4609
            jump vaxis_s63

        '"그 밖에도 알고 싶은 것이 있소…"{#vaxis_s61_r4610}' if vaxisLogic.r4610_condition():
            # a246 # r4610
            jump vaxis_s64

        '"실례해야겠소. 안녕히 계시오."{#vaxis_s61_r4611}' if vaxisLogic.r4611_condition():
            # a247 # r4611
            jump vaxis_s64

        '"그 밖에도 알고 싶은 것이 있소…"{#vaxis_s61_r4612}' if vaxisLogic.r4612_condition():
            # a248 # r4612
            jump vaxis_s43

        '"실례해야겠소. 안녕히 계시오."{#vaxis_s61_r4613}' if vaxisLogic.r4613_condition():
            # a249 # r4613
            jump vaxis_dispose


# s62 # say4614
label vaxis_s62: # from 60.1 61.0
    nr '그는 당신 흉터들을 바라본다. "나도 같은 질문을 하고 싶은데. 난 별로 아프지 않아." 그는 자기 가슴을 두드린다. "나 튼튼해."{#vaxis_s62_}'

    menu:
        '"그 변장은 상당히 훌륭하오. 나도 좀비로 변장시켜 줄 수 있겠소?"{#vaxis_s62_r4615}' if vaxisLogic.r4615_condition():
            # a250 # r4615
            jump vaxis_s63

        '"그 밖에도 알고 싶은 것이 있소…"{#vaxis_s62_r4616}' if vaxisLogic.r4616_condition():
            # a251 # r4616
            jump vaxis_s64

        '"실례해야겠소. 안녕히 계시오."{#vaxis_s62_r4617}' if vaxisLogic.r4617_condition():
            # a252 # r4617
            jump vaxis_s64

        '"그 밖에도 알고 싶은 것이 있소…"{#vaxis_s62_r4618}' if vaxisLogic.r4618_condition():
            # a253 # r4618
            jump vaxis_s43

        '"실례해야겠소. 안녕히 계시오."{#vaxis_s62_r4674}' if vaxisLogic.r4674_condition():
            # a254 # r4674
            jump vaxis_dispose


# s63 # say4619
label vaxis_s63: # from 43.3 43.4 60.2 61.1 62.0 64.1 64.2
    nr '그는 몇 초 동안 당신을 위아래로 살핀다, 그리고 스스로에게 뭐라고 중얼거린 다음 고개를 끄덕인다. "어. 향료 한 단지가 필요해." 그는 당신 가슴에 난 흉터들을 가리킨다. "그리고 바늘과 실도 좀 필요해."{#vaxis_s63_}'

    menu:
        '"여기 있소."{#vaxis_s63_r4620}' if vaxisLogic.r4620_condition():
            # a255 # r4620
            $ vaxisLogic.r4620_action()
            jump vaxis_s65

        '"생각해 보겠소. 그 밖에도 질문할 것들이 좀 있소…"{#vaxis_s63_r4621}':
            # a256 # r4621
            $ vaxisLogic.r4621_action()
            jump vaxis_s43

        '"사양하겠소. 아마 다른 기회에… 안녕히 계시오."{#vaxis_s63_r4622}':
            # a257 # r4622
            $ vaxisLogic.r4622_action()
            jump vaxis_dispose

        '"약간의 향료와 실? 가서 구할 수 있는지 알아보겠소.{#vaxis_s63_r4623}':
            # a258 # r4623
            $ vaxisLogic.r4623_action()
            jump vaxis_dispose


# s64 # say4624
label vaxis_s64: # from 61.2 61.3 62.1 62.2
    nr '그는 기묘한 표정으로 당신을 위아래로 살핀다. "넌 좋은 좀비가 되겠어. 난 너 좀비로 만들어 줄 수 있어. 좋은 변장."{#vaxis_s64_}'

    menu:
        '"어쨌든 고맙소. 당신에게 물어볼 것들이 더 있소…"{#vaxis_s64_r4625}':
            # a259 # r4625
            $ vaxisLogic.r4625_action()
            jump vaxis_s43

        '"물론이오. 해줄 수 있겠소?"{#vaxis_s64_r4626}':
            # a260 # r4626
            jump vaxis_s63

        '"사양할 이유는 없소. 난 이미 걸어다니는 시체가 된 기분이니까."{#vaxis_s64_r4627}':
            # a261 # r4627
            jump vaxis_s63

        '"아니… 아니오… 괜찮소. 안녕히 계시오."{#vaxis_s64_r4628}':
            # a262 # r4628
            $ vaxisLogic.r4628_action()
            jump vaxis_dispose


# s65 # say4629
label vaxis_s65: # from 63.0
    nr '좀비는 당신으로부터 아이템들을 받은 후 작업을 개시한다…{#vaxis_s65_}'

    menu:
        '움직이지 말고 가만히 있는다.{#vaxis_s65_r4630}' if vaxisLogic.r4630_condition():
            # a263 # r4630
            $ vaxisLogic.r4630_action()
            jump vaxis_s66

        '움직이지 말고 가만히 있는다.{#vaxis_s65_r4631}' if vaxisLogic.r4631_condition():
            # a264 # r4631
            $ vaxisLogic.r4631_action()
            jump morte_s94  # EXTERN

        '움직이지 말고 가만히 있는다.{#vaxis_s65_r4632}' if vaxisLogic.r4632_condition():
            # a265 # r4632
            $ vaxisLogic.r4632_action()
            jump vaxis_s66

        '가만히 있으려고 노력한다.{#vaxis_s65_r64533}' if vaxisLogic.r64533_condition():
            # a266 # r64533
            $ vaxisLogic.r64533_action()
            jump vaxis_s66


# s66 # say4633
label vaxis_s66: # from 65.0 65.2 65.3
    nr '좀비는 당신 몸에 향료를 잔뜩 바른 후 당신의 흉터 여러 곳을 꿰맨다. 그는 발로부터 시작하여 위쪽으로 올라가며 당신 흉터들을 꿰맨 다음, 당신 입술을 꿰매어 변장을 완성시킨다.{#vaxis_s66_}'

    menu:
        '"음-음-음… 코맙쏘."{#vaxis_s66_r4634}' if vaxisLogic.r4634_condition():
            # a267 # r4634
            jump vaxis_s67

        '"음-음-음… 코맙쏘."{#vaxis_s66_r4635}' if vaxisLogic.r4635_condition():
            # a268 # r4635
            $ vaxisLogic.r4635_action()
            jump morte_s95  # EXTERN

        '"음-음-음… 코맙쏘."{#vaxis_s66_r4636}' if vaxisLogic.r4636_condition():
            # a269 # r4636
            jump vaxis_s67


# s67 # say4637
label vaxis_s67: # from 66.0 66.2
    nr '좀비는 손을 치켜 올린다. "조심해! 말을 하면 꿰맨 곳이 터져 변장을 망쳐! 좀비는 말 안 해. 할 말이 있으면 천천히 조심스럽게 해."  주: 아무도 좀비가 말하리라고는 생각하지 않는다. 만약 좀비로 변장한 채 다른 사람에게 말을 걸면 변장이 탄로날 위험이 있다.{#vaxis_s67_}'

    menu:
        '"음… 음. 알겠소…"{#vaxis_s67_r4638}':
            # a270 # r4638
            $ vaxisLogic.j64531_s67_r4638_action()
            jump vaxis_s68


# s68 # say4639
label vaxis_s68: # from 67.0
    nr '좀비는 눈살을 찌푸린다. "변장은 오래 가지 않아… 향료는 말라 버리고 꿰맨 실들도 떨어져 나가." 그는 어깨를 으쓱한다. "아마 시체안치소 밖까지 유지되지는 못할 거야. 그리고 달리지 마! 달리면 변장을 다 망쳐."  주: 무기를 장비하거나 달리면 변장은 즉시 무효화된다. 새로운 무기를 발견하더라도 변장을 해제하고 싶을 때까지 장비를 미루는 것이 좋다. 만약 뛰어서 이동하는 것이 기본 설정으로 되어 있다면, 백시즈에게 변장을 부탁하기 전에 설정을 변경해야 한다.{#vaxis_s68_}'

    menu:
        '다시 고개를 끄덕이고 떠난다.{#vaxis_s68_r4640}':
            # a271 # r4640
            jump vaxis_dispose


# s69 # say4641
label vaxis_s69: # -
    nr '„좀비“는 눈살을 찌푸린다. "넌 낯이 익어. 내가 전에 너 본 적 있어?"{#vaxis_s69_}'

    menu:
        '"아마 그럴지도. 날 어디서 보았소?"{#vaxis_s69_r4642}':
            # a272 # r4642
            jump vaxis_dispose

        'X.{#vaxis_s69_r4643}':
            # a273 # r4643
            jump vaxis_dispose


# s70 # say4644
label vaxis_s70: # from 23.0 23.2 71.0 71.1
    nr '놀랍게도 좀비는 당신으로부터 고개를 돌린다… 그는 두려운 듯한 눈빛으로 주변을 살피기 시작한다.{#vaxis_s70_}'

    menu:
        '"말하지 않겠다는 거요? 그럼 비명을 지를 준비를 하시오."{#vaxis_s70_r4645}':
            # a274 # r4645
            $ vaxisLogic.r4645_action()
            jump vaxis_dispose

        '"그럼 관두시오. 더스트맨이 어떤 일을 하는 걸 보았소?"{#vaxis_s70_r4646}':
            # a275 # r4646
            jump vaxis_s29

        '"그 밖에도 알고 싶은 것이 있소…"{#vaxis_s70_r4647}':
            # a276 # r4647
            jump vaxis_s43

        '"그럼 관두시오. 안녕히 계시오, *좀비.*"{#vaxis_s70_r4648}':
            # a277 # r4648
            jump vaxis_dispose


# s71 # say4649
label vaxis_s71: # externs morte_s90
    nr '좀비는 당신들 둘을 두려운 눈빛으로 바라보고 있다. 그는 아직도 조용하다… 그의 표정으로 미루어 볼 때 모트의 추측이 맞는 것 같다.{#vaxis_s71_}'

    menu:
        '"아나키스트? 당신은 그들을 위해 이 곳을 감시하는 거요?{#vaxis_s71_r4650}':
            # a278 # r4650
            jump vaxis_s70

        '"왜 아나키스트가 당신으로 하여금 이 곳을 감시하게 하는지를 지금 내게 말해주면 훨씬 덜 고통스러울 거요."{#vaxis_s71_r4651}':
            # a279 # r4651
            $ vaxisLogic.r4651_action()
            jump vaxis_s70

        '"그럼 관두시오. 더스트맨이 어떤 일을 하는 걸 보았소?"{#vaxis_s71_r4652}':
            # a280 # r4652
            jump vaxis_s29

        '"그 밖에도 알고 싶은 것이 있소…"{#vaxis_s71_r4653}':
            # a281 # r4653
            jump vaxis_s43

        '"그럼 관두시오. 안녕히 계시오, *좀비.*"{#vaxis_s71_r4654}':
            # a282 # r4654
            jump vaxis_dispose


# s72 # say4655
label vaxis_s72: # from 30.2
    nr '좀비는 실망한 듯하다, 그러나 그는 어깨를 으쓱한 다음 자신의 얼룩진 튜닉에 손을 집어 넣고 뒤적거리기 시작한다. "조용했어. 더스티들은 조용했어. 지난번 보고 이후 새로운 건 아무 것도 없어." 잠시 후 그는 툴툴거리면서 당신에게 몇 개의 아이템을 넘겨 준다. "여기 있어." 냄새를 미루어 볼 때 그것들은 수색을 받더라도 발견되지 않을 곳에 감추러 두었던 것 같다. "난 조금 있다가 떠날 거야."{#vaxis_s72_}'

    menu:
        '"떠나? 어떻게?"{#vaxis_s72_r4656}' if vaxisLogic.r4656_condition():
            # a283 # r4656
            jump vaxis_s51

        '"알겠소. 안녕히 계시오, 백시스."{#vaxis_s72_r64532}' if vaxisLogic.r64532_condition():
            # a284 # r64532
            jump vaxis_dispose


# s73 # say4658
label vaxis_s73: # -
    nr '좀비는 툴툴거린다. "전이문은 아치야, 1층 북쪽 방에 있는. 열려면 스켈레톤 손가락뼈가 필요해." 그는 고개를 끄덕인다. "잘 해봐."{#vaxis_s73_}'

    menu:
        '"어… 좋소.{#vaxis_s73_r4659}':
            # a285 # r4659
            jump vaxis_dispose


# s74 # say4660
label vaxis_s74: # from 34.0
    nr '좀비는 눈을 좁게 뜨고 당신에게 야유한다. "네가 날 죽이겠다고? 난 날 도울 친구 있고, 넌 없어. 너 나 건드리면 내 친구 너 죽여"{#vaxis_s74_}'

    menu:
        '"그건 네 마지막 기회였다. 죽을 준비를 해라."{#vaxis_s74_r4661}':
            # a286 # r4661
            $ vaxisLogic.r4661_action()
            jump vaxis_dispose

        '"그럼 지옥에나 떨어지라고. 난 떠나겠소. 조심하는 게 좋을 걸, *좀비.*"{#vaxis_s74_r4662}':
            # a287 # r4662
            jump vaxis_s4


# s75 # say4663
label vaxis_s75: # from 31.4 32.3 35.4
    nr '그는 잠시 겁에 질린 듯하다, 그러나 당신 체격을 살펴본 후 그는 조소하는 얼굴로 당신을 바라본다. "네가 날 죽이겠다고? 난 날 도울 친구 있고, 넌 없어. 너 나 건드리면 내 친구 너 죽여"{#vaxis_s75_}'

    menu:
        '"만약 내가 당신 변장을 경비병들에게 폭로한다면 어떻게 하겠소?"{#vaxis_s75_r4664}' if vaxisLogic.r4664_condition():
            # a288 # r4664
            jump vaxis_s33

        '"만약 내가 당신 변장을 경비병들에게 폭로한다면 어떻게 하겠소?"{#vaxis_s75_r4665}' if vaxisLogic.r4665_condition():
            # a289 # r4665
            jump vaxis_s76

        '"그 위험은 감수하기로 하지. 죽을 준비나 하시오."{#vaxis_s75_r4666}':
            # a290 # r4666
            $ vaxisLogic.r4666_action()
            jump vaxis_dispose

        '"그럼 지옥에나 떨어지라고. 난 떠나겠소. 조심하는 게 좋을 거요… *좀비.*"{#vaxis_s75_r4667}':
            # a291 # r4667
            jump vaxis_s4


# s76 # say4668
label vaxis_s76: # from 75.1
    nr '좀비는 눈을 좁게 뜨고 당신에게 야유한다. "너 나한테 비밀 말하면 나도 *너*한테 비밀 말해. 난 날 도울 친구 있고, 넌 없어." 넌 여기 있으면 안돼. 더스티는 널 죽여. 난 탈출해."{#vaxis_s76_}'

    menu:
        '"그건 네 마지막 기회였다, 시체. 죽을 준비를 해라."{#vaxis_s76_r4669}':
            # a292 # r4669
            $ vaxisLogic.r4669_action()
            jump vaxis_dispose

        '"그럼 지옥에나 떨어지라고. 난 떠나겠소. 조심하는 게 좋을 거요… *좀비.*"{#vaxis_s76_r4670}':
            # a293 # r4670
            jump vaxis_s4


# s77 # say64523
label vaxis_s77: # from 51.0
    nr '그는 어깨를 으쓱한다. "어딘가 있을 거야… 위층의 저장실에 가봐. 아마 거기 있을지도."{#vaxis_s77_}'

    menu:
        '"좋소. 그 밖에도 질문할 것이 있소…"{#vaxis_s77_r64524}':
            # a294 # r64524
            jump vaxis_s43

        '"좋소. 위층에서 굽은 손가락뼈를 찾은 다음 1층으로 내려가 북서쪽 방에 있는 아치들 중 하나로 향하겠소. 알았소."{#vaxis_s77_r64525}':
            # a295 # r64525
            jump vaxis_dispose
