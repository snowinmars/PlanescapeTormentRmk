init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm463_logic import Zm463Logic
    zm463Logic = Zm463Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM463.DLG
# ###


# s0 # say6484
label zm463_s0: # - # IF ~  True()
    nr '비틀거리는 시체는 계속 당신을 공허한 눈으로 바라본다. 그의 이마에는 "463" 이라고 새겨져 있으며, 그의 입은 꿰매져 있다. 그의 몸으로부터는 포름알데히드 냄새가 약간 난다.{#zm463_s0_}'

    menu:
        '"그래… 뭐 재미있는 일이라도 있소?"{#zm463_s0_r6485}' if zm463Logic.r6485_condition():
            # a0 # r6485
            $ zm463Logic.r6485_action()
            jump zm463_s1

        '"그래… 뭐 재미있는 일이라도 있소?"{#zm463_s0_r6488}' if zm463Logic.r6488_condition():
            # a1 # r6488
            jump zm463_s1

        '"난 당신이 좀비가 아니라는 걸 아오. 당신은 아무도 속이지 못할 거요."{#zm463_s0_r6489}' if zm463Logic.r6489_condition():
            # a2 # r6489
            jump zm463_s1

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.{#zm463_s0_r6490}' if zm463Logic.r6490_condition():
            # a3 # r6490
            jump zm463_s2

        '"당신과 얘기를 나눌 수가 있어서 즐거웠소. 안녕히 계시오."{#zm463_s0_r6491}':
            # a4 # r6491
            jump zm463_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zm463_s0_r6492}':
            # a5 # r6492
            jump zm463_dispose


# s1 # say6486
label zm463_s1: # from 0.0 0.1 0.2
    nr '시체는 계속 당신을 쳐다본다.{#zm463_s1_}'

    menu:
        '시체를 그냥 내버려 두고 떠난다.{#zm463_s1_r6493}':
            # a6 # r6493
            jump zm463_dispose


# s2 # say6487
label zm463_s2: # from 0.3
    nr '시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.{#zm463_s2_}'

    menu:
        '시체를 그냥 내버려 두고 떠난다.{#zm463_s2_r6494}':
            # a7 # r6494
            jump zm463_dispose
