init 10 python:
    from game.engine.runtime import (runtime)
    from game.dlgs.zm732_logic import Zm732Logic
    zm732Logic = Zm732Logic(runtime.global_state_manager)


# ###
# Original:  DLG/DZM732.DLG
# ###


# s0 # say6529
label zm732_s0: # from 4.0 # IF ~  !HasItem("TomeBA","ZM732")
    nr '이 비틀거리는 시체는 입술만이 아니라 두 눈도 꿰매져 있으며, 이마에는 "732"이라는 번호가 새겨져 있다. 그것의 눈을 꿰매고 있는 실은 상당히 오래된 듯하다… 눈을 꿰맨 것이 죽기 전이었는지 아니면 죽은 후였는지 궁금하다.'

    menu:
        '"당신에게서 그 책을 빼앗아 미안하오… 그냥 지나치기에는 너무 재미있어 보였소."' if zm732Logic.r6533_condition():
            # a0 # r6533
            $ zm732Logic.r6533_action()
            jump zm732_s1

        '"당신에게서 그 책을 빼앗아 미안하오… 그냥 지나치기에는 너무 재미있어 보였소."' if zm732Logic.r6532_condition():
            # a1 # r6532
            jump zm732_s1

        '"난 당신이 좀비가 아니라는 것을 아오. 당신은 아무도 속이지 못할 거요."' if zm732Logic.r6534_condition():
            # a2 # r6534
            jump zm732_s1

        '시체에게 당신의 뼈들이 해주는 이야기 능력을 사용한다.' if zm732Logic.r6535_condition():
            # a3 # r6535
            jump zm732_s2

        '"당신과 얘기를 나눌 수 있어 즐거웠소. 안녕히 계시오."':
            # a4 # r6536
            jump zm732_dispose

        '시체를 그냥 내버려 두고 떠난다.':
            # a5 # r6537
            jump zm732_dispose


# s1 # say6530
label zm732_s1: # from 0.0 0.1 0.2
    nr '시체는 계속 당신을 쳐다본다.'

    menu:
        '시체를 그냥 내버려 두고 떠난다.':
            # a6 # r6538
            jump zm732_dispose


# s2 # say6531
label zm732_s2: # from 0.3
    nr '시체는 아무런 응답을 하지 않는다. 당신의 질문에 대답할 수 있을 정도의 정신은 이미 그것에게는 남아있지 않는 듯하다.'

    menu:
        '시체를 그냥 내버려 두고 떠난다.':
            # a7 # r6539
            jump zm732_dispose


# s3 # say64270
label zm732_s3: # - # IF ~  HasItem("TomeBA","ZM732")
    nr '이 비틀거리는 시체는 입술만이 아니라 두 눈도 꿰매져 있으며, 이마에는 "732"이라는 번호가 새겨져 있다. 그것의 눈을 꿰매고 있는 실은 상당히 오래된 듯하다… 눈을 꿰맨 것이 죽기 전이었는지 아니면 죽은 후였는지 궁금하다. 당신은 그가 어디로 가져가려는 듯 손에 커다란 책을 지니고 있다는 사실을 눈치챈다.'

    menu:
        '그의 손으로부터… 조심스럽게 책을 빼앗는다.':
            # a8 # r64271
            $ zm732Logic.r64271_action()
            jump zm732_s4

        '시체를 그냥 내버려 두고 떠난다.':
            # a9 # r64272
            jump zm732_dispose


# s4 # say64273
label zm732_s4: # from 3.0
    nr '당신은 시체의 손으로부터 책을 조심스럽게 빼낸다 - 그는 눈치채지 못한 것 같다. 책은 마력 부여와 수호 마법에 대한 책인 듯하다 - 그 안에는 사령술에 여러 측면에 대해서 설명하는 그림과 차트로 가득 차 있다. 책 그 자체는 엄청 무겁다. 좀비는 그 어색한 움직임에도 불구하고 무척 힘이 센 듯하다.  ^NNOTE: <READSTUFF>^-'

    menu:
        '시체를 다시 조사한다.':
            # a10 # r64274
            jump zm732_s0

        '시체를 그냥 내버려 두고 떠난다.':
            # a11 # r64275
            jump zm732_dispose
