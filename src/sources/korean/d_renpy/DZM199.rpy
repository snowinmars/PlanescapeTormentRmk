init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm199_logic import Zm199Logic
    zm199Logic = Zm199Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM199.DLG
# ###


# s0 # say34975
label zm199_s0: # - # IF ~  True()
    nr '이 걸어다니는 시체로부터는 탄 고기와 섬유의 냄새가 난다. 시체의 측면 전체에 걸쳐 비교적 새로운 화상이 나 있다. 아마 불 너무 가까이 서 있었던 탓에 타버린 것 같다. 이마에는 "199"란 번호가 새겨져 있으며, 입술은 꿰매어져 있다.{#zm199_s0_1}'

    menu:
        '"그래… 뭐 재미있는 일은 없소?"{#zm199_s0_r34976}' if zm199Logic.r34976_condition():
            # a0 # r34976
            $ zm199Logic.r34976_action()
            jump zm199_s1

        '"그래… 뭐 재미있는 일은 없소?"{#zm199_s0_r34979}' if zm199Logic.r34979_condition():
            # a1 # r34979
            jump zm199_s1

        '"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."{#zm199_s0_r34980}' if zm199Logic.r34980_condition():
            # a2 # r34980
            jump zm199_s1

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.{#zm199_s0_r34981}' if zm199Logic.r34981_condition():
            # a3 # r34981
            jump zm199_s2

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zm199_s0_r34984}':
            # a4 # r34984
            jump zm199_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zm199_s0_r34985}':
            # a5 # r34985
            jump zm199_dispose


# s1 # say34977
label zm199_s1: # from 0.0 0.1 0.2
    nr '시체는 계속 당신을 쳐다본다.{#zm199_s1_1}'

    menu:
        '시체를 그냥 내버려 두고 떠난다.{#zm199_s1_r34978}':
            # a6 # r34978
            jump zm199_dispose


# s2 # say34982
label zm199_s2: # from 0.3
    nr '시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.{#zm199_s2_1}'

    menu:
        '시체를 그냥 내버려 두고 떠난다.{#zm199_s2_r34983}':
            # a7 # r34983
            jump zm199_dispose
