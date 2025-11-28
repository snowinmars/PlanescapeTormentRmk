init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf114_logic import Zf114Logic
    zf114Logic = Zf114Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF114.DLG
# ###


# s0 # say34986
label zf114_s0: # - # IF ~  True()
    nr '당신이 다가가자 이 여자 시체는 걸음을 멈춘다. 그녀의 이마에는 "114"란 번호가 새겨져 있다. 그녀의 입은 실로 꿰매어져 닫혀 있다. 그러나 실은 천천히 풀리기 시작하고 시작하고 있으며, 그녀의 입술 사이로부터는 작은 신음 소리가 새어 나오고 있다.{#zf114_s0_1}'

    menu:
        '"그래… 나중에 다른 약속이라도 있소?"{#zf114_s0_r34987}' if zf114Logic.r34987_condition():
            # a0 # r34987
            $ zf114Logic.r34987_action()
            jump zf114_s1

        '"그래… 나중에 다른 약속이라도 있소?"{#zf114_s0_r35004}' if zf114Logic.r35004_condition():
            # a1 # r35004
            jump zf114_s1

        '"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."{#zf114_s0_r35005}' if zf114Logic.r35005_condition():
            # a2 # r35005
            jump zf114_s1

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.{#zf114_s0_r35006}' if zf114Logic.r35006_condition():
            # a3 # r35006
            jump zf114_s2

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zf114_s0_r35011}' if zf114Logic.r35011_condition():
            # a4 # r35011
            jump morte_s330  # EXTERN

        '시체를 그냥 내버려 두고 떠난다.{#zf114_s0_r35012}' if zf114Logic.r35012_condition():
            # a5 # r35012
            jump morte_s330  # EXTERN

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zf114_s0_r35013}' if zf114Logic.r35013_condition():
            # a6 # r35013
            jump zf114_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zf114_s0_r35014}' if zf114Logic.r35014_condition():
            # a7 # r35014
            jump zf114_dispose

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zf114_s0_r35015}' if zf114Logic.r35015_condition():
            # a8 # r35015
            jump zf114_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zf114_s0_r35016}' if zf114Logic.r35016_condition():
            # a9 # r35016
            jump zf114_dispose


# s1 # say34988
label zf114_s1: # from 0.0 0.1 0.2
    nr '시체는 계속 당신을 쳐다본다.{#zf114_s1_1}'

    menu:
        '"그럼 안녕히 계시오."{#zf114_s1_r34989}' if zf114Logic.r34989_condition():
            # a10 # r34989
            jump morte_s330  # EXTERN

        '"그럼 안녕히 계시오."{#zf114_s1_r35002}' if zf114Logic.r35002_condition():
            # a11 # r35002
            jump zf114_dispose

        '"그럼 안녕히 계시오."{#zf114_s1_r35003}' if zf114Logic.r35003_condition():
            # a12 # r35003
            jump zf114_dispose


# s2 # say35007
label zf114_s2: # from 0.3
    nr '시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.{#zf114_s2_1}'

    menu:
        '"그럼 안녕히 계시오."{#zf114_s2_r35008}' if zf114Logic.r35008_condition():
            # a13 # r35008
            jump morte_s330  # EXTERN

        '"그럼 안녕히 계시오."{#zf114_s2_r35009}' if zf114Logic.r35009_condition():
            # a14 # r35009
            jump zf114_dispose

        '"그럼 안녕히 계시오."{#zf114_s2_r35010}' if zf114Logic.r35010_condition():
            # a15 # r35010
            jump zf114_dispose


# s3 # say35017
label zf114_s3: # - # IF ~  False()
    nr '시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.{#zf114_s3_1}'

    menu:
