init python:
    def _r35461_action(gsm):
        gsm.dec_law()
        glm.set_location('AR0001')
    def _r35485_action(gsm):
        gsm.dec_law()
        glm.set_location('AR0001')
    def _r35492_action(gsm):
        glm.set_location('AR0001')
    def _r35525_action(gsm):
        glm.set_location('AR0001')
    def _r35533_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r35463_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r35489_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r35494_action(gsm):
        glm.set_location('AR0001')
    def _r35522_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r35500_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r35503_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r35508_action(gsm):
        gsm.set_dead_ds996(True)
        gsm.set_has_spike(True)
        gsm.set_has_strap(True)
    def _r35511_action(gsm):
        gsm.set_dead_ds996(True)
        gsm.set_has_spike(True)
        gsm.set_has_strap(True)


init python:
    def _r35461_condition(gsm):
        return glm.is_visited_internal_location('AR0000')
    def _r35484_condition(gsm):
        return glm.is_visited_internal_location('AR0001')
    def _r35485_condition(gsm):
        return glm.is_visited_internal_location('AR0000')
    def _r35486_condition(gsm):
        return glm.is_visited_internal_location('AR0001')
    def _r35487_condition(gsm):
        return gsm.get_can_speak_with_dead()
    def _r35525_condition(gsm):
        return glm.is_visited_internal_location('AR0000')
    def _r35526_condition(gsm):
        return glm.is_visited_internal_location('AR0001') \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_lt('protagonist',13,'str')
    def _r35527_condition(gsm):
        return glm.is_visited_internal_location('AR0001') \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_gt('protagonist',12,'str')
    def _r35528_condition(gsm):
        return glm.is_visited_internal_location('AR0001') \
               and gsm.get_has_prybar()
    def _r35529_condition(gsm):
        return not gsm.get_in_party_morte() \
               and glm.is_visited_internal_location('AR0001') \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_lt('protagonist',13,'str')
    def _r35530_condition(gsm):
        return not gsm.get_in_party_morte() \
               and glm.is_visited_internal_location('AR0001') \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_gt('protagonist',12,'str')
    def _r35531_condition(gsm):
        return not gsm.get_in_party_morte() \
               and glm.is_visited_internal_location('AR0001') \
               and gsm.get_has_prybar()
    def _r35532_condition(gsm):
        return gsm.get_in_party_morte() \
               and gsm.get_morte_skel_mort_quip()
    def _r35533_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35534_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35535_condition(gsm):
        return gsm.get_morte_skel_mort_quip()
    def _r35463_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35482_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35483_condition(gsm):
        return gsm.get_morte_skel_mort_quip()
    def _r35489_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35490_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35491_condition(gsm):
        return gsm.get_morte_skel_mort_quip()
    def _r35494_condition(gsm):
        return gsm.get_in_party_morte() \
               and glm.is_visited_internal_location('AR0000')
    def _r35516_condition(gsm):
        return gsm.get_in_party_morte() \
               and glm.is_visited_internal_location('AR0001') \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_lt('protagonist',13,'str')
    def _r35517_condition(gsm):
        return gsm.get_in_party_morte() \
               and glm.is_visited_internal_location('AR0001') \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_gt('protagonist',12,'str')
    def _r35518_condition(gsm):
        return gsm.get_in_party_morte() \
               and glm.is_visited_internal_location('AR0001') \
               and gsm.get_has_prybar()
    def _r35519_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_lt('protagonist',13,'str')
    def _r35520_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_gt('protagonist',12,'str')
    def _r35521_condition(gsm):
        return not gsm.get_in_party_morte() \
               and gsm.get_has_prybar()
    def _r35522_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35523_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35524_condition(gsm):
        return gsm.get_morte_skel_mort_quip()
    def _r35500_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'int') \
               and gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35501_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'int') \
               and not gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35502_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'int') \
               and gsm.get_morte_skel_mort_quip()
    def _r35503_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35504_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35505_condition(gsm):
        return gsm.get_morte_skel_mort_quip()


init 10 python:
    gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DS996.DLG
# ###


label start_ds996_talk:
    call ds996_init
    jump ds996_s0
label ds996_init:
    show ds996_img default at center_left_down
    return
label ds996_dispose:
    hide ds996_img
    jump show_graphics_menu


# s0 # say35460
label ds996_s0:  # from - # IF ~  True()~ THEN BEGIN 0 // Manually checked EXTERN ~DMORTE~ : 392 Manually checked EXTERN ~DMORTE~ : 388 Manually checked EXTERN ~DMORTE~ : 386
    teller 'Этот скелет довольно стар: кожаные ремешки потрескались и истерлись от времени.'
    teller 'На лбу с особым искусством вырезано слово ПОКАЙСЯ; более грубая рука уже позднее высекла на обоих висках число 996.'

    menu:
        'Прошу прощения, ты не видал поблизости других скелетов?' if _r35461_condition(gsm):
            # r0 # reply35461
            $ _r35461_action(gsm)
            jump ds996_s1
        'Прошу прощения, ты не видал поблизости других скелетов?' if _r35484_condition(gsm):
            # r1 # reply35484
            jump ds996_s1
        'Один вопрос: зачем комбинезон? То есть, я хочу сказать: не похоже, что у тебя есть что скрывать.' if _r35485_condition(gsm):
            # r2 # reply35485
            $ _r35485_action(gsm)
            jump ds996_s1
        'Один вопрос: зачем комбинезон? То есть, я хочу сказать: не похоже, что у тебя есть что скрывать.' if _r35486_condition(gsm):
            # r3 # reply35486
            jump ds996_s1
        'Использовать на скелете свою способность История костей.' if _r35487_condition(gsm):
            # r4 # reply35487
            jump ds996_s2
        'Внимательно осмотреть скелет.':
            # r5 # reply35492
            $ _r35492_action(gsm)
            jump ds996_s3
        'Попробовать вытащить скобы из суставов скелета.' if _r35525_condition(gsm):
            # r6 # reply35525
            $ _r35525_action(gsm)
            jump dmorte_s392
        'Попробовать вытащить скобы из суставов скелета.' if _r35526_condition(gsm):
            # r7 # reply35526
            jump ds996_s4
        'Попробовать вытащить скобы из суставов скелета.' if _r35527_condition(gsm):
            # r8 # reply35527
            jump ds996_s5
        'Попробовать вытащить скобы из суставов скелета.' if _r35528_condition(gsm):
            # r9 # reply35528
            jump ds996_s6
        'Попробовать вытащить скобы из суставов скелета.' if _r35529_condition(gsm):
            # r10 # reply35529
            jump ds996_s4
        'Попробовать вытащить скобы из суставов скелета.' if _r35530_condition(gsm):
            # r11 # reply35530
            jump ds996_s5
        'Попробовать вытащить скобы из суставов скелета.' if _r35531_condition(gsm):
            # r12 # reply35531
            jump ds996_s6
        'Как насчет этого скелета, Морт? Пойдет такое тело?' if _r35532_condition(gsm):
            # r13 # reply35532
            jump dmorte_s388
        'Оставить скелет в покое.' if _r35533_condition(gsm):
            # r14 # reply35533
            $ _r35533_action(gsm)
            jump dmorte_s386
        'Оставить скелет в покое.' if _r35534_condition(gsm):
            # r15 # reply35534
            jump ds996_dispose
        'Оставить скелет в покое.' if _r35535_condition(gsm):
            # r16 # reply35535
            jump ds996_dispose


# s1 # say35462
label ds996_s1:  # from 0.0 0.1 0.2 0.3 # Manually checked EXTERN ~DMORTE~ : 386
    teller 'Скелет не реагирует.'

    menu:
        'Приятно было поболтать с тобой, Костяшка. Будь здоров.' if _r35463_condition(gsm):
            # r17 # reply35463
            $ _r35463_action(gsm)
            jump dmorte_s386
        'Приятно было поболтать с тобой, Костяшка. Будь здоров.' if _r35482_condition(gsm):
            # r18 # reply35482
            jump ds996_dispose
        'Приятно было поболтать с тобой, Костяшка. Будь здоров.' if _r35483_condition(gsm):
            # r19 # reply35483
            jump ds996_dispose


# s2 # say35488
label ds996_s2:  # from 0.4 # Manually checked EXTERN ~DMORTE~ : 386
    teller 'Скелет не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить скелет в покое.' if _r35489_condition(gsm):
            # r20 # reply35489
            $ _r35489_action(gsm)
            jump dmorte_s386
        'Оставить скелет в покое.' if _r35490_condition(gsm):
            # r21 # reply35490
            jump ds996_dispose
        'Оставить скелет в покое.' if _r35491_condition(gsm):
            # r22 # reply35491
            jump ds996_dispose


# s3 # say35493
label ds996_s3:  # from 0.5 # Manually checked EXTERN ~DMORTE~ : 392 Manually checked EXTERN ~DMORTE~ : 386
    teller 'Кто-то позаботился о том, чтобы связать кости скелета кожаными ремнями, обвивающими тело на манер, напоминающий мускулы и сухожилия. Ремни привязаны к железными скобам, вбитым в суставы скелета. Кажется, этот скелет довольно долго служил: кости растрескались, многочисленные трещины на них залиты вонючим клеем.'

    menu:
        'Попробовать вытащить скобы из суставов скелета.' if _r35494_condition(gsm):
            # r23 # reply35494
            $ _r35494_action(gsm)
            jump dmorte_s392
        'Попробовать вытащить скобы из суставов скелета.' if _r35516_condition(gsm):
            # r24 # reply35516
            jump ds996_s4
        'Попробовать вытащить скобы из суставов скелета.' if _r35517_condition(gsm):
            # r25 # reply35517
            jump ds996_s5
        'Попробовать вытащить скобы из суставов скелета.' if _r35518_condition(gsm):
            # r26 # reply35518
            jump ds996_s6
        'Не против, если я возьму немного ремешков и скоб?' if _r35519_condition(gsm):
            # r27 # reply35519
            jump ds996_s4
        'Не против, если я возьму немного ремешков и скоб?' if _r35520_condition(gsm):
            # r28 # reply35520
            jump ds996_s5
        'Не против, если я возьму немного ремешков и скоб?' if _r35521_condition(gsm):
            # r29 # reply35521
            jump ds996_s6
        'Оставить скелет в покое.' if _r35522_condition(gsm):
            # r30 # reply35522
            $ _r35522_action(gsm)
            jump dmorte_s386
        'Оставить скелет в покое.' if _r35523_condition(gsm):
            # r31 # reply35523
            jump ds996_dispose
        'Оставить скелет в покое.' if _r35524_condition(gsm):
            # r32 # reply35524
            jump ds996_dispose


# s4 # say35499
label ds996_s4:  # from 0.7 0.10 3.1 3.4 # Manually checked EXTERN ~DMORTE~ : 386
    teller 'Ты тянешь за железные скобы, но тебе не хватает сил, чтобы вытащить их. Они накрепко забиты.'

    menu:
        'Если бы у меня был подходящий инструмент, я бы смог их вытащить… хммм. Я еще вернусь, Костяшка.' if _r35500_condition(gsm):
            # r33 # reply35500
            $ _r35500_action(gsm)
            jump ds996_dispose
        'Если бы у меня был подходящий инструмент, я бы смог их вытащить… хммм. Я еще вернусь, Костяшка.' if _r35501_condition(gsm):
            # r34 # reply35501
            jump ds996_dispose
        'Если бы у меня был подходящий инструмент, я бы смог их вытащить… хммм. Я еще вернусь, Костяшка.' if _r35502_condition(gsm):
            # r35 # reply35502
            jump ds996_dispose
        'Оставить скелет в покое.' if _r35503_condition(gsm):
            # r36 # reply35503
            $ _r35503_action(gsm)
            jump dmorte_s386
        'Оставить скелет в покое.' if _r35504_condition(gsm):
            # r37 # reply35504
            jump ds996_dispose
        'Оставить скелет в покое.' if _r35505_condition(gsm):
            # r38 # reply35505
            jump ds996_dispose


# s5 # say35507
label ds996_s5:  # from 0.8 0.11 3.2 3.5
    teller 'Ты тянешь за железные скобы изо всех сил, и через несколько мгновений вырываешь их из суставов. Скелет разваливается, некоторые из его костей продолжают шевелиться.'

    menu:
        'Прости, Костяшка…':
            # r39 # reply35508
            $ _r35508_action(gsm)
            jump ds996_dispose


# s6 # say35510
label ds996_s6:  # from 0.9 0.12 3.3 3.6
    teller 'С помощью ломика ты вырываешь скобы из суставов. Скелет разваливается, хотя некоторые кости продолжают шевелиться.'

    menu:
        'Прости, Костяшка…':
            # r40 # reply35511
            $ _r35511_action(gsm)
            jump ds996_dispose


# s7 # say35536
label ds996_s7:  # from - # False()
    teller 'Скелет не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump ds996_dispose
