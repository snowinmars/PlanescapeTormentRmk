init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm506_logic import Zm506Logic
    zm506Logic = Zm506Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM506.DLG
# ###


# s0 # say45419
label zm506_s0: # from 3.2 # IF ~  Global("506_Thread","GLOBAL",0)
    nr '꿰맨 곳 투성이인 이 시체는 두 철판 사이를 천천히 비틀거리면서 오가고 있다. 그의 이마… 목 옆쪽… 오른팔… 에는 "506"이란 번호가 실로 꿰매져 있다… 이 시체의 벗겨지고 있는 피부는 너무나도 빈번하게 꿰매진 탓에 마치 기괴한 거리 지도처럼 보인다.{#zm506_s0_1}'

    menu:
        '꿰맨 자국을 살펴본다.{#zm506_s0_r45420}' if zm506Logic.r45420_condition():
            # a0 # r45420
            jump zm506_s3

        '"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."{#zm506_s0_r45421}' if zm506Logic.r45421_condition():
            # a1 # r45421
            jump zm506_s1

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.{#zm506_s0_r45422}' if zm506Logic.r45422_condition():
            # a2 # r45422
            jump zm506_s2

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zm506_s0_r45423}':
            # a3 # r45423
            jump zm506_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zm506_s0_r45424}':
            # a4 # r45424
            jump zm506_dispose


# s1 # say45425
label zm506_s1: # from 0.1 4.0 4.1 5.0 5.1 5.2
    nr '시체는 아무 것도 느끼지 못하고 앞만 바라본다.{#zm506_s1_1}'

    menu:
        '시체를 그냥 내버려 두고 떠난다.{#zm506_s1_r45478}':
            # a5 # r45478
            jump zm506_dispose


# s2 # say45426
label zm506_s2: # from 0.2 5.3
    nr '시체는 움직이지 않는다. 당신의 질문에 대답할 정도의 정신은 이제 그것에게는 남아있지 않은 것 같다.{#zm506_s2_1}'

    menu:
        '시체를 그냥 내버려 두고 떠난다.{#zm506_s2_r45479}':
            # a6 # r45479
            jump zm506_dispose


# s3 # say45427
label zm506_s3: # from 0.0
    nr '꿰맨 자국은 시체의 전신을 감싸고 있다. 팔에서 시작하여, 가슴과 목을 거쳐, 축축한 흰머리 속에까지 이르고 있다. 당신은 꿰맨 자국들의 교차로를 따라가다가 누군가가 시체의 이마에 바늘을 쑤셔 넣은 것을 발견한다… 바늘에는 머리의 측면을 꿰매고 있는 실이 꿰어져 있다. 만약 실을 자를 수 있는 도구가 있다면 바늘을 빼낼 수 있을 듯하다.{#zm506_s3_1}'

    menu:
        '꿰맨 자국을 메스로 베어낸 다음 바늘과 실을 꺼낸다.{#zm506_s3_r45480}' if zm506Logic.r45480_condition():
            # a7 # r45480
            $ zm506Logic.r45480_action()
            jump zm506_s4

        '"흠… 아마 이 부근에 실을 자르는 데 쓸 수 있는 연장이 있을 것 같군… 다시 오리다."{#zm506_s3_r45481}' if zm506Logic.r45481_condition():
            # a8 # r45481
            jump zm506_dispose

        '시체를 다시 조사한다.{#zm506_s3_r45482}':
            # a9 # r45482
            jump zm506_s0

        '시체를 그냥 내버려 두고 떠난다.{#zm506_s3_r45483}':
            # a10 # r45483
            jump zm506_dispose


# s4 # say45428
label zm506_s4: # from 3.0
    nr '당신은 메스로 실을 깔끔하게 잘라낸다, 그리고 바늘을 실과 함께 뽑아 낸다. 그러자 이마를 덮고 있던 피부가 벗겨져 백묵처럼 하얀 두개골이 드러난다. 놀랍게도 그 곳에는 "78"이란 번호가 새겨져 있다.{#zm506_s4_1}'

    menu:
        '"당신은 각기 다른 두 명칭을 가지고 있는 것 같소, 시체."{#zm506_s4_r45484}' if zm506Logic.r45484_condition():
            # a11 # r45484
            $ zm506Logic.r45484_action()
            jump zm506_s1

        '"당신은 각기 다른 두 명칭을 가지고 있는 것 같소, 시체."{#zm506_s4_r45496}' if zm506Logic.r45496_condition():
            # a12 # r45496
            jump zm506_s1

        '시체를 다시 살펴본다.{#zm506_s4_r50097}':
            # a13 # r50097
            jump zm506_s5

        '시체를 그냥 내버려 두고 떠난다.{#zm506_s4_r66889}':
            # a14 # r66889
            jump zm506_dispose


# s5 # say45429
label zm506_s5: # from 4.2 # IF ~  Global("506_Thread","GLOBAL",1)
    nr '꿰맨 곳 투성이인 이 시체는 두 철판 사이를 천천히 비틀거리면서 오가고 있다. 그의 몸 대부분의 부위에는 506"이란 번호가 실로 꿰매져 있으나, 이마의 피부가 벗겨져 드러난 두개골에는 "78"이란 번호가 새겨져 있다.{#zm506_s5_1}'

    menu:
        '"당신은 각기 다른 두 명칭을 가지고 있는 것 같소, 시체."{#zm506_s5_r45502}' if zm506Logic.r45502_condition():
            # a15 # r45502
            $ zm506Logic.r45502_action()
            jump zm506_s1

        '"당신은 각기 다른 두 명칭을 가지고 있는 것 같소, 시체."{#zm506_s5_r45508}' if zm506Logic.r45508_condition():
            # a16 # r45508
            jump zm506_s1

        '"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."{#zm506_s5_r45510}' if zm506Logic.r45510_condition():
            # a17 # r45510
            jump zm506_s1

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.{#zm506_s5_r45512}' if zm506Logic.r45512_condition():
            # a18 # r45512
            jump zm506_s2

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zm506_s5_r45513}':
            # a19 # r45513
            jump zm506_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zm506_s5_r45514}':
            # a20 # r45514
            jump zm506_dispose
