init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.giantsk_logic import GiantskLogic
    giantskLogic = GiantskLogic(runtime.global_state_manager)


# ###
# Original:  DLG/DGIANTSK.DLG
# ###


# s0 # say292
label giantsk_s0: # - # IF ~  True()
    nr '당신 앞에는 화려한 청동 갑옷을 입은 자이언트 스켈레톤이 서 있다. 갑옷은 스켈레톤의 골격에 볼트로 고정되어 있으며, 그 가슴받이의 표면 전체에 걸쳐 일련의 정교한 심벌들이 새겨져 있다. 당신은 그 뼈들의 출처가 궁금하다. 당신이 알기로 그토록 거대한 골격을 지닌 인간은 존재하지 않기 때문이다. 그것이 손에 들고 있는 거대한 칼의 무게는 마차 한 대의 무게에 필적할 것처럼 보인다.{#giantsk_s0_}'

    menu:
        '"내가 잠깐 그 칼을 들고 있어도 괜찮겠소? 틀림없이 당신은 그것을 들고 있는데 지쳤을 거요."{#giantsk_s0_r293}':
            # a0 # r293
            $ giantskLogic.r293_action()
            jump giantsk_s1

        '"그래 얼마나 오랫동안 여기서 서 있었소? 꽤 오랜 시간 동안?"{#giantsk_s0_r1165}':
            # a1 # r1165
            $ giantskLogic.r1165_action()
            jump giantsk_s1

        '자이언트 스켈레톤을 조사한다… 조심스럽게.{#giantsk_s0_r3996}':
            # a2 # r3996
            jump giantsk_s4

        '스켈레톤에 가슴받이에 걸린 마법을 당신이 풀 수 있는지 본다.{#giantsk_s0_r3997}' if giantskLogic.r3997_condition():
            # a3 # r3997
            jump giantsk_s9

        '스켈레톤의 칼을 그의 손에서 비틀어 빼내려고 시도한다.{#giantsk_s0_r3998}' if giantskLogic.r3998_condition():
            # a4 # r3998
            jump giantsk_s2

        '스켈레톤의 칼을 그의 손에서 비틀어 빼내려고 시도한다.{#giantsk_s0_r3999}' if giantskLogic.r3999_condition():
            # a5 # r3999
            jump giantsk_s3

        '스켈레톤의 갑옷을 고정시키고 있는 볼트들을 비틀어 빼내려고 시도한다.{#giantsk_s0_r4000}' if giantskLogic.r4000_condition():
            # a6 # r4000
            jump giantsk_s2

        '스켈레톤의 갑옷을 고정시키고 있는 볼트들을 비틀어 빼내려고 시도한다.{#giantsk_s0_r4001}' if giantskLogic.r4001_condition():
            # a7 # r4001
            jump giantsk_s3

        '"이봐, 이 해골은 어떤가, 모트? 몸으로 쓸만하겠나?"{#giantsk_s0_r4002}' if giantskLogic.r4002_condition():
            # a8 # r4002
            jump morte_s73  # EXTERN

        '스켈레톤에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.{#giantsk_s0_r4003}' if giantskLogic.r4003_condition():
            # a9 # r4003
            jump giantsk_s1

        '스켈레톤을 그냥 내버려 둔다.{#giantsk_s0_r4004}':
            # a10 # r4004
            jump giantsk_dispose


# s1 # say1166
label giantsk_s1: # from 0.0 0.1 0.9 # IF ~  False()
    nr '스켈레톤은 당신 질문에 대답하기에는 너무 오래 전에 죽은 듯하다. 아니면 그의 머리는 당신 얘기를 듣기에는 너무 높은 곳에 있든지.{#giantsk_s1_}'

    menu:
        '자이언트 스켈레톤을 조사한다… 조심스럽게.{#giantsk_s1_r1167}':
            # a11 # r1167
            jump giantsk_s4

        '스켈레톤에 가슴받이에 걸린 마법을 당신이 풀 수 있는지 본다.{#giantsk_s1_r4035}' if giantskLogic.r4035_condition():
            # a12 # r4035
            jump giantsk_s9

        '스켈레톤의 칼을 그의 손에서 비틀어 빼내려고 시도한다.{#giantsk_s1_r4036}' if giantskLogic.r4036_condition():
            # a13 # r4036
            jump giantsk_s2

        '스켈레톤의 칼을 그의 손에서 비틀어 빼내려고 시도한다.{#giantsk_s1_r4037}' if giantskLogic.r4037_condition():
            # a14 # r4037
            jump giantsk_s3

        '스켈레톤의 갑옷을 고정시키고 있는 볼트들을 비틀어 빼내려고 시도한다.{#giantsk_s1_r4038}' if giantskLogic.r4038_condition():
            # a15 # r4038
            jump giantsk_s2

        '스켈레톤의 갑옷을 고정시키고 있는 볼트들을 비틀어 빼내려고 시도한다.{#giantsk_s1_r4039}' if giantskLogic.r4039_condition():
            # a16 # r4039
            jump giantsk_s3

        '"이봐, 이 해골은 어떤가, 모트? 몸으로 쓸만하겠나?"{#giantsk_s1_r4040}' if giantskLogic.r4040_condition():
            # a17 # r4040
            jump morte_s73  # EXTERN

        '스켈레톤을 그냥 내버려 두고 떠난다.{#giantsk_s1_r4041}':
            # a18 # r4041
            jump giantsk_dispose


# s2 # say4005
label giantsk_s2: # from 0.4 0.6 1.2 1.4 3.0 4.1 4.3 5.3 5.5 6.2 6.4 7.3 7.5 8.2 8.4 9.4 9.6
    nr '당신이 스켈레톤을 만지자 철제 종소리가 시체안치소 안에 울려 퍼지기 시작한다… 그리고 스켈레톤은 번개같은 속도로 깨어나, 칼을 들어 공격한다!{#giantsk_s2_}'

    menu:
        '"그냥 죽어있는 게 나을 뻔했다고 생각하게 될 것이네, 해골…"{#giantsk_s2_r4042}':
            # a19 # r4042
            $ giantskLogic.r4042_action()
            jump giantsk_dispose


# s3 # say4006
label giantsk_s3: # from 0.5 0.7 1.3 1.5 4.2 4.4 5.4 5.6 6.3 6.5 7.4 7.6 8.3 8.5 9.5 9.7
    nr '그렇게 하려던 순간 당신은 갑자기 멈춘다… 그리고 당신의 시선은 스켈레톤의 갑옷으로 쏠린다. 그것의 가슴받이에 새겨진 심벌들에는 당신으로 하여금 멈추고 생각하게 만드는 무엇인가가 있다. 만약 이 스켈레톤들이 수호자라면, 그들을 건드릴 경우… 그들이 깨어날지도 모른다.{#giantsk_s3_}'

    menu:
        '"그런 위험은 감수할 각오가 되어 있지 …"{#giantsk_s3_r4043}':
            # a20 # r4043
            jump giantsk_s2

        '자이언트 스켈레톤을 조사한다… 조심스럽게.{#giantsk_s3_r4044}':
            # a21 # r4044
            jump giantsk_s4

        '스켈레톤을 그냥 내버려 두고 떠난다.{#giantsk_s3_r4046}':
            # a22 # r4046
            jump giantsk_dispose


# s4 # say4007
label giantsk_s4: # from 0.2 1.0 3.1 7.1 15.1 16.3
    nr '스켈레톤의 정교한 청동 갑옷은 스켈레톤의 흉곽과 어깨뼈에 일련의 철제 볼트들로 고정되어 있다. 갑옷 안의 골격을 살펴보던 중 당신은 전술한 철제 볼트와 동일한 볼트가 스켈레톤의 어깨, 팔꿈치, 골반, 그리고 무릎 관절에도 박혀 있다는 사실을 발견한다. 그리고 스켈레톤의 팔과 다리에는 다량의 두꺼운 가죽끈과 마디가 있는 로프가 마치 근육 및 건과 흡사한 형태로 감겨져 있다.{#giantsk_s4_}'

    menu:
        '갑옷을 살펴본다.{#giantsk_s4_r4045}':
            # a23 # r4045
            jump giantsk_s5

        '스켈레톤의 칼을 그의 손에서 비틀어 빼내려고 시도한다.{#giantsk_s4_r4048}' if giantskLogic.r4048_condition():
            # a24 # r4048
            jump giantsk_s2

        '스켈레톤의 칼을 그의 손에서 비틀어 빼내려고 시도한다.{#giantsk_s4_r4049}' if giantskLogic.r4049_condition():
            # a25 # r4049
            jump giantsk_s3

        '스켈레톤의 갑옷을 고정시키고 있는 볼트들을 비틀어 빼내려고 시도한다.{#giantsk_s4_r4050}' if giantskLogic.r4050_condition():
            # a26 # r4050
            jump giantsk_s2

        '스켈레톤의 갑옷을 고정시키고 있는 볼트들을 비틀어 빼내려고 시도한다.{#giantsk_s4_r4051}' if giantskLogic.r4051_condition():
            # a27 # r4051
            jump giantsk_s3

        '"이봐, 이 해골은 어떤가, 모트? 몸으로 쓸만하겠나?"{#giantsk_s4_r4052}' if giantskLogic.r4052_condition():
            # a28 # r4052
            jump morte_s73  # EXTERN

        '스켈레톤을 그냥 내버려 두고 떠난다.{#giantsk_s4_r4053}':
            # a29 # r4053
            jump giantsk_dispose


# s5 # say4008
label giantsk_s5: # from 4.0
    nr '갑옷은 오래된 것임에도 불구하고 그 보존 상태가 양호하다. 그것은 환히 반짝이고 있으며, 가슴받이에 새겨진 심벌들은 불빛 아래서 마치 흐르는 것처럼 움직여, 당신이 그것들에게 집중을 하려고 할 때마다 약간씩 그 형체가 변화한다.{#giantsk_s5_}'

    menu:
        '심벌들을 연구한다.{#giantsk_s5_r4054}' if giantskLogic.r4054_condition():
            # a30 # r4054
            jump giantsk_s6

        '심벌들을 연구한다.{#giantsk_s5_r4055}' if giantskLogic.r4055_condition():
            # a31 # r4055
            jump giantsk_s6

        '기호들을 연구한다.{#giantsk_s5_r64293}' if giantskLogic.r64293_condition():
            # a32 # r64293
            jump giantsk_s7

        '스켈레톤의 칼을 그의 손에서 비틀어 빼내려고 시도한다.{#giantsk_s5_r4056}' if giantskLogic.r4056_condition():
            # a33 # r4056
            jump giantsk_s2

        '스켈레톤의 칼을 그의 손에서 비틀어 빼내려고 시도한다.{#giantsk_s5_r4057}' if giantskLogic.r4057_condition():
            # a34 # r4057
            jump giantsk_s3

        '스켈레톤의 갑옷을 고정시키고 있는 볼트들을 비틀어 빼내려고 시도한다.{#giantsk_s5_r4058}' if giantskLogic.r4058_condition():
            # a35 # r4058
            jump giantsk_s2

        '스켈레톤의 갑옷을 고정시키고 있는 볼트들을 비틀어 빼내려고 시도한다.{#giantsk_s5_r4059}' if giantskLogic.r4059_condition():
            # a36 # r4059
            jump giantsk_s3

        '"이봐, 이 해골은 어떤가, 모트? 몸으로 쓸만하겠나?"{#giantsk_s5_r4060}' if giantskLogic.r4060_condition():
            # a37 # r4060
            jump morte_s73  # EXTERN

        '스켈레톤을 그냥 내버려 두고 떠난다.{#giantsk_s5_r4061}':
            # a38 # r4061
            jump giantsk_dispose


# s6 # say4009
label giantsk_s6: # from 5.0 5.1
    nr '심벌들을 바라보면서 당신은 거의 무의식적으로 시선의 긴장이 풀리도록 한다. 잠시 후 심벌들은 변화하는 것을 멈추고, 가슴받이를 아래위로 왕복하는 룬들의 패턴이 모습을 드러낸다. 기묘하게도 서로 연결된 룬들의 패턴은 당신에게 사슬을 연상시킨다… 그리고 당신은 그 생각으로부터 이 룬들은 일종의 수호 마법이란 사실을 갑자기 기억해낸다.{#giantsk_s6_}'

    menu:
        '룬들을 연구하여, 마법을 상기시키려고 시도한다.{#giantsk_s6_r4062}' if giantskLogic.r4062_condition():
            # a39 # r4062
            jump giantsk_s8

        '룬들을 연구하여, 마법을 상기시키려고 시도한다.{#giantsk_s6_r4063}' if giantskLogic.r4063_condition():
            # a40 # r4063
            jump giantsk_s7

        '스켈레톤의 칼을 그의 손에서 비틀어 빼내려고 시도한다.{#giantsk_s6_r4064}' if giantskLogic.r4064_condition():
            # a41 # r4064
            jump giantsk_s2

        '스켈레톤의 칼을 그의 손에서 비틀어 빼내려고 시도한다.{#giantsk_s6_r4065}' if giantskLogic.r4065_condition():
            # a42 # r4065
            jump giantsk_s3

        '스켈레톤의 갑옷을 고정시키고 있는 볼트들을 비틀어 빼내려고 시도한다.{#giantsk_s6_r4066}' if giantskLogic.r4066_condition():
            # a43 # r4066
            jump giantsk_s2

        '스켈레톤의 갑옷을 고정시키고 있는 볼트들을 비틀어 빼내려고 시도한다.{#giantsk_s6_r4067}' if giantskLogic.r4067_condition():
            # a44 # r4067
            jump giantsk_s3

        '"이봐, 이 해골은 어떤가, 모트? 몸으로 쓸만하겠나?"{#giantsk_s6_r4068}' if giantskLogic.r4068_condition():
            # a45 # r4068
            jump morte_s73  # EXTERN

        '스켈레톤을 그냥 내버려 두고 떠난다.{#giantsk_s6_r4069}':
            # a46 # r4069
            jump giantsk_dispose


# s7 # say4010
label giantsk_s7: # from 5.2 6.1 7.2
    nr '당신은 한동안 룬들을 연구하지만 그 마법을 해독할 수가 없다. 그것은 매우 복잡한 듯하며 당신은 집중하는 데 어려움을 겪고 있다.{#giantsk_s7_}'

    menu:
        '그 룬들을 뼈와 재의 책에 있는 룬들과 비교한다.{#giantsk_s7_r64294}' if giantskLogic.r64294_condition():
            # a47 # r64294
            jump giantsk_s15

        '스켈레톤을 다시 살펴본다.{#giantsk_s7_r4070}':
            # a48 # r4070
            jump giantsk_s4

        '룬들을 다시 살펴본다.{#giantsk_s7_r4071}':
            # a49 # r4071
            jump giantsk_s7

        '스켈레톤의 칼을 그의 손에서 비틀어 빼내려고 시도한다.{#giantsk_s7_r4072}' if giantskLogic.r4072_condition():
            # a50 # r4072
            jump giantsk_s2

        '스켈레톤의 칼을 그의 손에서 비틀어 빼내려고 시도한다.{#giantsk_s7_r4073}' if giantskLogic.r4073_condition():
            # a51 # r4073
            jump giantsk_s3

        '스켈레톤의 갑옷을 고정시키고 있는 볼트들을 비틀어 빼내려고 시도한다.{#giantsk_s7_r4074}' if giantskLogic.r4074_condition():
            # a52 # r4074
            jump giantsk_s2

        '스켈레톤의 갑옷을 고정시키고 있는 볼트들을 비틀어 빼내려고 시도한다.{#giantsk_s7_r4075}' if giantskLogic.r4075_condition():
            # a53 # r4075
            jump giantsk_s3

        '"이봐, 이 해골은 어떤가, 모트? 몸으로 쓸만하겠나?"{#giantsk_s7_r4076}' if giantskLogic.r4076_condition():
            # a54 # r4076
            jump morte_s73  # EXTERN

        '스켈레톤을 그냥 내버려 둔다.{#giantsk_s7_r4077}':
            # a55 # r4077
            jump giantsk_dispose


# s8 # say4011
label giantsk_s8: # from 6.0
    nr '당신은 룬들이 가슴받이 표면 전체에 걸쳐 전개되는 패턴을 연구한다. 가장 기본적인 레벨의 룬들은 하급 갑옷의 주문이나, 갑옷의 가장자리 부분에 있는 여러 개의 해골 모양의 룬들과 원형 기호들은 당신으로 하여금 갑옷에는 여러 종류의 상급 사령술과 상급 보호 마법 역시 걸려 있는 것이 아닌가 하고 생각하게 만든다. 스켈레톤을 만지면 그것이 깨어나… 자신을 방어할 가능성이 높다.{#giantsk_s8_}'

    menu:
        '마법을 어떤 방법으로든 풀 수가 있을지 본다.{#giantsk_s8_r4079}' if giantskLogic.r4079_condition():
            # a56 # r4079
            $ giantskLogic.r4079_action()
            jump giantsk_s9

        '마법을 어떤 방법으로든 풀 수가 있을지 본다.{#giantsk_s8_r4080}' if giantskLogic.r4080_condition():
            # a57 # r4080
            jump giantsk_s9

        '스켈레톤의 칼을 그의 손에서 비틀어 빼내려고 시도한다.{#giantsk_s8_r4081}' if giantskLogic.r4081_condition():
            # a58 # r4081
            jump giantsk_s2

        '스켈레톤의 칼을 그의 손에서 비틀어 빼내려고 시도한다.{#giantsk_s8_r4082}' if giantskLogic.r4082_condition():
            # a59 # r4082
            jump giantsk_s3

        '스켈레톤의 갑옷을 고정시키고 있는 볼트들을 비틀어 빼내려고 시도한다.{#giantsk_s8_r4083}' if giantskLogic.r4083_condition():
            # a60 # r4083
            jump giantsk_s2

        '스켈레톤의 갑옷을 고정시키고 있는 볼트들을 비틀어 빼내려고 시도한다.{#giantsk_s8_r4084}' if giantskLogic.r4084_condition():
            # a61 # r4084
            jump giantsk_s3

        '"이봐, 이 해골은 어떤가, 모트? 몸으로 쓸만하겠나?"{#giantsk_s8_r4085}' if giantskLogic.r4085_condition():
            # a62 # r4085
            jump morte_s73  # EXTERN

        '스켈레톤을 그냥 내버려 두고 떠난다.{#giantsk_s8_r4078}':
            # a63 # r4078
            jump giantsk_dispose


# s9 # say4012
label giantsk_s9: # from 0.3 1.1 8.0 8.1
    nr '가슴받이에 새겨진 룬들의 패턴을 훼손하면 마법을 깨트릴 수 있다는 생각이 드나, 쉽지는 않을 듯하다… 패턴은 복잡하며, 엉뚱한 부분을 훼손할 경우 스켈레톤이 깨어날 수도 있다.{#giantsk_s9_}'

    menu:
        '그 패턴을 뼈와 재의 책에 있는 마법들과 비교하여 그것들을 깨트릴 수 있는 방법을 발견할 수 있는지를 알아본다.{#giantsk_s9_r64296}' if giantskLogic.r64296_condition():
            # a64 # r64296
            jump giantsk_s16

        '우선 갑옷의 마법을 유지하는 룬들을 훼손하고, 그 다음에는 사령술과 보호의 마법의 순으로 룬들을 훼손한다.{#giantsk_s9_r4086}':
            # a65 # r4086
            jump giantsk_s10

        '우선 보호의 마법을 유지하는 룬들을 훼손한 후, 룬 패턴과는 역순으로 작업하여 사령술과 갑옷의 마법의 순으로 마법을 해제한다.{#giantsk_s9_r4087}' if giantskLogic.r4087_condition():
            # a66 # r4087
            $ giantskLogic.r4087_action()
            jump giantsk_s11

        '우선 보호의 마법을 유지하는 룬들을 훼손한 후, 룬 패턴과는 역순으로 작업하여 사령술과 갑옷의 마법의 순으로 마법을 해제한다.{#giantsk_s9_r4088}' if giantskLogic.r4088_condition():
            # a67 # r4088
            $ giantskLogic.r4088_action()
            jump giantsk_s13

        '스켈레톤의 칼을 그의 손에서 비틀어 빼내려고 시도한다.{#giantsk_s9_r4089}' if giantskLogic.r4089_condition():
            # a68 # r4089
            jump giantsk_s2

        '스켈레톤의 칼을 그의 손에서 비틀어 빼내려고 시도한다.{#giantsk_s9_r4090}' if giantskLogic.r4090_condition():
            # a69 # r4090
            jump giantsk_s3

        '스켈레톤의 갑옷을 고정시키고 있는 볼트들을 비틀어 빼내려고 시도한다.{#giantsk_s9_r4091}' if giantskLogic.r4091_condition():
            # a70 # r4091
            jump giantsk_s2

        '스켈레톤의 갑옷을 고정시키고 있는 볼트들을 비틀어 빼내려고 시도한다.{#giantsk_s9_r4092}' if giantskLogic.r4092_condition():
            # a71 # r4092
            jump giantsk_s3

        '"이봐, 이 해골은 어떤가, 모트? 몸으로 쓸만하겠나?"{#giantsk_s9_r4093}' if giantskLogic.r4093_condition():
            # a72 # r4093
            jump morte_s73  # EXTERN

        '스켈레톤을 그냥 내버려 두고 떠난다.{#giantsk_s9_r4094}':
            # a73 # r4094
            jump giantsk_dispose


# s10 # say4013
label giantsk_s10: # from 9.1 16.0
    nr '당신이 가슴받이를 장식하는 룬들을 훼손하기 시작하자 철제 종소리가 시체안치소 안에 울려 퍼지기 시작한다… 그리고 스켈레톤은 번개같은 속도로 깨어나, 칼을 들어 공격한다!{#giantsk_s10_}'

    menu:
        '"그냥 죽어있는 게 나을 뻔했다고 생각하게 될 것이네, 해골…"{#giantsk_s10_r4095}':
            # a74 # r4095
            $ giantskLogic.r4095_action()
            jump giantsk_dispose


# s11 # say4014
label giantsk_s11: # from 9.2 16.1
    nr '그 작업은 처음에는 고통스러울 정도로 어려우나. 서서히 당신은 일에 정신을 집중할 수 있게 되며, 룬들은 당신의 공세 앞에 무릎을 꿇기 시작한다. 몇 분 안에 자이언트 스켈레톤에 걸려 있던 모든 마법은 제거된다. 그것은 무너지면서 굉음과 함께 바닥에 쓰러진다!{#giantsk_s11_}'

    menu:
        '"빌어먹을 뼈들…!"{#giantsk_s11_r4096}':
            # a75 # r4096
            $ giantskLogic.r4096_action()
            jump giantsk_s12


# s12 # say4015
label giantsk_s12: # from 11.0
    nr '당신은 잠시 기다린다, 하지만 다행히 아무도 그 소리에 반응하지 않는다. 당신은 빠른 동작으로 바닥에 널린 스켈레톤의 잔해들을 살펴본다. 그것들은 대부분 쓸모가 있기에는 너무 낡았거나 무겁다. 하지만 당신은 그 중에서 스켈레톤의 가슴받이의 일부분을 발견하는데, 그것에는 깨어진 마법들 중 하나의 내용 대부분이 새겨져 있다. 당신에게는 그것이 쓸모가 있을 거라는 생각이 든다.{#giantsk_s12_}'

    menu:
        '"그럼 그냥 가져가기로 하지…"{#giantsk_s12_r4097}':
            # a76 # r4097
            $ giantskLogic.r4097_action()
            jump giantsk_dispose


# s13 # say4016
label giantsk_s13: # from 9.3 16.2
    nr '이번에는 마법을 해제하는 일이 한층 쉽다, 그리고 룬들은 당신의 공세 앞에 금새 무릎을 꿇는다. 불과 몇 분 안에 자이언트 스켈레톤에 걸려 있던 모든 마법은 제거된다. 이전에 무슨 일이 일어났는지를 기억하고 있는 당신은 스켈레톤이 쓰러지기 전에 그것을 잡은 다음, 툴툴거리며 천천히 바닥에 내려놓는다.{#giantsk_s13_}'

    menu:
        '"이번에는 뭐가 나오나 한 번 볼까…"{#giantsk_s13_r4098}':
            # a77 # r4098
            $ giantskLogic.r4098_action()
            jump giantsk_s14


# s14 # say4017
label giantsk_s14: # from 13.0
    nr '당신은 재빠르게 스켈레톤의 잔해를 뒤지기 시작한다, 그리고 이번에도 가슴받이의 일부를 발견한다… 첫 번째 것과 마찬가지로 이것에도 깨어진 마법의 일부가 새겨져 있다. 그것은 쓸모가 있을지도 모른다.{#giantsk_s14_}'

    menu:
        '"그럼 그냥 가져가기로 하지…"{#giantsk_s14_r4099}' if giantskLogic.r4099_condition():
            # a78 # r4099
            $ giantskLogic.r4099_action()
            jump giantsk_dispose

        '"그럼 그냥 가져가기로 하지…"{#giantsk_s14_r4100}' if giantskLogic.r4100_condition():
            # a79 # r4100
            $ giantskLogic.r4100_action()
            jump giantsk_dispose

        '"그럼 그냥 가져가기로 하지…"{#giantsk_s14_r4101}' if giantskLogic.r4101_condition():
            # a80 # r4101
            $ giantskLogic.r4101_action()
            jump giantsk_dispose


# s15 # say64295
label giantsk_s15: # from 7.0
    nr '당신이 책에 있는 그림들과 가슴받이 표면에 새겨진 심벌들을 비교한다. 가장 기본적인 레벨의 룬들은 하급 갑옷의 주문이나, 갑옷의 가장자리 부분에 있는 여러 개의 해골 모양의 룬들과 원형 기호들은 당신으로 하여금 갑옷에는 여러 종류의 상급 사령술과 상급 보호 마법 역시 걸려 있는 것이 아닌가 하고 생각하게 만든다. 스켈레톤을 만지면 그것이 깨어나… 자신을 방어할 가능성이 높다.{#giantsk_s15_}'

    menu:
        '뼈와 재의 책을 참조하여 그들을 깨트릴 수 있는 방법을 발견할 수 있는지를 알아본다.{#giantsk_s15_r64298}':
            # a81 # r64298
            jump giantsk_s16

        '룬들을 그냥 내버려 두고 스켈레톤을 다시 조사한다.{#giantsk_s15_r64299}':
            # a82 # r64299
            jump giantsk_s4


# s16 # say64297
label giantsk_s16: # from 9.0 15.0
    nr '당신이 책으로부터 이해한 바에 따르면, 갑옷의 마법은 가슴받이에만 걸려 있고, 스켈레톤이 다시 일어나 움직이게 하는 것은 사령술이나, 그것에게 주변 환경에 대한 기본적인 인지 능력을 부여하고 있는 것은 보호의 마법이다. 만약 당신이 스켈레톤의 룬을 훼손하면 그 행위가 스켈레톤에 의해 공격으로 간주될 것이다… 하지만 사전에 그것이 당신의 존재를 인지할 수 없게 한다면…{#giantsk_s16_}'

    menu:
        '우선 갑옷의 마법을 유지하는 룬들을 훼손하고, 그 다음에는 사령술과 보호의 마법의 순으로 룬들을 훼손한다.{#giantsk_s16_r64300}':
            # a83 # r64300
            jump giantsk_s10

        '우선 보호의 마법을 유지하는 룬들을 훼손한 후, 룬 패턴과는 역순으로 작업하여 사령술과 갑옷의 마법의 순으로 마법을 해제한다.{#giantsk_s16_r64301}' if giantskLogic.r64301_condition():
            # a84 # r64301
            $ giantskLogic.r64301_action()
            jump giantsk_s11

        '우선 보호의 마법을 유지하는 룬들을 훼손한 후, 룬 패턴과는 역순으로 작업하여 사령술과 갑옷의 마법의 순으로 마법을 해제한다.{#giantsk_s16_r64302}' if giantskLogic.r64302_condition():
            # a85 # r64302
            $ giantskLogic.r64302_action()
            jump giantsk_s13

        '룬들을 그냥 내버려 두고 스켈레톤을 다시 조사한다.{#giantsk_s16_r64303}':
            # a86 # r64303
            jump giantsk_s4
