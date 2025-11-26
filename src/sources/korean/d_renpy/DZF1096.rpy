init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf1096_logic import Zf1096Logic
    zf1096Logic = Zf1096Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF1096.DLG
# ###


# s0 # say35082
label zf1096_s0: # - # IF ~  True()
    nr '이 여자 시체는 방안의 철판들 사이를 왔다갔다하고 있다. 그녀의 머리는 긴 변발로 매듭지어져 있으며, 그것은 그녀의 목을 마치 올가미처럼 감고 있다. 누군가가 그녀의 이마에 "1096"이란 번호를 스텐실로 새겨 놓았으며, 그녀의 입술은 꿰매져 있다.'

    menu:
        '"어… 참 예쁘게 땋은 머리군."' if zf1096Logic.r35083_condition():
            # a0 # r35083
            $ zf1096Logic.r35083_action()
            jump zf1096_s1

        '"어… 참 예쁘게 땋은 머리군."' if zf1096Logic.r35100_condition():
            # a1 # r35100
            jump zf1096_s1

        '"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."' if zf1096Logic.r35101_condition():
            # a2 # r35101
            jump zf1096_s1

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.' if zf1096Logic.r35102_condition():
            # a3 # r35102
            jump zf1096_s2

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."' if zf1096Logic.r35107_condition():
            # a4 # r35107
            jump morte_s342  # EXTERN

        '시체를 그냥 내버려 두고 떠난다.' if zf1096Logic.r35108_condition():
            # a5 # r35108
            jump morte_s342  # EXTERN

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."' if zf1096Logic.r35109_condition():
            # a6 # r35109
            jump zf1096_dispose

        '시체를 그냥 내버려 두고 떠난다.' if zf1096Logic.r35110_condition():
            # a7 # r35110
            jump zf1096_dispose

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."' if zf1096Logic.r35111_condition():
            # a8 # r35111
            jump zf1096_dispose

        '시체를 그냥 내버려 두고 떠난다.' if zf1096Logic.r35112_condition():
            # a9 # r35112
            jump zf1096_dispose


# s1 # say35084
label zf1096_s1: # from 0.0 0.1 0.2
    nr '시체는 반응하지 않는다. 당신 생각에 그녀는 당신이 여기 있다는 사실조차 인지하지 못하는 것 같다.'

    menu:
        '"그럼 안녕히 계시오."' if zf1096Logic.r35085_condition():
            # a10 # r35085
            jump morte_s342  # EXTERN

        '"그럼 안녕히 계시오."' if zf1096Logic.r35098_condition():
            # a11 # r35098
            jump zf1096_dispose

        '"그럼 안녕히 계시오."' if zf1096Logic.r35099_condition():
            # a12 # r35099
            jump zf1096_dispose


# s2 # say35103
label zf1096_s2: # from 0.3
    nr '시체는 움직이지 않는다. 당신의 질문에 대답할 정도의 정신은 이제 그것에게는 남아있지 않은 것 같다.'

    menu:
        '"그럼 안녕히 계시오."' if zf1096Logic.r35104_condition():
            # a13 # r35104
            jump morte_s342  # EXTERN

        '"그럼 안녕히 계시오."' if zf1096Logic.r35105_condition():
            # a14 # r35105
            jump zf1096_dispose

        '"그럼 안녕히 계시오."' if zf1096Logic.r35106_condition():
            # a15 # r35106
            jump zf1096_dispose


# s3 # say35113
label zf1096_s3: # - # IF ~  False()
    nr '시체는 움직이지 않는다. 당신의 질문에 대답할 정도의 정신은 이제 그것에게는 남아있지 않은 것 같다.'

    menu:
