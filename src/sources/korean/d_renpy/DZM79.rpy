init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm79_logic import Zm79Logic
    zm79Logic = Zm79Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM79.DLG
# ###


# s0 # say34942
label zm79_s0: # - # IF ~  True()
    nr '이 시체의 살이 많이 붙어 있는 대가리는 과거 어느 시점에서 잘려 나가 실로 급하게 꿰매서 붙여 놓은 것이 틀림없다. 여러 종류의 꿰맨 자국들이 있고, 또 실이 풀어진 정도가 각기 다른 것으로 미루어 볼 때, 이 시체의 머리는 작업 중에 여러 번 떨어져 나갔고, 그 때마다 꿰매어 봉합했던 것 같다. 시체의 관자놀이에는 "79"란 번호가 새겨져 있으며, 그것은 이빨 달린 원에 의해 둘러싸여 있다. 원은 시체의 이마에 낙인으로 찍힌 것 같다.{#zm79_s0_1}'

    menu:
        '"그래… 뭐 재미있는 일은 없소?"{#zm79_s0_r34943}':
            # a0 # r34943
            $ zm79Logic.r34943_action()
            jump zm79_s1

        '이빨 달린 원을 살펴본다.{#zm79_s0_r34946}' if zm79Logic.r34946_condition():
            # a1 # r34946
            $ zm79Logic.r34946_action()
            jump zm79_s3

        '"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."{#zm79_s0_r34947}' if zm79Logic.r34947_condition():
            # a2 # r34947
            jump zm79_s1

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.{#zm79_s0_r34948}' if zm79Logic.r34948_condition():
            # a3 # r34948
            jump zm79_s2

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zm79_s0_r34951}':
            # a4 # r34951
            jump zm79_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zm79_s0_r34952}':
            # a5 # r34952
            jump zm79_dispose


# s1 # say34944
label zm79_s1: # from 0.0 0.2
    nr '시체는 계속 당신을 쳐다본다.{#zm79_s1_1}'

    menu:
        '시체를 그냥 내버려 두고 떠난다.{#zm79_s1_r34945}':
            # a6 # r34945
            jump zm79_dispose


# s2 # say34949
label zm79_s2: # from 0.3 3.0 3.1
    nr '시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.{#zm79_s2_1}'

    menu:
        '시체를 그냥 내버려 두고 떠난다.{#zm79_s2_r34950}':
            # a7 # r34950
            jump zm79_dispose


# s3 # say64278
label zm79_s3: # from 0.1
    nr '이빨 달린 원은 시체의 이마에 오래 전, 그것도 아마 그가 죽기 전에 찍혀진 것 같다. 그것은 종교적인 상징이거나 어떤 통과 의례의 징표인지도 모른다. 당신은 안쪽의 이빨들 사이의 움푹 들어간 곳들 중 한 곳에는 무슨 특별한 의미가 있는 것처럼 작은 삼각형이 있다는 사실을 발견한다.{#zm79_s3_1}'

    menu:
        '"흠… 흥미롭군. 그 표시가 어떻게 해서 거기에 있게 되었지, 시체?"{#zm79_s3_r64279}' if zm79Logic.r64279_condition():
            # a8 # r64279
            $ zm79Logic.j64536_s3_r64279_action()
            jump zm79_s2

        '"흠… 이빨들 사이의 공간이 내가 가지고 있는 이 구리 귀걸이의 홈들에 대응될지도…"{#zm79_s3_r64280}' if zm79Logic.r64280_condition():
            # a9 # r64280
            $ zm79Logic.j64537_s3_r64280_action()
            jump zm79_s2
