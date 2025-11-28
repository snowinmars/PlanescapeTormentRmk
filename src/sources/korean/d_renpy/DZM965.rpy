init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm965_logic import Zm965Logic
    zm965Logic = Zm965Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM965.DLG
# ###


# s0 # say34920
label zm965_s0: # - # IF ~  NearbyDialog("Dmorte")
    nr '이 시체는 삼각형을 그리며 움직이고 있다. 시체는 삼각형의 한 모퉁이에 도달하면 일단 잠시 멈춘다, 그리고 방향을 바꾸어 다음 모퉁이로 향한다. 그것의 해골 옆머리에는 "965"라는 문신이 새겨져 있다. 당신이 다가가자 시체는 걸음을 멈추고 당신을 쳐다본다.{#zm965_s0_1}'

    jump morte_s477  # EXTERN


# s1 # say34922
label zm965_s1: # externs morte_s481 morte_s480 # IF ~  !NearbyDialog("Dmorte")
    nr '이 시체는 삼각형을 그리며 움직이고 있다. 시체는 삼각형의 한 모퉁이에 도달하면 일단 잠시 멈춘다, 그리고 방향을 바꾸어 다음 모퉁이로 향한다. 그것의 해골 옆머리에는 "965"라는 문신이 새겨져 있다. 당신이 다가가자 시체는 걸음을 멈추고 당신을 쳐다본다.{#zm965_s1_1}'

    menu:
        '"그런데… 당신은 왜 삼각형을 그리며 걷는 거요?"{#zm965_s1_r34923}' if zm965Logic.r34923_condition():
            # a0 # r34923
            $ zm965Logic.r34923_action()
            jump zm965_s2

        '"그런데… 당신은 왜 삼각형을 그리며 걷는 거요?"{#zm965_s1_r45070}' if zm965Logic.r45070_condition():
            # a1 # r45070
            jump zm965_s2

        '"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."{#zm965_s1_r45071}' if zm965Logic.r45071_condition():
            # a2 # r45071
            jump zm965_s2

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.{#zm965_s1_r45072}' if zm965Logic.r45072_condition():
            # a3 # r45072
            jump zm965_s3

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zm965_s1_r45073}':
            # a4 # r45073
            jump zm965_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zm965_s1_r45074}':
            # a5 # r45074
            jump zm965_dispose


# s2 # say34927
label zm965_s2: # from 1.0 1.1 1.2
    nr '시체는 당신을 멍하니 쳐다본다.{#zm965_s2_1}'

    menu:
        '시체를 그냥 내버려 두고 떠난다.{#zm965_s2_r34928}':
            # a6 # r34928
            jump zm965_dispose


# s3 # say45069
label zm965_s3: # from 1.3
    nr '시체는 움직이지 않는다. 당신의 질문에 대답할 정도의 정신은 이제 그것에게는 남아있지 않은 것 같다.{#zm965_s3_1}'

    menu:
        '시체를 그냥 내버려 두고 떠난다.{#zm965_s3_r45075}':
            # a7 # r45075
            jump zm965_dispose
