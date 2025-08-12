init 10 python:
    from game.dlgs.s42_logic import S42Logic
    s42Logic = S42Logic(renpy.store.global_settings_manager)


# ###
# Original:  DLG/S42.DLG
# ###


label start_s42_talk_first:
    call s42_init
    jump todo
label start_s42_talk:
    call s42_init
    jump todo
label start_s42_kill_first:
    call s42_init
    jump s42_kill_first
label start_s42_kill:
    call s42_init
    jump s42_kill
label s42_init:
    $ s42Logic.s42_init()
    scene bg LOCATION
    show s42_img default at center_left_down
    return
label s42_dispose:
    hide s42_img
    jump graphics_menu


# s0 # say6595
label s42_s0:  # - # IF ~  True()
    SPEAKER 'Скелет поворачивается к тебе. На лбу у него высечено число «42»; многие его кости, преимущественно челюсти и суставы, обмотаны кожаными ремешками. Его тело скрывает черный комбинезон.'

    menu:
        '«*Кажется*, именно этот мертвец был в моем воспоминании…»' if s42Logic.r6612_condition():
            # r0 # reply6612
            jump s42_s1

        '«Прошу прощения, ты не видал поблизости других скелетов?»':
            # r1 # reply6613
            $ s42Logic.r6613_action()
            jump s42_s1

        '«Один вопрос: зачем комбинезон? То есть, я хочу сказать: не похоже, что у тебя есть что скрывать».' if s42Logic.r6614_condition():
            # r2 # reply6614
            $ s42Logic.r6614_action()
            jump s42_s1

        '«Один вопрос: зачем комбинезон? То есть, я хочу сказать: не похоже, что у тебя есть что скрывать».' if s42Logic.r6615_condition():
            # r3 # reply6615
            jump s42_s1

        'Использовать на трупе свою способность «История костей».' if s42Logic.r6616_condition():
            # r4 # reply6616
            jump s42_s2

        'Внимательно осмотреть скелет.':
            # r5 # reply6617
            $ s42Logic.r6617_action()
            jump s42_s3

        'Попробовать вытащить скобы из суставов скелета.' if s42Logic.r6618_condition():
            # r6 # reply6618
            $ s42Logic.r6618_action()
            jump morte_s110  # EXTERN

        'Попробовать вытащить скобы из суставов скелета.' if s42Logic.r6619_condition():
            # r7 # reply6619
            jump s42_s6

        'Попробовать вытащить скобы из суставов скелета.' if s42Logic.r6620_condition():
            # r8 # reply6620
            jump s42_s6

        '«Эй, а как насчет этого скелета, Морт? Пойдет такое тело?»' if s42Logic.r6621_condition():
            # r9 # reply6621
            jump s42_s1

        'Оставить скелет в покое.' if s42Logic.r6622_condition():
            # r10 # reply6622
            jump morte_s111  # EXTERN

        'Оставить скелет в покое.' if s42Logic.r6623_condition():
            # r11 # reply6623
            jump s42_dispose

        'Оставить скелет в покое.' if s42Logic.r6624_condition():
            # r12 # reply6624
            jump s42_dispose


# s1 # say6596
label s42_s1:  # from 0.0 0.1 0.2 0.3 0.9 3.0 3.3
    SPEAKER 'Услышав твой голос, скелет внезапно распрямляется. Он скрещивает руки на груди, ухватившись пальцами за ребра.'

    menu:
        'Скрестить свои руки на груди.' if s42Logic.r6625_condition():
            # r13 # reply6625
            jump s42_s4

        'Повторять движения скелета… посмотрим, что получится.' if s42Logic.r6626_condition():
            # r14 # reply6626
            jump s42_s9

        '«Э-э…»':
            # r15 # reply6627
            jump s42_s10

        'Оставить скелет в покое.':
            # r16 # reply6628
            jump s42_dispose


# s2 # say6597
label s42_s2:  # from 0.4
    SPEAKER 'Скелет не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить скелет в покое.' if s42Logic.r6629_condition():
            # r17 # reply6629
            $ s42Logic.r6629_action()
            jump morte_s111  # EXTERN

        'Оставить скелет в покое.' if s42Logic.r6630_condition():
            # r18 # reply6630
            jump s42_dispose

        'Оставить скелет в покое.' if s42Logic.r6631_condition():
            # r19 # reply6631
            jump s42_dispose


# s3 # say6598
label s42_s3:  # from 0.5 10.2
    SPEAKER 'Удивительно, как этот мешок костей еще не развалился. Его пожелтевшие кости покрыты гипсом и несколькими слоями вонючего клея… В просветах, где видны кости, ты различаешь сотни мелких трещин. Хотя кто-то позаботился о том, чтобы перемотать скелет кожаными ремешками и соединить его кости скобами в суставах, ремешки уже износились, а скобы вот-вот выпадут.'

    menu:
        '«*Кажется*, именно этот мертвец был в моем воспоминании…»' if s42Logic.r63495_condition():
            # r20 # reply63495
            jump s42_s1

        'Попробовать вытащить скобы из суставов скелета.' if s42Logic.r6632_condition():
            # r21 # reply6632
            $ s42Logic.r6632_action()
            jump morte_s110  # EXTERN

        'Попробовать вытащить скобы из суставов скелета.' if s42Logic.r6633_condition():
            # r22 # reply6633
            jump s42_s6

        '«Не против, если я возьму немного ремешков и скоб?»' if s42Logic.r6634_condition():
            # r23 # reply6634
            jump s42_s1

        'Оставить скелет в покое.' if s42Logic.r6635_condition():
            # r24 # reply6635
            $ s42Logic.r6635_action()
            jump morte_s111  # EXTERN

        'Оставить скелет в покое.' if s42Logic.r6636_condition():
            # r25 # reply6636
            jump s42_dispose

        'Оставить скелет в покое.' if s42Logic.r6637_condition():
            # r26 # reply6637
            jump s42_dispose


# s4 # say6599
label s42_s4:  # from 1.0 12.0
    SPEAKER 'В ответ скелет опускает руки по швам. Кожаная веревка, связывающая торс скелета, лопается, и грудная клетка раскрывается, как двустворчатая дверь.'

    menu:
        'Засунуть руку в грудную клетку, пошарить внутри.':
            # r27 # reply6638
            jump s42_s5

        'Оставить скелет в покое.':
            # r28 # reply6639
            jump s42_dispose


# s5 # say6600
label s42_s5:  # from 4.0 9.0
    SPEAKER 'К твоему удивлению, рука исчезает, едва ты засовываешь ее внутрь грудной клетки… у тебя странное ощущение, что теперь она находится где-то в *другом* месте. Оказавшись внутри, твоя рука натыкается на невидимый предмет. Он размером с кулак и, похоже, прикреплен к позвоночнику скелета.'

    menu:
        'Вытащить предмет.':
            # r29 # reply6640
            $ s42Logic.r6640_action()
            jump s42_s7

        'Оставить скелет в покое.':
            # r30 # reply6641
            jump s42_dispose


# s6 # say6601
label s42_s6:  # from 0.7 0.8 3.2
    SPEAKER 'Скобы свободно выскальзывают из суставов скелета. Скелет разваливается, хотя некоторые кости продолжают шевелиться.'

    menu:
        '«Прости, Костяшка…»':
            # r31 # reply6642
            $ s42Logic.r6642_action()
            jump s42_dispose


# s7 # say6602
label s42_s7:  # from 5.0
    SPEAKER 'Как только ты вытаскиваешь предмет, скелет внезапно растворяется в воздухе, причем скрепляющие скобы и ремни с грохотом падают на пол. Чем бы ни был этот предмет, похоже, один только он и удерживал кости вместе.'

    menu:
        'Осмотреть предмет.' if s42Logic.r6643_condition():
            # r32 # reply6643
            jump s42_s8

        'Осмотреть предмет.' if s42Logic.r6644_condition():
            # r33 # reply6644
            jump s42_s8


# s8 # say6603
label s42_s8:  # from 7.0 7.1
    SPEAKER 'Похоже на ничем не примечательный кусок железа. Ты не можешь представить, зачем кому-то понадобилось прятать его в грудной клетке скелета.'

    menu:
        'Осмотреть кусок железа.':
            # r34 # reply6645
            $ s42Logic.r6645_action()
            jump s42_s14


# s9 # say6604
label s42_s9:  # from 1.1 12.1
    SPEAKER 'В ответ скелет опускает руки по швам. Кожаная веревка, связывающая корпус скелета, лопается, и грудная клетка раскрывается, как двустворчатая дверь. Ты испытываешь непреодолимое желание засунуть руку внутрь грудной клетки, хотя не можешь объяснить почему.'

    menu:
        'Засунуть руку в грудную клетку, пошарить внутри.':
            # r35 # reply6646
            jump s42_s5

        'Оставить скелет в покое.':
            # r36 # reply6647
            jump s42_dispose


# s10 # say6605
label s42_s10:  # from 1.2 12.2
    SPEAKER 'Руки скелета опускаются по швам.'

    menu:
        '«Э… привет?»' if s42Logic.r6648_condition():
            # r37 # reply6648
            jump s42_s12

        '«Э… привет?»' if s42Logic.r6649_condition():
            # r38 # reply6649
            jump s42_s13

        'Внимательно осмотреть скелет.':
            # r39 # reply6650
            $ s42Logic.r6650_action()
            jump s42_s3

        'Оставить скелет в покое.':
            # r40 # reply6651
            jump s42_dispose


# s11 # say6606
label s42_s11:  # -
    SPEAKER 'Похоже на ничем не примечательный кусок железа. Должно быть, у твоей предыдущей инкарнации были причины спрятать его здесь.'

    menu:
        'Внимательно осмотреть кусок железа.':
            # r41 # reply6652
            $ s42Logic.r6652_action()
            jump s42_s14


# s12 # say6607
label s42_s12:  # from 10.0
    SPEAKER 'Скелет снова скрещивает руки на груди.'

    menu:
        'Скрестить свои руки на груди.' if s42Logic.r6653_condition():
            # r42 # reply6653
            jump s42_s4

        'Повторять движения скелета… посмотрим, что получится.' if s42Logic.r6654_condition():
            # r43 # reply6654
            jump s42_s9

        '«Э-э…»':
            # r44 # reply6655
            jump s42_s10

        'Оставить скелет в покое.':
            # r45 # reply6656
            jump s42_dispose


# s13 # say6608
label s42_s13:  # from 10.1
    SPEAKER 'Скелет снова скрещивает руки на груди.'

    jump morte_s112  # EXTERN

# s14 # say58983
label s42_s14:  # from 8.0 11.0
    SPEAKER 'Как только ты берешь кусок железа в обе руки, чтобы осмотреть, слышится шипение, и металл испаряется, оставив после себя странный кинжал, пригоршню монет, обернутых в грязный платок, и две кровавые капли. Кажется, они были *внутри* куска железа.'

    menu:
        'Взять предметы и уйти.':
            # r46 # reply58984
            $ s42Logic.r58984_action()
            jump s42_dispose


label s42_kill:
    nr 'Todo.'

    menu:
        'Уйти.':
            jump s42_dispose
        'Убить.':
            jump s42_killed


label s42_killed:
    $ s42Logic.kill_s42()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 's42s.'
    nr 'Who is s42?'
    nr 's42 is dead, baby, s42 is dead.'
    jump s42_dispose


label s42_kill_first:
    nr 'Todo.'

    menu:
        'Уйти.':
            jump s42_dispose
        'Убить.':
            jump s42_killed_first


label s42_killed_first:
    $ s42Logic.kill_s42()
    nr 'Whose motorcycle is this?'
    nr 'Its a chopper, baby.'
    nr 'Whose chopper is this?'
    nr 's42s.'
    nr 'Who is s42?'
    nr 's42 is dead, baby, s42 is dead.'
    jump s42_dispose
