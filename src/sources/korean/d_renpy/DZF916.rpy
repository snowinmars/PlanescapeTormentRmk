init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf916_logic import Zf916Logic
    zf916Logic = Zf916Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF916.DLG
# ###


# s0 # say24719
label zf916_s0: # - # IF ~  True()
    nr '이 여자 시체는 계속 당신을 공허한 눈으로 바라본다. 그녀의 이마에는 "916" 이라고 새겨져 있으며, 그녀의 입은 꿰매져 있다. 그녀의 몸으로부터는 포름알데히드 냄새가 약간 난다.{#zf916_s0_1}'

    menu:
        '"그래… 나중에 다른 약속이라도 있소?"{#zf916_s0_r24720}' if zf916Logic.r24720_condition():
            # a0 # r24720
            $ zf916Logic.r24720_action()
            jump zf916_s1

        '"그래… 나중에 다른 약속이라도 있소?"{#zf916_s0_r24737}' if zf916Logic.r24737_condition():
            # a1 # r24737
            jump zf916_s1

        '"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."{#zf916_s0_r24738}' if zf916Logic.r24738_condition():
            # a2 # r24738
            jump zf916_s1

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.{#zf916_s0_r24739}' if zf916Logic.r24739_condition():
            # a3 # r24739
            jump zf916_s2

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zf916_s0_r24744}' if zf916Logic.r24744_condition():
            # a4 # r24744
            jump morte_s46  # EXTERN

        '시체를 그냥 내버려 두고 떠난다.{#zf916_s0_r24745}' if zf916Logic.r24745_condition():
            # a5 # r24745
            jump morte_s46  # EXTERN

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zf916_s0_r24746}' if zf916Logic.r24746_condition():
            # a6 # r24746
            jump zf916_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zf916_s0_r24747}' if zf916Logic.r24747_condition():
            # a7 # r24747
            jump zf916_dispose

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zf916_s0_r24748}' if zf916Logic.r24748_condition():
            # a8 # r24748
            jump zf916_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zf916_s0_r24749}' if zf916Logic.r24749_condition():
            # a9 # r24749
            jump zf916_dispose


# s1 # say24721
label zf916_s1: # from 0.0 0.1 0.2
    nr '시체는 계속 당신을 쳐다본다.{#zf916_s1_1}'

    menu:
        '"그럼 안녕히 계시오."{#zf916_s1_r24722}' if zf916Logic.r24722_condition():
            # a10 # r24722
            jump morte_s46  # EXTERN

        '"그럼 안녕히 계시오."{#zf916_s1_r24735}' if zf916Logic.r24735_condition():
            # a11 # r24735
            jump zf916_dispose

        '"그럼 안녕히 계시오."{#zf916_s1_r24736}' if zf916Logic.r24736_condition():
            # a12 # r24736
            jump zf916_dispose


# s2 # say24740
label zf916_s2: # from 0.3
    nr '시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.{#zf916_s2_1}'

    menu:
        '"그럼 안녕히 계시오."{#zf916_s2_r24741}' if zf916Logic.r24741_condition():
            # a13 # r24741
            jump morte_s46  # EXTERN

        '"그럼 안녕히 계시오."{#zf916_s2_r24742}' if zf916Logic.r24742_condition():
            # a14 # r24742
            jump zf916_dispose

        '"그럼 안녕히 계시오."{#zf916_s2_r24743}' if zf916Logic.r24743_condition():
            # a15 # r24743
            jump zf916_dispose


# s3 # say24750
label zf916_s3: # - # IF ~  False()
    nr '시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.{#zf916_s3_1}'

    menu:
