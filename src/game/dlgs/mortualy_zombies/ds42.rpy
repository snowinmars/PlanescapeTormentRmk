init python:
    def _r6613_action(gsm):
        gsm.dec_once_law()
    def _r6614_action(gsm):
        gsm.dec_law()
        glm.set_location('AR0001')
    def _r6617_action(gsm):
        glm.set_location('AR0001')
    def _r6618_action(gsm):
        glm.set_location('AR0001')
    def _r6629_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r6632_action(gsm):
        glm.set_location('AR0001')
    def _r6635_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r6640_action(gsm):
        gsm.set_dead_ds42(True)
    def _r6642_action(gsm):
        gsm.set_dead_ds42(True)
        gsm.set_has_spike(True)
        gsm.set_has_strap(True)
    def _r6645_action(gsm):
        gsm.inc_exp_custom('party', 250)
    def _r6650_action(gsm):
        glm.set_location('AR0001')
    def _r6652_action(gsm):
        gsm.inc_exp_custom('party', 250)
    def _r58984_action(gsm):
        gsm.set_has_gs_knife(True)
        gsm.set_has_rags(True)
        gsm.set_has_clotchrm(True)
        gsm.set_has_clotchrm(True)
        gsm.inc_gold(99)


init python:
    def _r6612_condition(gsm):
        return gsm.get_42_secret()
    def _r6614_condition(gsm):
        return glm.is_visited_internal_location('AR0000')
    def _r6615_condition(gsm):
        return glm.is_visited_internal_location('AR0001')
    def _r6616_condition(gsm):
        return gsm.get_can_speak_with_dead()
    def _r6618_condition(gsm):
        return glm.is_visited_internal_location('AR0000')
    def _r6619_condition(gsm):
        return glm.is_visited_internal_location('AR0001')
    def _r6620_condition(gsm):
        return not gsm.get_in_party_morte() \
               and glm.is_visited_internal_location('AR0001')
    def _r6621_condition(gsm):
        return gsm.get_in_party_morte() \
               and gsm.get_morte_skel_mort_quip()
    def _r6622_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r6623_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r6624_condition(gsm):
        return gsm.get_morte_skel_mort_quip()
    def _r6625_condition(gsm):
        return gsm.get_42_secret()
    def _r6626_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'wis') \
               and not gsm.get_42_secret()
    def _r6629_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r6630_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r6631_condition(gsm):
        return gsm.get_morte_skel_mort_quip()
    def _r63495_condition(gsm):
        return gsm.get_42_secret()
    def _r6632_condition(gsm):
        return gsm.get_in_party_morte() \
               and glm.is_visited_internal_location('AR0000')
    def _r6633_condition(gsm):
        return gsm.get_in_party_morte() \
               and glm.is_visited_internal_location('AR0001')
    def _r6634_condition(gsm):
        return not gsm.get_in_party_morte()
    def _r6635_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r6636_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r6637_condition(gsm):
        return gsm.get_morte_skel_mort_quip()
    def _r6643_condition(gsm):
        return not gsm.get_42_secret()
    def _r6644_condition(gsm):
        return gsm.get_42_secret()
    def _r6648_condition(gsm):
        return not gsm.get_in_party_morte()
    def _r6649_condition(gsm):
        return gsm.get_in_party_morte()
    def _r6653_condition(gsm):
        return gsm.get_42_secret()
    def _r6654_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'wis') \
               and not gsm.get_42_secret()


init 10 python:
    gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DS42.DLG
# ###


label start_ds42_talk:
    call ds42_init
    jump ds42_s0
label ds42_init:
    show ds42_img default at center_left_down
    return
label ds42_dispose:
    hide ds42_img
    jump show_graphics_menu


# s0 # say6595
label ds42_s0:  # from - # IF ~  True()~ THEN BEGIN 0 // Manually checked EXTERN ~DMORTE~ : 110 Manually checked EXTERN ~DMORTE~ : 111
    teller 'Скелет поворачивается к тебе. На лбу у него высечено число 42.'
    teller 'Многие его кости, преимущественно челюсти и суставы, обмотаны кожаными ремешками. Его тело скрывает черный комбинезон.'

    menu:
        '*Кажется*, именно этот мертвец был в моем воспоминании…' if _r6612_condition(gsm):
            # r0 # reply6612
            jump ds42_s1
        'Прошу прощения, ты не видал поблизости других скелетов?':
            # r1 # reply6613
            $ _r6613_action(gsm)
            jump ds42_s1
        'Один вопрос: зачем комбинезон? То есть, я хочу сказать: не похоже, что у тебя есть что скрывать.' if _r6614_condition(gsm):
            # r2 # reply6614
            $ _r6614_action(gsm)
            jump ds42_s1
        'Один вопрос: зачем комбинезон? То есть, я хочу сказать: не похоже, что у тебя есть что скрывать.' if _r6615_condition(gsm):
            # r3 # reply6615
            jump ds42_s1
        'Использовать на трупе свою способность История костей.' if _r6616_condition(gsm):
            # r4 # reply6616
            jump ds42_s2
        'Внимательно осмотреть скелет.':
            # r5 # reply6617
            $ _r6617_action(gsm)
            jump ds42_s3
        'Попробовать вытащить скобы из суставов скелета.' if _r6618_condition(gsm):
            # r6 # reply6618
            $ _r6618_action(gsm)
            jump dmorte_s110
        'Попробовать вытащить скобы из суставов скелета.' if _r6619_condition(gsm):
            # r7 # reply6619
            jump ds42_s6
        'Попробовать вытащить скобы из суставов скелета.' if _r6620_condition(gsm):
            # r8 # reply6620
            jump ds42_s6
        'Эй, а как насчет этого скелета, Морт? Пойдет такое тело?' if _r6621_condition(gsm):
            # r9 # reply6621
            jump ds42_s1
        'Оставить скелет в покое.' if _r6622_condition(gsm):
            # r10 # reply6622
            jump dmorte_s111
        'Оставить скелет в покое.' if _r6623_condition(gsm):
            # r11 # reply6623
            jump ds42_dispose
        'Оставить скелет в покое.' if _r6624_condition(gsm):
            # r12 # reply6624
            jump ds42_dispose


# s1 # say6596
label ds42_s1:  # from 0.0 0.1 0.2 0.3 0.9 3.0 3.3
    teller 'Услышав твой голос, скелет внезапно распрямляется. Он скрещивает руки на груди, ухватившись пальцами за ребра.'

    menu:
        'Скрестить свои руки на груди.' if _r6625_condition(gsm):
            # r13 # reply6625
            jump ds42_s4
        'Повторять движения скелета… посмотрим, что получится.' if _r6626_condition(gsm):
            # r14 # reply6626
            jump ds42_s9
        'Э-э…':
            # r15 # reply6627
            jump ds42_s10
        'Оставить скелет в покое.':
            # r16 # reply6628
            jump ds42_dispose


# s2 # say6597
label ds42_s2:  # from 0.4 # Manually checked EXTERN ~DMORTE~ : 111
    teller 'Скелет не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить скелет в покое.' if _r6629_condition(gsm):
            # r17 # reply6629
            $ _r6629_action(gsm)
            jump dmorte_s111
        'Оставить скелет в покое.' if _r6630_condition(gsm):
            # r18 # reply6630
            jump dmorte_s111
        'Оставить скелет в покое.' if _r6631_condition(gsm):
            # r19 # reply6631
            jump dmorte_s111


# s3 # say6598
label ds42_s3:  # from 0.5 10.2 # Manually checked EXTERN ~DMORTE~ : 110 Manually checked EXTERN ~DMORTE~ : 111
    teller 'Удивительно, как этот мешок костей еще не развалился. Его пожелтевшие кости покрыты гипсом и несколькими слоями вонючего клея…'
    teller 'В просветах, где видны кости, ты различаешь сотни мелких трещин.'
    teller 'Хотя кто-то позаботился о том, чтобы перемотать скелет кожаными ремешками и соединить его кости скобами в суставах, ремешки уже износились, а скобы вот-вот выпадут.'

    menu:
        '*Кажется*, именно этот мертвец был в моем воспоминании…' if _r63495_condition(gsm):
            # r20 # reply63495
            jump ds42_s1
        'Попробовать вытащить скобы из суставов скелета.' if _r6632_condition(gsm):
            # r21 # reply6632
            $ _r6632_action(gsm)
            jump dmorte_s110
        'Попробовать вытащить скобы из суставов скелета.' if _r6633_condition(gsm):
            # r22 # reply6633
            jump ds42_s6
        'Не против, если я возьму немного ремешков и скоб?' if _r6634_condition(gsm):
            # r23 # reply6634
            jump ds42_s1
        'Оставить скелет в покое.' if _r6635_condition(gsm):
            # r24 # reply6635
            $ _r6635_action(gsm)
            jump dmorte_s111
        'Оставить скелет в покое.' if _r6636_condition(gsm):
            # r25 # reply6636
            jump ds42_dispose
        'Оставить скелет в покое.' if _r6637_condition(gsm):
            # r26 # reply6637
            jump ds42_dispose


# s4 # say6599
label ds42_s4:  # from 1.0 12.0
    teller 'В ответ скелет опускает руки по швам.'
    teller 'Кожаная веревка, связывающая торс скелета, лопается, и грудная клетка раскрывается, как двустворчатая дверь.'

    menu:
        'Засунуть руку в грудную клетку, пошарить внутри.':
            # r27 # reply6638
            jump ds42_s5
        'Оставить скелет в покое.':
            # r28 # reply6639
            jump ds42_dispose


# s5 # say6600
label ds42_s5:  # from 4.0 9.0
    teller 'К твоему удивлению, рука исчезает, едва ты засовываешь ее внутрь грудной клетки…'
    teller 'у тебя странное ощущение, что теперь она находится где-то в *другом* месте. Оказавшись внутри, твоя рука натыкается на невидимый предмет.'
    teller 'Он размером с кулак и, похоже, прикреплен к позвоночнику скелета.'

    menu:
        'Вытащить предмет.':
            # r29 # reply6640
            $ _r6640_action(gsm)
            jump ds42_s7
        'Оставить скелет в покое.':
            # r30 # reply6641
            jump ds42_dispose


# s6 # say6601
label ds42_s6:  # from 0.7 0.8 3.2
    teller 'Скобы свободно выскальзывают из суставов скелета. Скелет разваливается, хотя некоторые кости продолжают шевелиться.'

    menu:
        'Прости, Костяшка…':
            # r31 # reply6642
            $ _r6642_action(gsm)
            jump ds42_dispose


# s7 # say6602
label ds42_s7:  # from 5.0
    teller 'Как только ты вытаскиваешь предмет, скелет внезапно растворяется в воздухе, причем скрепляющие скобы и ремни с грохотом падают на пол.'
    teller 'Чем бы ни был этот предмет, похоже, один только он и удерживал кости вместе.'

    menu:
        'Осмотреть предмет.' if _r6643_condition(gsm):
            # r32 # reply6643
            jump ds42_s8
        'Осмотреть предмет.' if _r6644_condition(gsm):
            # r33 # reply6644
            jump ds42_s8


# s8 # say6603
label ds42_s8:  # from 7.0 7.1
    teller 'Похоже на ничем не примечательный кусок железа. Ты не можешь представить, зачем кому-то понадобилось прятать его в грудной клетке скелета.'

    menu:
        'Осмотреть кусок железа.':
            # r34 # reply6645
            $ _r6645_action(gsm)
            jump ds42_s14


# s9 # say6604
label ds42_s9:  # from 1.1 12.1
    teller 'В ответ скелет опускает руки по швам. Кожаная веревка, связывающая корпус скелета, лопается, и грудная клетка раскрывается, как двустворчатая дверь.'
    teller 'Ты испытываешь непреодолимое желание засунуть руку внутрь грудной клетки, хотя не можешь объяснить почему.'

    menu:
        'Засунуть руку в грудную клетку, пошарить внутри.':
            # r35 # reply6646
            jump ds42_s5
        'Оставить скелет в покое.':
            # r36 # reply6647
            jump ds42_dispose


# s10 # say6605
label ds42_s10:  # from 1.2 12.2
    teller 'Руки скелета опускаются по швам.'

    menu:
        'Э… привет?' if _r6648_condition(gsm):
            # r37 # reply6648
            jump ds42_s12
        'Э… привет?' if _r6649_condition(gsm):
            # r38 # reply6649
            jump ds42_s13
        'Внимательно осмотреть скелет.':
            # r39 # reply6650
            $ _r6650_action(gsm)
            jump ds42_s3
        'Оставить скелет в покое.':
            # r40 # reply6651
            jump ds42_dispose


# s11 # say6606
label ds42_s11:  # from -
    teller 'Похоже на ничем не примечательный кусок железа. Должно быть, у твоей предыдущей инкарнации были причины спрятать его здесь.'

    menu:
        'Внимательно осмотреть кусок железа.':
            # r41 # reply6652
            $ _r6652_action(gsm)
            jump ds42_s14


# s12 # say6607
label ds42_s12:  # from 10.0
    teller 'Скелет снова скрещивает руки на груди.'

    menu:
        'Скрестить свои руки на груди.' if _r6653_condition(gsm):
            # r42 # reply6653
            jump ds42_s4
        'Повторять движения скелета… посмотрим, что получится.' if _r6654_condition(gsm):
            # r43 # reply6654
            jump ds42_s9
        'Э-э…':
            # r44 # reply6655
            jump ds42_s10
        'Оставить скелет в покое.':
            # r45 # reply6656
            jump ds42_dispose


# s13 # say6608
label ds42_s13:  # from 10.1 # Manually checked EXTERN ~DMORTE~ : 112
    teller 'Скелет снова скрещивает руки на груди.'

    jump dmorte_s112

# s14 # say58983
label ds42_s14:  # from 8.0 11.0
    teller 'Как только ты берешь кусок железа в обе руки, чтобы осмотреть, слышится шипение.'
    teller 'Металл испаряется, оставив после себя странный кинжал, пригоршню монет, обернутых в грязный платок, и две кровавые капли.'
    teller 'Кажется, они были *внутри* куска железа.'

    menu:
        'Взять предметы и уйти.':
            # r46 # reply58984
            $ _r58984_action(gsm)
            jump ds42_dispose
