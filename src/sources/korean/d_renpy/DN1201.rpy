init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.n1201_logic import N1201Logic
    n1201Logic = N1201Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DN1201.DLG
# ###


# s0 # say44993
label n1201_s0: # from 1.6 3.0 # IF ~  True()
    nr '이 악취가 나는 쪽지에 적힌 글 밑에는 기묘하게 생긴 도표가 그려져 있다. 그것은 당신에게 쪽지의 구석이 중심을 향하도록 접으라고 지시하고 있는 듯하다. 각 구석에는 일련의 기묘한 부호들이 그려져 있다. 우측 상단에는 하나, 우측 하단에는 두 개, 좌측 하단에는 세 개, 그리고 좌측 상단에는 네 개의 부호들이 각각 그려져 있다.{#n1201_s0_1}'

    menu:
        '우측 상단이 중심에 닿도록 접는다.{#n1201_s0_r44994}':
            # a0 # r44994
            $ n1201Logic.r44994_action()
            jump n1201_s1

        '우측 하단이 중심에 닿도록 접는다.{#n1201_s0_r44995}':
            # a1 # r44995
            $ n1201Logic.r44995_action()
            jump n1201_s1

        '좌측 하단이 중심에 닿도록 접는다.{#n1201_s0_r44996}':
            # a2 # r44996
            $ n1201Logic.r44996_action()
            jump n1201_s1

        '좌측 상단이 중심에 닿도록 접는다.{#n1201_s0_r44997}':
            # a3 # r44997
            $ n1201Logic.r44997_action()
            jump n1201_s1

        '쪽지를 그냥 내버려 둔다.{#n1201_s0_r44998}':
            # a4 # r44998
            $ n1201Logic.r44998_action()
            jump n1201_dispose


# s1 # say44999
label n1201_s1: # from 0.0 0.1 0.2 0.3 1.0 1.1 1.2 1.3 1.4
    nr '당신은 모서리가 중심에 닿도록 쪽지의 구석을 안쪽으로 접는다.{#n1201_s1_1}'

    menu:
        '우측 상단이 중심에 닿도록 접는다.{#n1201_s1_r45000}' if n1201Logic.r45000_condition():
            # a5 # r45000
            $ n1201Logic.r45000_action()
            jump n1201_s1

        '우측 하단이 중심에 닿도록 접는다.{#n1201_s1_r45001}' if n1201Logic.r45001_condition():
            # a6 # r45001
            $ n1201Logic.r45001_action()
            jump n1201_s1

        '우측 하단이 중심에 닿도록 접는다.{#n1201_s1_r45002}' if n1201Logic.r45002_condition():
            # a7 # r45002
            $ n1201Logic.r45002_action()
            jump n1201_s1

        '좌측 하단이 중심에 닿도록 접는다.{#n1201_s1_r45003}' if n1201Logic.r45003_condition():
            # a8 # r45003
            $ n1201Logic.r45003_action()
            jump n1201_s1

        '좌측 상단이 중심에 닿도록 접는다.{#n1201_s1_r45004}' if n1201Logic.r45004_condition():
            # a9 # r45004
            $ n1201Logic.r45004_action()
            jump n1201_s1

        '좌측 상단이 중심에 닿도록 접는다.{#n1201_s1_r45005}' if n1201Logic.r45005_condition():
            # a10 # r45005
            jump n1201_s2

        '쪽지를 펼쳐 새로 시작한다.{#n1201_s1_r45006}':
            # a11 # r45006
            $ n1201Logic.r45006_action()
            jump n1201_s0

        '쪽지를 펼친 후 그냥 내버려 둔다.{#n1201_s1_r45008}':
            # a12 # r45008
            $ n1201Logic.r45008_action()
            jump n1201_dispose


# s2 # say45015
label n1201_s2: # from 1.5
    nr '당신이 왼쪽 상단 구석을 중심 쪽으로 접자 오른쪽 상단 구석이 펼쳐져 원래 위치로 돌아간다.{#n1201_s2_1}'

    menu:
        '우측 상단이 중심에 닿도록 다시 접는다.{#n1201_s2_r45016}':
            # a13 # r45016
            jump n1201_s4

        '좌측 하단의 모서리를 안쪽으로 접는다.{#n1201_s2_r45017}':
            # a14 # r45017
            $ n1201Logic.r45017_action()
            jump n1201_s3

        '쪽지를 펼친 후 그냥 내버려 둔다.{#n1201_s2_r45018}':
            # a15 # r45018
            $ n1201Logic.r45018_action()
            jump n1201_dispose


# s3 # say45019
label n1201_s3: # from 2.1
    nr '당신이 왼쪽 하단 구석을 안쪽으로 접자 잠시 후 다른 두 구석들이 바깥쪽으로 펼쳐진다. 아무 일도 일어나지 않는다.{#n1201_s3_1}'

    menu:
        '쪽지를 다시 살펴본다.{#n1201_s3_r45020}':
            # a16 # r45020
            jump n1201_s0

        '쪽지를 치운다.{#n1201_s3_r45021}':
            # a17 # r45021
            jump n1201_dispose


# s4 # say45022
label n1201_s4: # from 2.0
    nr '당신이 오른쪽 상단 구석을 다시 중심 쪽으로 접자, 왼쪽 하단 구석이 그 동작을 그대로 따라 하고, 다른 구석들도 연달아 안쪽으로 접힌다. 당신은 그 광경을 잠시 지켜본다, 그리고 종이의 각 구석들이 일어서서 쪽지를 작은 4면 피라미드로 만든다.{#n1201_s4_1}'

    menu:
        '피라미드의 측면을 연다.{#n1201_s4_r45023}':
            # a18 # r45023
            $ n1201Logic.r45023_action()
            jump n1201_s5


# s5 # say45024
label n1201_s5: # from 4.0
    nr '당신이 피라미드의 면을 벗기자 종이는 먼지가 되어 사라진다. 그 안에는 작은 삼각형 모양의 귀걸이가 들어 있다. 그것은 빛을 받아 밝게 반짝인다.{#n1201_s5_1}'

    menu:
        '삼각 귀걸이를 취한다…{#n1201_s5_r45025}':
            # a19 # r45025
            $ n1201Logic.r45025_action()
            jump n1201_dispose
