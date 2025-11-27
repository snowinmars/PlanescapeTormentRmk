init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1445_logic import Zm1445Logic
    zm1445Logic = Zm1445Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1445.DLG
# ###


# s0 # say46756
label zm1445_s0: # - # IF ~  True()
    nr '이 시체는 심하게 손상되어 있다. 귀, 콧등, 그리고 심지어는 손가락 몇 개까지 썩어서 없어졌다… 죽기 전에 끔찍한 병을 앓았던 것 같다. 이마에는 "1445"이란 번호가 새겨져 있으며 입은 꿰매져 있다.{#zm1445_s0_}'

    menu:
        '"그래… 뭐 재미있는 일은 없소?"{#zm1445_s0_r46757}' if zm1445Logic.r46757_condition():
            # a0 # r46757
            $ zm1445Logic.r46757_action()
            jump zm1445_s1

        '"그래… 뭐 재미있는 일은 없소?"{#zm1445_s0_r46760}' if zm1445Logic.r46760_condition():
            # a1 # r46760
            jump zm1445_s1

        '"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."{#zm1445_s0_r46761}' if zm1445Logic.r46761_condition():
            # a2 # r46761
            jump zm1445_s1

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.{#zm1445_s0_r46762}' if zm1445Logic.r46762_condition():
            # a3 # r46762
            jump zm1445_s2

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zm1445_s0_r46765}':
            # a4 # r46765
            jump zm1445_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zm1445_s0_r46766}':
            # a5 # r46766
            jump zm1445_dispose


# s1 # say46758
label zm1445_s1: # from 0.0 0.1 0.2
    nr '시체는 계속 당신을 쳐다본다.{#zm1445_s1_}'

    menu:
        '시체를 그냥 내버려 두고 떠난다.{#zm1445_s1_r46759}':
            # a6 # r46759
            jump zm1445_dispose


# s2 # say46763
label zm1445_s2: # from 0.3
    nr '시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.{#zm1445_s2_}'

    menu:
        '시체를 그냥 내버려 두고 떠난다.{#zm1445_s2_r46764}':
            # a7 # r46764
            jump zm1445_dispose
