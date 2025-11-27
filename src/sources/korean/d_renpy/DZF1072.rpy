init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf1072_logic import Zf1072Logic
    zf1072Logic = Zf1072Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF1072.DLG
# ###


# s0 # say35114
label zf1072_s0: # - # IF ~  True()
    nr '이 시체로부터 포름알데히드의 냄새가 유달리 강하게 난다… 최근에 방부제를 뿌린 듯하며, 그렇게 한 데는 그럴 만한 이유가 있다. 이 시체는 부패가 상당히 진행된 상태이기 때문이다. 그녀의 턱은 이미 없어졌으며, 그녀의 해골로부터 살점이 일부 떨어져 나간 탓에 뼈에 새겨진 "1072"라는 번호가 보인다.{#zf1072_s0_}'

    menu:
        '"이 좀비에게도 전성 시대가 있었겠지…{#zf1072_s0_r35115}' if zf1072Logic.r35115_condition():
            # a0 # r35115
            $ zf1072Logic.r35115_action()
            jump zf1072_s1

        '"이 좀비에게도 전성 시대가 있었겠지…{#zf1072_s0_r35132}' if zf1072Logic.r35132_condition():
            # a1 # r35132
            jump zf1072_s1

        '"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."{#zf1072_s0_r35133}' if zf1072Logic.r35133_condition():
            # a2 # r35133
            jump zf1072_s1

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.{#zf1072_s0_r35134}' if zf1072Logic.r35134_condition():
            # a3 # r35134
            jump zf1072_s2

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zf1072_s0_r35139}' if zf1072Logic.r35139_condition():
            # a4 # r35139
            jump morte_s346  # EXTERN

        '시체를 그냥 내버려 두고 떠난다.{#zf1072_s0_r35140}' if zf1072Logic.r35140_condition():
            # a5 # r35140
            jump morte_s346  # EXTERN

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zf1072_s0_r35141}' if zf1072Logic.r35141_condition():
            # a6 # r35141
            jump zf1072_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zf1072_s0_r35142}' if zf1072Logic.r35142_condition():
            # a7 # r35142
            jump zf1072_dispose

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zf1072_s0_r35143}' if zf1072Logic.r35143_condition():
            # a8 # r35143
            jump zf1072_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zf1072_s0_r35144}' if zf1072Logic.r35144_condition():
            # a9 # r35144
            jump zf1072_dispose


# s1 # say35116
label zf1072_s1: # from 0.0 0.1 0.2
    nr '시체는 당신 목소리에 아무런 반응도 하지 않는다. 턱이 없기 때문인지도 모르겠다. 아니면 아무런 할 말이 없기 때문일 수도 있다.{#zf1072_s1_}'

    menu:
        '"그럼 안녕히 계시오."{#zf1072_s1_r35117}' if zf1072Logic.r35117_condition():
            # a10 # r35117
            jump morte_s346  # EXTERN

        '"그럼 안녕히 계시오."{#zf1072_s1_r35130}' if zf1072Logic.r35130_condition():
            # a11 # r35130
            jump zf1072_dispose

        '"그럼 안녕히 계시오."{#zf1072_s1_r35131}' if zf1072Logic.r35131_condition():
            # a12 # r35131
            jump zf1072_dispose


# s2 # say35135
label zf1072_s2: # from 0.3
    nr '시체는 움직이지 않는다. 당신의 질문에 대답할 정도의 정신은 이제 그것에게는 남아있지 않은 것 같다.{#zf1072_s2_}'

    menu:
        '"그럼 안녕히 계시오."{#zf1072_s2_r35136}' if zf1072Logic.r35136_condition():
            # a13 # r35136
            jump morte_s346  # EXTERN

        '"그럼 안녕히 계시오."{#zf1072_s2_r35137}' if zf1072Logic.r35137_condition():
            # a14 # r35137
            jump zf1072_dispose

        '"그럼 안녕히 계시오."{#zf1072_s2_r35138}' if zf1072Logic.r35138_condition():
            # a15 # r35138
            jump zf1072_dispose


# s3 # say35145
label zf1072_s3: # - # IF ~  False()
    nr '시체는 움직이지 않는다. 당신의 질문에 대답할 정도의 정신은 이제 그것에게는 남아있지 않은 것 같다.{#zf1072_s3_}'

    menu:
