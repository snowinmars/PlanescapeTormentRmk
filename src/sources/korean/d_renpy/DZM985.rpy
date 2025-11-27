init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm985_logic import Zm985Logic
    zm985Logic = Zm985Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM985.DLG
# ###


# s0 # say45515
label zm985_s0: # - # IF ~  Global("Topple_985","GLOBAL",0)
    nr '이 시체 "985"번은 갑자기 멈추어 섰다. 왼쪽 다리의 상태로 미루어 볼 때, 곰팡이나 세균 때문에 무릎 부분이 썩은 듯하다. 시체는 균형을 유지하려고 앞뒤로 불안정하게 비틀거리고 있다.{#zm985_s0_}'

    menu:
        '시체를 밀친다.{#zm985_s0_r45516}' if zm985Logic.r45516_condition():
            # a0 # r45516
            $ zm985Logic.r45516_action()
            jump morte_s482  # EXTERN

        '시체를 밀친다.{#zm985_s0_r45517}' if zm985Logic.r45517_condition():
            # a1 # r45517
            $ zm985Logic.r45517_action()
            jump zm985_s3

        '시체가 균형을 유지하는 것을 돕는다.{#zm985_s0_r45518}' if zm985Logic.r45518_condition():
            # a2 # r45518
            $ zm985Logic.r45518_action()
            jump zm985_s4

        '시체가 균형을 유지하는 것을 돕는다.{#zm985_s0_r45519}' if zm985Logic.r45519_condition():
            # a3 # r45519
            $ zm985Logic.r45519_action()
            jump zm985_s6

        '"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."{#zm985_s0_r45520}' if zm985Logic.r45520_condition():
            # a4 # r45520
            jump zm985_s1

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.{#zm985_s0_r45521}' if zm985Logic.r45521_condition():
            # a5 # r45521
            jump zm985_s2

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zm985_s0_r45522}':
            # a6 # r45522
            jump zm985_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zm985_s0_r45523}':
            # a7 # r45523
            jump zm985_dispose


# s1 # say45524
label zm985_s1: # from 0.4 5.0 5.1 5.2
    nr '시체는 아무 것도 느끼지 못하고 앞만 바라본다. 당신이 말을 걸어도 아무런 반응을 나타내지 않는다.{#zm985_s1_}'

    menu:
        '시체를 그냥 내버려 두고 떠난다.{#zm985_s1_r45525}':
            # a8 # r45525
            jump zm985_dispose


# s2 # say45526
label zm985_s2: # from 0.5 5.3
    nr '시체는 움직이지 않는다. 당신의 질문에 대답할 정도의 정신은 이제 그것에게는 남아있지 않은 것 같다.{#zm985_s2_}'

    menu:
        '시체를 그냥 내버려 두고 떠난다.{#zm985_s2_r45527}':
            # a9 # r45527
            jump zm985_dispose


# s3 # say45528
label zm985_s3: # from 0.1 6.0
    nr '시체의 왼쪽 다리에서 *우두둑* 소리가 들린다, 그리고 시체는 죽은 나무처럼 쓰러진다. 동체는 판석과 충돌하여 썩은 멜론처럼 산산조각이 나고, 그 안에서 오물과 농장이 콸콸 흘러나온다. 놀랍게도 아무도 시체가 쓰러진 것을 눈치채지 못한 듯하다… 더욱 이상한 것은 왼쪽 다리가 시체가 서 있던 자리에 마치 차렷을 하는 듯 그대로 서 있다는 점이다. 하지만 다리도 잠시 후 *쿵* 소리와 함께 쓰러진다.{#zm985_s3_}'

    $ zm985Logic.s3_action()
    jump zm985_s7


# s4 # say45530
label zm985_s4: # from 0.2
    nr '당신은 시체를 안정시키려고 그것의 왼쪽 팔을 잡으려 한다. 하지만 당신이 팔을 잡자 시체는 갑자기 오른쪽으로 기운다. 때문에 당신은 시체를 안정시키기는커녕 잡아당긴 꼴이 되었다…{#zm985_s4_}'

    $ zm985Logic.s4_action()
    jump morte_s482  # EXTERN


# s5 # say45531
label zm985_s5: # - # IF ~  GlobalGT("Topple_985","GLOBAL",0)
    nr '누군가가 이 시체의 왼쪽 다리와 왼쪽 팔을 다른 시체로부터 가져온 여분의 팔다리로 교체한 것 같다. 왼쪽 다리는 전의 다리보다 짧다, 하지만 적어도 이제 시체는 설 수가 있다.{#zm985_s5_}'

    menu:
        '"일전에 당신을 넘어뜨려 미안하오. 그건 사고였소."{#zm985_s5_r45532}' if zm985Logic.r45532_condition():
            # a10 # r45532
            $ zm985Logic.r45532_action()
            jump zm985_s1

        '"일전에 당신을 넘어뜨려 미안하오. 그건 사고였소."{#zm985_s5_r45533}' if zm985Logic.r45533_condition():
            # a11 # r45533
            jump zm985_s1

        '"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."{#zm985_s5_r45534}' if zm985Logic.r45534_condition():
            # a12 # r45534
            jump zm985_s1

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.{#zm985_s5_r45535}' if zm985Logic.r45535_condition():
            # a13 # r45535
            jump zm985_s2

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."{#zm985_s5_r45536}':
            # a14 # r45536
            jump zm985_dispose

        '시체를 그냥 내버려 두고 떠난다.{#zm985_s5_r45537}':
            # a15 # r45537
            jump zm985_dispose


# s6 # say45538
label zm985_s6: # from 0.3
    nr '당신은 시체를 안정시키려고 그것의 왼쪽 팔을 잡으려 한다. 하지만 당신이 팔을 잡자 시체는 갑자기 오른쪽으로 기운다. 때문에 당신은 시체를 안정시키기는커녕 잡아당긴 꼴이 되었다…{#zm985_s6_}'

    menu:
        '"이런…"{#zm985_s6_r45539}':
            # a16 # r45539
            $ zm985Logic.r45539_action()
            jump zm985_s3


# s7 # say64205
label zm985_s7: # from 3.0
    nr '당신은 시체의 썩은 잔해를 살펴보다가 그것의 왼쪽 팔은 아직도 멀쩡하다는 사실을 발견한다. 그것은 낙하 도중에 동체로부터 떨어져 나갔으며, 신체의 다른 부위와는 달리 부패가 별로 진행되지 않은 듯하다.{#zm985_s7_}'

    menu:
        '"흠… 혹시 저 팔을 이용할 수 있을지도…"{#zm985_s7_r64206}':
            # a17 # r64206
            jump zm985_dispose
