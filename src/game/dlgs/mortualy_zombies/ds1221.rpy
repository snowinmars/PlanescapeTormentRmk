init python:
    def _r35307_action(gsm):
        gsm.dec_law()
        glm.set_location('AR0001')
    def _r35331_action(gsm):
        gsm.dec_law()
        glm.set_location('AR0001')
    def _r35338_action(gsm):
        glm.set_location('AR0001')
    def _r35371_action(gsm):
        glm.set_location('AR0001')
    def _r35379_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r35309_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r35335_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r35340_action(gsm):
        glm.set_location('AR0001')
    def _r35368_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r35346_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r35349_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r35354_action(gsm):
        gsm.set_dead_ds1221(True)
        gsm.set_has_spike(True)
        gsm.set_has_strap(True)
    def _r35357_action(gsm):
        gsm.set_dead_ds1221(True)
        gsm.set_has_spike(True)
        gsm.set_has_strap(True)


init python:
    def _r35307_condition(gsm):
        return glm.is_visited_internal_location('AR0000')
    def _r35330_condition(gsm):
        return glm.is_visited_internal_location('AR0001')
    def _r35331_condition(gsm):
        return glm.is_visited_internal_location('AR0000')
    def _r35332_condition(gsm):
        return glm.is_visited_internal_location('AR0001')
    def _r35333_condition(gsm):
        return gsm.get_can_speak_with_dead()
    def _r35371_condition(gsm):
        return glm.is_visited_internal_location('AR0000')
    def _r35372_condition(gsm):
        return glm.is_visited_internal_location('AR0001') \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_lt('protagonist',13,'str')
    def _r35373_condition(gsm):
        return glm.is_visited_internal_location('AR0001') \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_gt('protagonist',12,'str')
    def _r35374_condition(gsm):
        return glm.is_visited_internal_location('AR0001') \
               and gsm.get_has_prybar()
    def _r35375_condition(gsm):
        return not gsm.get_in_party_morte() \
               and glm.is_visited_internal_location('AR0001') \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_lt('protagonist',13,'str')
    def _r35376_condition(gsm):
        return not gsm.get_in_party_morte() \
               and glm.is_visited_internal_location('AR0001') \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_gt('protagonist',12,'str')
    def _r35377_condition(gsm):
        return not gsm.get_in_party_morte() \
               and glm.is_visited_internal_location('AR0001') \
               and gsm.get_has_prybar()
    def _r35378_condition(gsm):
        return gsm.get_in_party_morte() \
               and gsm.get_morte_skel_mort_quip()
    def _r35379_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35380_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35381_condition(gsm):
        return gsm.get_morte_skel_mort_quip()
    def _r35309_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35328_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35329_condition(gsm):
        return gsm.get_morte_skel_mort_quip()
    def _r35335_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35336_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35337_condition(gsm):
        return gsm.get_morte_skel_mort_quip()
    def _r35340_condition(gsm):
        return gsm.get_in_party_morte() \
               and glm.is_visited_internal_location('AR0000')
    def _r35362_condition(gsm):
        return gsm.get_in_party_morte() \
               and glm.is_visited_internal_location('AR0001') \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_lt('protagonist',13,'str')
    def _r35363_condition(gsm):
        return gsm.get_in_party_morte() \
               and glm.is_visited_internal_location('AR0001') \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_gt('protagonist',12,'str')
    def _r35364_condition(gsm):
        return gsm.get_in_party_morte() \
               and glm.is_visited_internal_location('AR0001') \
               and gsm.get_has_prybar()
    def _r35365_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_lt('protagonist',13,'str')
    def _r35366_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_gt('protagonist',12,'str')
    def _r35367_condition(gsm):
        return not gsm.get_in_party_morte() \
               and gsm.get_has_prybar()
    def _r35368_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35369_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35370_condition(gsm):
        return gsm.get_morte_skel_mort_quip()
    def _r35346_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'int') \
               and gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35347_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'int') \
               and not gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35348_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'int') \
               and gsm.get_morte_skel_mort_quip()
    def _r35349_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35350_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35351_condition(gsm):
        return gsm.get_morte_skel_mort_quip()


init 10 python:
    gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DS1221.DLG
# ###


label start_ds1221_talk:
    call ds1221_init
    jump ds1221_s0
label ds1221_init:
    show ds1221_img default at center_left_down
    return
label ds1221_dispose:
    hide ds1221_img
    jump show_graphics_menu


# s0 # say35306
label ds1221_s0:  # from - # IF ~  True() // from: Manually checked EXTERN ~DMORTE~ : 376 Manually checked EXTERN ~DMORTE~ : 372 Manually checked EXTERN ~DMORTE~ : 370
    teller 'Этот оживленный скелет ужасно воняет, как будто бы его совсем недавно ободрали и препарировали.'
    teller 'Его челюсти и основные суставы крепко связаны кожаными ремешками, поверх тела надет грубый комбинезон. На его лбу вырезан номер 1221.'

    menu:
        'Прошу прощения, тебе не попадались другие скелеты?' if _r35307_condition(gsm):
            # r0 # reply35307
            $ _r35307_action(gsm)
            jump ds1221_s1
        'Прошу прощения, тебе не попадались другие скелеты?' if _r35330_condition(gsm):
            # r1 # reply35330
            jump ds1221_s1
        'Один вопрос: зачем комбинезон? То есть, я хочу сказать: не похоже, что у тебя есть что скрывать.' if _r35331_condition(gsm):
            # r2 # reply35331
            $ _r35331_action(gsm)
            jump ds1221_s1
        'Один вопрос: зачем комбинезон? То есть, я хочу сказать: не похоже, что у тебя есть что скрывать.' if _r35332_condition(gsm):
            # r3 # reply35332
            jump ds1221_s1
        'Использовать на скелете свою способность История костей.' if _r35333_condition(gsm):
            # r4 # reply35333
            jump ds1221_s2
        'Внимательно осмотреть скелет.':
            # r5 # reply35338
            $ _r35338_action(gsm)
            jump ds1221_s3
        'Попробовать вытащить скобы из суставов скелета.' if _r35371_condition(gsm):
            # r6 # reply35371
            $ _r35371_action(gsm)
            jump dmorte_s376
        'Попробовать вытащить скобы из суставов скелета.' if _r35372_condition(gsm):
            # r7 # reply35372
            jump ds1221_s4
        'Попробовать вытащить скобы из суставов скелета.' if _r35373_condition(gsm):
            # r8 # reply35373
            jump ds1221_s5
        'Попробовать вытащить скобы из суставов скелета.' if _r35374_condition(gsm):
            # r9 # reply35374
            jump ds1221_s6
        'Попробовать вытащить скобы из суставов скелета.' if _r35375_condition(gsm):
            # r10 # reply35375
            jump ds1221_s4
        'Попробовать вытащить скобы из суставов скелета.' if _r35376_condition(gsm):
            # r11 # reply35376
            jump ds1221_s5
        'Попробовать вытащить скобы из суставов скелета.' if _r35377_condition(gsm):
            # r12 # reply35377
            jump ds1221_s6
        'Эй, а как насчет этого скелета, Морт? Пойдет такое тело?' if _r35378_condition(gsm):
            # r13 # reply35378
            jump dmorte_s372
        'Оставить скелет в покое.' if _r35379_condition(gsm):
            # r14 # reply35379
            $ _r35379_action(gsm)
            jump dmorte_s370
        'Оставить скелет в покое.' if _r35380_condition(gsm):
            # r15 # reply35380
            jump ds1221_dispose
        'Оставить скелет в покое.' if _r35381_condition(gsm):
            # r16 # reply35381
            jump ds1221_dispose


# s1 # say35308
label ds1221_s1:  # from 0.0 0.1 0.2 0.3 # Manually checked EXTERN ~DMORTE~ : 370
    teller 'Скелет не отвечает.'

    menu:
        'Приятно было поболтать с тобой, Костяшка. Будь здоров.' if _r35309_condition(gsm):
            # r17 # reply35309
            $ _r35309_action(gsm)
            jump dmorte_s370
        'Приятно было поболтать с тобой, Костяшка. Будь здоров.' if _r35328_condition(gsm):
            # r18 # reply35328
            jump ds1221_dispose
        'Приятно было поболтать с тобой, Костяшка. Будь здоров.' if _r35329_condition(gsm):
            # r19 # reply35329
            jump ds1221_dispose


# s2 # say35334
label ds1221_s2:  # from 0.4 # Manually checked EXTERN ~DMORTE~ : 370
    teller 'Скелет не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить скелет в покое.' if _r35335_condition(gsm):
            # r20 # reply35335
            $ _r35335_action(gsm)
            jump dmorte_s370
        'Оставить скелет в покое.' if _r35336_condition(gsm):
            # r21 # reply35336
            jump ds1221_dispose
        'Оставить скелет в покое.' if _r35337_condition(gsm):
            # r22 # reply35337
            jump ds1221_dispose


# s3 # say35339
label ds1221_s3:  # from 0.5 # Manually checked EXTERN ~DMORTE~ : 376 Manually checked EXTERN ~DMORTE~ : 370
    teller 'Кто-то позаботился о том, чтобы связать кости скелета кожаными ремнями, обвивающими тело на манер, напоминающий мускулы и сухожилия.'
    teller 'Ремни привязаны к железными скобам, вбитым в суставы скелета. Кажется, этот скелет сослужил хорошую службу: кости растрескались, многочисленные трещины на них залиты вонючим клеем.'

    menu:
        'Попробовать вытащить скобы из суставов скелета.' if _r35340_condition(gsm):
            # r23 # reply35340
            $ _r35340_action(gsm)
            jump dmorte_s376
        'Попробовать вытащить скобы из суставов скелета.' if _r35362_condition(gsm):
            # r24 # reply35362
            jump ds1221_s4
        'Попробовать вытащить скобы из суставов скелета.' if _r35363_condition(gsm):
            # r25 # reply35363
            jump ds1221_s5
        'Попробовать вытащить скобы из суставов скелета.' if _r35364_condition(gsm):
            # r26 # reply35364
            jump ds1221_s6
        'Не против, если я возьму немного ремешков и скоб?' if _r35365_condition(gsm):
            # r27 # reply35365
            jump ds1221_s4
        'Не против, если я возьму немного ремешков и скоб?' if _r35366_condition(gsm):
            # r28 # reply35366
            jump ds1221_s5
        'Не против, если я возьму немного ремешков и скоб?' if _r35367_condition(gsm):
            # r29 # reply35367
            jump ds1221_s6
        'Оставить скелет в покое.' if _r35368_condition(gsm):
            # r30 # reply35368
            $ _r35368_action(gsm)
            jump dmorte_s370
        'Оставить скелет в покое.' if _r35369_condition(gsm):
            # r31 # reply35369
            jump ds1221_dispose
        'Оставить скелет в покое.' if _r35370_condition(gsm):
            # r32 # reply35370
            jump ds1221_dispose


# s4 # say35345
label ds1221_s4:  # from 0.7 0.10 3.1 3.4 # Manually checked EXTERN ~DMORTE~ : 370
    teller 'Ты тянешь за железные скобы, но тебе не хватает сил, чтобы вытащить их. Они накрепко забиты.'

    menu:
        'Если бы у меня был подходящий инструмент, я бы смог их вытащить… хм-м. Я еще вернусь, Костяшка.' if _r35346_condition(gsm):
            # r33 # reply35346
            $ _r35346_action(gsm)
            jump ds1221_dispose
        'Если бы у меня был подходящий инструмент, я бы смог их вытащить… хм-м. Я еще вернусь, Костяшка.' if _r35347_condition(gsm):
            # r34 # reply35347
            jump ds1221_dispose
        'Если бы у меня был подходящий инструмент, я бы смог их вытащить… хм-м. Я еще вернусь, Костяшка.' if _r35348_condition(gsm):
            # r35 # reply35348
            jump ds1221_dispose
        'Оставить скелет в покое.' if _r35349_condition(gsm):
            # r36 # reply35349
            $ _r35349_action(gsm)
            jump dmorte_s370
        'Оставить скелет в покое.' if _r35350_condition(gsm):
            # r37 # reply35350
            jump ds1221_dispose
        'Оставить скелет в покое.' if _r35351_condition(gsm):
            # r38 # reply35351
            jump ds1221_dispose


# s5 # say35353
label ds1221_s5:  # from 0.8 0.11 3.2 3.5
    teller 'Ты тянешь за железные скобы изо всех сил, и через несколько мгновений вырываешь их из суставов.'
    teller 'Скелет разваливается, некоторые из его костей продолжают шевелиться.'

    menu:
        'Извини, Костяшка…':
            # r39 # reply35354
            $ _r35354_action(gsm)
            jump ds1221_dispose


# s6 # say35356
label ds1221_s6:  # from 0.9 0.12 3.3 3.6
    teller 'С помощью ломика ты вырываешь скобы из суставов. Скелет разваливается, хотя некоторые кости продолжают шевелиться.'

    menu:
        'Извини, Костяшка…':
            # r40 # reply35357
            $ _r35357_action(gsm)
            jump ds1221_dispose


# s7 # say35382
label ds1221_s7:  # from - # IF ~  False()
    teller 'Скелет не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump ds1221_dispose
