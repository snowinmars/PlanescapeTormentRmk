init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.eivene_logic import EiveneLogic
    eiveneLogic = EiveneLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DEIVENE.DLG
# ###


# s0 # say3404
label eivene_s0: # - # IF ~  Global("EiVene","GLOBAL",0)
    nr '창백한 얼굴을 한 가냘픈 젊은 여자가 보인다. 움푹 들어간 볼과 목 때문에 그녀는 몹시 굶주린 것처럼 보인다. 그녀는 자기 앞에 놓인 시체를 해부할 생각인 듯 그 가슴을 손가락으로 쿡 찔러 보고 있다.'

    menu:
        '"안녕하시오."':
            # a0 # r3406
            jump eivene_s1

        '그녀를 그냥 내버려 둔다.':
            # a1 # r3407
            jump eivene_dispose


# s1 # say3410
label eivene_s1: # from 0.0
    nr '그녀는 아무런 응답도 하지 않는다… 그녀는 자신 앞에 놓인 시체에 너무 몰두하고 있는 것 같다. 그녀가 일을 하는 것을 지켜보다 당신은 그녀의 손가락이 실제로는 갈고리 발톱이라는 사실을 깨닫는다. 그것들은 마치 나이프처럼 시체의 흉강을 드나들며 내장을 제거하고 있다.'

    menu:
        '"난 „안녕하시오“라고 말했소."' if eiveneLogic.r3412_condition():
            # a2 # r3412
            jump eivene_s2

        '"난 „안녕하시오“라고 말했소."' if eiveneLogic.r3413_condition():
            # a3 # r3413
            jump eivene_s3

        '"당신 손은 왜 그런 거요?"' if eiveneLogic.r3414_condition():
            # a4 # r3414
            jump eivene_s2

        '"당신 손은 왜 그런 거요?"' if eiveneLogic.r3415_condition():
            # a5 # r3415
            jump eivene_s19

        '그녀를 그냥 내버려 둔다.':
            # a6 # r3416
            jump eivene_dispose


# s2 # say3417
label eivene_s2: # from 1.0 1.2
    nr '그녀는 아무런 응답도 하지 않는다.'

    menu:
        '그녀를 가볍게 두드려 관심을 끈다.':
            # a7 # r3418
            $ eiveneLogic.r3418_action()
            jump eivene_s4

        '그녀를 그냥 내버려 둔다.':
            # a8 # r3419
            jump eivene_dispose


# s3 # say3420
label eivene_s3: # from 1.1
    nr '그녀는 아무런 응답도 하지 않는다.'

    jump morte_s55  # EXTERN


# s4 # say3421
label eivene_s4: # from 2.0
    nr '그녀는 당신을 직시하려고 급히 몸을 돌린다… 그녀의 눈은 썩은 노란색이며, 동공은 오렌지색이다. 당신을 쳐다보면서 그녀의 표정은 놀라움에서 짜증으로 변한다, 그리고 그녀는 눈살을 찌푸린다.'

    menu:
        '"어… 안녕하시오."':
            # a9 # r3422
            $ eiveneLogic.r3422_action()
            jump eivene_s5


# s5 # say3423
label eivene_s5: # from 4.0
    nr '그녀는 당신 얘기를 듣지 못한 것 같다. 그녀는 당신이 하는 말이 이해가 가지 않는 듯 몸을 앞으로 구부리고 눈을 가늘게 뜬다. 눈의 이상 때문에 그녀는 지독한 근시인 것 같다. "너…" 그녀는 자신의 갈고리 손톱으로 딸깍 소리를 낸 다음, 기묘한 손짓을 한다. "가서 향료와 실을 찾아서 이 곳으로, 나 에이-빈에게 가져와. 자, 가라."  주: 당신에게 하나의 퀘스트가 주어졌다. 퀘스트는 당신 일기와 일지의 "퀘스트" 항목에 표시된다. 당신이 맡은 모든 퀘스트와 그들의 현재 상황을 보려면 일지 메뉴에서 "퀘스트"를 선택하면 된다.'

    menu:
        '그녀에게 실과 향료를 준다.' if eiveneLogic.r3424_condition():
            # a10 # r3424
            $ eiveneLogic.j37701_s5_r3424_action()
            $ eiveneLogic.r3424_action()
            jump eivene_s7

        '"먼저 질문할 것들이 있소…"' if eiveneLogic.r3425_condition():
            # a11 # r3425
            $ eiveneLogic.j37702_s5_r3425_action()
            jump eivene_s6

        '"먼저 질문할 것들이 있소…"' if eiveneLogic.r3426_condition():
            # a12 # r3426
            $ eiveneLogic.j37702_s5_r3426_action()
            jump eivene_s20

        '"당신 손은 왜 그런 거요?"' if eiveneLogic.r3427_condition():
            # a13 # r3427
            $ eiveneLogic.j37702_s5_r3427_action()
            jump eivene_s6

        '"당신 손은 왜 그런 거요?"' if eiveneLogic.r3428_condition():
            # a14 # r3428
            $ eiveneLogic.j37702_s5_r3428_action()
            jump eivene_s20

        '떠난다.':
            # a15 # r3429
            $ eiveneLogic.j37702_s5_r3429_action()
            jump eivene_dispose


# s6 # say3430
label eivene_s6: # from 5.1 5.3
    nr '그녀는 돌아선다… 당신이 한 얘기를 듣지 못한 것 같다. 그녀의 청력도 시력만큼이나 나쁜 듯하다.'

    menu:
        '그녀의 어깨를 가볍게 두드려 관심을 끈다.':
            # a16 # r3431
            jump eivene_s17

        '떠난다.':
            # a17 # r3432
            jump eivene_dispose


# s7 # say3433
label eivene_s7: # from 5.0 17.0
    nr '에이-빈은 당신 손으로부터 실을 재빠르게 채가 자신의 갈고리 손톱들 중 하나에 건 후, 시체의 가슴을 꿰매기 시작한다. 그 다음에는 향료를 넘겨 받아서 시체에 바르기 시작한다.'

    menu:
        '기다린다.':
            # a18 # r3434
            jump eivene_s9

        '떠난다.':
            # a19 # r3435
            jump eivene_s8


# s8 # say3436
label eivene_s8: # from 7.1
    nr '당신이 떠나려 하자 에이-빈은 말을 한다: "머물러라. 다음은 네 차례니까."'

    menu:
        '기다린다.':
            # a20 # r3437
            jump eivene_s9

        '재빨리 떠난다.':
            # a21 # r3438
            jump eivene_dispose


# s9 # say3439
label eivene_s9: # from 7.0 8.0
    nr '그녀는 몇 분만에 작업을 끝낸다. 그녀는 손톱으로 딸각 소리를 낸 다음, 돌아서서 당신을 마주본다. 놀랍게도 그녀는 손을 뻗쳐 갈고리 손톱으로 당신 팔과 기슴을 만지기 시작한다.'

    menu:
        '"어, 기분이 좋지 않다는 건 아니지만…"' if eiveneLogic.r3440_condition():
            # a22 # r3440
            jump eivene_s11

        '"어, 기분이 좋지 않다는 건 아니지만…"' if eiveneLogic.r3441_condition():
            # a23 # r3441
            jump morte_s59  # EXTERN

        '계속 좀비 흉내를 낸다.' if eiveneLogic.r3442_condition():
            # a24 # r3442
            jump eivene_s11

        '계속 좀비 흉내를 낸다.' if eiveneLogic.r3443_condition():
            # a25 # r3443
            jump morte_s59  # EXTERN

        '그녀를 밀어 제치고 떠난다.':
            # a26 # r3444
            jump eivene_s10


# s10 # say3445
label eivene_s10: # from 9.4 12.1
    nr '당신이 그녀를 밀치자 그녀는 충격을 받은 듯 하다, "좀피? 넌 좀피가 아냐!" 그녀는 한 걸음 물러선 후 손뼉을 세 번 친다. 그에 응답하듯 시체안치소 안에서 거대한 철제 종소리가 울려 퍼지기 시작한다.'

    menu:
        '"그럼 좋소…"':
            # a27 # r3491
            $ eiveneLogic.r3491_action()
            jump eivene_dispose


# s11 # say3446
label eivene_s11: # from 9.0 9.2
    nr '그녀가 당신 팔과 가슴을 만지는 것을 지켜보면서 당신은 그녀가 당신의 흉터를 조사하고 있다는 것을 깨닫는다. 그녀는 손톱을 거두어 들여 두 번 튕긴 후, 앞쪽으로 몸을 구부려 당신 가슴에 새겨진 문신들을 살피기 시작한다. "흠… 누가 당신 몸에 그림을 그렸지? 벌통 사람들이 그랬나? 좀피를 존중할 줄 모르는군. 좀피는 그림이 아닌데." 그녀는 당신 흉터들 중 한 곳을 찔러 본다. "이 좀피는 상태가 나쁘군. 흉터는 많은 데 보존 처리가 안됐어."'

    menu:
        '기다린다.':
            # a28 # r3447
            jump eivene_s12


# s12 # say3448
label eivene_s12: # from 11.0
    nr '그녀는 손톱에 당신이 가져온 실을 걸고, 신속하게 다른 손톱 하나를 당신 흉터 근처에 찔러 넣는다. 당신은 핀으로 찌른 것 정도의 고통밖에 느끼지 않는다. 그녀는 이제부터 당신의 흉터를 꿰매려는 것 같다.'

    menu:
        '그녀가 작업을 하도록 내버려 둔다.':
            # a29 # r3449
            $ eiveneLogic.j38199_s12_r3449_action()
            $ eiveneLogic.r3449_action()
            jump eivene_s13

        '그녀를 밀어 제치고 떠난다.':
            # a30 # r3450
            jump eivene_s10


# s13 # say3451
label eivene_s13: # from 12.0
    nr '에이-빈이 당신 흉터들을 꿰매는 동안 신기하게도 별 고통은 느껴지지 않는다.  작업을 끝낸 후, 그녀는 당신 냄새를 맡고 눈살을 찌푸린다. 그 다음 그녀는 손가락을 향료 속에 넣는다. 몇 분만에 그녀는 당신의 온몸에 향료를 다 바르고… 기이하게도 당신은 자신의 상태가 나아졌다는 느낌을 받는다.'

    menu:
        '그녀가 작업을 하도록 내버려 둔다.' if eiveneLogic.r3452_condition():
            # a31 # r3452
            jump eivene_s14

        '그녀가 작업을 하도록 내버려 둔다.' if eiveneLogic.r3453_condition():
            # a32 # r3453
            jump morte_s60  # EXTERN


# s14 # say3454
label eivene_s14: # from 13.0
    nr '에이-빈은 당신 몸에 마지막 마무리를 하고, 당신 몸의 냄새를 다시 한 번 맡아 본 다음, 갈고리 손톱으로 저리 가라는 손짓을 한다. "끝났다. 가라."'

    menu:
        '"잠깐 기다리시오." (손으로 열쇠를 돌리는 시늉을 한다.) "나는 처리실 열쇠가 필요하오. 혹시 가지고 있소?"' if eiveneLogic.r3456_condition():
            # a33 # r3456
            $ eiveneLogic.r3456_action()
            jump eivene_s18

        '"잠깐 기다리시오." (손으로 열쇠를 돌리는 시늉을 한다.) "나는 처리실 열쇠가 필요하오. 혹시 가지고 있소?"' if eiveneLogic.r3457_condition():
            # a34 # r3457
            jump eivene_s24

        '떠난다.':
            # a35 # r4350
            jump eivene_dispose


# s15 # say3458
label eivene_s15: # - # IF ~  Global("EiVene","GLOBAL",1)
    nr '에이-빈이 보인다. 그녀는 아직도 시체의 가슴을 갈고리 손톱으로 해부하고 있다. 갈고리 손톱의 리듬은 당신에게 뭔가를 상기시키나 그것이 정확히 무엇인지는 생각나지 않는다.'

    menu:
        '그녀를 관찰하며 그 손동작을 연구한다.' if eiveneLogic.r3459_condition():
            # a36 # r3459
            $ eiveneLogic.j61612_s15_r3459_action()
            $ eiveneLogic.r3459_action()
            jump eivene_s16

        '그녀를 가볍게 두드려 관심을 끈다.' if eiveneLogic.r3463_condition():
            # a37 # r3463
            jump eivene_s17

        '그녀를 가볍게 두드려 관심을 끈다.' if eiveneLogic.r4351_condition():
            # a38 # r4351
            jump eivene_s22

        '떠난다.':
            # a39 # r4352
            jump eivene_dispose


# s16 # say3464
label eivene_s16: # from 15.0
    nr '에이-빈이 작업하는 것을 지켜보고 있자니 머리에 자극이 오는 것을 느낀다. 그리고 갑자기 현기증이 나면서 시야가 흐려진다…'

    $ eiveneLogic.s16_action()
    jump eivene_s26


# s17 # say3468
label eivene_s17: # from 6.0 15.1 25.0 27.0
    nr '그녀는 돌아서서 당신을 보고는 눈살을 찌푸린다. "바보 같은 좀피." 그녀는 조바심하며 자신의 갈고리 손톱으로 딸깍 소리를 낸 다음, 손톱으로 뭔가를 꿰매는 시늉을 한다. "가서 향료와 실을 찾아서 이 곳으로, 나 에이-빈에게 가져와. 자, 가라."'

    menu:
        '그녀에게 실과 향료를 준다.' if eiveneLogic.r3469_condition():
            # a40 # r3469
            $ eiveneLogic.j38202_s17_r3469_action()
            $ eiveneLogic.r3469_action()
            jump eivene_s7

        '"잠깐 기다리시오." (손으로 열쇠를 돌리는 시늉을 한다.) "나는 처리실 열쇠가 필요하오. 혹시 가지고 있소?"' if eiveneLogic.r3470_condition():
            # a41 # r3470
            $ eiveneLogic.r3470_action()
            jump eivene_s18

        '"잠깐 기다리시오." (손으로 열쇠를 돌리는 시늉을 한다.) "나는 처리실 열쇠가 필요하오. 혹시 가지고 있소?"' if eiveneLogic.r3497_condition():
            # a42 # r3497
            jump eivene_s24

        '떠난다.':
            # a43 # r4357
            jump eivene_dispose


# s18 # say3471
label eivene_s18: # from 14.0 17.1 22.0
    nr '그녀는 몸을 앞으로 구부려 당신의 손짓을 쳐다본 다음, 코방귀를 뀐다. 그녀는 손을 법복 속에 집어 넣었다가 꺼내는데, 그 때 그녀의 무시무시하게 날카로운 집게손가락에는 열쇠가 하나 걸려 있다. "쓰고 난 다음에는 도로 가져와. 자, 가라고."'

    menu:
        '"당신 손은 왜 그런 거요?"' if eiveneLogic.r3494_condition():
            # a44 # r3494
            $ eiveneLogic.j38203_s18_r3494_action()
            jump eivene_s23

        '"당신 손은 왜 그런 거요?"' if eiveneLogic.r3495_condition():
            # a45 # r3495
            $ eiveneLogic.j38203_s18_r3495_action()
            jump eivene_s21

        '떠난다.':
            # a46 # r3496
            $ eiveneLogic.j38203_s18_r3496_action()
            jump eivene_dispose


# s19 # say3472
label eivene_s19: # from 1.3
    nr '그녀는 아무런 응답도 하지 않는다.'

    $ eiveneLogic.j38205_s19_action()
    jump morte_s56  # EXTERN


# s20 # say3485
label eivene_s20: # from 5.2 5.4
    nr '그녀는 돌아선다… 당신이 한 얘기를 듣지 못한 것 같다.'

    jump morte_s57  # EXTERN


# s21 # say3486
label eivene_s21: # from 18.1
    nr '그녀는 돌아선다… 당신이 한 얘기를 듣지 못한 것 같다. 그녀의 청력도 시력만큼이나 나쁜 듯하다.'

    $ eiveneLogic.j38205_s21_action()
    jump morte_s58  # EXTERN


# s22 # say3493
label eivene_s22: # from 15.2 25.1 27.1
    nr '그녀는 돌아서서 당신을 보고는 눈살을 찌푸린다. "바보 같은 좀피." 그녀는 조바심하며 자신의 갈고리 손톱으로 딸깍 소리를 낸 다음, 손톱으로 뭔가를 꿰매는 시늉을 한다. "넌 다 꿰맸어. 자, 가라."'

    menu:
        '"잠깐 기다리시오." (손으로 열쇠를 돌리는 시늉을 한다.) "나는 처리실 열쇠가 필요하오. 혹시 가지고 있소?"' if eiveneLogic.r3501_condition():
            # a47 # r3501
            $ eiveneLogic.r3501_action()
            jump eivene_s18

        '"잠깐 기다리시오." (손으로 열쇠를 돌리는 시늉을 한다.) "나는 처리실 열쇠가 필요하오. 혹시 가지고 있소?"' if eiveneLogic.r3502_condition():
            # a48 # r3502
            jump eivene_s24

        '떠난다.':
            # a49 # r4358
            jump eivene_dispose


# s23 # say3498
label eivene_s23: # from 18.0
    nr '그녀는 돌아선다… 당신이 한 얘기를 듣지 못한 것 같다. 그녀의 청력도 시력만큼이나 나쁜 듯하다.'

    menu:
        '떠난다.':
            # a50 # r3499
            jump eivene_dispose


# s24 # say4200
label eivene_s24: # from 14.1 17.2 22.1
    nr '그녀는 몸을 앞으로 구부려 당신의 손짓을 쳐다본 다음, 코방귀를 뀐다. 그녀는 손을 법복 속에 집어 넣어 잠시 뒤적거린 후, 어깨를 으쓱한다. "열쇠가 없어." 그녀는 저리 가라는 손짓을 한다. "자, 가라고."'

    menu:
        '떠난다.':
            # a51 # r4201
            jump eivene_dispose


# s25 # say4353
label eivene_s25: # -
    nr '당신은 그녀를 한동안 살펴본다, 그리고 그녀의 양손의 리듬은 당신의 뇌리에 두 가지 기억이 떠오르게 만든다. 그 중 하나는 당신이 어떤 현악기, 아마 하프를 연주하는 것이고, 다른 하나는 당신이 지갑을 훔치는 기억이다… 놀랍게도 후자는 당신을 에이-빈의 지갑을 훔치고 싶다는 갑작스런 유혹에 빠뜨린다.  주: 당신은 기억을 하나 되찾았다. 기억은 당신에게 추가적인 경험치나 기술을 부여할 수 있으며, 경우에 따라서는 나중에 다른 기억들을 되찾는 실마리가 되기도 한다.'

    menu:
        '그녀를 가볍게 두드려 관심을 끈다.' if eiveneLogic.r4354_condition():
            # a52 # r4354
            jump eivene_s17

        '그녀를 가볍게 두드려 관심을 끈다.' if eiveneLogic.r4355_condition():
            # a53 # r4355
            jump eivene_s22

        '떠난다.':
            # a54 # r4356
            jump eivene_dispose


# s26 # say63477
label eivene_s26: # from 16.0
    nr '…당신은 최근에 죽은 시체 앞에 서 있다. 시체는 사후 경직 탓에 기괴한 미소를 짓고 있으며, 머릿가죽에는 „42“란 번호가 실로 꿰매져 있다. 좀비는 철판 위에 누워 있으며, 당신은 방금 그의 가슴을 꿰매는 작업을 마친 상황이다. 당신이 그 안에 뭔가를 넣었다. 당신이 나중에 다시 이 곳에 오게 되면 유용할 뭔가를…'

    menu:
        '메아리: "이것들을 안전하게 보관하고 내가 돌아오기를 기다리시오."' if eiveneLogic.r63478_condition():
            # a55 # r63478
            $ eiveneLogic.r63478_action()
            jump eivene_s27

        '메아리: "이것들을 안전하게 보관하고 내가 돌아오기를 기다리시오."' if eiveneLogic.r63479_condition():
            # a56 # r63479
            jump eivene_s27


# s27 # say63480
label eivene_s27: # from 26.0 26.1
    nr '기억 속의 당신 목소리는 메아리치며, 당신 귀에는 왠지 기묘하고 공허하게 들린다. 당신이 팔짱을 끼자 놀랍게도 시체 역시 팔짱을 낀다. 잠시 후 시체의 손은 다시 허리 쪽으로 내려가고, 그와 동시에 영상이 사라지기 시작한다… 그리고 당신은 다시 에이-빈이 꿰매는 동작을 하는 것을 지켜보고 있다.  주: 당신은 기억을 하나 되찾았다. 기억은 당신에게 추가적인 경험치나 기술을 부여할 수 있으며, 경우에 따라서는 나중에 다른 기억들을 되찾는 실마리가 되기도 한다.'

    menu:
        '그녀를 가볍게 두드려 관심을 끈다.' if eiveneLogic.r63482_condition():
            # a57 # r63482
            jump eivene_s17

        '그녀를 가볍게 두드려 관심을 끈다.' if eiveneLogic.r63481_condition():
            # a58 # r63481
            jump eivene_s22

        '떠난다.':
            # a59 # r63483
            jump eivene_dispose
