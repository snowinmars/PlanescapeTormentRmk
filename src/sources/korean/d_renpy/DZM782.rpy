init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm782_logic import Zm782Logic
    zm782Logic = Zm782Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM782.DLG
# ###


# s0 # say24708
label zm782_s0: # - # IF ~  True()
    nr '당신이 다가가자 이 시체는 동작을 멈추고 당신을 공허한 눈으로 바라본다. 그의 이마에는 "782" 이라고 새겨져 있으며, 그의 입은 꿰매져 있다. 그의 몸으로부터는 포름알데히드 냄새가 약간 난다.{#zm782_s0_1}'

    menu:
        '"나는 열쇠를 찾고 있소… 혹시 당신이 가지고 있소?"{#zm782_s0_r24709}' if zm782Logic.r24709_condition():
            # a0 # r24709
            jump morte1_s34  # EXTERN

        '"나는 열쇠를 찾고 있소… 혹시 당신이 가지고 있소?"{#zm782_s0_r24712}' if zm782Logic.r24712_condition():
            # a1 # r24712
            jump zm782_s1

        '시체를 살펴 열쇠가 있는지 본다.{#zm782_s0_r24713}':
            # a2 # r24713
            jump zm782_s2

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zm782_s0_r24714}':
            # a3 # r24714
            jump zm782_s2

        '시체를 그냥 내버려 두고 떠난다.{#zm782_s0_r24717}':
            # a4 # r24717
            jump zm782_dispose


# s1 # say24710
label zm782_s1: # from 0.1
    nr '시체는 아무런 응답을 하지 않는다.{#zm782_s1_1}'

    menu:
        '"그럼 관두시오. 안녕히 계시오."{#zm782_s1_r24711}':
            # a5 # r24711
            jump zm782_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zm782_s1_r42304}':
            # a6 # r42304
            jump zm782_dispose


# s2 # say24715
label zm782_s2: # from 0.2 0.3
    nr '이 시체가 바로 열쇠를 가지고 있는 시체인 것 같다. 그는 열쇠를 왼손 엄지와 집게손가락으로 꽉 쥐고 있는데 경직되어 벌어질 생각을 하지 않는다. 열쇠를 빼내려면 시체의 손을 잘라야만 할 것 같다.{#zm782_s2_1}'

    menu:
        '"난 그 열쇠가 필요하오, 시체… 어차피 당신은 이 세상에 오래 있을 것 같지는 않소."{#zm782_s2_r24716}':
            # a7 # r24716
            $ zm782Logic.r24716_action()
            jump zm782_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zm782_s2_r42305}':
            # a8 # r42305
            jump zm782_dispose
