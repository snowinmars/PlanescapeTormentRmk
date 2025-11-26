init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm825_logic import Zm825Logic
    zm825Logic = Zm825Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM825.DLG
# ###


# s0 # say24564
label zm825_s0: # - # IF ~  True()
    nr '이 시체는 머리를 어깨 쪽으로 늘어뜨렸다 들어 올리는 것을 반복하고 있다… 목이 휜 각도로 볼 때 이 남자는 교수형을 당한 것 같다. 그의 머리 옆쪽에는 "825"란 번호가 칠해져 있다.'

    menu:
        '"나는 열쇠를 찾고 있소… 혹시 당신이 가지고 있소?"' if zm825Logic.r24565_condition():
            # a0 # r24565
            jump morte1_s31  # EXTERN

        '"나는 열쇠를 찾고 있소… 혹시 당신이 가지고 있소?"' if zm825Logic.r24568_condition():
            # a1 # r24568
            jump zm825_s1

        '"그래… 뭐 재미있는 일은 없소?"' if zm825Logic.r24569_condition():
            # a2 # r24569
            jump zm825_s1

        '"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."' if zm825Logic.r24570_condition():
            # a3 # r24570
            jump zm825_s1

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.' if zm825Logic.r24573_condition():
            # a4 # r24573
            jump zm825_s2

        '시체를 살펴 열쇠가 있는지 본다.' if zm825Logic.r24574_condition():
            # a5 # r24574
            jump zm825_s3

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."':
            # a6 # r42308
            jump zm825_dispose

        '시체를 그냥 내버려 두고 떠난다.':
            # a7 # r42309
            jump zm825_dispose


# s1 # say24566
label zm825_s1: # from 0.1 0.2 0.3 3.1
    nr '이 시체는 대답은 하지 않고 바닥만 바라본다.'

    menu:
        '"그럼 관두시오. 안녕히 계시오."':
            # a8 # r24567
            jump zm825_dispose

        '시체를 그냥 내버려 두고 떠난다.':
            # a9 # r42310
            jump zm825_dispose


# s2 # say24571
label zm825_s2: # from 0.4
    nr '시체는 움직이지 않는다. 당신의 질문에 대답할 정도의 정신은 이제 그것에게는 남아있지 않은 것 같다.'

    menu:
        '시체를 그냥 내버려 두고 떠난다.':
            # a10 # r24572
            jump zm825_dispose


# s3 # say42311
label zm825_s3: # from 0.5
    nr '이 시체는 아무 것도 가지고 있지 않다… 하지만 당신은 그의 양손에 붕대가 잔뜩 감겨 있다는 사실을 눈치챈다. 시체를 먼저 해치우고 나면 그 붕대를 쓸 수 있을 것 같다.'

    menu:
        '"당신에겐 열쇠가 없는 모양이군… 혹시 당신 친구들 중 누가 이 곳의 출구 열쇠를 가지고 있는지 아시오?"' if zm825Logic.r42312_condition():
            # a11 # r42312
            jump morte1_s31  # EXTERN

        '"당신에겐 열쇠가 없는 모양이군… 혹시 당신 친구들 중 누가 이 곳의 출구 열쇠를 가지고 있는지 아시오?"' if zm825Logic.r42313_condition():
            # a12 # r42313
            jump zm825_s1

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."':
            # a13 # r42314
            jump zm825_dispose

        '시체를 그냥 내버려 두고 떠난다.':
            # a14 # r42315
            jump zm825_dispose
