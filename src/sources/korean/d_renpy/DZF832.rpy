init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zf832_logic import Zf832Logic
    zf832Logic = Zf832Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZF832.DLG
# ###


# s0 # say35146
label zf832_s0: # - # IF ~  True()
    nr '비록 이 시체의 피부가 지금은 건조하고 가죽 같지만, 생전에 그녀는 아름다운 중년여성이었음이 틀림없다. 이 시체를 처리한 사람도 그녀를 동정했던지 그녀의 입술을 표가 별로 나지 않도록 깨끗하게 꿰맸으며, 이마의 "832"란 번호 역시 우아한 글씨체로 새겼다.{#zf832_s0_1}'

    menu:
        '"그래… 나중에 다른 약속이라도 있소?"{#zf832_s0_r35147}' if zf832Logic.r35147_condition():
            # a0 # r35147
            $ zf832Logic.r35147_action()
            jump zf832_s1

        '"그래… 나중에 다른 약속이라도 있소?"{#zf832_s0_r35164}' if zf832Logic.r35164_condition():
            # a1 # r35164
            jump zf832_s1

        '"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."{#zf832_s0_r35165}' if zf832Logic.r35165_condition():
            # a2 # r35165
            jump zf832_s1

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.{#zf832_s0_r35166}' if zf832Logic.r35166_condition():
            # a3 # r35166
            jump zf832_s2

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zf832_s0_r35171}' if zf832Logic.r35171_condition():
            # a4 # r35171
            jump morte_s350  # EXTERN

        '시체를 그냥 내버려 두고 떠난다.{#zf832_s0_r35172}' if zf832Logic.r35172_condition():
            # a5 # r35172
            jump morte_s350  # EXTERN

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zf832_s0_r35173}' if zf832Logic.r35173_condition():
            # a6 # r35173
            jump zf832_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zf832_s0_r35174}' if zf832Logic.r35174_condition():
            # a7 # r35174
            jump zf832_dispose

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zf832_s0_r35175}' if zf832Logic.r35175_condition():
            # a8 # r35175
            jump zf832_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zf832_s0_r35176}' if zf832Logic.r35176_condition():
            # a9 # r35176
            jump zf832_dispose


# s1 # say35148
label zf832_s1: # from 0.0 0.1 0.2
    nr '시체는 계속 당신을 쳐다본다.{#zf832_s1_1}'

    menu:
        '"그럼 안녕히 계시오."{#zf832_s1_r35149}' if zf832Logic.r35149_condition():
            # a10 # r35149
            jump morte_s350  # EXTERN

        '"그럼 안녕히 계시오."{#zf832_s1_r35162}' if zf832Logic.r35162_condition():
            # a11 # r35162
            jump zf832_dispose

        '"그럼 안녕히 계시오."{#zf832_s1_r35163}' if zf832Logic.r35163_condition():
            # a12 # r35163
            jump zf832_dispose


# s2 # say35167
label zf832_s2: # from 0.3
    nr '시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.{#zf832_s2_1}'

    menu:
        '"그럼 안녕히 계시오."{#zf832_s2_r35168}' if zf832Logic.r35168_condition():
            # a13 # r35168
            jump morte_s350  # EXTERN

        '"그럼 안녕히 계시오."{#zf832_s2_r35169}' if zf832Logic.r35169_condition():
            # a14 # r35169
            jump zf832_dispose

        '"그럼 안녕히 계시오."{#zf832_s2_r35170}' if zf832Logic.r35170_condition():
            # a15 # r35170
            jump zf832_dispose


# s3 # say35177
label zf832_s3: # - # IF ~  False()
    nr '시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.{#zf832_s3_1}'

    menu:
