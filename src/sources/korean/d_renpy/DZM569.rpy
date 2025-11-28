init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm569_logic import Zm569Logic
    zm569Logic = Zm569Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM569.DLG
# ###


# s0 # say24575
label zm569_s0: # - # IF ~  True()
    nr '이 비틀거리는 시체는 죽은지 여러 해가 지난 것 같다. 이마의 피부가 이미 벗겨져 분필처럼 하얀 뼈가 드러나 보인다. 누군가가 드러난 뼈에 "569"라는 번호를 새겨 놓았다.{#zm569_s0_1}'

    menu:
        '"나는 열쇠를 찾고 있소… 혹시 당신이 가지고 있소?"{#zm569_s0_r24576}' if zm569Logic.r24576_condition():
            # a0 # r24576
            jump morte1_s31  # EXTERN

        '"나는 열쇠를 찾고 있소… 혹시 당신이 가지고 있소?"{#zm569_s0_r24579}' if zm569Logic.r24579_condition():
            # a1 # r24579
            jump zm569_s1

        '"그래… 뭐 재미있는 일은 없소?"{#zm569_s0_r24580}' if zm569Logic.r24580_condition():
            # a2 # r24580
            jump zm569_s1

        '"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."{#zm569_s0_r24581}' if zm569Logic.r24581_condition():
            # a3 # r24581
            jump zm569_s1

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.{#zm569_s0_r24584}' if zm569Logic.r24584_condition():
            # a4 # r24584
            jump zm569_s2

        '시체를 살펴 열쇠가 있는지 본다.{#zm569_s0_r24585}' if zm569Logic.r24585_condition():
            # a5 # r24585
            jump zm569_s3

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zm569_s0_r42290}':
            # a6 # r42290
            jump zm569_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zm569_s0_r42291}':
            # a7 # r42291
            jump zm569_dispose


# s1 # say24577
label zm569_s1: # from 0.1 0.2 0.3 3.1
    nr '시체는 조용히 당신을 쳐다본다.{#zm569_s1_1}'

    menu:
        '"그럼 관두시오. 안녕히 계시오."{#zm569_s1_r24578}':
            # a8 # r24578
            jump zm569_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zm569_s1_r42292}':
            # a9 # r42292
            jump zm569_dispose


# s2 # say24582
label zm569_s2: # from 0.4
    nr '시체는 움직이지 않는다. 당신의 질문에 대답할 정도의 정신은 이제 그것에게는 남아있지 않은 것 같다.{#zm569_s2_1}'

    menu:
        '시체를 그냥 내버려 두고 떠난다.{#zm569_s2_r24583}':
            # a10 # r24583
            jump zm569_dispose


# s3 # say42293
label zm569_s3: # from 0.5
    nr '이 시체는 열쇠를 가지고 있지 않는 것 같다… 그리고 설령 가지고 있더라도 그것을 사용할 수 있을 것 같지는 않다. 누가 망치로 내려친 듯 그의 손가락은 모두 부서져 있다. 당신은 그의 왼쪽 어깨에 붕대가 잔뜩 감겨 있다는 사실을 눈치챈다… 시체를 먼저 해치우고 나면 그 붕대를 쓸 수 있을 것 같다.{#zm569_s3_1}'

    menu:
        '"당신에겐 열쇠가 없는 모양이군… 혹시 당신 친구들 중 누가 이 곳의 출구 열쇠를 가지고 있는지 아시오?"{#zm569_s3_r42294}' if zm569Logic.r42294_condition():
            # a11 # r42294
            jump morte1_s31  # EXTERN

        '"당신에겐 열쇠가 없는 모양이군… 혹시 당신 친구들 중 누가 이 곳의 출구 열쇠를 가지고 있는지 아시오?"{#zm569_s3_r42295}' if zm569Logic.r42295_condition():
            # a12 # r42295
            jump zm569_s1

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zm569_s3_r42296}':
            # a13 # r42296
            jump zm569_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zm569_s3_r42297}':
            # a14 # r42297
            jump zm569_dispose
