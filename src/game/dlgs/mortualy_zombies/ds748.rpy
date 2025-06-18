init python:
    def _r35384_action(gsm):
        gsm.dec_law()
        glm.set_location('AR0001')
    def _r35408_action(gsm):
        gsm.dec_law()
        glm.set_location('AR0001')
    def _r35415_action(gsm):
        glm.set_location('AR0001')
    def _r35448_action(gsm):
        glm.set_location('AR0001')
    def _r35456_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r35386_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r35412_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r35417_action(gsm):
        glm.set_location('AR0001')
    def _r35445_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r35423_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r35426_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r35431_action(gsm):
        gsm.set_dead_ds748(True)
        gsm.set_has_spike(True)
        gsm.set_has_strap(True)
    def _r35434_action(gsm):
        gsm.set_dead_ds748(True)
        gsm.set_has_spike(True)
        gsm.set_has_strap(True)


init python:
    def _r35384_condition(gsm):
        return glm.is_visited_internal_location('AR0000')
    def _r35407_condition(gsm):
        return glm.is_visited_internal_location('AR0001')
    def _r35408_condition(gsm):
        return glm.is_visited_internal_location('AR0000')
    def _r35409_condition(gsm):
        return glm.is_visited_internal_location('AR0001')
    def _r35410_condition(gsm):
        return gsm.get_can_speak_with_dead()
    def _r35448_condition(gsm):
        return glm.is_visited_internal_location('AR0000')
    def _r35449_condition(gsm):
        return glm.is_visited_internal_location('AR0001') \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_lt('protagonist',13,'str')
    def _r35450_condition(gsm):
        return glm.is_visited_internal_location('AR0001') \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_gt('protagonist',12,'str')
    def _r35451_condition(gsm):
        return glm.is_visited_internal_location('AR0001') \
               and gsm.get_has_prybar()
    def _r35452_condition(gsm):
        return not gsm.get_in_party_morte() \
               and glm.is_visited_internal_location('AR0001') \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_lt('protagonist',13,'str')
    def _r35453_condition(gsm):
        return not gsm.get_in_party_morte() \
               and glm.is_visited_internal_location('AR0001') \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_gt('protagonist',12,'str')
    def _r35454_condition(gsm):
        return not gsm.get_in_party_morte() \
               and glm.is_visited_internal_location('AR0001') \
               and gsm.get_has_prybar()
    def _r35455_condition(gsm):
        return gsm.get_in_party_morte() \
               and gsm.get_morte_skel_mort_quip()
    def _r35456_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35457_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35458_condition(gsm):
        return gsm.get_morte_skel_mort_quip()
    def _r35386_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35405_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35406_condition(gsm):
        return gsm.get_morte_skel_mort_quip()
    def _r35412_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35413_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35414_condition(gsm):
        return gsm.get_morte_skel_mort_quip()
    def _r35417_condition(gsm):
        return gsm.get_in_party_morte() \
               and glm.is_visited_internal_location('AR0000')
    def _r35439_condition(gsm):
        return gsm.get_in_party_morte() \
               and glm.is_visited_internal_location('AR0001') \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_lt('protagonist',13,'str')
    def _r35440_condition(gsm):
        return gsm.get_in_party_morte() \
               and glm.is_visited_internal_location('AR0001') \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_gt('protagonist',12,'str')
    def _r35441_condition(gsm):
        return gsm.get_in_party_morte() \
               and glm.is_visited_internal_location('AR0001') \
               and gsm.get_has_prybar()
    def _r35442_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_lt('protagonist',13,'str')
    def _r35443_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_gt('protagonist',12,'str')
    def _r35444_condition(gsm):
        return not gsm.get_in_party_morte() \
               and gsm.get_has_prybar()
    def _r35445_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35446_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35447_condition(gsm):
        return gsm.get_morte_skel_mort_quip()
    def _r35423_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'int') \
               and gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35424_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'int') \
               and not gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35425_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'int') \
               and gsm.get_morte_skel_mort_quip()
    def _r35426_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35427_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35428_condition(gsm):
        return gsm.get_morte_skel_mort_quip()


init 10 python:
    gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DS748.DLG
# ###


label start_ds748_talk:
    call ds748_init
    jump ds748_s0
label ds748_init:
    show ds748_img default at center_left_down
    return
label ds748_dispose:
    hide ds748_img
    jump show_graphics_menu


# s0 # say35383
label ds748_s0:  # from - # IF ~  True() // Manually checked EXTERN ~DMORTE~ : 384 Manually checked EXTERN ~DMORTE~ : 380 Manually checked EXTERN ~DMORTE~ : 378
    teller 'Этот скелет — 748, судя по номеру, выбитому над бровью, — выделяется только тем, что некоторые из его зубов вставные, и сделаны из красновато-коричневого камня.'
    teller 'Совершенно очевидно, что они не представляют никакой ценности, иначе их бы удалили те, кто за ним смотрит.'

    menu:
        'Прошу прощения, ты не видал поблизости других скелетов?' if _r35384_condition(gsm):
            # r0 # reply35384
            $ _r35384_action(gsm)
            jump ds748_s1
        'Прошу прощения, ты не видал поблизости других скелетов?' if _r35407_condition(gsm):
            # r1 # reply35407
            jump ds748_s1
        'Один вопрос: зачем комбинезон? То есть, я хочу сказать: не похоже, что у тебя есть что скрывать.' if _r35408_condition(gsm):
            # r2 # reply35408
            $ _r35408_action(gsm)
            jump ds748_s1
        'Один вопрос: зачем комбинезон? То есть, я хочу сказать: не похоже, что у тебя есть что скрывать.' if _r35409_condition(gsm):
            # r3 # reply35409
            jump ds748_s1
        'Использовать на скелете свою способность История костей.' if _r35410_condition(gsm):
            # r4 # reply35410
            jump ds748_s2
        'Внимательно осмотреть скелет.':
            # r5 # reply35415
            $ _r35415_action(gsm)
            jump ds748_s3
        'Попробовать вытащить скобы из суставов скелета.' if _r35448_condition(gsm):
            # r6 # reply35448
            $ _r35448_action(gsm)
            jump dmorte_s384
        'Попробовать вытащить скобы из суставов скелета.' if _r35449_condition(gsm):
            # r7 # reply35449
            jump ds748_s4
        'Попробовать вытащить скобы из суставов скелета.' if _r35450_condition(gsm):
            # r8 # reply35450
            jump ds748_s5
        'Попробовать вытащить скобы из суставов скелета.' if _r35451_condition(gsm):
            # r9 # reply35451
            jump ds748_s6
        'Попробовать вытащить скобы из суставов скелета.' if _r35452_condition(gsm):
            # r10 # reply35452
            jump ds748_s4
        'Попробовать вытащить скобы из суставов скелета.' if _r35453_condition(gsm):
            # r11 # reply35453
            jump ds748_s5
        'Попробовать вытащить скобы из суставов скелета.' if _r35454_condition(gsm):
            # r12 # reply35454
            jump ds748_s6
        'Как насчет этого скелета, Морт? Пойдет такое тело?' if _r35455_condition(gsm):
            # r13 # reply35455
            jump dmorte_s380
        'Оставить скелет в покое.' if _r35456_condition(gsm):
            # r14 # reply35456
            $ _r35456_action(gsm)
            jump dmorte_s378
        'Оставить скелет в покое.' if _r35457_condition(gsm):
            # r15 # reply35457
            jump ds748_dispose
        'Оставить скелет в покое.' if _r35458_condition(gsm):
            # r16 # reply35458
            jump ds748_dispose


# s1 # say35385
label ds748_s1:  # from 0.0 0.1 0.2 0.3 # Manually checked EXTERN ~DMORTE~ : 378
    teller 'Скелет не отвечает.'

    menu:
        'Приятно было поболтать с тобой, Костяшка. Будь здоров.' if _r35386_condition(gsm):
            # r17 # reply35386
            $ _r35386_action(gsm)
            jump dmorte_s378
        'Приятно было поболтать с тобой, Костяшка. Будь здоров.' if _r35405_condition(gsm):
            # r18 # reply35405
            jump ds748_dispose
        'Приятно было поболтать с тобой, Костяшка. Будь здоров.' if _r35406_condition(gsm):
            # r19 # reply35406
            jump ds748_dispose


# s2 # say35411
label ds748_s2:  # from 0.4 # Manually checked EXTERN ~DMORTE~ : 378
    teller 'Скелет не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить скелет в покое.' if _r35412_condition(gsm):
            # r20 # reply35412
            $ _r35412_action(gsm)
            jump dmorte_s378
        'Оставить скелет в покое.' if _r35413_condition(gsm):
            # r21 # reply35413
            jump ds748_dispose
        'Оставить скелет в покое.' if _r35414_condition(gsm):
            # r22 # reply35414
            jump ds748_dispose


# s3 # say35416
label ds748_s3:  # from 0.5 # Manually checked EXTERN ~DMORTE~ : 384 Manually checked EXTERN ~DMORTE~ : 378
    teller 'Кто-то позаботился о том, чтобы связать кости скелета кожаными ремнями, обвивающими тело на манер, напоминающий мускулы и сухожилия.'
    teller 'Ремни привязаны к железными скобам, вбитым в суставы скелета.'
    teller 'Кажется, этот скелет сослужил хорошую службу: кости растрескались, многочисленные трещины на них залиты вонючим клеем.'

    menu:
        'Попробовать вытащить скобы из суставов скелета.' if _r35417_condition(gsm):
            # r23 # reply35417
            $ _r35417_action(gsm)
            jump dmorte_s384
        'Попробовать вытащить скобы из суставов скелета.' if _r35439_condition(gsm):
            # r24 # reply35439
            jump ds748_s4
        'Попробовать вытащить скобы из суставов скелета.' if _r35440_condition(gsm):
            # r25 # reply35440
            jump ds748_s5
        'Попробовать вытащить скобы из суставов скелета.' if _r35441_condition(gsm):
            # r26 # reply35441
            jump ds748_s6
        'Не против, если я возьму немного ремешков и скоб?' if _r35442_condition(gsm):
            # r27 # reply35442
            jump ds748_s4
        'Не против, если я возьму немного ремешков и скоб?' if _r35443_condition(gsm):
            # r28 # reply35443
            jump ds748_s5
        'Не против, если я возьму немного ремешков и скоб?' if _r35444_condition(gsm):
            # r29 # reply35444
            jump ds748_s6
        'Оставить скелет в покое.' if _r35445_condition(gsm):
            # r30 # reply35445
            $ _r35445_action(gsm)
            jump dmorte_s378
        'Оставить скелет в покое.' if _r35446_condition(gsm):
            # r31 # reply35446
            jump ds748_dispose
        'Оставить скелет в покое.' if _r35447_condition(gsm):
            # r32 # reply35447
            jump ds748_dispose


# s4 # say35422
label ds748_s4:  # from 0.7 0.10 3.1 3.4 # Manually checked EXTERN ~DMORTE~ : 378
    teller 'Ты тянешь за железные скобы, но тебе не хватает сил, чтобы вытащить их. Они накрепко забиты.'

    menu:
        'Если бы у меня был подходящий инструмент, я бы смог их вытащить… хм-м. Я еще вернусь, Костяшка.' if _r35423_condition(gsm):
            # r33 # reply35423
            $ _r35423_action(gsm)
            jump dmorte_s378
        'Если бы у меня был подходящий инструмент, я бы смог их вытащить… хм-м. Я еще вернусь, Костяшка.' if _r35424_condition(gsm):
            # r34 # reply35424
            jump ds748_dispose
        'Если бы у меня был подходящий инструмент, я бы смог их вытащить… хм-м. Я еще вернусь, Костяшка.' if _r35425_condition(gsm):
            # r35 # reply35425
            jump ds748_dispose
        'Оставить скелет в покое.' if _r35426_condition(gsm):
            # r36 # reply35426
            $ _r35426_action(gsm)
            jump dmorte_s378
        'Оставить скелет в покое.' if _r35427_condition(gsm):
            # r37 # reply35427
            jump ds748_dispose
        'Оставить скелет в покое.' if _r35428_condition(gsm):
            # r38 # reply35428
            jump ds748_dispose


# s5 # say35430
label ds748_s5:  # from 0.8 0.11 3.2 3.5
    teller 'Ты тянешь за железные скобы изо всех сил, и через несколько мгновений вырываешь их из суставов.'
    teller 'Скелет разваливается, некоторые из его костей продолжают шевелиться.'

    menu:
        'Извини, Костяшка…':
            # r39 # reply35431
            $ _r35431_action(gsm)
            jump ds748_dispose


# s6 # say35433
label ds748_s6:  # from 0.9 0.12 3.3 3.6
    teller 'С помощью ломика ты вырываешь скобы из суставов. Скелет разваливается, хотя некоторые кости продолжают шевелиться.'

    menu:
        'Извини, Костяшка…':
            # r40 # reply35434
            $ _r35434_action(gsm)
            jump ds748_dispose


# s7 # say35459
label ds748_s7:  # from - # IF ~  False()
    teller 'Скелет не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump ds748_dispose
