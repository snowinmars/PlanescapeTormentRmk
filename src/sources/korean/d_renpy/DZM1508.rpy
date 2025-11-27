init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1508_logic import Zm1508Logic
    zm1508Logic = Zm1508Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1508.DLG
# ###


# s0 # say46745
label zm1508_s0: # - # IF ~  True()
    nr '이 우락부락하게 생긴 시체의 이마는 생전에 박치기가 주된 공격수단이었던 듯 흉터투성이다. 이마에는 "1508"이란 번호가 붉은 실로 꿰매져 있으며 입은 거친 검은색 실로 꿰매져 있다. 그로부터는 향료 냄새가 희미하게 난다.{#zm1508_s0_}'

    menu:
        '"그래… 뭐 재미있는 일은 없소?"{#zm1508_s0_r46746}' if zm1508Logic.r46746_condition():
            # a0 # r46746
            $ zm1508Logic.r46746_action()
            jump zm1508_s1

        '"그래… 뭐 재미있는 일은 없소?"{#zm1508_s0_r46749}' if zm1508Logic.r46749_condition():
            # a1 # r46749
            jump zm1508_s1

        '"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."{#zm1508_s0_r46750}' if zm1508Logic.r46750_condition():
            # a2 # r46750
            jump zm1508_s1

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.{#zm1508_s0_r46751}' if zm1508Logic.r46751_condition():
            # a3 # r46751
            jump zm1508_s2

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zm1508_s0_r46754}':
            # a4 # r46754
            jump zm1508_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zm1508_s0_r46755}':
            # a5 # r46755
            jump zm1508_dispose


# s1 # say46747
label zm1508_s1: # from 0.0 0.1 0.2
    nr '시체는 계속 당신을 쳐다본다.{#zm1508_s1_}'

    menu:
        '시체를 그냥 내버려 두고 떠난다.{#zm1508_s1_r46748}':
            # a6 # r46748
            jump zm1508_dispose


# s2 # say46752
label zm1508_s2: # from 0.3
    nr '시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.{#zm1508_s2_}'

    menu:
        '시체를 그냥 내버려 두고 떠난다.{#zm1508_s2_r46753}':
            # a7 # r46753
            jump zm1508_dispose
