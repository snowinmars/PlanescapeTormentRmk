init python:
    def _r35384_action(gsm):
        gsm.gcm.modify_property('protagonist', 'law', -1)
        gsm.set_skeleton_chaotic(True)
    def _r35408_action(gsm):
        gsm.gcm.modify_property('protagonist', 'law', -1)
        gsm.set_skeleton_chaotic(True)
    def _r35415_action(gsm):
        gsm.set_skeleton_examine(True)
    def _r35448_action(gsm):
        gsm.set_morte_skel_mort_quip2(True)
    def _r35456_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r35386_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r35412_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r35417_action(gsm):
        gsm.set_morte_skel_mort_quip2(True)
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
        return not gsm.get_skeleton_chaotic()
    def _r35407_condition(gsm):
        return gsm.get_skeleton_chaotic()
    def _r35408_condition(gsm):
        return not gsm.get_skeleton_chaotic()
    def _r35409_condition(gsm):
        return gsm.get_skeleton_chaotic()
    def _r35410_condition(gsm):
        return gsm.get_can_speak_with_dead()
    def _r35448_condition(gsm):
        return gsm.get_skeleton_examine() \
               and gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip2()
    def _r35449_condition(gsm):
        return gsm.get_skeleton_examine() \
               and gsm.get_in_party_morte() \
               and gsm.get_morte_skel_mort_quip2() \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_lt('protagonist',13,'str')
    def _r35450_condition(gsm):
        return gsm.get_skeleton_examine() \
               and gsm.get_in_party_morte() \
               and gsm.get_morte_skel_mort_quip2() \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_gt('protagonist',12,'str')
    def _r35451_condition(gsm):
        return gsm.get_skeleton_examine() \
               and gsm.get_in_party_morte() \
               and gsm.get_morte_skel_mort_quip2() \
               and gsm.get_has_prybar()
    def _r35452_condition(gsm):
        return not gsm.get_in_party_morte() \
               and gsm.get_skeleton_examine() \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_lt('protagonist',13,'str')
    def _r35453_condition(gsm):
        return not gsm.get_in_party_morte() \
               and gsm.get_skeleton_examine() \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_gt('protagonist',12,'str')
    def _r35454_condition(gsm):
        return not gsm.get_in_party_morte() \
               and gsm.get_skeleton_examine() \
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
               and not gsm.get_morte_skel_mort_quip2()
    def _r35439_condition(gsm):
        return gsm.get_in_party_morte() \
               and gsm.get_morte_skel_mort_quip2() \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_lt('protagonist',13,'str')
    def _r35440_condition(gsm):
        return gsm.get_in_party_morte() \
               and gsm.get_morte_skel_mort_quip2() \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_gt('protagonist',12,'str')
    def _r35441_condition(gsm):
        return gsm.get_in_party_morte() \
               and gsm.get_morte_skel_mort_quip2() \
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


label ds748_init:
    return


label ds748_dispose:
    jump show_graphics_menu


# s0 # say35383
label ds748_s0:  # from - # IF ~  True() Check EXTERN ~DMORTE~ : 384 Check EXTERN ~DMORTE~ : 380 Check EXTERN ~DMORTE~ : 378
    SPEAKER 'Этот скелет — 748, судя по номеру, выбитому над бровью, — выделяется только тем, что некоторые из его зубов вставные, и сделаны из красновато-коричневого камня. Совершенно очевидно, что они не представляют никакой ценности, иначе их бы удалили те, кто за ним смотрит.'

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
            jump show_graphics_menu
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
            jump show_graphics_menu
        'Оставить скелет в покое.' if _r35456_condition(gsm):
            # r14 # reply35456
            $ _r35456_action(gsm)
            jump show_graphics_menu
        'Оставить скелет в покое.' if _r35457_condition(gsm):
            # r15 # reply35457
            jump show_graphics_menu
        'Оставить скелет в покое.' if _r35458_condition(gsm):
            # r16 # reply35458
            jump show_graphics_menu


# s1 # say35385
label ds748_s1:  # from 0.0 0.1 0.2 0.3 # Check EXTERN ~DMORTE~ : 378
    SPEAKER 'Скелет не отвечает.'

    menu:
        'Приятно было поболтать с тобой, Костяшка. Будь здоров.' if _r35386_condition(gsm):
            # r17 # reply35386
            $ _r35386_action(gsm)
            jump show_graphics_menu
        'Приятно было поболтать с тобой, Костяшка. Будь здоров.' if _r35405_condition(gsm):
            # r18 # reply35405
            jump show_graphics_menu
        'Приятно было поболтать с тобой, Костяшка. Будь здоров.' if _r35406_condition(gsm):
            # r19 # reply35406
            jump show_graphics_menu


# s2 # say35411
label ds748_s2:  # from 0.4 # Check EXTERN ~DMORTE~ : 378
    SPEAKER 'Скелет не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить скелет в покое.' if _r35412_condition(gsm):
            # r20 # reply35412
            $ _r35412_action(gsm)
            jump show_graphics_menu
        'Оставить скелет в покое.' if _r35413_condition(gsm):
            # r21 # reply35413
            jump show_graphics_menu
        'Оставить скелет в покое.' if _r35414_condition(gsm):
            # r22 # reply35414
            jump show_graphics_menu


# s3 # say35416
label ds748_s3:  # from 0.5 # Check EXTERN ~DMORTE~ : 384 Check EXTERN ~DMORTE~ : 378
    SPEAKER 'Кто-то позаботился о том, чтобы связать кости скелета кожаными ремнями, обвивающими тело на манер, напоминающий мускулы и сухожилия. Ремни привязаны к железными скобам, вбитым в суставы скелета. Кажется, этот скелет сослужил хорошую службу: кости растрескались, многочисленные трещины на них залиты вонючим клеем.'

    menu:
        'Попробовать вытащить скобы из суставов скелета.' if _r35417_condition(gsm):
            # r23 # reply35417
            $ _r35417_action(gsm)
            jump show_graphics_menu
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
            jump show_graphics_menu
        'Оставить скелет в покое.' if _r35446_condition(gsm):
            # r31 # reply35446
            jump show_graphics_menu
        'Оставить скелет в покое.' if _r35447_condition(gsm):
            # r32 # reply35447
            jump show_graphics_menu


# s4 # say35422
label ds748_s4:  # from 0.7 0.10 3.1 3.4 # Check EXTERN ~DMORTE~ : 378
    SPEAKER 'Ты тянешь за железные скобы, но тебе не хватает сил, чтобы вытащить их. Они накрепко забиты.'

    menu:
        'Если бы у меня был подходящий инструмент, я бы смог их вытащить… хм-м. Я еще вернусь, Костяшка.' if _r35423_condition(gsm):
            # r33 # reply35423
            $ _r35423_action(gsm)
            jump show_graphics_menu
        'Если бы у меня был подходящий инструмент, я бы смог их вытащить… хм-м. Я еще вернусь, Костяшка.' if _r35424_condition(gsm):
            # r34 # reply35424
            jump show_graphics_menu
        'Если бы у меня был подходящий инструмент, я бы смог их вытащить… хм-м. Я еще вернусь, Костяшка.' if _r35425_condition(gsm):
            # r35 # reply35425
            jump show_graphics_menu
        'Оставить скелет в покое.' if _r35426_condition(gsm):
            # r36 # reply35426
            $ _r35426_action(gsm)
            jump show_graphics_menu
        'Оставить скелет в покое.' if _r35427_condition(gsm):
            # r37 # reply35427
            jump show_graphics_menu
        'Оставить скелет в покое.' if _r35428_condition(gsm):
            # r38 # reply35428
            jump show_graphics_menu


# s5 # say35430
label ds748_s5:  # from 0.8 0.11 3.2 3.5
    SPEAKER 'Ты тянешь за железные скобы изо всех сил, и через несколько мгновений вырываешь их из суставов. Скелет разваливается, некоторые из его костей продолжают шевелиться.'

    menu:
        'Извини, Костяшка…':
            # r39 # reply35431
            $ _r35431_action(gsm)
            jump show_graphics_menu


# s6 # say35433
label ds748_s6:  # from 0.9 0.12 3.3 3.6
    SPEAKER 'С помощью ломика ты вырываешь скобы из суставов. Скелет разваливается, хотя некоторые кости продолжают шевелиться.'

    menu:
        'Извини, Костяшка…':
            # r40 # reply35434
            $ _r35434_action(gsm)
            jump show_graphics_menu


# s7 # say35459
label ds748_s7:  # from - # IF ~  False()
    SPEAKER 'Скелет не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump show_graphics_menu
