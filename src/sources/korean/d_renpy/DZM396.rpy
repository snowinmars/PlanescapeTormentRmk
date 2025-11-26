init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm396_logic import Zm396Logic
    zm396Logic = Zm396Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM396.DLG
# ###


# s0 # say34931
label zm396_s0: # - # IF ~  HasItem("Bandage","ZM396")
    nr '이 시체는 철판들 사이를 왔다갔다하며 그 위에 누워 있는 시체들을 붕대로 감고 있다. 그의 왼쪽 관자놀이에는 "396"이란 번호가 새겨져 있으며, 그의 입은 꿰매어져 있다. 당신은 시체의 손에 붕대가 들려 있다는 사실을 눈치챈다… 붕대는 쓸만해 보인다.'

    menu:
        '"그 붕대 좀 빌려도 괜찮겠소?"' if zm396Logic.r34932_condition():
            # a0 # r34932
            $ zm396Logic.r34932_action()
            jump zm396_s1

        '"그 붕대 좀 빌려도 괜찮겠소?"' if zm396Logic.r34935_condition():
            # a1 # r34935
            jump zm396_s1

        '좀비로부터 붕대를 풀어서 떼어내려고 시도한다.':
            # a2 # r34936
            $ zm396Logic.r34936_action()
            jump zm396_s3

        '"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."' if zm396Logic.r34937_condition():
            # a3 # r34937
            jump zm396_s1

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.' if zm396Logic.r34940_condition():
            # a4 # r34940
            jump zm396_s2

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."':
            # a5 # r34941
            jump zm396_dispose

        '시체를 그냥 내버려 두고 떠난다.':
            # a6 # r45106
            jump zm396_dispose


# s1 # say34933
label zm396_s1: # from 0.0 0.1 0.3 4.0 4.1 4.2
    nr '시체는 계속 당신을 쳐다본다.'

    menu:
        '좀비로부터 붕대를 풀어서 떼어내려고 시도한다.' if zm396Logic.r34934_condition():
            # a7 # r34934
            $ zm396Logic.r34934_action()
            jump zm396_s3

        '시체를 그냥 내버려 두고 떠난다.':
            # a8 # r45107
            jump zm396_dispose


# s2 # say34938
label zm396_s2: # from 0.4 4.3
    nr '시체는 움직이지 않는다. 당신의 질문에 대답할 정도의 정신은 이제 그것에게는 남아있지 않은 것 같다.'

    menu:
        '시체를 그냥 내버려 두고 떠난다.':
            # a9 # r34939
            jump zm396_dispose


# s3 # say45108
label zm396_s3: # from 0.2 1.0
    nr '당신은 손을 내밀어 시체의 손으로부터 붕대를 빼앗는다. 시체는 전혀 눈치를 채지 못하고 시체를 붕대로 감는 동작을 계속한다.'

    menu:
        '시체를 다시 조사한다.':
            # a10 # r45109
            jump zm396_s4

        '시체를 그냥 내버려 두고 떠난다.':
            # a11 # r45110
            jump zm396_dispose


# s4 # say45111
label zm396_s4: # from 3.0 # IF ~  !HasItem("Bandage","ZM396")
    nr '이 시체는 철판들 사이를 왔다갔다하며 그 위에 누워 있는 시체들을 „붕대로 감고“ 있다. 그는 붕대가 없는데도 불구하고 자신의 임무를 계속 수행하고 있다. 그의 왼쪽 관자놀이에는 "396"이란 번호가 새겨져 있으며, 그의 입은 꿰매어져 있다.'

    menu:
        '"당신으로부터 붕대를 빼앗아 미안하오, 하지만 여기 있는 시체들보다는 내게 붕대가 더 필요하오."' if zm396Logic.r45112_condition():
            # a12 # r45112
            $ zm396Logic.r45112_action()
            jump zm396_s1

        '"당신으로부터 붕대를 빼앗아 미안하오, 하지만 여기 있는 시체들보다는 내게 붕대가 더 필요하오."' if zm396Logic.r45113_condition():
            # a13 # r45113
            jump zm396_s1

        '"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."' if zm396Logic.r45114_condition():
            # a14 # r45114
            jump zm396_s1

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.' if zm396Logic.r45115_condition():
            # a15 # r45115
            jump zm396_s2

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."':
            # a16 # r45116
            jump zm396_dispose

        '시체를 그냥 내버려 두고 떠난다.':
            # a17 # r45117
            jump zm396_dispose
