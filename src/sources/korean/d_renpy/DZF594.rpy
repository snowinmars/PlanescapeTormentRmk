init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf594_logic import Zf594Logic
    zf594Logic = Zf594Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF594.DLG
# ###


# s0 # say35018
label zf594_s0: # - # IF ~  True()
    nr '이 비틀거리는 시체는 당신을 멍한 눈으로 쳐다보고 있다. 그녀의 피부는 종이처럼 얇아 마치 안개처럼 느껴진다… 누가 그녀의 뼈대를 거미줄로 만든 천으로 감은 듯하다. 그녀의 이마에는 "594"란 번호가 목탄으로 새겨져 있다.'

    menu:
        '"그래… 나중에 다른 약속이라도 있소?"' if zf594Logic.r35019_condition():
            # a0 # r35019
            $ zf594Logic.r35019_action()
            jump zf594_s1

        '"그래… 나중에 다른 약속이라도 있소?"' if zf594Logic.r35036_condition():
            # a1 # r35036
            jump zf594_s1

        '"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."' if zf594Logic.r35037_condition():
            # a2 # r35037
            jump zf594_s1

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.' if zf594Logic.r35038_condition():
            # a3 # r35038
            jump zf594_s2

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."' if zf594Logic.r35043_condition():
            # a4 # r35043
            jump morte_s334  # EXTERN

        '시체를 그냥 내버려 두고 떠난다.' if zf594Logic.r35044_condition():
            # a5 # r35044
            jump morte_s334  # EXTERN

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."' if zf594Logic.r35045_condition():
            # a6 # r35045
            jump zf594_dispose

        '시체를 그냥 내버려 두고 떠난다.' if zf594Logic.r35046_condition():
            # a7 # r35046
            jump zf594_dispose

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."' if zf594Logic.r35047_condition():
            # a8 # r35047
            jump zf594_dispose

        '시체를 그냥 내버려 두고 떠난다.' if zf594Logic.r35048_condition():
            # a9 # r35048
            jump zf594_dispose


# s1 # say35020
label zf594_s1: # from 0.0 0.1 0.2
    nr '시체는 계속 당신을 쳐다본다.'

    menu:
        '"그럼 안녕히 계시오."' if zf594Logic.r35021_condition():
            # a10 # r35021
            jump morte_s334  # EXTERN

        '"그럼 안녕히 계시오."' if zf594Logic.r35034_condition():
            # a11 # r35034
            jump zf594_dispose

        '"그럼 안녕히 계시오."' if zf594Logic.r35035_condition():
            # a12 # r35035
            jump zf594_dispose


# s2 # say35039
label zf594_s2: # from 0.3
    nr '시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.'

    menu:
        '"그럼 안녕히 계시오."' if zf594Logic.r35040_condition():
            # a13 # r35040
            jump morte_s334  # EXTERN

        '"그럼 안녕히 계시오."' if zf594Logic.r35041_condition():
            # a14 # r35041
            jump zf594_dispose

        '"그럼 안녕히 계시오."' if zf594Logic.r35042_condition():
            # a15 # r35042
            jump zf594_dispose


# s3 # say35049
label zf594_s3: # - # IF ~  False()
    nr '시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.'

    menu:
