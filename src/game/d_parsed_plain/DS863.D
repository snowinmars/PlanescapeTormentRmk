init python:
    def _r35538_action(gsm):
        gsm.dec_law()
        glm.set_location('AR0001')
    def _r35562_action(gsm):
        gsm.dec_law()
        glm.set_location('AR0001')
    def _r35569_action(gsm):
        glm.set_location('AR0001')
    def _r35602_action(gsm):
        glm.set_location('AR0001')
    def _r35610_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r35540_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r35566_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r35571_action(gsm):
        glm.set_location('AR0001')
    def _r35599_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r35577_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r35580_action(gsm):
        gsm.set_morte_skel_mort_quip(True)
    def _r35585_action(gsm):
        gsm.set_dead_ds863(True)
        gsm.set_has_spike(True)
        gsm.set_has_strap(True)
    def _r35588_action(gsm):
        gsm.set_dead_ds863(True)
        gsm.set_has_spike(True)
        gsm.set_has_strap(True)
    def _r64266_action(gsm):
        gsm.set_has_dremind(True)


init python:
    def _r35538_condition(gsm):
        return glm.is_visited_internal_location('AR0000')
    def _r35561_condition(gsm):
        return glm.is_visited_internal_location('AR0001')
    def _r35562_condition(gsm):
        return glm.is_visited_internal_location('AR0000')
    def _r35563_condition(gsm):
        return glm.is_visited_internal_location('AR0001')
    def _r35564_condition(gsm):
        return gsm.get_can_speak_with_dead()
    def _r35602_condition(gsm):
        return glm.is_visited_internal_location('AR0000')
    def _r35603_condition(gsm):
        return glm.is_visited_internal_location('AR0001') \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_lt('protagonist',13,'str')
    def _r35604_condition(gsm):
        return glm.is_visited_internal_location('AR0001') \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_gt('protagonist',12,'str')
    def _r35605_condition(gsm):
        return glm.is_visited_internal_location('AR0001') \
               and gsm.get_has_prybar()
    def _r35606_condition(gsm):
        return not gsm.get_in_party_morte() \
               and glm.is_visited_internal_location('AR0001') \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_lt('protagonist',13,'str')
    def _r35607_condition(gsm):
        return not gsm.get_in_party_morte() \
               and glm.is_visited_internal_location('AR0001') \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_gt('protagonist',12,'str')
    def _r35608_condition(gsm):
        return not gsm.get_in_party_morte() \
               and glm.is_visited_internal_location('AR0001') \
               and gsm.get_has_prybar()
    def _r35609_condition(gsm):
        return gsm.get_in_party_morte() \
               and gsm.get_morte_skel_mort_quip()
    def _r35610_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35611_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35612_condition(gsm):
        return gsm.get_morte_skel_mort_quip()
    def _r35540_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35559_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35560_condition(gsm):
        return gsm.get_morte_skel_mort_quip()
    def _r35566_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35567_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35568_condition(gsm):
        return gsm.get_morte_skel_mort_quip()
    def _r35571_condition(gsm):
        return gsm.get_in_party_morte() \
               and glm.is_visited_internal_location('AR0000')
    def _r35593_condition(gsm):
        return gsm.get_in_party_morte() \
               and glm.is_visited_internal_location('AR0001') \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_lt('protagonist',13,'str')
    def _r35594_condition(gsm):
        return gsm.get_in_party_morte() \
               and glm.is_visited_internal_location('AR0001') \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_gt('protagonist',12,'str')
    def _r35595_condition(gsm):
        return gsm.get_in_party_morte() \
               and glm.is_visited_internal_location('AR0001') \
               and gsm.get_has_prybar()
    def _r35596_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_lt('protagonist',13,'str')
    def _r35597_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_has_prybar() \
               and gsm.check_char_prop_gt('protagonist',12,'str')
    def _r35598_condition(gsm):
        return not gsm.get_in_party_morte() \
               and gsm.get_has_prybar()
    def _r35599_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35600_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35601_condition(gsm):
        return gsm.get_morte_skel_mort_quip()
    def _r35577_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'int') \
               and gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35578_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'int') \
               and not gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35579_condition(gsm):
        return gsm.check_char_prop_gt('protagonist',12,'int') \
               and gsm.get_morte_skel_mort_quip()
    def _r35580_condition(gsm):
        return gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35581_condition(gsm):
        return not gsm.get_in_party_morte() \
               and not gsm.get_morte_skel_mort_quip()
    def _r35582_condition(gsm):
        return gsm.get_morte_skel_mort_quip()


init 10 python:
    gsm = renpy.store.global_settings_manager


# ###
# Original:  DLG/DS863.DLG
# ###


label ds863_init:
    return


label ds863_dispose:
    jump show_graphics_menu


# s0 # say35537
label ds863_s0:  # from 10.0 # IF ~  !HasItem("DRemind","S863") Check EXTERN ~DMORTE~ : 400 Check EXTERN ~DMORTE~ : 396 Check EXTERN ~DMORTE~ : 394
    SPEAKER 'Похоже, этот скелет попал в какой-то серьезный переплет: либо он участвовал в битве, либо упал через несколько лестничных пролетов. Обе руки и ноги переломаны и собраны вновь с помощью кожаных ремней и тонких железных реек. На лбу высечен номер 863… но сзади череп имеет открытую пустую полость.'

    menu:
        'Извини, что забрал пергамент. Все равно ты вряд ли доставил бы его в ближайшее время.' if _r35538_condition(gsm):
            # r0 # reply35538
            $ _r35538_action(gsm)
            jump ds863_s1
        'Извини, что забрал пергамент. Все равно ты вряд ли доставил бы его в ближайшее время.' if _r35561_condition(gsm):
            # r1 # reply35561
            jump ds863_s1
        'Должен спросить: эти кости сломаны в битве или при падении?' if _r35562_condition(gsm):
            # r2 # reply35562
            $ _r35562_action(gsm)
            jump ds863_s1
        'Должен спросить: эти кости сломаны в битве или при падении?' if _r35563_condition(gsm):
            # r3 # reply35563
            jump ds863_s1
        'Использовать на скелете свою способность История костей.' if _r35564_condition(gsm):
            # r4 # reply35564
            jump ds863_s2
        'Внимательно осмотреть скелет.':
            # r5 # reply35569
            $ _r35569_action(gsm)
            jump ds863_s3
        'Попробовать вытащить скобы из суставов скелета.' if _r35602_condition(gsm):
            # r6 # reply35602
            $ _r35602_action(gsm)
            jump show_graphics_menu
        'Попробовать вытащить скобы из суставов скелета.' if _r35603_condition(gsm):
            # r7 # reply35603
            jump ds863_s4
        'Попробовать вытащить скобы из суставов скелета.' if _r35604_condition(gsm):
            # r8 # reply35604
            jump ds863_s5
        'Попробовать вытащить скобы из суставов скелета.' if _r35605_condition(gsm):
            # r9 # reply35605
            jump ds863_s6
        'Попробовать вытащить скобы из суставов скелета.' if _r35606_condition(gsm):
            # r10 # reply35606
            jump ds863_s4
        'Попробовать вытащить скобы из суставов скелета.' if _r35607_condition(gsm):
            # r11 # reply35607
            jump ds863_s5
        'Попробовать вытащить скобы из суставов скелета.' if _r35608_condition(gsm):
            # r12 # reply35608
            jump ds863_s6
        'Как насчет этого скелета, Морт? Пойдет такое тело?' if _r35609_condition(gsm):
            # r13 # reply35609
            jump show_graphics_menu
        'Оставить скелет в покое.' if _r35610_condition(gsm):
            # r14 # reply35610
            $ _r35610_action(gsm)
            jump show_graphics_menu
        'Оставить скелет в покое.' if _r35611_condition(gsm):
            # r15 # reply35611
            jump show_graphics_menu
        'Оставить скелет в покое.' if _r35612_condition(gsm):
            # r16 # reply35612
            jump show_graphics_menu


# s1 # say35539
label ds863_s1:  # from 0.0 0.1 0.2 0.3 # Check EXTERN ~DMORTE~ : 394
    SPEAKER 'Скелет не отвечает.'

    menu:
        'Приятно было поболтать с тобой, Костяшка. Будь здоров.' if _r35540_condition(gsm):
            # r17 # reply35540
            $ _r35540_action(gsm)
            jump show_graphics_menu
        'Приятно было поболтать с тобой, Костяшка. Будь здоров.' if _r35559_condition(gsm):
            # r18 # reply35559
            jump show_graphics_menu
        'Приятно было поболтать с тобой, Костяшка. Будь здоров.' if _r35560_condition(gsm):
            # r19 # reply35560
            jump show_graphics_menu


# s2 # say35565
label ds863_s2:  # from 0.4 # Check EXTERN ~DMORTE~ : 394
    SPEAKER 'Скелет не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    menu:
        'Оставить скелет в покое.' if _r35566_condition(gsm):
            # r20 # reply35566
            $ _r35566_action(gsm)
            jump show_graphics_menu
        'Оставить скелет в покое.' if _r35567_condition(gsm):
            # r21 # reply35567
            jump show_graphics_menu
        'Оставить скелет в покое.' if _r35568_condition(gsm):
            # r22 # reply35568
            jump show_graphics_menu


# s3 # say35570
label ds863_s3:  # from 0.5 # Check EXTERN ~DMORTE~ : 400 Check EXTERN ~DMORTE~ : 394
    SPEAKER 'Кто-то позаботился о том, чтобы связать кости скелета кожаными ремнями, обвивающими тело на манер, напоминающий мускулы и сухожилия. Ремни привязаны к железными скобам, вбитым в суставы скелета. Кажется, этот скелет сослужил хорошую службу: кости растрескались, многочисленные трещины на них залиты вонючим клеем.'

    menu:
        'Попробовать вытащить скобы из суставов скелета.' if _r35571_condition(gsm):
            # r23 # reply35571
            $ _r35571_action(gsm)
            jump show_graphics_menu
        'Попробовать вытащить скобы из суставов скелета.' if _r35593_condition(gsm):
            # r24 # reply35593
            jump ds863_s4
        'Попробовать вытащить скобы из суставов скелета.' if _r35594_condition(gsm):
            # r25 # reply35594
            jump ds863_s5
        'Попробовать вытащить скобы из суставов скелета.' if _r35595_condition(gsm):
            # r26 # reply35595
            jump ds863_s6
        'Не против, если я возьму немного ремешков и скоб?' if _r35596_condition(gsm):
            # r27 # reply35596
            jump ds863_s4
        'Не против, если я возьму немного ремешков и скоб?' if _r35597_condition(gsm):
            # r28 # reply35597
            jump ds863_s5
        'Не против, если я возьму немного ремешков и скоб?' if _r35598_condition(gsm):
            # r29 # reply35598
            jump ds863_s6
        'Оставить скелет в покое.' if _r35599_condition(gsm):
            # r30 # reply35599
            $ _r35599_action(gsm)
            jump show_graphics_menu
        'Оставить скелет в покое.' if _r35600_condition(gsm):
            # r31 # reply35600
            jump show_graphics_menu
        'Оставить скелет в покое.' if _r35601_condition(gsm):
            # r32 # reply35601
            jump show_graphics_menu


# s4 # say35576
label ds863_s4:  # from 0.7 0.10 3.1 3.4 # Check EXTERN ~DMORTE~ : 394
    SPEAKER 'Ты тянешь за железные скобы, но тебе не хватает сил, чтобы вытащить их. Они накрепко забиты.'

    menu:
        'Если бы у меня был подходящий инструмент, я бы смог вытащить их… хм-м. Я еще вернусь, Костяшка.' if _r35577_condition(gsm):
            # r33 # reply35577
            $ _r35577_action(gsm)
            jump show_graphics_menu
        'Если бы у меня был подходящий инструмент, я бы смог вытащить их… хм-м. Я еще вернусь, Костяшка.' if _r35578_condition(gsm):
            # r34 # reply35578
            jump show_graphics_menu
        'Если бы у меня был подходящий инструмент, я бы смог вытащить их… хм-м. Я еще вернусь, Костяшка.' if _r35579_condition(gsm):
            # r35 # reply35579
            jump show_graphics_menu
        'Оставить скелет в покое.' if _r35580_condition(gsm):
            # r36 # reply35580
            $ _r35580_action(gsm)
            jump show_graphics_menu
        'Оставить скелет в покое.' if _r35581_condition(gsm):
            # r37 # reply35581
            jump show_graphics_menu
        'Оставить скелет в покое.' if _r35582_condition(gsm):
            # r38 # reply35582
            jump show_graphics_menu


# s5 # say35584
label ds863_s5:  # from 0.8 0.11 3.2 3.5
    SPEAKER 'Ты тянешь за железные скобы изо всех сил, и через несколько мгновений вырываешь их из суставов. Скелет разваливается, некоторые из его костей продолжают шевелиться.'

    menu:
        'Извини, Костяшка…':
            # r39 # reply35585
            $ _r35585_action(gsm)
            jump show_graphics_menu


# s6 # say35587
label ds863_s6:  # from 0.9 0.12 3.3 3.6
    SPEAKER 'С помощью ломика ты вырываешь скобы из суставов. Скелет разваливается, хотя некоторые кости продолжают шевелиться.'

    menu:
        'Извини, Костяшка…':
            # r40 # reply35588
            $ _r35588_action(gsm)
            jump show_graphics_menu


# s7 # say35613
label ds863_s7:  # from - # IF ~  False()
    SPEAKER 'Скелет не реагирует. Кажется, он слишком далек от того, чтобы отвечать на твои вопросы.'

    jump show_graphics_menu

# s8 # say64262
label ds863_s8:  # from - # IF ~  HasItem("DRemind","S863")
    SPEAKER 'Похоже, этот скелет попал в какой-то серьезный переплет: либо он участвовал в битве, либо упал через несколько лестничных пролетов. Обе руки и ноги переломаны и собраны вновь с помощью кожаных ремней и тонких железных реек. На лбу высечен номер 863… но сзади череп имеет открытую пустую полость. Ты замечаешь, что кто-то воспользовался этим и поместил внутрь черепа пергаментный свиток.'

    menu:
        'Вытащить пергамент из черепа скелета.':
            # r41 # reply64263
            jump ds863_s9
        'Оставить скелет в покое.':
            # r42 # reply64264
            jump show_graphics_menu


# s9 # say64265
label ds863_s9:  # from 8.0
    SPEAKER 'Ты ловко вытягиваешь пергамент из черепа рабочего. Довольно странно, но пробоина в череп выглядит так, словно она *предназначена* для хранения сообщений: к пергаменту прикреплена тонкая нитка, которая привязана к черепу изнутри, предотвращая случайное выпадение пергамента.'

    menu:
        'Разорвать нитку, взять пергамент.':
            # r43 # reply64266
            $ _r64266_action(gsm)
            jump ds863_s10


# s10 # say64267
label ds863_s10:  # from 9.0
    SPEAKER 'Ты разрываешь нитку и окидываешь взглядом пергамент — похоже на напоминание от одного из смотрителей Морга. Судя по заметке, этот скелет является что-то вроде ходячего курьера. Еще раз взглянув на скелета, ты понимаешь, что он остановился перед плитой лишь потому, что не смог ее обойти.'

    menu:
        'Снова осмотреть скелет.':
            # r44 # reply64268
            jump ds863_s0
        'Оставить скелет в покое.':
            # r45 # reply64269
            jump show_graphics_menu
