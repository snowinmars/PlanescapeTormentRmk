init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.s863_logic import S863Logic
    s863Logic = S863Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DS863.DLG
# ###


# s0 # say35537
label s863_s0: # from 10.0 # IF ~  !HasItem("DRemind","S863")
    nr '이 스켈레톤은 엄청난 수난을 겪은 듯하다. 전투 때문인지 아니면 계단에서 여러 번 굴러 떨어져서인지는 알 수 없으나, 양쪽 팔과 다리가 부서져 금속 막대와 가죽끈으로 수선되었다. 해골의 이마에는 "863"이란 번호가 새겨져 있으나 후두부는 함몰되어 텅 빈 속이 들여다 보인다.{#s863_s0_}'

    menu:
        '"그 양피지를 빼앗아 미안하네, 하지만 자네가 그걸 가까운 시일 내에 배달했으리라고는 생각되지 않는군."{#s863_s0_r35538}' if s863Logic.r35538_condition():
            # a0 # r35538
            $ s863Logic.r35538_action()
            jump s863_s1

        '"그 양피지를 빼앗아 미안하네, 하지만 자네가 그걸 가까운 시일 내에 배달했으리라고는 생각되지 않는군."{#s863_s0_r35561}' if s863Logic.r35561_condition():
            # a1 # r35561
            jump s863_s1

        '"질문을 해야겠소. 뼈들이 그렇게 부서진 건 전투 때문이오, 아니면 높은 데서 떨어져서요?"{#s863_s0_r35562}' if s863Logic.r35562_condition():
            # a2 # r35562
            $ s863Logic.r35562_action()
            jump s863_s1

        '"질문을 해야겠소. 뼈들이 그렇게 부서진 건 전투 때문이오, 아니면 높은 데서 떨어져서요?"{#s863_s0_r35563}' if s863Logic.r35563_condition():
            # a3 # r35563
            jump s863_s1

        '스켈레톤에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.{#s863_s0_r35564}' if s863Logic.r35564_condition():
            # a4 # r35564
            jump s863_s2

        '스켈레톤을 조심스럽게 살펴본다.{#s863_s0_r35569}':
            # a5 # r35569
            $ s863Logic.r35569_action()
            jump s863_s3

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s863_s0_r35602}' if s863Logic.r35602_condition():
            # a6 # r35602
            $ s863Logic.r35602_action()
            jump morte_s400  # EXTERN

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s863_s0_r35603}' if s863Logic.r35603_condition():
            # a7 # r35603
            jump s863_s4

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s863_s0_r35604}' if s863Logic.r35604_condition():
            # a8 # r35604
            jump s863_s5

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s863_s0_r35605}' if s863Logic.r35605_condition():
            # a9 # r35605
            jump s863_s6

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s863_s0_r35606}' if s863Logic.r35606_condition():
            # a10 # r35606
            jump s863_s4

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s863_s0_r35607}' if s863Logic.r35607_condition():
            # a11 # r35607
            jump s863_s5

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s863_s0_r35608}' if s863Logic.r35608_condition():
            # a12 # r35608
            jump s863_s6

        '"이 해골은 어떤가, 모트? 자네 몸으로 쓸만하겠나?{#s863_s0_r35609}' if s863Logic.r35609_condition():
            # a13 # r35609
            jump morte_s396  # EXTERN

        '스켈레톤을 그냥 내버려 둔다.{#s863_s0_r35610}' if s863Logic.r35610_condition():
            # a14 # r35610
            $ s863Logic.r35610_action()
            jump morte_s394  # EXTERN

        '스켈레톤을 그냥 내버려 둔다.{#s863_s0_r35611}' if s863Logic.r35611_condition():
            # a15 # r35611
            jump s863_dispose

        '스켈레톤을 그냥 내버려 둔다.{#s863_s0_r35612}' if s863Logic.r35612_condition():
            # a16 # r35612
            jump s863_dispose


# s1 # say35539
label s863_s1: # from 0.0 0.1 0.2 0.3
    nr '스켈레톤은 아무런 응답도 하지 않는다.{#s863_s1_}'

    menu:
        '"당신과 얘기를 나눌 수 있어 즐거웠소, 해골 양반. 건강하게 지내시오."{#s863_s1_r35540}' if s863Logic.r35540_condition():
            # a17 # r35540
            $ s863Logic.r35540_action()
            jump morte_s394  # EXTERN

        '"당신과 얘기를 나눌 수 있어 즐거웠소, 해골 양반. 건강하게 지내시오."{#s863_s1_r35559}' if s863Logic.r35559_condition():
            # a18 # r35559
            jump s863_dispose

        '"당신과 얘기를 나눌 수 있어 즐거웠소, 해골 양반. 건강하게 지내시오."{#s863_s1_r35560}' if s863Logic.r35560_condition():
            # a19 # r35560
            jump s863_dispose


# s2 # say35565
label s863_s2: # from 0.4
    nr '스켈레톤은 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.{#s863_s2_}'

    menu:
        '스켈레톤을 그냥 내버려 둔다.{#s863_s2_r35566}' if s863Logic.r35566_condition():
            # a20 # r35566
            $ s863Logic.r35566_action()
            jump morte_s394  # EXTERN

        '스켈레톤을 그냥 내버려 둔다.{#s863_s2_r35567}' if s863Logic.r35567_condition():
            # a21 # r35567
            jump s863_dispose

        '스켈레톤을 그냥 내버려 둔다.{#s863_s2_r35568}' if s863Logic.r35568_condition():
            # a22 # r35568
            jump s863_dispose


# s3 # say35570
label s863_s3: # from 0.5
    nr '누군가가 이 스켈레톤의 뼈들을 가죽끈들로 감았는데, 끈들은 실제의 근육과 근을 연상시키는 패턴으로 감겨졌다. 가죽끈들은 스켈레톤의 관절에 박힌 금속 볼트에 고정되어 있다. 이 스켈레톤은 오랫동안 사용된 것 같다. 그 뼈들 중 상당수가 깨졌으며 부서진 부분들은 봉함제와 악취가 나는 접착제로 봉합되어 있다.{#s863_s3_}'

    menu:
        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s863_s3_r35571}' if s863Logic.r35571_condition():
            # a23 # r35571
            $ s863Logic.r35571_action()
            jump morte_s400  # EXTERN

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s863_s3_r35593}' if s863Logic.r35593_condition():
            # a24 # r35593
            jump s863_s4

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s863_s3_r35594}' if s863Logic.r35594_condition():
            # a25 # r35594
            jump s863_s5

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.{#s863_s3_r35595}' if s863Logic.r35595_condition():
            # a26 # r35595
            jump s863_s6

        '"내가 당신 가죽끈과 볼트를 좀 빌려도 괜찮겠소?"{#s863_s3_r35596}' if s863Logic.r35596_condition():
            # a27 # r35596
            jump s863_s4

        '"내가 당신 가죽끈과 볼트를 좀 빌려도 괜찮겠소?"{#s863_s3_r35597}' if s863Logic.r35597_condition():
            # a28 # r35597
            jump s863_s5

        '"내가 당신 가죽끈과 볼트를 좀 빌려도 괜찮겠소?"{#s863_s3_r35598}' if s863Logic.r35598_condition():
            # a29 # r35598
            jump s863_s6

        '스켈레톤을 그냥 내버려 둔다.{#s863_s3_r35599}' if s863Logic.r35599_condition():
            # a30 # r35599
            $ s863Logic.r35599_action()
            jump morte_s394  # EXTERN

        '스켈레톤을 그냥 내버려 둔다.{#s863_s3_r35600}' if s863Logic.r35600_condition():
            # a31 # r35600
            jump s863_dispose

        '스켈레톤을 그냥 내버려 둔다.{#s863_s3_r35601}' if s863Logic.r35601_condition():
            # a32 # r35601
            jump s863_dispose


# s4 # say35576
label s863_s4: # from 0.7 0.10 3.1 3.4
    nr '당신은 철제 볼트를 뽑아 내려고 시도하나, 당신은 그것들을 뽑아 낼 정도로 힘이 세지 못하다, 그것들은 매우 튼튼히 박혀 있다.{#s863_s4_}'

    menu:
        '"적당한 연장만 있으면 그것들을 빼낼 수가 있을 텐데… 흠… 나중에 다시 오리다, 해골 양반."{#s863_s4_r35577}' if s863Logic.r35577_condition():
            # a33 # r35577
            $ s863Logic.r35577_action()
            jump morte_s394  # EXTERN

        '"적당한 연장만 있으면 그것들을 빼낼 수가 있을 텐데… 흠… 나중에 다시 오리다, 해골 양반."{#s863_s4_r35578}' if s863Logic.r35578_condition():
            # a34 # r35578
            jump s863_dispose

        '"적당한 연장만 있으면 그것들을 빼낼 수가 있을 텐데… 흠… 나중에 다시 오리다, 해골 양반."{#s863_s4_r35579}' if s863Logic.r35579_condition():
            # a35 # r35579
            jump s863_dispose

        '스켈레톤을 그냥 내버려 둔다.{#s863_s4_r35580}' if s863Logic.r35580_condition():
            # a36 # r35580
            $ s863Logic.r35580_action()
            jump morte_s394  # EXTERN

        '스켈레톤을 그냥 내버려 둔다.{#s863_s4_r35581}' if s863Logic.r35581_condition():
            # a37 # r35581
            jump s863_dispose

        '스켈레톤을 그냥 내버려 둔다.{#s863_s4_r35582}' if s863Logic.r35582_condition():
            # a38 # r35582
            jump s863_dispose


# s5 # say35584
label s863_s5: # from 0.8 0.11 3.2 3.5
    nr '당신은 온몸의 힘을 다 기울여 철제 볼트를 뽑아 내려고 노력한다, 그리고 수 초간의 분투 끝에 마침내 관절로부터 볼트를 뽑아 낸다. 스켈레톤은 붕괴하나, 그 뼈들 중 일부는 아직도 씰룩거린다.{#s863_s5_}'

    menu:
        '"미안하네, 해골 양반…"{#s863_s5_r35585}':
            # a39 # r35585
            $ s863Logic.r35585_action()
            jump s863_dispose


# s6 # say35587
label s863_s6: # from 0.9 0.12 3.3 3.6
    nr '당신은 쇠 지렛대를 이용하여 관절로부터 볼트를 뽑아 낸다. 스켈레톤은 붕괴하나, 그 뼈들 중 일부는 아직도 씰룩거린다.{#s863_s6_}'

    menu:
        '"미안하네, 해골 양반…"{#s863_s6_r35588}':
            # a40 # r35588
            $ s863Logic.r35588_action()
            jump s863_dispose


# s7 # say35613
label s863_s7: # - # IF ~  False()
    nr '스켈레톤은 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.{#s863_s7_}'

    menu:

# s8 # say64262
label s863_s8: # - # IF ~  HasItem("DRemind","S863")
    nr '이 스켈레톤은 많은 전투를 겪었던지, 아니면 계단에서 여러 번 굴러 떨어진 것 같다. 양쪽 팔과 다리가 부서져 금속 막대와 가죽끈으로 수선되었다. 해골의 이마에는 "863"이란 번호가 새겨져 있으나 후두부는 함몰되어 텅 빈 속이 들여다 보인다. 당신은 누군가가 이를 이용하기로 작심하고 그 안에 양피지를 말아서 넣어 놓은 것을 발견한다.{#s863_s8_}'

    menu:
        '스켈레톤의 해골로부터 양피지를 꺼낸다.{#s863_s8_r64263}':
            # a41 # r64263
            jump s863_s9

        '스켈레톤을 그냥 내버려 둔다.{#s863_s8_r64264}':
            # a42 # r64264
            jump s863_dispose


# s9 # say64265
label s863_s9: # from 8.0
    nr '당신은 두루마리를 노동자의 해골로부터 꺼낸다. 묘하게도 해골의 공동은 매시지를 저장하기 위해 일부러 만든 것처럼 보인다. 두루마리가 우연히 떨어져 나오는 것을 방지하기 위해 두루마리는 해골 안에 달린 고리에 가는 실로 매여 있다.{#s863_s9_}'

    menu:
        '묶인 끈을 풀고 양피지를 꺼낸다.{#s863_s9_r64266}':
            # a43 # r64266
            $ s863Logic.r64266_action()
            jump s863_s10


# s10 # say64267
label s863_s10: # from 9.0
    nr '당신은 실을 풀고 두루마리를 훑어본다. 그것은 시체안치소의 관리인들 중 하나가 쓴 독촉장인 것 같다. 그 내용으로 감안할 때, 이 스켈레톤은 일종의 심부름꾼인 듯하다. 당신은 스켈레톤을 다시 흘긋 본다, 그리고 그가 철판 앞에서 멈춘 것은 그가 그것을 어떻게 지나가야 하는지 모르기 때문이라는 사실을 깨닫는다.  ^NNOTE: <READSTUFF>^-{#s863_s10_}'

    menu:
        '스켈레톤을 다시 조사한다.{#s863_s10_r64268}':
            # a44 # r64268
            jump s863_s0

        '스켈레톤을 그냥 내버려 둔다.{#s863_s10_r64269}':
            # a45 # r64269
            jump s863_dispose
