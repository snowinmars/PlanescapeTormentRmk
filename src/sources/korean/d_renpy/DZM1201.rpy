init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm1201_logic import Zm1201Logic
    zm1201Logic = Zm1201Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM1201.DLG
# ###


# s0 # say34953
label zm1201_s0: # - # IF ~  Global("1201_Note_Retrieved","GLOBAL",0)
    nr '시체의 이마에는 잉크로 "1201"이란 번호가 적혀 있으며, 잉크는 눈을 거쳐 볼과 턱에까지 흘러내렸다. 잉크가 흘러내려 간 자국을 따라가다가 당신은 잉크가 시체의 입술을 꿰맨 자국 틈새로까지 들어가 시체의 입 안에 낀 쪽지와 같은 것의 구석에서 멈추었다는 사실을 깨닫는다.{#zm1201_s0_1}'

    menu:
        '쪽지를 빼내려고 시도한다.{#zm1201_s0_r34954}' if zm1201Logic.r34954_condition():
            # a0 # r34954
            jump zm1201_s1

        '"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."{#zm1201_s0_r34957}' if zm1201Logic.r34957_condition():
            # a1 # r34957
            jump zm1201_s3

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.{#zm1201_s0_r34958}' if zm1201Logic.r34958_condition():
            # a2 # r34958
            jump zm1201_s4

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zm1201_s0_r34959}':
            # a3 # r34959
            jump zm1201_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zm1201_s0_r34962}':
            # a4 # r34962
            jump zm1201_dispose


# s1 # say34955
label zm1201_s1: # from 0.0
    nr '쪽지는 좀비 입 안의 점액으로 범벅이 되어 있다. 만약 당신 시체의 입술을 꿰매고 있는 실들 사이로 쪽지를 억지로 꺼내려고 한다면 종이가 갈기갈기 찢어질 것 같다. 시체를 칼로 베어서 꺼내는 방법도 쪽지를 파손할 위험이 크다. 쪽지를 꺼내기 전에 꿰맨 실들부터 조심스럽게 제거할 방법부터 찾아야 할 것 같다.{#zm1201_s1_1}'

    menu:
        '메스를 이용하여 꿰맨 곳들을 잘라낸다.{#zm1201_s1_r34956}' if zm1201Logic.r34956_condition():
            # a5 # r34956
            $ zm1201Logic.r34956_action()
            jump zm1201_s2

        '"흠… 이 근처에 저 꿰맨 자리들을 잘라낼 수 있는 것이 있을 것 같군…"{#zm1201_s1_r45122}' if zm1201Logic.r45122_condition():
            # a6 # r45122
            jump zm1201_dispose


# s2 # say34960
label zm1201_s2: # from 1.0
    nr '당신은 시체의 입을 꿰매고 있는 실들을 능숙하게 잘라낸다, 그러자 시체의 턱이 아래로 쳐지면서 입이 열린다. 당신은 시체의 입으로부터 쪽지를 조심스럽게 꺼낸다… 종이의 상태에도 불구하고 그 위에 적힌 글은 아직도 알아볼 수가 있다.  ^NNOTE: <READSTUFF>^-{#zm1201_s2_1}'

    menu:
        '시체를 다시 조사한다.{#zm1201_s2_r34961}':
            # a7 # r34961
            jump zm1201_s5

        '시체를 그냥 내버려 두고 떠난다.{#zm1201_s2_r45123}':
            # a8 # r45123
            jump zm1201_dispose


# s3 # say45124
label zm1201_s3: # from 0.1 5.0 5.1 5.2
    nr '시체의 유백색 눈은 당신을 공허하게 쳐다보고 있다.{#zm1201_s3_1}'

    menu:
        '시체를 그냥 내버려 두고 떠난다.{#zm1201_s3_r45125}':
            # a9 # r45125
            jump zm1201_dispose


# s4 # say45126
label zm1201_s4: # from 0.2 5.3
    nr '시체는 움직이지 않는다. 당신의 질문에 대답할 정도의 정신은 이제 그것에게는 남아있지 않은 것 같다.{#zm1201_s4_1}'

    menu:
        '시체를 그냥 내버려 두고 떠난다.{#zm1201_s4_r45127}':
            # a10 # r45127
            jump zm1201_dispose


# s5 # say45128
label zm1201_s5: # from 2.0 # IF ~  Global("1201_Note_Retrieved","GLOBAL",1)
    nr '체의 이마에는 잉크로 "1201"이란 번호가 적혀 있으며, 잉크는 눈을 거쳐 볼과 턱에까지 흘러내려 마치 울고 있는 것처럼 보인다. 턱이 내려가 입이 열린 상태이며, 입의 한쪽 구석으로부터 약간의 점액이 흘러나오고 있다.{#zm1201_s5_1}'

    menu:
        '"꿰맨 자리를 잘라내 미안하오, 하지만 난 당신 입 속에 무엇이 들어 있는지 꼭 보고 싶었소."{#zm1201_s5_r45129}' if zm1201Logic.r45129_condition():
            # a11 # r45129
            $ zm1201Logic.r45129_action()
            jump zm1201_s3

        '"꿰맨 자리를 잘라내 미안하오, 하지만 난 당신 입 속에 무엇이 들어 있는지 꼭 보고 싶었소."{#zm1201_s5_r45130}' if zm1201Logic.r45130_condition():
            # a12 # r45130
            jump zm1201_s3

        '"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."{#zm1201_s5_r45131}' if zm1201Logic.r45131_condition():
            # a13 # r45131
            jump zm1201_s3

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.{#zm1201_s5_r45132}' if zm1201Logic.r45132_condition():
            # a14 # r45132
            jump zm1201_s4

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zm1201_s5_r45133}':
            # a15 # r45133
            jump zm1201_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zm1201_s5_r45134}':
            # a16 # r45134
            jump zm1201_dispose
