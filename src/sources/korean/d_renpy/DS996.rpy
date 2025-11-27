init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.s996_logic import S996Logic
    s996Logic = S996Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DS996.DLG
# ###


# s0 # say35460
label s996_s0: # - # IF ~  True()
    nr '이 스켈레톤은 뼈를 묶고 있는 가죽이 해어진 것으로 미루어 볼 때 특히 오래된 것 같다. 그 이마에는 "참회"라는 문자가 상당히 뛰어난 솜씨로 새겨져 있다. 그 관자놀이에는 "996"이라는 번호가 나중에 갈겨 쓰듯이 새겨진 것 같다.{#s996_s0_}'

    menu:
        '"미안하지만 이 부근에서 걸어다니는 스켈레톤을 본 적이 있소?"{#s996_s0_r35461}' if s996Logic.r35461_condition():
            # a0 # r35461
            $ s996Logic.r35461_action()
            jump s996_s1

        '"미안하지만 이 부근에서 걸어다니는 스켈레톤을 본 적이 있소?"{#s996_s0_r35484}' if s996Logic.r35484_condition():
            # a1 # r35484
            jump s996_s1

        '"꼭 물어봐야겠소: 왜 작업복을 입은 거요? 가뜩이나 볼품없이 생겼으면서."{#s996_s0_r35485}' if s996Logic.r35485_condition():
            # a2 # r35485
            $ s996Logic.r35485_action()
            jump s996_s1

        '"꼭 물어봐야겠소: 왜 작업복을 입은 거요? 가뜩이나 볼품없이 생겼으면서."{#s996_s0_r35486}' if s996Logic.r35486_condition():
            # a3 # r35486
            jump s996_s1

        '스켈레톤에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.{#s996_s0_r35487}' if s996Logic.r35487_condition():
            # a4 # r35487
            jump s996_s2

        '스켈레톤을 조심스럽게 살펴본다.{#s996_s0_r35492}':
            # a5 # r35492
            $ s996Logic.r35492_action()
            jump s996_s3

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s996_s0_r35525}' if s996Logic.r35525_condition():
            # a6 # r35525
            $ s996Logic.r35525_action()
            jump morte_s392  # EXTERN

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s996_s0_r35526}' if s996Logic.r35526_condition():
            # a7 # r35526
            jump s996_s4

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s996_s0_r35527}' if s996Logic.r35527_condition():
            # a8 # r35527
            jump s996_s5

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s996_s0_r35528}' if s996Logic.r35528_condition():
            # a9 # r35528
            jump s996_s6

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s996_s0_r35529}' if s996Logic.r35529_condition():
            # a10 # r35529
            jump s996_s4

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s996_s0_r35530}' if s996Logic.r35530_condition():
            # a11 # r35530
            jump s996_s5

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s996_s0_r35531}' if s996Logic.r35531_condition():
            # a12 # r35531
            jump s996_s6

        '"이 해골은 어떤가, 모트? 자네 몸으로 쓸만하겠나?{#s996_s0_r35532}' if s996Logic.r35532_condition():
            # a13 # r35532
            jump morte_s388  # EXTERN

        '스켈레톤을 그냥 내버려 둔다.{#s996_s0_r35533}' if s996Logic.r35533_condition():
            # a14 # r35533
            $ s996Logic.r35533_action()
            jump morte_s386  # EXTERN

        '스켈레톤을 그냥 내버려 둔다.{#s996_s0_r35534}' if s996Logic.r35534_condition():
            # a15 # r35534
            jump s996_dispose

        '스켈레톤을 그냥 내버려 둔다.{#s996_s0_r35535}' if s996Logic.r35535_condition():
            # a16 # r35535
            jump s996_dispose


# s1 # say35462
label s996_s1: # from 0.0 0.1 0.2 0.3
    nr '스켈레톤은 아무런 응답도 하지 않는다.{#s996_s1_}'

    menu:
        '"당신과 얘기를 나눌 수 있어 즐거웠소, 해골 양반. 건강하게 지내시오."{#s996_s1_r35463}' if s996Logic.r35463_condition():
            # a17 # r35463
            $ s996Logic.r35463_action()
            jump morte_s386  # EXTERN

        '"당신과 얘기를 나눌 수 있어 즐거웠소, 해골 양반. 건강하게 지내시오."{#s996_s1_r35482}' if s996Logic.r35482_condition():
            # a18 # r35482
            jump s996_dispose

        '"당신과 얘기를 나눌 수 있어 즐거웠소, 해골 양반. 건강하게 지내시오."{#s996_s1_r35483}' if s996Logic.r35483_condition():
            # a19 # r35483
            jump s996_dispose


# s2 # say35488
label s996_s2: # from 0.4
    nr '스켈레톤은 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.{#s996_s2_}'

    menu:
        '스켈레톤을 그냥 내버려 둔다.{#s996_s2_r35489}' if s996Logic.r35489_condition():
            # a20 # r35489
            $ s996Logic.r35489_action()
            jump morte_s386  # EXTERN

        '스켈레톤을 그냥 내버려 둔다.{#s996_s2_r35490}' if s996Logic.r35490_condition():
            # a21 # r35490
            jump s996_dispose

        '스켈레톤을 그냥 내버려 둔다.{#s996_s2_r35491}' if s996Logic.r35491_condition():
            # a22 # r35491
            jump s996_dispose


# s3 # say35493
label s996_s3: # from 0.5
    nr '누군가가 이 스켈레톤의 뼈들을 가죽끈들로 감았는데, 끈들은 실제의 근육과 근을 연상시키는 패턴으로 감겨졌다. 가죽끈들은 스켈레톤의 관절에 박힌 금속 볼트에 고정되어 있다. 이 스켈레톤은 오랫동안 사용된 것 같다. 그 뼈들 중 상당수가 깨졌으며 부서진 부분들은 봉함제와 악취가 나는 접착제로 봉합되어 있다.{#s996_s3_}'

    menu:
        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s996_s3_r35494}' if s996Logic.r35494_condition():
            # a23 # r35494
            $ s996Logic.r35494_action()
            jump morte_s392  # EXTERN

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s996_s3_r35516}' if s996Logic.r35516_condition():
            # a24 # r35516
            jump s996_s4

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s996_s3_r35517}' if s996Logic.r35517_condition():
            # a25 # r35517
            jump s996_s5

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s996_s3_r35518}' if s996Logic.r35518_condition():
            # a26 # r35518
            jump s996_s6

        '"내가 당신 가죽끈과 볼트를 좀 빌려도 괜찮겠소?"{#s996_s3_r35519}' if s996Logic.r35519_condition():
            # a27 # r35519
            jump s996_s4

        '"내가 당신 가죽끈과 볼트를 좀 빌려도 괜찮겠소?"{#s996_s3_r35520}' if s996Logic.r35520_condition():
            # a28 # r35520
            jump s996_s5

        '"내가 당신 가죽끈과 볼트를 좀 빌려도 괜찮겠소?"{#s996_s3_r35521}' if s996Logic.r35521_condition():
            # a29 # r35521
            jump s996_s6

        '스켈레톤을 그냥 내버려 둔다.{#s996_s3_r35522}' if s996Logic.r35522_condition():
            # a30 # r35522
            $ s996Logic.r35522_action()
            jump morte_s386  # EXTERN

        '스켈레톤을 그냥 내버려 둔다.{#s996_s3_r35523}' if s996Logic.r35523_condition():
            # a31 # r35523
            jump s996_dispose

        '스켈레톤을 그냥 내버려 둔다.{#s996_s3_r35524}' if s996Logic.r35524_condition():
            # a32 # r35524
            jump s996_dispose


# s4 # say35499
label s996_s4: # from 0.7 0.10 3.1 3.4
    nr '당신은 철제 볼트를 뽑아 내려고 시도하나, 당신은 그것들을 뽑아 낼 정도로 힘이 세지 못하다, 그것들은 매우 튼튼히 박혀 있다.{#s996_s4_}'

    menu:
        '"적당한 연장만 있으면 그것들을 빼낼 수가 있을 텐데… 흠… 나중에 다시 오리다, 해골 양반."{#s996_s4_r35500}' if s996Logic.r35500_condition():
            # a33 # r35500
            $ s996Logic.r35500_action()
            jump morte_s386  # EXTERN

        '"적당한 연장만 있으면 그것들을 빼낼 수가 있을 텐데… 흠… 나중에 다시 오리다, 해골 양반."{#s996_s4_r35501}' if s996Logic.r35501_condition():
            # a34 # r35501
            jump s996_dispose

        '"적당한 연장만 있으면 그것들을 빼낼 수가 있을 텐데… 흠… 나중에 다시 오리다, 해골 양반."{#s996_s4_r35502}' if s996Logic.r35502_condition():
            # a35 # r35502
            jump s996_dispose

        '스켈레톤을 그냥 내버려 둔다.{#s996_s4_r35503}' if s996Logic.r35503_condition():
            # a36 # r35503
            $ s996Logic.r35503_action()
            jump morte_s386  # EXTERN

        '스켈레톤을 그냥 내버려 둔다.{#s996_s4_r35504}' if s996Logic.r35504_condition():
            # a37 # r35504
            jump s996_dispose

        '스켈레톤을 그냥 내버려 둔다.{#s996_s4_r35505}' if s996Logic.r35505_condition():
            # a38 # r35505
            jump s996_dispose


# s5 # say35507
label s996_s5: # from 0.8 0.11 3.2 3.5
    nr '당신은 온몸의 힘을 다 기울여 철제 볼트를 뽑아 내려고 노력한다, 그리고 수 초간의 분투 끝에 마침내 관절로부터 볼트를 뽑아 낸다. 스켈레톤은 붕괴하나, 그 뼈들 중 일부는 아직도 씰룩거린다.{#s996_s5_}'

    menu:
        '"미안하네, 해골 양반…"{#s996_s5_r35508}':
            # a39 # r35508
            $ s996Logic.r35508_action()
            jump s996_dispose


# s6 # say35510
label s996_s6: # from 0.9 0.12 3.3 3.6
    nr '당신은 쇠 지렛대를 이용하여 관절로부터 볼트를 뽑아 낸다. 스켈레톤은 붕괴하나, 그 뼈들 중 일부는 아직도 씰룩거린다.{#s996_s6_}'

    menu:
        '"미안하네, 해골 양반…"{#s996_s6_r35511}':
            # a40 # r35511
            $ s996Logic.r35511_action()
            jump s996_dispose


# s7 # say35536
label s996_s7: # - # IF ~  False()
    nr '스켈레톤은 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.{#s996_s7_}'

    menu:
