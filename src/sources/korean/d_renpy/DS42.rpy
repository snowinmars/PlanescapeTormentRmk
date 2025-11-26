init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.s42_logic import S42Logic
    s42Logic = S42Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DS42.DLG
# ###


# s0 # say6595
label s42_s0: # - # IF ~  True()
    nr '스켈레톤은 돌아서서 당신을 마주본다. 그것의 이마에는 "42"란 번호가 새겨져 있으며 그것의 뼈들 중 일부 - 주로 턱과 관절은 가죽끈으로 묶여 있다. 그것의 몸에는 흑색 작업복이 걸쳐져 있다.'

    menu:
        '"이 시체가 그 기억에서 본 시체인 것 같소…"' if s42Logic.r6612_condition():
            # a0 # r6612
            jump s42_s1

        '"미안하지만 이 부근에서 걸어다니는 스켈레톤을 본 적이 있소?"':
            # a1 # r6613
            $ s42Logic.r6613_action()
            jump s42_s1

        '"꼭 물어봐야겠소: 왜 작업복을 입은 거요? 가뜩이나 볼품없이 생겼으면서."' if s42Logic.r6614_condition():
            # a2 # r6614
            $ s42Logic.r6614_action()
            jump s42_s1

        '"꼭 물어봐야겠소: 왜 작업복을 입은 거요? 가뜩이나 볼품없이 생겼으면서."' if s42Logic.r6615_condition():
            # a3 # r6615
            jump s42_s1

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.' if s42Logic.r6616_condition():
            # a4 # r6616
            jump s42_s2

        '스켈레톤을 조심스럽게 살펴본다.':
            # a5 # r6617
            $ s42Logic.r6617_action()
            jump s42_s3

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.' if s42Logic.r6618_condition():
            # a6 # r6618
            $ s42Logic.r6618_action()
            jump morte_s110  # EXTERN

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.' if s42Logic.r6619_condition():
            # a7 # r6619
            jump s42_s6

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.' if s42Logic.r6620_condition():
            # a8 # r6620
            jump s42_s6

        '"이 해골은 어떤가, 모트? 자네 몸으로 쓸만하겠나?' if s42Logic.r6621_condition():
            # a9 # r6621
            jump s42_s1

        '스켈레톤을 그냥 내버려 두고 떠난다.' if s42Logic.r6622_condition():
            # a10 # r6622
            jump morte_s111  # EXTERN

        '스켈레톤을 그냥 내버려 두고 떠난다.' if s42Logic.r6623_condition():
            # a11 # r6623
            jump s42_dispose

        '스켈레톤을 그냥 내버려 두고 떠난다.' if s42Logic.r6624_condition():
            # a12 # r6624
            jump s42_dispose


# s1 # say6596
label s42_s1: # from 0.0 0.1 0.2 0.3 0.9 3.0 3.3
    nr '당신 목소리를 듣자 스켈레톤은 갑자기 똑바로 선다. 그것은 두 팔을 가슴 위에 포개 놓고, 손가락으로는 흉곽을 훅으로 채우듯 쥔다.'

    menu:
        '양팔을 당신 가슴 위에서 교차시킨다.' if s42Logic.r6625_condition():
            # a13 # r6625
            jump s42_s4

        '몸짓을 흉내낸다… 어떤 일이 일어나는지 지켜본다.' if s42Logic.r6626_condition():
            # a14 # r6626
            jump s42_s9

        '"어…"':
            # a15 # r6627
            jump s42_s10

        '스켈레톤을 그냥 내버려 두고 떠난다.':
            # a16 # r6628
            jump s42_dispose


# s2 # say6597
label s42_s2: # from 0.4
    nr '스켈레톤은 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.'

    menu:
        '스켈레톤을 그냥 내버려 두고 떠난다..' if s42Logic.r6629_condition():
            # a17 # r6629
            $ s42Logic.r6629_action()
            jump morte_s111  # EXTERN

        '스켈레톤을 그냥 내버려 두고 떠난다.' if s42Logic.r6630_condition():
            # a18 # r6630
            jump s42_dispose

        '스켈레톤을 그냥 내버려 두고 떠난다.' if s42Logic.r6631_condition():
            # a19 # r6631
            jump s42_dispose


# s3 # say6598
label s42_s3: # from 0.5 10.2
    nr '이 해골이 산산조각 나지 않고 아직 멀쩡히 있다는 것에 당신은 놀란다. 그것의 누런 뼈들은 회반죽과 여러 겹의 악취 나는 접착체로 범벅이 되어 있다. 접착체 사이로 간간이 드러나는 뼈에서는 수백 개의 미세한 균열이 보인다. 누군가가 이 해골을 가죽끈으로 묶고 관절에 볼트를 박기는 했으나, 끈은 해졌으며 볼트들도 곧 떨어져 나올 것 같다.'

    menu:
        '"이 시체가 그 기억에서 본 시체인 것 같소…"' if s42Logic.r63495_condition():
            # a20 # r63495
            jump s42_s1

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.' if s42Logic.r6632_condition():
            # a21 # r6632
            $ s42Logic.r6632_action()
            jump morte_s110  # EXTERN

        '스켈레톤의 관절부를 잇는 볼트를 비틀어 뽑아본다.' if s42Logic.r6633_condition():
            # a22 # r6633
            jump s42_s6

        '"내가 당신 가죽끈과 볼트를 좀 빌려도 괜찮겠소?"' if s42Logic.r6634_condition():
            # a23 # r6634
            jump s42_s1

        '스켈레톤을 그냥 내버려 두고 떠난다.' if s42Logic.r6635_condition():
            # a24 # r6635
            $ s42Logic.r6635_action()
            jump morte_s111  # EXTERN

        '스켈레톤을 그냥 내버려 두고 떠난다.' if s42Logic.r6636_condition():
            # a25 # r6636
            jump s42_dispose

        '스켈레톤을 그냥 내버려 두고 떠난다.' if s42Logic.r6637_condition():
            # a26 # r6637
            jump s42_dispose


# s4 # say6599
label s42_s4: # from 1.0 12.0
    nr '그에 반응하여 스켈레톤은 차렷자세를 한다. 그러자 스켈레톤의 동체를 유지시키던 가죽꾼이 특 끊어지고, 흉곽이 마치 한 쌍의 문처럼 바깥쪽으로 열린다.'

    menu:
        '흉곽에 손을 넣고 더듬거린다.':
            # a27 # r6638
            jump s42_s5

        '스켈레톤을 그냥 내버려 두고 떠난다.':
            # a28 # r6639
            jump s42_dispose


# s5 # say6600
label s42_s5: # from 4.0 9.0
    nr '놀랍게도 당신 손은 스켈레톤의 흉곽 안으로 들어가자 그 모습을 감춘다… 당신은 손이 어딘가 *다른* 곳에 있다는 기묘한 느낌을 받는다. 흉곽 안에서 손을 뒤적이다 당신은 어떤 투명한 물체에 부딪친다. 그것은 주먹만하며 스켈레톤의 척추에 붙어 있는 것 같다.'

    menu:
        '아이템을 꺼낸다.':
            # a29 # r6640
            $ s42Logic.r6640_action()
            jump s42_s7

        '스켈레톤을 그냥 내버려 두고 떠난다.':
            # a30 # r6641
            jump s42_dispose


# s6 # say6601
label s42_s6: # from 0.7 0.8 3.2
    nr '볼트는 스켈레톤의 관절로부터 쉽게 빠져나온다. 스켈레톤은 무너진다. 그러나 그 뼈들 중 일부는 아직도 씰룩거리고 있다.'

    menu:
        '"미안하네, 해골 양반…"':
            # a31 # r6642
            $ s42Logic.r6642_action()
            jump s42_dispose


# s7 # say6602
label s42_s7: # from 5.0
    nr '당신이 그 아이템을 빼내자 스켈레톤은 갑자기 소멸한다, 그리고 그 관절을 고정시키고 있던 볼트들은 요란한 소리를 내며 바닥에 떨어진 것 같다. 그것이 무엇이었던 간에 스켈레톤은 그것의 힘에 의해서 유지되고 있었던 것 같다.'

    menu:
        '아이템을 살펴본다.' if s42Logic.r6643_condition():
            # a32 # r6643
            jump s42_s8

        '아이템을 살펴본다.' if s42Logic.r6644_condition():
            # a33 # r6644
            jump s42_s8


# s8 # say6603
label s42_s8: # from 7.0 7.1
    nr '그것은 평범한 쇳덩어리인 것 같다. 당신이 누가 왜 그것을 스켈레톤의 흉곽에 숨겼는지 이해할 수가 없다.'

    menu:
        '철 조각을 살펴본다.':
            # a34 # r6645
            $ s42Logic.r6645_action()
            jump s42_s14


# s9 # say6604
label s42_s9: # from 1.1 12.1
    nr '그에 반응하여 스켈레톤은 차렷자세를 한다. 그러자 스켈레톤의 동체를 유지시키던 가죽꾼이 특 끊어지고, 흉곽이 마치 한 쌍의 문처럼 바깥쪽으로 열린다. 이유는 알 수 없으나 당신은 흉곽 속에 손을 넣고 싶다는 충동을 느낀다.'

    menu:
        '흉곽에 손을 넣고 더듬거린다.':
            # a35 # r6646
            jump s42_s5

        '스켈레톤을 그냥 내버려 두고 떠난다.':
            # a36 # r6647
            jump s42_dispose


# s10 # say6605
label s42_s10: # from 1.2 12.2
    nr '스켈레톤은 차렷자세를 한다.'

    menu:
        '"어… 여보시오?"' if s42Logic.r6648_condition():
            # a37 # r6648
            jump s42_s12

        '"어… 안녕하시오?"' if s42Logic.r6649_condition():
            # a38 # r6649
            jump s42_s13

        '스켈레톤을 조심스럽게 살펴본다.':
            # a39 # r6650
            $ s42Logic.r6650_action()
            jump s42_s3

        '스켈레톤을 그냥 내버려 둔다.':
            # a40 # r6651
            jump s42_dispose


# s11 # say6606
label s42_s11: # -
    nr '그것은 평범한 쇳덩어리인 것 같다. 당신의 전신이 그것을 여기에 숨긴 데는 무슨 이유가 있었을 것이다.'

    menu:
        '철 조각을 조심스럽게 살펴본다.':
            # a41 # r6652
            $ s42Logic.r6652_action()
            jump s42_s14


# s12 # say6607
label s42_s12: # from 10.0
    nr '스켈레톤은 다시 두 팔을 가슴 위에 포갠다.'

    menu:
        '양팔을 당신 가슴 위에서 교차시킨다.' if s42Logic.r6653_condition():
            # a42 # r6653
            jump s42_s4

        '몸짓을 흉내낸다… 기다리며 어떤 일이 일어나는지 지켜본다.' if s42Logic.r6654_condition():
            # a43 # r6654
            jump s42_s9

        '"어…"':
            # a44 # r6655
            jump s42_s10

        '스켈레톤을 그냥 내버려 두고 떠난다.':
            # a45 # r6656
            jump s42_dispose


# s13 # say6608
label s42_s13: # from 10.1
    nr '스켈레톤은 다시 두 팔을 가슴 위에 포갠다.'

    jump morte_s112  # EXTERN


# s14 # say58983
label s42_s14: # from 8.0 11.0
    nr '당신이 쇳덩어리를 살피려고 그 위에 양손을 얹자, *쉿쉿* 소리와 함께 금속이 증발해버린다. 남은 건 기묘한 대거, 더러운 천으로 싸인 한줌의 동전, 그리고 두 개의 핏빛 눈물방울뿐이다. 이것들은 쇳덩어리 *속에* 들어 있었던 것 같다.'

    menu:
        '물건들을 가지고 떠난다.':
            # a46 # r58984
            $ s42Logic.r58984_action()
            jump s42_dispose
