init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf1148_logic import Zf1148Logic
    zf1148Logic = Zf1148Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF1148.DLG
# ###


# s0 # say35242
label zf1148_s0: # - # IF ~  True()
    nr '이 여자 시체의 피부는 복잡한 패턴의 문신들로 뒤덮여 있다. 그녀의 이마의 피부는 그 아래에 있는 두개골에 "1148"이라는 번호를 새기기 위해 벗겨져 있다. 그녀의 입은 굵고 거친 실로 꿰매져 있다.{#zf1148_s0_}'

    menu:
        '"그래… 나중에 다른 약속이라도 있소?"{#zf1148_s0_r35243}' if zf1148Logic.r35243_condition():
            # a0 # r35243
            $ zf1148Logic.r35243_action()
            jump zf1148_s1

        '"그래… 나중에 다른 약속이라도 있소?"{#zf1148_s0_r35260}' if zf1148Logic.r35260_condition():
            # a1 # r35260
            jump zf1148_s1

        '"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."{#zf1148_s0_r35261}' if zf1148Logic.r35261_condition():
            # a2 # r35261
            jump zf1148_s1

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.{#zf1148_s0_r35262}' if zf1148Logic.r35262_condition():
            # a3 # r35262
            jump zf1148_s2

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zf1148_s0_r35267}' if zf1148Logic.r35267_condition():
            # a4 # r35267
            jump morte_s362  # EXTERN

        '시체를 그냥 내버려 두고 떠난다.{#zf1148_s0_r35268}' if zf1148Logic.r35268_condition():
            # a5 # r35268
            jump morte_s362  # EXTERN

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zf1148_s0_r35269}' if zf1148Logic.r35269_condition():
            # a6 # r35269
            jump zf1148_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zf1148_s0_r35270}' if zf1148Logic.r35270_condition():
            # a7 # r35270
            jump zf1148_dispose

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zf1148_s0_r35271}' if zf1148Logic.r35271_condition():
            # a8 # r35271
            jump zf1148_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zf1148_s0_r35272}' if zf1148Logic.r35272_condition():
            # a9 # r35272
            jump zf1148_dispose


# s1 # say35244
label zf1148_s1: # from 0.0 0.1 0.2
    nr '시체는 계속 당신을 쳐다본다.{#zf1148_s1_}'

    menu:
        '"그럼 안녕히 계시오."{#zf1148_s1_r35245}' if zf1148Logic.r35245_condition():
            # a10 # r35245
            jump morte_s362  # EXTERN

        '"그럼 안녕히 계시오."{#zf1148_s1_r35258}' if zf1148Logic.r35258_condition():
            # a11 # r35258
            jump zf1148_dispose

        '"그럼 안녕히 계시오."{#zf1148_s1_r35259}' if zf1148Logic.r35259_condition():
            # a12 # r35259
            jump zf1148_dispose


# s2 # say35263
label zf1148_s2: # from 0.3
    nr '시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.{#zf1148_s2_}'

    menu:
        '"그럼 안녕히 계시오."{#zf1148_s2_r35264}' if zf1148Logic.r35264_condition():
            # a13 # r35264
            jump morte_s362  # EXTERN

        '"그럼 안녕히 계시오."{#zf1148_s2_r35265}' if zf1148Logic.r35265_condition():
            # a14 # r35265
            jump zf1148_dispose

        '"그럼 안녕히 계시오."{#zf1148_s2_r35266}' if zf1148Logic.r35266_condition():
            # a15 # r35266
            jump zf1148_dispose


# s3 # say35273
label zf1148_s3: # - # IF ~  False()
    nr '시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.{#zf1148_s3_}'

    menu:
