init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.s1221_logic import S1221Logic
    s1221Logic = S1221Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DS1221.DLG
# ###


# s0 # say35306
label s1221_s0: # - # IF ~  True()
    nr '이 스켈레톤은 최근에 처리된 듯 냄새가 심하게 난다. 그것의 턱과 중요한 관절 부위들은 가죽끈으로 단단히 묶여 있으며. 거친 천으로 만든 작업복을 걸치고 있다. 그것의 이마에는 "1221"이라는 번호가 새겨져 있다.'

    menu:
        '"미안하지만 이 부근에서 걸어다니는 스켈레톤을 본 적이 있소?"' if s1221Logic.r35307_condition():
            # a0 # r35307
            $ s1221Logic.r35307_action()
            jump s1221_s1

        '"미안하지만 이 부근에서 걸어다니는 스켈레톤을 본 적이 있소?"' if s1221Logic.r35330_condition():
            # a1 # r35330
            jump s1221_s1

        '"꼭 물어봐야겠소: 왜 작업복을 입은 거요? 가뜩이나 볼품없이 생겼으면서."' if s1221Logic.r35331_condition():
            # a2 # r35331
            $ s1221Logic.r35331_action()
            jump s1221_s1

        '"꼭 물어봐야겠소: 왜 작업복을 입은 거요? 가뜩이나 볼품없이 생겼으면서."' if s1221Logic.r35332_condition():
            # a3 # r35332
            jump s1221_s1

        '스켈레톤에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.' if s1221Logic.r35333_condition():
            # a4 # r35333
            jump s1221_s2

        '스켈레톤을 조심스럽게 살펴본다.':
            # a5 # r35338
            $ s1221Logic.r35338_action()
            jump s1221_s3

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.' if s1221Logic.r35371_condition():
            # a6 # r35371
            $ s1221Logic.r35371_action()
            jump morte_s376  # EXTERN

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.' if s1221Logic.r35372_condition():
            # a7 # r35372
            jump s1221_s4

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.' if s1221Logic.r35373_condition():
            # a8 # r35373
            jump s1221_s5

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.' if s1221Logic.r35374_condition():
            # a9 # r35374
            jump s1221_s6

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.' if s1221Logic.r35375_condition():
            # a10 # r35375
            jump s1221_s4

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.' if s1221Logic.r35376_condition():
            # a11 # r35376
            jump s1221_s5

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.' if s1221Logic.r35377_condition():
            # a12 # r35377
            jump s1221_s6

        '"이 해골은 어떤가, 모트? 자네 몸으로 쓸만하겠나?' if s1221Logic.r35378_condition():
            # a13 # r35378
            jump morte_s372  # EXTERN

        '스켈레톤을 그냥 내버려 둔다.' if s1221Logic.r35379_condition():
            # a14 # r35379
            $ s1221Logic.r35379_action()
            jump morte_s370  # EXTERN

        '스켈레톤을 그냥 내버려 둔다.' if s1221Logic.r35380_condition():
            # a15 # r35380
            jump s1221_dispose

        '스켈레톤을 그냥 내버려 둔다.' if s1221Logic.r35381_condition():
            # a16 # r35381
            jump s1221_dispose


# s1 # say35308
label s1221_s1: # from 0.0 0.1 0.2 0.3
    nr '스켈레톤은 아무런 응답도 하지 않는다.'

    menu:
        '"당신과 얘기를 나눌 수 있어 즐거웠소, 해골 양반. 건강하게 지내시오."' if s1221Logic.r35309_condition():
            # a17 # r35309
            $ s1221Logic.r35309_action()
            jump morte_s370  # EXTERN

        '"당신과 얘기를 나눌 수 있어 즐거웠소, 해골 양반. 건강하게 지내시오."' if s1221Logic.r35328_condition():
            # a18 # r35328
            jump s1221_dispose

        '"당신과 얘기를 나눌 수 있어 즐거웠소, 해골 양반. 건강하게 지내시오."' if s1221Logic.r35329_condition():
            # a19 # r35329
            jump s1221_dispose


# s2 # say35334
label s1221_s2: # from 0.4
    nr '스켈레톤은 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.'

    menu:
        '스켈레톤을 그냥 내버려 둔다.' if s1221Logic.r35335_condition():
            # a20 # r35335
            $ s1221Logic.r35335_action()
            jump morte_s370  # EXTERN

        '스켈레톤을 그냥 내버려 둔다.' if s1221Logic.r35336_condition():
            # a21 # r35336
            jump s1221_dispose

        '스켈레톤을 그냥 내버려 둔다.' if s1221Logic.r35337_condition():
            # a22 # r35337
            jump s1221_dispose


# s3 # say35339
label s1221_s3: # from 0.5
    nr '누군가가 이 스켈레톤의 뼈들을 가죽끈들로 감았는데, 끈들은 실제의 근육과 근을 연상시키는 패턴으로 감겨졌다. 가죽끈들은 스켈레톤의 관절에 박힌 금속 볼트에 고정되어 있다. 이 스켈레톤은 오랫동안 사용된 것 같다. 그 뼈들 중 상당수가 깨졌으며 부서진 부분들은 봉함제와 악취가 나는 접착제로 봉합되어 있다.'

    menu:
        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.' if s1221Logic.r35340_condition():
            # a23 # r35340
            $ s1221Logic.r35340_action()
            jump morte_s376  # EXTERN

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.' if s1221Logic.r35362_condition():
            # a24 # r35362
            jump s1221_s4

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.' if s1221Logic.r35363_condition():
            # a25 # r35363
            jump s1221_s5

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.' if s1221Logic.r35364_condition():
            # a26 # r35364
            jump s1221_s6

        '"내가 당신 가죽끈과 볼트를 좀 빌려도 괜찮겠소?"' if s1221Logic.r35365_condition():
            # a27 # r35365
            jump s1221_s4

        '"내가 당신 가죽끈과 볼트를 좀 빌려도 괜찮겠소?"' if s1221Logic.r35366_condition():
            # a28 # r35366
            jump s1221_s5

        '"내가 당신 가죽끈과 볼트를 좀 빌려도 괜찮겠소?"' if s1221Logic.r35367_condition():
            # a29 # r35367
            jump s1221_s6

        '스켈레톤을 그냥 내버려 둔다.' if s1221Logic.r35368_condition():
            # a30 # r35368
            $ s1221Logic.r35368_action()
            jump morte_s370  # EXTERN

        '스켈레톤을 그냥 내버려 둔다.' if s1221Logic.r35369_condition():
            # a31 # r35369
            jump s1221_dispose

        '스켈레톤을 그냥 내버려 둔다.' if s1221Logic.r35370_condition():
            # a32 # r35370
            jump s1221_dispose


# s4 # say35345
label s1221_s4: # from 0.7 0.10 3.1 3.4
    nr '당신은 철제 볼트를 뽑아 내려고 시도하나, 당신은 그것들을 뽑아 낼 정도로 힘이 세지 못하다, 그것들은 매우 튼튼히 박혀 있다.'

    menu:
        '"적당한 연장만 있으면 그것들을 빼낼 수가 있을 텐데… 흠… 나중에 다시 오리다, 해골 양반."' if s1221Logic.r35346_condition():
            # a33 # r35346
            $ s1221Logic.r35346_action()
            jump morte_s370  # EXTERN

        '"적당한 연장만 있으면 그것들을 빼낼 수가 있을 텐데… 흠… 나중에 다시 오리다, 해골 양반."' if s1221Logic.r35347_condition():
            # a34 # r35347
            jump s1221_dispose

        '"적당한 연장만 있으면 그것들을 빼낼 수가 있을 텐데… 흠… 나중에 다시 오리다, 해골 양반."' if s1221Logic.r35348_condition():
            # a35 # r35348
            jump s1221_dispose

        '스켈레톤을 그냥 내버려 둔다.' if s1221Logic.r35349_condition():
            # a36 # r35349
            $ s1221Logic.r35349_action()
            jump morte_s370  # EXTERN

        '스켈레톤을 그냥 내버려 둔다.' if s1221Logic.r35350_condition():
            # a37 # r35350
            jump s1221_dispose

        '스켈레톤을 그냥 내버려 둔다.' if s1221Logic.r35351_condition():
            # a38 # r35351
            jump s1221_dispose


# s5 # say35353
label s1221_s5: # from 0.8 0.11 3.2 3.5
    nr '당신은 온몸의 힘을 다 기울여 철제 볼트를 뽑아 내려고 노력한다, 그리고 수 초간의 분투 끝에 마침내 관절로부터 볼트를 뽑아 낸다. 스켈레톤은 붕괴하나, 그 뼈들 중 일부는 아직도 씰룩거린다.'

    menu:
        '"미안하네, 해골 양반…"':
            # a39 # r35354
            $ s1221Logic.r35354_action()
            jump s1221_dispose


# s6 # say35356
label s1221_s6: # from 0.9 0.12 3.3 3.6
    nr '당신은 쇠 지렛대를 이용하여 관절로부터 볼트를 뽑아 낸다. 스켈레톤은 붕괴하나, 그 뼈들 중 일부는 아직도 씰룩거린다.'

    menu:
        '"미안하네, 해골 양반…"':
            # a40 # r35357
            $ s1221Logic.r35357_action()
            jump s1221_dispose


# s7 # say35382
label s1221_s7: # - # IF ~  False()
    nr '스켈레톤은 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.'

    menu:
