init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm475_logic import Zm475Logic
    zm475Logic = Zm475Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM475.DLG
# ###


# s0 # say6584
label zm475_s0: # - # IF ~  True()
    nr '이 시체의 머리는 여러 개의 얇은 철판을 볼트로 해골에 직접 덧대 놓은 기형적인 모습을 하고 있다. 왼쪽 눈을 덮고 있는 녹슨 철판에는 "475"라는 숫자가 새겨져 있다. 볼트로 굳게 닫아 놓은 입에서는 방부제의 악취가 나고 있다.{#zm475_s0_1}'

    menu:
        '"그래… 뭐 재미있는 일은 없소?"{#zm475_s0_r6587}' if zm475Logic.r6587_condition():
            # a0 # r6587
            $ zm475Logic.r6587_action()
            jump zm475_s1

        '"그래… 뭐 재미있는 일은 없소?"{#zm475_s0_r6588}' if zm475Logic.r6588_condition():
            # a1 # r6588
            jump zm475_s1

        '"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."{#zm475_s0_r6589}' if zm475Logic.r6589_condition():
            # a2 # r6589
            jump zm475_s1

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.{#zm475_s0_r6590}' if zm475Logic.r6590_condition():
            # a3 # r6590
            jump zm475_s2

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zm475_s0_r6591}':
            # a4 # r6591
            jump zm475_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zm475_s0_r6592}':
            # a5 # r6592
            jump zm475_dispose


# s1 # say6585
label zm475_s1: # from 0.0 0.1 0.2
    nr '시체는 계속 당신을 쳐다본다.{#zm475_s1_1}'

    menu:
        '시체를 그냥 내버려 두고 떠난다.{#zm475_s1_r6593}':
            # a6 # r6593
            jump zm475_dispose


# s2 # say6586
label zm475_s2: # from 0.3
    nr '시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.{#zm475_s2_1}'

    menu:
        '시체를 그냥 내버려 두고 떠난다.{#zm475_s2_r6594}':
            # a7 # r6594
            jump zm475_dispose
