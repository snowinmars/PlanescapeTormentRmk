init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.copearc_logic import CopearcLogic
    copearcLogic = CopearcLogic(runtime.global_state_manager)


# ###
# Original:  DLG/COPEARC.DLG
# ###


# s0 # say46723
label copearc_s0: # - # IF ~  True()
    nr '이 구리 귀걸이는 매우 오래된 것처럼 보인다. 달기 위한 귀걸이는 분명하나 귀에 달기 위한 고리나 그 비슷한 것이 전혀 보이지 않는다. 하지만 귀걸이 안쪽에는 일련의 홈들이 파여 있다.{#copearc_s0_1}'

    menu:
        '홈들을 살펴본다.{#copearc_s0_r46724}':
            # a0 # r46724
            jump copearc_s1

        '당신 손톱을 좀비 #79의 이마에서 본 이빨 달린 원에서 삼각형이 가리키는 방향에 있는 금에 끼워 넣는다.{#copearc_s0_r46725}' if copearcLogic.r46725_condition():
            # a1 # r46725
            $ copearcLogic.r46725_action()
            jump copearc_s2

        '귀걸이를 치운다.{#copearc_s0_r46726}':
            # a2 # r46726
            jump copearc_dispose


# s1 # say46727
label copearc_s1: # from 0.0
    nr '홈들은 귀걸이 안쪽에 일정한 간격으로 파여 있다. 자세히 보니 그것들을 엄니와 비슷하게 생겼다. 그것들은 사람의 손에 의해 만들어진 것은 분명하나 그 정확한 목적은 알 수가 없다.{#copearc_s1_1}'

    menu:
        '당신 손톱을 좀비 #79의 이마에서 본 이빨 달린 원에서 삼각형이 가리키는 방향에 있는 금에 끼워 넣는다.{#copearc_s1_r46728}' if copearcLogic.r46728_condition():
            # a3 # r46728
            $ copearcLogic.r46728_action()
            jump copearc_s2

        '귀걸이를 치운다.{#copearc_s1_r46729}':
            # a4 # r46729
            jump copearc_dispose


# s2 # say46730
label copearc_s2: # from 0.1 1.0
    nr '당신은 손톱을 위에서 세 번째 홈에 끼우고 안쪽으로 누른다. 그러자 *짤까닥* 소리와 함께 귀걸이 위쪽이 열린다. 이제 그 귀걸이는 달 수가 있을 뿐만 아니라, 그 안에는 비밀의 공간도 있는 듯하다.{#copearc_s2_1}'

    menu:
        '귀걸이를 흔들어 뭔가 나오는지 본다.{#copearc_s2_r46731}':
            # a5 # r46731
            jump copearc_s3


# s3 # say46732
label copearc_s3: # from 2.0
    nr '당신은 귀걸이를 흔든다, 그러나 아무 것도 나오지는 않는다. 그 안에 숨겨져 있던 것은 이미 없어진 듯하다.  주: 귀걸이의 걸쇠를 발견하면 하면 귀걸이를 달 수 있게 된다. 또한 비밀 공간이 있는 귀걸이는 상인에게 보다 좋은 값을 받고 팔 수가 있다.{#copearc_s3_1}'

    menu:
        '귀걸이를 치운다.{#copearc_s3_r46733}':
            # a6 # r46733
            $ copearcLogic.r46733_action()
            jump copearc_dispose
