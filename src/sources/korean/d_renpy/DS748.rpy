init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.s748_logic import S748Logic
    s748Logic = S748Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DS748.DLG
# ###


# s0 # say35383
label s748_s0: # - # IF ~  True()
    nr '이 스켈레톤(이마 위에 새겨진 번호에 의하면 "748번")은 기묘하게도 이빨들 중 몇 개가 빨간 빛을 띤 갈색 돌로 만든 의치이다. 하지만 별로 값나가는 것은 아닌 듯하다. 만약 값진 것이었다면 관리자들이 이미 빼냈을 것이다.{#s748_s0_}'

    menu:
        '"미안하지만 이 부근에서 걸어다니는 스켈레톤을 본 적이 있소?"{#s748_s0_r35384}' if s748Logic.r35384_condition():
            # a0 # r35384
            $ s748Logic.r35384_action()
            jump s748_s1

        '"미안하지만 이 부근에서 걸어다니는 스켈레톤을 본 적이 있소?"{#s748_s0_r35407}' if s748Logic.r35407_condition():
            # a1 # r35407
            jump s748_s1

        '"꼭 물어봐야겠소: 왜 작업복을 입은 거요? 가뜩이나 볼품없이 생겼으면서."{#s748_s0_r35408}' if s748Logic.r35408_condition():
            # a2 # r35408
            $ s748Logic.r35408_action()
            jump s748_s1

        '"꼭 물어봐야겠소: 왜 작업복을 입은 거요? 가뜩이나 볼품없이 생겼으면서."{#s748_s0_r35409}' if s748Logic.r35409_condition():
            # a3 # r35409
            jump s748_s1

        '스켈레톤에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.{#s748_s0_r35410}' if s748Logic.r35410_condition():
            # a4 # r35410
            jump s748_s2

        '스켈레톤을 조심스럽게 살펴본다.{#s748_s0_r35415}':
            # a5 # r35415
            $ s748Logic.r35415_action()
            jump s748_s3

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s748_s0_r35448}' if s748Logic.r35448_condition():
            # a6 # r35448
            $ s748Logic.r35448_action()
            jump morte_s384  # EXTERN

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s748_s0_r35449}' if s748Logic.r35449_condition():
            # a7 # r35449
            jump s748_s4

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s748_s0_r35450}' if s748Logic.r35450_condition():
            # a8 # r35450
            jump s748_s5

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s748_s0_r35451}' if s748Logic.r35451_condition():
            # a9 # r35451
            jump s748_s6

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s748_s0_r35452}' if s748Logic.r35452_condition():
            # a10 # r35452
            jump s748_s4

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s748_s0_r35453}' if s748Logic.r35453_condition():
            # a11 # r35453
            jump s748_s5

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s748_s0_r35454}' if s748Logic.r35454_condition():
            # a12 # r35454
            jump s748_s6

        '"이 해골은 어떤가, 모트? 자네 몸으로 쓸만하겠나?{#s748_s0_r35455}' if s748Logic.r35455_condition():
            # a13 # r35455
            jump morte_s380  # EXTERN

        '스켈레톤을 그냥 내버려 둔다.{#s748_s0_r35456}' if s748Logic.r35456_condition():
            # a14 # r35456
            $ s748Logic.r35456_action()
            jump morte_s378  # EXTERN

        '스켈레톤을 그냥 내버려 둔다.{#s748_s0_r35457}' if s748Logic.r35457_condition():
            # a15 # r35457
            jump s748_dispose

        '스켈레톤을 그냥 내버려 둔다.{#s748_s0_r35458}' if s748Logic.r35458_condition():
            # a16 # r35458
            jump s748_dispose


# s1 # say35385
label s748_s1: # from 0.0 0.1 0.2 0.3
    nr '스켈레톤은 아무런 응답도 하지 않는다.{#s748_s1_}'

    menu:
        '"당신과 얘기를 나눌 수 있어 즐거웠소, 해골 양반. 건강하게 지내시오."{#s748_s1_r35386}' if s748Logic.r35386_condition():
            # a17 # r35386
            $ s748Logic.r35386_action()
            jump morte_s378  # EXTERN

        '"당신과 얘기를 나눌 수 있어 즐거웠소, 해골 양반. 건강하게 지내시오."{#s748_s1_r35405}' if s748Logic.r35405_condition():
            # a18 # r35405
            jump s748_dispose

        '"당신과 얘기를 나눌 수 있어 즐거웠소, 해골 양반. 건강하게 지내시오."{#s748_s1_r35406}' if s748Logic.r35406_condition():
            # a19 # r35406
            jump s748_dispose


# s2 # say35411
label s748_s2: # from 0.4
    nr '스켈레톤은 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.{#s748_s2_}'

    menu:
        '스켈레톤을 그냥 내버려 둔다.{#s748_s2_r35412}' if s748Logic.r35412_condition():
            # a20 # r35412
            $ s748Logic.r35412_action()
            jump morte_s378  # EXTERN

        '스켈레톤을 그냥 내버려 둔다.{#s748_s2_r35413}' if s748Logic.r35413_condition():
            # a21 # r35413
            jump s748_dispose

        '스켈레톤을 그냥 내버려 둔다.{#s748_s2_r35414}' if s748Logic.r35414_condition():
            # a22 # r35414
            jump s748_dispose


# s3 # say35416
label s748_s3: # from 0.5
    nr '누군가가 이 스켈레톤의 뼈들을 가죽끈들로 감았는데, 끈들은 실제의 근육과 근을 연상시키는 패턴으로 감겨졌다. 가죽끈들은 스켈레톤의 관절에 박힌 금속 볼트에 고정되어 있다. 이 스켈레톤은 오랫동안 사용된 것 같다. 그 뼈들 중 상당수가 깨졌으며 부서진 부분들은 봉함제와 악취가 나는 접착제로 봉합되어 있다.{#s748_s3_}'

    menu:
        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s748_s3_r35417}' if s748Logic.r35417_condition():
            # a23 # r35417
            $ s748Logic.r35417_action()
            jump morte_s384  # EXTERN

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s748_s3_r35439}' if s748Logic.r35439_condition():
            # a24 # r35439
            jump s748_s4

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s748_s3_r35440}' if s748Logic.r35440_condition():
            # a25 # r35440
            jump s748_s5

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s748_s3_r35441}' if s748Logic.r35441_condition():
            # a26 # r35441
            jump s748_s6

        '"내가 당신 가죽끈과 볼트를 좀 빌려도 괜찮겠소?"{#s748_s3_r35442}' if s748Logic.r35442_condition():
            # a27 # r35442
            jump s748_s4

        '"내가 당신 가죽끈과 볼트를 좀 빌려도 괜찮겠소?"{#s748_s3_r35443}' if s748Logic.r35443_condition():
            # a28 # r35443
            jump s748_s5

        '"내가 당신 가죽끈과 볼트를 좀 빌려도 괜찮겠소?"{#s748_s3_r35444}' if s748Logic.r35444_condition():
            # a29 # r35444
            jump s748_s6

        '스켈레톤을 그냥 내버려 둔다.{#s748_s3_r35445}' if s748Logic.r35445_condition():
            # a30 # r35445
            $ s748Logic.r35445_action()
            jump morte_s378  # EXTERN

        '스켈레톤을 그냥 내버려 둔다.{#s748_s3_r35446}' if s748Logic.r35446_condition():
            # a31 # r35446
            jump s748_dispose

        '스켈레톤을 그냥 내버려 둔다.{#s748_s3_r35447}' if s748Logic.r35447_condition():
            # a32 # r35447
            jump s748_dispose


# s4 # say35422
label s748_s4: # from 0.7 0.10 3.1 3.4
    nr '당신은 철제 볼트를 뽑아 내려고 시도하나, 당신은 그것들을 뽑아 낼 정도로 힘이 세지 못하다, 그것들은 매우 튼튼히 박혀 있다.{#s748_s4_}'

    menu:
        '"적당한 연장만 있으면 그것들을 빼낼 수가 있을 텐데… 흠… 나중에 다시 오리다, 해골 양반."{#s748_s4_r35423}' if s748Logic.r35423_condition():
            # a33 # r35423
            $ s748Logic.r35423_action()
            jump morte_s378  # EXTERN

        '"적당한 연장만 있으면 그것들을 빼낼 수가 있을 텐데… 흠… 나중에 다시 오리다, 해골 양반."{#s748_s4_r35424}' if s748Logic.r35424_condition():
            # a34 # r35424
            jump s748_dispose

        '"적당한 연장만 있으면 그것들을 빼낼 수가 있을 텐데… 흠… 나중에 다시 오리다, 해골 양반."{#s748_s4_r35425}' if s748Logic.r35425_condition():
            # a35 # r35425
            jump s748_dispose

        '스켈레톤을 그냥 내버려 둔다.{#s748_s4_r35426}' if s748Logic.r35426_condition():
            # a36 # r35426
            $ s748Logic.r35426_action()
            jump morte_s378  # EXTERN

        '스켈레톤을 그냥 내버려 둔다.{#s748_s4_r35427}' if s748Logic.r35427_condition():
            # a37 # r35427
            jump s748_dispose

        '스켈레톤을 그냥 내버려 둔다.{#s748_s4_r35428}' if s748Logic.r35428_condition():
            # a38 # r35428
            jump s748_dispose


# s5 # say35430
label s748_s5: # from 0.8 0.11 3.2 3.5
    nr '당신은 온몸의 힘을 다 기울여 철제 볼트를 뽑아 내려고 노력한다, 그리고 수 초간의 분투 끝에 마침내 관절로부터 볼트를 뽑아 낸다. 스켈레톤은 붕괴하나, 그 뼈들 중 일부는 아직도 씰룩거린다.{#s748_s5_}'

    menu:
        '"미안하네, 해골 양반…"{#s748_s5_r35431}':
            # a39 # r35431
            $ s748Logic.r35431_action()
            jump s748_dispose


# s6 # say35433
label s748_s6: # from 0.9 0.12 3.3 3.6
    nr '당신은 쇠 지렛대를 이용하여 관절로부터 볼트를 뽑아 낸다. 스켈레톤은 붕괴하나, 그 뼈들 중 일부는 아직도 씰룩거린다.{#s748_s6_}'

    menu:
        '"미안하네, 해골 양반…"{#s748_s6_r35434}':
            # a40 # r35434
            $ s748Logic.r35434_action()
            jump s748_dispose


# s7 # say35459
label s748_s7: # - # IF ~  False()
    nr '스켈레톤은 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.{#s748_s7_}'

    menu:
