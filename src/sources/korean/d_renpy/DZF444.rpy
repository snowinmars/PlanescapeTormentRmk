init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf444_logic import Zf444Logic
    zf444Logic = Zf444Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF444.DLG
# ###


# s0 # say35210
label zf444_s0: # - # IF ~  True()
    nr '이 여자 시체의 몰골은 말이 아니다. 방부제로 처리된 그녀의 딱딱한 피부 전체를 쥐에게 물린 것으로 추정되는 수백 개의 작은 상처가 뒤덮고 있다. 상처 주변이 오그라든 것으로 미루어 볼 때 상처들은 시체가 처리되기 전에 생긴 듯하다. 그녀의 입술은 꿰매져 있으며, 얼굴에는 "444"란 번호가 흑청색 잉크로 적혀 있다.{#zf444_s0_}'

    menu:
        '"그래… 나중에 다른 약속이라도 있소?"{#zf444_s0_r35211}' if zf444Logic.r35211_condition():
            # a0 # r35211
            $ zf444Logic.r35211_action()
            jump zf444_s1

        '"그래… 나중에 다른 약속이라도 있소?"{#zf444_s0_r35228}' if zf444Logic.r35228_condition():
            # a1 # r35228
            jump zf444_s1

        '"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."{#zf444_s0_r35229}' if zf444Logic.r35229_condition():
            # a2 # r35229
            jump zf444_s1

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.{#zf444_s0_r35230}' if zf444Logic.r35230_condition():
            # a3 # r35230
            jump zf444_s2

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zf444_s0_r35235}' if zf444Logic.r35235_condition():
            # a4 # r35235
            jump morte_s358  # EXTERN

        '시체를 그냥 내버려 두고 떠난다.{#zf444_s0_r35236}' if zf444Logic.r35236_condition():
            # a5 # r35236
            jump morte_s358  # EXTERN

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zf444_s0_r35237}' if zf444Logic.r35237_condition():
            # a6 # r35237
            jump zf444_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zf444_s0_r35238}' if zf444Logic.r35238_condition():
            # a7 # r35238
            jump zf444_dispose

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zf444_s0_r35239}' if zf444Logic.r35239_condition():
            # a8 # r35239
            jump zf444_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zf444_s0_r35240}' if zf444Logic.r35240_condition():
            # a9 # r35240
            jump zf444_dispose


# s1 # say35212
label zf444_s1: # from 0.0 0.1 0.2
    nr '시체는 계속 당신을 쳐다본다.{#zf444_s1_}'

    menu:
        '"그럼 안녕히 계시오."{#zf444_s1_r35213}' if zf444Logic.r35213_condition():
            # a10 # r35213
            jump morte_s358  # EXTERN

        '"그럼 안녕히 계시오."{#zf444_s1_r35226}' if zf444Logic.r35226_condition():
            # a11 # r35226
            jump zf444_dispose

        '"그럼 안녕히 계시오."{#zf444_s1_r35227}' if zf444Logic.r35227_condition():
            # a12 # r35227
            jump zf444_dispose


# s2 # say35231
label zf444_s2: # from 0.3
    nr '시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.{#zf444_s2_}'

    menu:
        '"그럼 안녕히 계시오."{#zf444_s2_r35232}' if zf444Logic.r35232_condition():
            # a13 # r35232
            jump morte_s358  # EXTERN

        '"그럼 안녕히 계시오."{#zf444_s2_r35233}' if zf444Logic.r35233_condition():
            # a14 # r35233
            jump zf444_dispose

        '"그럼 안녕히 계시오."{#zf444_s2_r35234}' if zf444Logic.r35234_condition():
            # a15 # r35234
            jump zf444_dispose


# s3 # say35241
label zf444_s3: # - # IF ~  False()
    nr '시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.{#zf444_s3_}'

    menu:
