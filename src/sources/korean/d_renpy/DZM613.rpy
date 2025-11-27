init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm613_logic import Zm613Logic
    zm613Logic = Zm613Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM613.DLG
# ###


# s0 # say6540
label zm613_s0: # - # IF ~  True()
    nr '이 터벅터벅 걷는 좀비의 이마에는 "613"이라는 번호가 깊숙이 새겨져 있다, 하지만 "1"과 "3"사이에는 2.5 cm 정도 길이의 가죽질의 피부조각이 있다. 자세히 보니 거기에 새겨진 "2"라는 숫자가 간신히 보인다.{#zm613_s0_}'

    menu:
        '"그래… 뭐 재미있는 일은 없소?"{#zm613_s0_r6543}' if zm613Logic.r6543_condition():
            # a0 # r6543
            $ zm613Logic.r6543_action()
            jump zm613_s1

        '"그래… 뭐 재미있는 일은 없소?"{#zm613_s0_r6544}' if zm613Logic.r6544_condition():
            # a1 # r6544
            jump zm613_s1

        '"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."{#zm613_s0_r6545}' if zm613Logic.r6545_condition():
            # a2 # r6545
            jump zm613_s1

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.{#zm613_s0_r6546}' if zm613Logic.r6546_condition():
            # a3 # r6546
            jump zm613_s2

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zm613_s0_r6547}':
            # a4 # r6547
            jump zm613_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zm613_s0_r6548}':
            # a5 # r6548
            jump zm613_dispose


# s1 # say6541
label zm613_s1: # from 0.0 0.1 0.2
    nr '시체는 계속 당신을 쳐다본다.{#zm613_s1_}'

    menu:
        '시체를 그냥 내버려 두고 떠난다.{#zm613_s1_r6549}':
            # a6 # r6549
            jump zm613_dispose


# s2 # say6542
label zm613_s2: # from 0.3
    nr '시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.{#zm613_s2_}'

    menu:
        '시체를 그냥 내버려 두고 떠난다.{#zm613_s2_r6550}':
            # a7 # r6550
            jump zm613_dispose
