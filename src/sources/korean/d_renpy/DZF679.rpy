init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf679_logic import Zf679Logic
    zf679Logic = Zf679Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF679.DLG
# ###


# s0 # say35178
label zf679_s0: # - # IF ~  True()
    nr '이것은 고령의 노파의 좀비인 것 같다. 향료의 냄새, 꿰맨 입술, 그리고 오른쪽 볼에 새긴 "679"란 번호만 제외한다면 그녀의 죽기 전 모습도 지금과 별로 다르지 않았을 것 같다.{#zf679_s0_}'

    menu:
        '"그래… 나중에 다른 약속이라도 있소?"{#zf679_s0_r35179}' if zf679Logic.r35179_condition():
            # a0 # r35179
            $ zf679Logic.r35179_action()
            jump zf679_s1

        '"그래… 나중에 다른 약속이라도 있소?"{#zf679_s0_r35196}' if zf679Logic.r35196_condition():
            # a1 # r35196
            jump zf679_s1

        '"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."{#zf679_s0_r35197}' if zf679Logic.r35197_condition():
            # a2 # r35197
            jump zf679_s1

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.{#zf679_s0_r35198}' if zf679Logic.r35198_condition():
            # a3 # r35198
            jump zf679_s2

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zf679_s0_r35203}' if zf679Logic.r35203_condition():
            # a4 # r35203
            jump morte_s354  # EXTERN

        '시체를 그냥 내버려 두고 떠난다.{#zf679_s0_r35204}' if zf679Logic.r35204_condition():
            # a5 # r35204
            jump morte_s354  # EXTERN

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zf679_s0_r35205}' if zf679Logic.r35205_condition():
            # a6 # r35205
            jump zf679_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zf679_s0_r35206}' if zf679Logic.r35206_condition():
            # a7 # r35206
            jump zf679_dispose

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zf679_s0_r35207}' if zf679Logic.r35207_condition():
            # a8 # r35207
            jump zf679_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zf679_s0_r35208}' if zf679Logic.r35208_condition():
            # a9 # r35208
            jump zf679_dispose


# s1 # say35180
label zf679_s1: # from 0.0 0.1 0.2
    nr '시체는 계속 당신을 쳐다본다.{#zf679_s1_}'

    menu:
        '"그럼 안녕히 계시오."{#zf679_s1_r35181}' if zf679Logic.r35181_condition():
            # a10 # r35181
            jump morte_s354  # EXTERN

        '"그럼 안녕히 계시오."{#zf679_s1_r35194}' if zf679Logic.r35194_condition():
            # a11 # r35194
            jump zf679_dispose

        '"그럼 안녕히 계시오."{#zf679_s1_r35195}' if zf679Logic.r35195_condition():
            # a12 # r35195
            jump zf679_dispose


# s2 # say35199
label zf679_s2: # from 0.3
    nr '시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.{#zf679_s2_}'

    menu:
        '"그럼 안녕히 계시오."{#zf679_s2_r35200}' if zf679Logic.r35200_condition():
            # a13 # r35200
            jump morte_s354  # EXTERN

        '"그럼 안녕히 계시오."{#zf679_s2_r35201}' if zf679Logic.r35201_condition():
            # a14 # r35201
            jump zf679_dispose

        '"그럼 안녕히 계시오."{#zf679_s2_r35202}' if zf679Logic.r35202_condition():
            # a15 # r35202
            jump zf679_dispose


# s3 # say35209
label zf679_s3: # - # IF ~  False()
    nr '시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.{#zf679_s3_}'

    menu:
