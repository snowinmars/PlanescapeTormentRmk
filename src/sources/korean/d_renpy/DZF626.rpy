init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf626_logic import Zf626Logic
    zf626Logic = Zf626Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF626.DLG
# ###


# s0 # say35050
label zf626_s0: # - # IF ~  True()
    nr '이 여자의 왼쪽 얼굴은 곤봉으로 강타를 당해 함몰한 것 같다, 그리고 그녀의 손상된 해골은 멍과 부은 자국으로 뒤덮여 있다. 그녀의 왼쪽 볼, 눈 바로 아래에는 "626"이는 번호가 실로 수놓아져 있다.'

    menu:
        '"저런… 아주 심한 상처를 입었군."' if zf626Logic.r35051_condition():
            # a0 # r35051
            $ zf626Logic.r35051_action()
            jump zf626_s1

        '"저런… 아주 심한 상처를 입었군."' if zf626Logic.r35068_condition():
            # a1 # r35068
            jump zf626_s1

        '"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."' if zf626Logic.r35069_condition():
            # a2 # r35069
            jump zf626_s1

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.' if zf626Logic.r35070_condition():
            # a3 # r35070
            jump zf626_s2

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."' if zf626Logic.r35075_condition():
            # a4 # r35075
            jump morte_s338  # EXTERN

        '시체를 그냥 내버려 두고 떠난다.' if zf626Logic.r35076_condition():
            # a5 # r35076
            jump morte_s338  # EXTERN

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."' if zf626Logic.r35077_condition():
            # a6 # r35077
            jump zf626_dispose

        '시체를 그냥 내버려 두고 떠난다.' if zf626Logic.r35078_condition():
            # a7 # r35078
            jump zf626_dispose

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."' if zf626Logic.r35079_condition():
            # a8 # r35079
            jump zf626_dispose

        '시체를 그냥 내버려 두고 떠난다.' if zf626Logic.r35080_condition():
            # a9 # r35080
            jump zf626_dispose


# s1 # say35052
label zf626_s1: # from 0.0 0.1 0.2
    nr '시체는 당신을 멀쩡한 한쪽 눈으로 계속 바라보고 있다.'

    menu:
        '"그럼 안녕히 계시오."' if zf626Logic.r35053_condition():
            # a10 # r35053
            jump morte_s338  # EXTERN

        '"그럼 안녕히 계시오."' if zf626Logic.r35066_condition():
            # a11 # r35066
            jump zf626_dispose

        '"그럼 안녕히 계시오."' if zf626Logic.r35067_condition():
            # a12 # r35067
            jump zf626_dispose


# s2 # say35071
label zf626_s2: # from 0.3
    nr '이 시체는 미동도 하지 않는다… 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.'

    menu:
        '"그럼 안녕히 계시오."' if zf626Logic.r35072_condition():
            # a13 # r35072
            jump morte_s338  # EXTERN

        '"그럼 안녕히 계시오."' if zf626Logic.r35073_condition():
            # a14 # r35073
            jump zf626_dispose

        '"그럼 안녕히 계시오."' if zf626Logic.r35074_condition():
            # a15 # r35074
            jump zf626_dispose


# s3 # say35081
label zf626_s3: # - # IF ~  False()
    nr '시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.'

    menu:
